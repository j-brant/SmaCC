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
#[ 1 86 2 22] 
#[ 1 86 2 38] 
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
#[ 0 6 1 25] 
#[ 0 6 1 33] 
#[ 0 6 20 141] 
#[ 0 6 0 149] 
#[ 0 6 0 153] 
#[ 0 6 20 13] 
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
#[ 0 14 1 246] 
#[ 9 234 23 217] 
#[ 0 190 10 62] 
#[ 0 14 0 25] 
#[ 2 6 9 178] 
#[ 0 70 11 210] 
#[ 0 190 7 238 9 214] 
#[ 12 70 23 121] 
#[ 9 226 12 70] 
#[ 9 226 12 70 23 121] 
#[ 0 25 12 122] 
#[ 1 246 12 134] 
#[ 0 70 13 54] 
#[ 0 70 13 58] 
#[ 3 38 10 182] 
#[ 6 98 8 86] 
#[ 13 182 27 225] 
#[ 0 70 14 90] 
#[ 8 98 10 214] 
#[ 8 106 10 218] 
#[ 12 110 13 142] 
#[ 14 154 28 197] 
#[ 10 246 12 198] 
#[ 5 226 15 130]
	).
]

{ #category : #'generated-accessing' }
RustParser class >> cacheId [
	^'2022-04-13T14:15:37.20456-05:00'
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
   : <SHEBANG> 'shebang'? innerAttribute 'attribute'* item* {{}}
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
   : ""macro_rules"" 'macroRulesToken' ""!"" 'bang' identifier 'name' macroRulesDef {{}}
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
   : macroMatcher ""=>"" 'arrow' macroTranscriber {{}}
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
      (blockExpression 'block' | "";"" 'semicolon') {{}}
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
   : ""#"" 'hashToken' ""!"" 'bang' ""["" 'leftBracket' attr ""]"" 'rightBracket' {{Attribute}}
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
   | expression 'expression' ""."" 'period' pathExprSegment <lparen> 'leftParen' callParams? "")"" 'rightParen' {{MethodCallExpression}} # MethodCallExpression   # 8.2.10
   | expression 'expression' ""."" 'period' identifier 'name' {{FieldExpression}}                         # FieldExpression  # 8.2.11
   | expression 'expression' ""."" 'period' tupleIndex 'index' {{TupleIndexExpression}}                          # TupleIndexingExpression   # 8.2.7
   | expression 'expression' ""."" 'period' ""await"" 'awaitToken' {{AwaitExpression}}                             # AwaitExpression  # 8.2.18
   | expression 'expression' <lparen> 'leftParen' callParams? "")"" 'rightParen'                     # CallExpression   # 8.2.9
   | expression 'expression' <lbracket> 'leftBracket' expression 'index' ""]"" 'rightBracket' {{IndexExpression}}                      # IndexExpression  # 8.2.6
   | expression 'expression' ""?"" 'question' {{ErrorPropogationExpression}}                                 # ErrorPropagationExpression   # 8.2.4
   | (""&"" 'amp' | ""&&"" 'amp') ""mut"" 'mutToken'? expression 'expression' {{BorrowExpression}}                    # BorrowExpression # 8.2.4
   | ""*"" 'operator' expression 'value' {{UnaryExpression}}                                     # DereferenceExpression  # 8.2.4
   | (""-"" 'operator' | ""!"" 'operator') expression 'value' {{UnaryExpression}}                             # NegationExpression  # 8.2.4
   | expression 'expression' ""as"" typeNoBounds 'type' {{TypeCastExpression}}                # TypeCastExpression  # 8.2.4
   | expression 'left' (""*"" 'operator' | ""/"" 'operator' | ""%"" 'operator') expression 'right'  {{BinaryExpression}}            # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' (""+"" 'operator' | ""-"" 'operator') expression 'right' {{BinaryExpression}}                  # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' (""<<"" 'operator' |  "">>"" 'operator' | "">>>"" 'operator') expression 'right' {{BinaryExpression}}                  # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' <amp> 'operator' expression 'right' {{BinaryExpression}}                          # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' ""^"" 'operator' expression 'right' {{BinaryExpression}}                          # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' <bar> 'operator' expression 'right' {{BinaryExpression}}                          # ArithmeticOrLogicalExpression   # 8.2.4
   | expression 'left' ( ""=="" 'operator' | ""!="" 'operator' | <gt> 'operator' | <lt> 'operator' | "">="" 'operator' | ""<="" 'operator' ) expression  'right' {{BinaryExpression}}         # ComparisonExpression   # 8.2.4
   | expression 'left' ""&&"" 'operator' expression 'right' {{BinaryExpression}}                        # LazyBooleanExpression  # 8.2.4
   | expression 'left' ""||"" 'operator' expression 'right' {{BinaryExpression}}                         # LazyBooleanExpression  # 8.2.4
   | expression 'from' "".."" 'operator' expression 'to'? {{RangeExpression}}                        # RangeExpression  # 8.2.14
   | "".."" 'operator' expression 'to'? {{RangeExpression}}                                  # RangeExpression  # 8.2.14
   | ""..="" 'operator' expression 'to' {{RangeExpression}}                                   # RangeExpression  # 8.2.14
   | expression 'from' ""..="" 'operator' expression 'to' {{RangeExpression}}                        # RangeExpression  # 8.2.14
   | expression 'lhs' ""="" 'operator' expression 'rhs' {{AssignmentExpression}}                          # AssignmentExpression   # 8.2.4
   | expression 'lhs' ( ""+="" 'operator' | ""-="" 'operator' | ""*="" 'operator' | ""/="" 'operator' | ""%="" 'operator' | ""&="" 'operator' | ""|="" 'operator' | ""^="" 'operator' | ""<<="" 'operator' | "">>="" 'operator' ) expression 'rhs' {{AssignmentExpression}}       # CompoundAssignmentExpression # 8.2.4
   | ""continue"" 'continueToken' <LIFETIME_OR_LABEL> 'label'? expression 'value'? {{ContinueExpression}}          # ContinueExpression  # 8.2.13
   | ""break"" 'breakToken' <LIFETIME_OR_LABEL> 'label'? expression 'value'? {{BreakExpression}}            # BreakExpression  # 8.2.13
   | ""return"" 'returnToken' expression 'value'? {{ReturnExpression}}                               # ReturnExpression # 8.2.17
   | ""("" 'leftParen' innerAttribute 'attribute'* expression 'expression' "")"" 'rightParen' {{GroupedExpression}}                # GroupedExpression   # 8.2.5
   | ""["" 'leftBracket' innerAttribute 'attribute'* arrayElements? ""]"" 'rightBracket' {{ArrayExpression}}            # ArrayExpression  # 8.2.6
   | ""("" 'leftParen' innerAttribute 'attribute'* tupleElements? "")"" 'rightParen' {{TupleExpression}}            # TupleExpression  # 8.2.7
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
   : pathInExpression {{}}
   | qualifiedPathInExpression {{}}
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
   : expression 'element' ("","" 'separator' expression 'element')* "","" 'separator'?
   | expression 'element' "";"" 'separator' expression 'element'
   ;

# 8.2.7
tupleElements
   : (expression 'element' "","" 'comma')+ expression 'element'?
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
   : pathInExpression ""{"" 'leftBrace' innerAttribute 'attribute'* (structExprFields | structBase)? ""}"" 'rightBrace' {{}}
   ;
structExprFields
   : structExprField 'field' ("","" 'comma' structExprField 'field')* ("","" 'comma' structBase | "","" 'comma'?)
   ;
# outerAttribute here is not in doc
structExprField
   : outerAttribute 'attribute'* (identifier 'name' | (identifier 'name' | tupleIndex 'name') "":""  'colon' expression 'value') {{}}
   ;
structBase
   : "".."" 'dotDot' expression 'from'
   ;
structExprTuple
   : pathInExpression ""("" 'leftParen' (expression 'arg' ("","" 'comma' expression 'arg')* "","" 'comma'?)? "")"" 'rightParen' {{}} ###
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
   : pathInExpression ""{"" 'leftBrace' enumExprFields? ""}"" 'rightBrace' {{}}
   ;
enumExprFields
   : enumExprField 'field' ("","" 'comma' enumExprField 'field')* "","" 'comma'?
   ;
enumExprField
   : identifier 'name' {{}}
   | (identifier 'name' | tupleIndex 'name') "":"" 'colon' expression 'value' {{}}
   ;
enumExprFieldless
   : pathInExpression
   ;

# 8.2.9
callParams
   : expression 'arg' ("","" 'comma' expression 'arg')* "","" 'comma'?
   ;

# 8.2.12
closureExpression
   : ""move"" 'moveToken'? (""||"" 'bar' | ""|"" 'bar' closureParameters? ""|"" 'bar')
   (
      expression 'expression'
      | ""->"" 'arrow' typeNoBounds 'type' blockExpression 'expression'
   ) {{}}
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
   : ""ref"" 'refToken'? ""mut"" 'mutToken'? identifier 'name' (""@"" 'atToken' pattern 'pattern')?
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
   : outerAttribute 'attribute'*
   (
      tupleIndex 'name' "":"" 'colon' pattern 'pattern'
      | identifier 'name' "":"" 'colon' pattern 'pattern'
      | ""ref"" 'refToken'? ""mut"" 'mutToken'? identifier 'name'
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
   : outerAttribute 'attribute'* ((identifier 'name' | ""_"" 'name') "":"" 'colon')? type 'type'
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
   : pathIdentSegment (""::"" 'colonColon' genericArgs)?
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
   | <lt> 'lt' genericArg 'genericArg' ("","" 'comma' genericArg 'genericArg')* "","" 'comma'? <gt> 'gt'
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
   : identifier 'name' ""="" 'equalsToken' type 'type'
   ;

qualifiedPathInExpression
   : qualifiedPathType (""::"" 'separator' pathExprSegment)+
   ;
qualifiedPathType
   : <lt> 'lt' type 'type' (""as"" 'asToken' typePath 'typePath')? <gt> 'gt'
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
	#(132 0 #reduceFor: 5700609 false) 
	#(133 0 #reduceFor: 5729281 false) 
	#(158 0 #reduceFor: 8519681 false) 
	#(131 2 #reduceFor: 5667841 false) 
	#(132 2 #reduceFor: 5700610 false) 
	#(131 3 #reduceFor: 5667842 false) 
	#(133 2 #reduceFor: 5729282 false) 
	#(174 0 #reduceFor: 9928705 false) 
	#(370 1 #reduceFor: 32766981 false) 
	#(404 1 #reduceFor: 34965508 false) 
	#(370 1 #reduceFor: 32766980 false) 
	#(403 1 #reduceFor: 34735110 false) 
	#(173 1 #reduceFor: 9928705 false) 
	#(345 0 #reduceFor: 31310849 false) 
	#(404 1 #reduceFor: 34965507 false) 
	#(403 1 #reduceFor: 34735105 false) 
	#(370 1 #reduceFor: 32766979 false) 
	#(370 1 #reduceFor: 32766978 false) 
	#(404 1 #reduceFor: 34965505 false) 
	#(404 1 #reduceFor: 34965506 false) 
	#(141 1 #reduceFor: 6499330 false) 
	#(160 1 #reduceFor: 8865793 false) 
	#(160 1 #reduceFor: 8865794 false) 
	#(157 2 #reduceFor: 8509441 false) 
	#(157 2 #reduceFor: 8509442 false) 
	#(159 1 #reduceFor: 8590337 false) 
	#(159 1 #reduceFor: 8590338 false) 
	#(159 1 #reduceFor: 8590339 false) 
	#(159 1 #reduceFor: 8590340 false) 
	#(174 1 #reduceFor: 9928706 false) 
	#(172 1 #reduceFor: 9807873 false) 
	#(159 1 #reduceFor: 8590341 false) 
	#(159 1 #reduceFor: 8590342 false) 
	#(187 1 #reduceFor: 10797057 false) 
	#(187 1 #reduceFor: 10797058 false) 
	#(159 1 #reduceFor: 8590343 false) 
	#(159 1 #reduceFor: 8590344 false) 
	#(159 1 #reduceFor: 8590345 false) 
	#(159 1 #reduceFor: 8590346 false) 
	#(159 1 #reduceFor: 8590347 false) 
	#(159 1 #reduceFor: 8590348 false) 
	#(215 1 #reduceFor: 12993537 false) 
	#(215 1 #reduceFor: 12993538 false) 
	#(159 1 #reduceFor: 8590349 false) 
	#(158 2 #reduceFor: 8519682 false) 
	#(369 0 #reduceFor: 32713729 false) 
	#(370 1 #reduceFor: 32766977 false) 
	#(238 1 #reduceFor: 14972929 false) 
	#(172 2 #reduceFor: 9807875 false) 
	#(172 2 #reduceFor: 9807877 false) 
	#(172 2 #reduceFor: 9807881 false) 
	#(162 0 #reduceFor: 9041921 false) 
	#(175 1 #reduceFor: 9984001 false) 
	#(175 1 #reduceFor: 9984003 false) 
	#(173 2 #reduceFor: 9928706 false) 
	#(175 1 #reduceFor: 9984002 false) 
	#(336 1 #reduceFor: 30509057 false) 
	#(366 1 #reduceFor: 32585731 false) 
	#(366 1 #reduceFor: 32585730 false) 
	#(375 1 #reduceFor: 33074178 false) 
	#(357 1 #reduceFor: 32240641 false) 
	#(345 1 #reduceFor: 31310850 false) 
	#(345 1 #reduceFor: 31310852 false) 
	#(366 1 #reduceFor: 32585729 false) 
	#(223 0 #reduceFor: 13774849 false) 
	#(334 1 #reduceFor: 30115854 false) 
	#(134 1 #reduceFor: 5750786 false) 
	#(134 1 #reduceFor: 5750785 false) 
	#(333 1 #reduceFor: 30046209 false) 
	#(334 1 #reduceFor: 30115841 false) 
	#(334 1 #reduceFor: 30115846 false) 
	#(334 1 #reduceFor: 30115845 false) 
	#(334 1 #reduceFor: 30115849 false) 
	#(334 1 #reduceFor: 30115850 false) 
	#(334 1 #reduceFor: 30115848 false) 
	#(334 1 #reduceFor: 30115847 false) 
	#(334 1 #reduceFor: 30115853 false) 
	#(333 1 #reduceFor: 30046211 false) 
	#(334 1 #reduceFor: 30115843 false) 
	#(333 1 #reduceFor: 30046210 false) 
	#(334 1 #reduceFor: 30115842 false) 
	#(334 1 #reduceFor: 30115851 false) 
	#(353 1 #reduceFor: 31941633 false) 
	#(360 0 #reduceFor: 32331777 false) 
	#(361 1 #reduceFor: 32364546 false) 
	#(354 1 #reduceFor: 32008193 false) 
	#(361 1 #reduceFor: 32364545 false) 
	#(375 1 #reduceFor: 33074177 false) 
	#(400 1 #reduceFor: 34464769 false) 
	#(334 1 #reduceFor: 30115852 false) 
	#(362 1 #reduceFor: 32415745 false) 
	#(334 1 #reduceFor: 30115844 false) 
	#(399 0 #reduceFor: 34417665 false) 
	#(211 0 #reduceFor: 12673025 false) 
	#(172 2 #reduceFor: 9807874 false) 
	#(167 1 #reduceFor: 9382913 false) 
	#(167 1 #reduceFor: 9382922 false) 
	#(141 2 #reduceFor: 6499329 false) 
	#(367 2 #reduceFor: 32659457 false) 
	#(159 2 #reduceFor: 8590350 false) 
	#(159 2 #reduceFor: 8590351 false) 
	#(159 2 #reduceFor: 8590352 false) 
	#(159 2 #reduceFor: 8590353 false) 
	#(159 2 #reduceFor: 8590354 false) 
	#(159 2 #reduceFor: 8590355 false) 
	#(159 2 #reduceFor: 8590356 false) 
	#(159 2 #reduceFor: 8590357 false) 
	#(159 2 #reduceFor: 8590358 false) 
	#(159 2 #reduceFor: 8590359 false) 
	#(159 2 #reduceFor: 8590360 false) 
	#(159 2 #reduceFor: 8590361 false) 
	#(159 2 #reduceFor: 8590362 false) 
	#(236 5 #reduceFor: 14763009 false) 
	#(136 0 #reduceFor: 5914625 false) 
	#(239 1 #reduceFor: 15010817 false) 
	#(238 2 #reduceFor: 14972930 false) 
	#(367 3 #reduceFor: 32659458 false) 
	#(172 3 #reduceFor: 9807876 false) 
	#(172 3 #reduceFor: 9807879 false) 
	#(172 3 #reduceFor: 9807878 false) 
	#(172 3 #reduceFor: 9807883 false) 
	#(172 3 #reduceFor: 9807885 false) 
	#(172 3 #reduceFor: 9807882 false) 
	#(230 0 #reduceFor: 14246913 false) 
	#(180 0 #reduceFor: 10213377 false) 
	#(164 1 #reduceFor: 9198594 false) 
	#(164 1 #reduceFor: 9198593 false) 
	#(219 0 #reduceFor: 13576193 false) 
	#(337 2 #reduceFor: 30556161 false) 
	#(339 1 #reduceFor: 30588929 false) 
	#(362 2 #reduceFor: 32415747 false) 
	#(353 2 #reduceFor: 31941634 false) 
	#(354 2 #reduceFor: 32008194 false) 
	#(345 2 #reduceFor: 31310851 false) 
	#(234 2 #reduceFor: 14554113 false) 
	#(355 2 #reduceFor: 32086017 false) 
	#(356 2 #reduceFor: 32160769 false) 
	#(345 2 #reduceFor: 31310853 false) 
	#(221 2 #reduceFor: 13744129 false) 
	#(342 2 #reduceFor: 30896129 false) 
	#(362 2 #reduceFor: 32415746 false) 
	#(358 2 #reduceFor: 32294913 false) 
	#(400 2 #reduceFor: 34464772 false) 
	#(400 2 #reduceFor: 34464770 false) 
	#(400 2 #reduceFor: 34464771 false) 
	#(396 1 #reduceFor: 34337793 false) 
	#(394 2 #reduceFor: 34293761 false) 
	#(397 2 #reduceFor: 34368513 false) 
	#(161 3 #reduceFor: 8940545 false) 
	#(188 3 #reduceFor: 10845187 false) 
	#(210 0 #reduceFor: 12653569 false) 
	#(214 0 #reduceFor: 12907521 false) 
	#(211 1 #reduceFor: 12673026 false) 
	#(186 3 #reduceFor: 10634241 false) 
	#(167 2 #reduceFor: 9382916 false) 
	#(167 2 #reduceFor: 9382914 false) 
	#(169 0 #reduceFor: 9450497 false) 
	#(166 3 #reduceFor: 9315329 false) 
	#(369 2 #reduceFor: 32713730 false) 
	#(246 1 #reduceFor: 22039562 false) 
	#(246 1 #reduceFor: 22039561 false) 
	#(246 1 #reduceFor: 22039553 false) 
	#(246 1 #reduceFor: 22039554 false) 
	#(246 1 #reduceFor: 22039556 false) 
	#(246 1 #reduceFor: 22039557 false) 
	#(246 1 #reduceFor: 22039558 false) 
	#(246 1 #reduceFor: 22039559 false) 
	#(246 1 #reduceFor: 22039560 false) 
	#(239 2 #reduceFor: 15010818 false) 
	#(246 1 #reduceFor: 22039555 false) 
	#(237 4 #reduceFor: 14873601 false) 
	#(172 4 #reduceFor: 9807880 false) 
	#(172 4 #reduceFor: 9807884 false) 
	#(172 4 #reduceFor: 9807887 false) 
	#(172 4 #reduceFor: 9807886 false) 
	#(228 2 #reduceFor: 14208001 false) 
	#(198 4 #reduceFor: 11563009 false) 
	#(201 0 #reduceFor: 11739137 false) 
	#(163 4 #reduceFor: 9095169 false) 
	#(162 2 #reduceFor: 9041922 false) 
	#(335 3 #reduceFor: 30418945 false) 
	#(338 2 #reduceFor: 30588929 false) 
	#(337 3 #reduceFor: 30556162 false) 
	#(339 2 #reduceFor: 30588930 false) 
	#(362 3 #reduceFor: 32415749 false) 
	#(343 3 #reduceFor: 30998530 false) 
	#(343 3 #reduceFor: 30998529 false) 
	#(397 3 #reduceFor: 34368514 false) 
	#(362 3 #reduceFor: 32415748 false) 
	#(341 3 #reduceFor: 30799873 false) 
	#(345 3 #reduceFor: 31310854 false) 
	#(223 2 #reduceFor: 13774850 false) 
	#(393 3 #reduceFor: 34193409 false) 
	#(342 3 #reduceFor: 30896130 false) 
	#(342 3 #reduceFor: 30896131 false) 
	#(212 0 #reduceFor: 12727297 false) 
	#(358 3 #reduceFor: 32294914 false) 
	#(360 2 #reduceFor: 32331778 false) 
	#(401 2 #reduceFor: 34555905 false) 
	#(386 0 #reduceFor: 33903617 false) 
	#(400 3 #reduceFor: 34464773 false) 
	#(400 3 #reduceFor: 34464774 false) 
	#(376 2 #reduceFor: 33172481 false) 
	#(380 1 #reduceFor: 33707010 false) 
	#(380 1 #reduceFor: 33707009 false) 
	#(379 1 #reduceFor: 33611778 false) 
	#(379 1 #reduceFor: 33611777 false) 
	#(380 1 #reduceFor: 33707012 false) 
	#(378 0 #reduceFor: 33543169 false) 
	#(379 1 #reduceFor: 33611779 false) 
	#(379 1 #reduceFor: 33611780 false) 
	#(395 2 #reduceFor: 34337793 false) 
	#(396 2 #reduceFor: 34337794 false) 
	#(399 2 #reduceFor: 34417666 false) 
	#(142 4 #reduceFor: 6635521 false) 
	#(403 4 #reduceFor: 34735106 false) 
	#(403 4 #reduceFor: 34735107 false) 
	#(403 4 #reduceFor: 34735108 false) 
	#(196 0 #reduceFor: 11422721 false) 
	#(188 4 #reduceFor: 10845185 false) 
	#(192 0 #reduceFor: 11247617 false) 
	#(188 4 #reduceFor: 10845193 false) 
	#(188 4 #reduceFor: 10845190 false) 
	#(210 1 #reduceFor: 12653570 false) 
	#(213 1 #reduceFor: 12907521 false) 
	#(214 1 #reduceFor: 12907522 false) 
	#(186 4 #reduceFor: 10634249 false) 
	#(186 4 #reduceFor: 10634243 false) 
	#(161 4 #reduceFor: 8940547 false) 
	#(167 3 #reduceFor: 9382917 false) 
	#(170 0 #reduceFor: 9474049 false) 
	#(167 3 #reduceFor: 9382919 false) 
	#(167 3 #reduceFor: 9382924 false) 
	#(167 3 #reduceFor: 9382923 false) 
	#(368 2 #reduceFor: 32713729 false) 
	#(408 1 #reduceFor: 36077573 false) 
	#(408 1 #reduceFor: 36077593 false) 
	#(408 1 #reduceFor: 36077610 false) 
	#(140 1 #reduceFor: 6370309 false) 
	#(406 1 #reduceFor: 35860484 false) 
	#(408 1 #reduceFor: 36077571 false) 
	#(408 1 #reduceFor: 36077585 false) 
	#(408 1 #reduceFor: 36077576 false) 
	#(408 1 #reduceFor: 36077587 false) 
	#(406 1 #reduceFor: 35860483 false) 
	#(405 1 #reduceFor: 35071027 false) 
	#(138 3 #reduceFor: 6173697 false) 
	#(155 1 #reduceFor: 7778305 false) 
	#(408 1 #reduceFor: 36077583 false) 
	#(155 1 #reduceFor: 7778306 false) 
	#(408 1 #reduceFor: 36077581 false) 
	#(408 1 #reduceFor: 36077604 false) 
	#(408 1 #reduceFor: 36077569 false) 
	#(408 1 #reduceFor: 36077582 false) 
	#(408 1 #reduceFor: 36077608 false) 
	#(408 1 #reduceFor: 36077600 false) 
	#(408 1 #reduceFor: 36077601 false) 
	#(408 1 #reduceFor: 36077602 false) 
	#(408 1 #reduceFor: 36077603 false) 
	#(408 1 #reduceFor: 36077570 false) 
	#(408 1 #reduceFor: 36077584 false) 
	#(408 1 #reduceFor: 36077606 false) 
	#(408 1 #reduceFor: 36077607 false) 
	#(408 1 #reduceFor: 36077605 false) 
	#(408 1 #reduceFor: 36077578 false) 
	#(408 1 #reduceFor: 36077589 false) 
	#(408 1 #reduceFor: 36077597 false) 
	#(408 1 #reduceFor: 36077591 false) 
	#(408 1 #reduceFor: 36077592 false) 
	#(408 1 #reduceFor: 36077609 false) 
	#(408 1 #reduceFor: 36077596 false) 
	#(408 1 #reduceFor: 36077579 false) 
	#(408 1 #reduceFor: 36077590 false) 
	#(408 1 #reduceFor: 36077580 false) 
	#(155 1 #reduceFor: 7778307 false) 
	#(408 1 #reduceFor: 36077598 false) 
	#(405 1 #reduceFor: 35071000 false) 
	#(408 1 #reduceFor: 36077572 false) 
	#(408 1 #reduceFor: 36077586 false) 
	#(408 1 #reduceFor: 36077599 false) 
	#(405 1 #reduceFor: 35071013 false) 
	#(405 1 #reduceFor: 35070977 false) 
	#(405 1 #reduceFor: 35071010 false) 
	#(405 1 #reduceFor: 35071011 false) 
	#(405 1 #reduceFor: 35071014 false) 
	#(405 1 #reduceFor: 35071015 false) 
	#(405 1 #reduceFor: 35070978 false) 
	#(405 1 #reduceFor: 35070979 false) 
	#(405 1 #reduceFor: 35070980 false) 
	#(405 1 #reduceFor: 35070981 false) 
	#(405 1 #reduceFor: 35071016 false) 
	#(405 1 #reduceFor: 35071012 false) 
	#(405 1 #reduceFor: 35070982 false) 
	#(405 1 #reduceFor: 35070983 false) 
	#(405 1 #reduceFor: 35070984 false) 
	#(405 1 #reduceFor: 35071017 false) 
	#(405 1 #reduceFor: 35070985 false) 
	#(405 1 #reduceFor: 35070986 false) 
	#(405 1 #reduceFor: 35070987 false) 
	#(405 1 #reduceFor: 35070988 false) 
	#(405 1 #reduceFor: 35070989 false) 
	#(405 1 #reduceFor: 35070990 false) 
	#(405 1 #reduceFor: 35070991 false) 
	#(405 1 #reduceFor: 35071018 false) 
	#(405 1 #reduceFor: 35070992 false) 
	#(405 1 #reduceFor: 35070993 false) 
	#(405 1 #reduceFor: 35070994 false) 
	#(405 1 #reduceFor: 35070995 false) 
	#(405 1 #reduceFor: 35071019 false) 
	#(405 1 #reduceFor: 35071020 false) 
	#(405 1 #reduceFor: 35070996 false) 
	#(405 1 #reduceFor: 35070997 false) 
	#(405 1 #reduceFor: 35070998 false) 
	#(405 1 #reduceFor: 35070999 false) 
	#(405 1 #reduceFor: 35071001 false) 
	#(405 1 #reduceFor: 35071002 false) 
	#(405 1 #reduceFor: 35071003 false) 
	#(405 1 #reduceFor: 35071004 false) 
	#(405 1 #reduceFor: 35071025 false) 
	#(405 1 #reduceFor: 35071005 false) 
	#(405 1 #reduceFor: 35071021 false) 
	#(405 1 #reduceFor: 35071026 false) 
	#(405 1 #reduceFor: 35071006 false) 
	#(405 1 #reduceFor: 35071022 false) 
	#(405 1 #reduceFor: 35071007 false) 
	#(405 1 #reduceFor: 35071023 false) 
	#(405 1 #reduceFor: 35071008 false) 
	#(405 1 #reduceFor: 35071009 false) 
	#(405 1 #reduceFor: 35071024 false) 
	#(408 1 #reduceFor: 36077575 false) 
	#(408 1 #reduceFor: 36077588 false) 
	#(408 1 #reduceFor: 36077577 false) 
	#(406 1 #reduceFor: 35860485 false) 
	#(408 1 #reduceFor: 36077595 false) 
	#(408 1 #reduceFor: 36077594 false) 
	#(408 1 #reduceFor: 36077574 false) 
	#(139 1 #reduceFor: 6313986 false) 
	#(136 2 #reduceFor: 5914626 false) 
	#(139 1 #reduceFor: 6313985 false) 
	#(140 1 #reduceFor: 6370308 false) 
	#(407 1 #reduceFor: 35971073 false) 
	#(406 1 #reduceFor: 35860482 false) 
	#(406 1 #reduceFor: 35860481 false) 
	#(140 1 #reduceFor: 6370305 false) 
	#(140 1 #reduceFor: 6370306 false) 
	#(140 1 #reduceFor: 6370307 false) 
	#(138 3 #reduceFor: 6173698 false) 
	#(138 3 #reduceFor: 6173699 false) 
	#(207 5 #reduceFor: 12278787 false) 
	#(207 5 #reduceFor: 12278785 false) 
	#(172 5 #reduceFor: 9807888 false) 
	#(230 2 #reduceFor: 14246914 false) 
	#(228 3 #reduceFor: 14208002 false) 
	#(231 1 #reduceFor: 14324737 false) 
	#(231 1 #reduceFor: 14324738 false) 
	#(180 2 #reduceFor: 10213378 false) 
	#(202 2 #reduceFor: 11782145 false) 
	#(198 5 #reduceFor: 11563010 false) 
	#(199 2 #reduceFor: 11714561 false) 
	#(198 5 #reduceFor: 11563013 false) 
	#(198 5 #reduceFor: 11563011 false) 
	#(165 2 #reduceFor: 9253890 false) 
	#(165 2 #reduceFor: 9253889 false) 
	#(163 5 #reduceFor: 9095170 false) 
	#(218 5 #reduceFor: 13472769 false) 
	#(219 2 #reduceFor: 13576194 false) 
	#(362 4 #reduceFor: 32415751 false) 
	#(362 4 #reduceFor: 32415750 false) 
	#(337 4 #reduceFor: 30556163 false) 
	#(244 1 #reduceFor: 16113706 false) 
	#(244 1 #reduceFor: 16113725 false) 
	#(244 1 #reduceFor: 16113721 false) 
	#(244 1 #reduceFor: 16113729 false) 
	#(244 1 #reduceFor: 16113739 false) 
	#(243 1 #reduceFor: 15987713 false) 
	#(243 1 #reduceFor: 15987714 false) 
	#(244 1 #reduceFor: 16113666 false) 
	#(244 1 #reduceFor: 16113667 false) 
	#(245 1 #reduceFor: 21742594 false) 
	#(245 1 #reduceFor: 21742595 false) 
	#(245 1 #reduceFor: 21742596 false) 
	#(244 1 #reduceFor: 16113736 false) 
	#(260 1 #reduceFor: 23252993 false) 
	#(260 1 #reduceFor: 23252994 false) 
	#(244 1 #reduceFor: 16113737 false) 
	#(271 1 #reduceFor: 24098817 false) 
	#(244 1 #reduceFor: 16113738 false) 
	#(245 1 #reduceFor: 21742597 false) 
	#(284 1 #reduceFor: 25147393 false) 
	#(284 1 #reduceFor: 25147395 false) 
	#(284 1 #reduceFor: 25147397 false) 
	#(284 1 #reduceFor: 25147399 false) 
	#(245 1 #reduceFor: 21742598 false) 
	#(245 1 #reduceFor: 21742599 false) 
	#(245 1 #reduceFor: 21742600 false) 
	#(247 1 #reduceFor: 22408193 false) 
	#(373 0 #reduceFor: 32954369 false) 
	#(374 1 #reduceFor: 32996353 false) 
	#(247 1 #reduceFor: 22408194 false) 
	#(225 1 #reduceFor: 13952001 false) 
	#(224 2 #reduceFor: 13847553 false) 
	#(224 2 #reduceFor: 13847554 false) 
	#(224 2 #reduceFor: 13847555 false) 
	#(226 1 #reduceFor: 14044161 false) 
	#(222 2 #reduceFor: 13774849 false) 
	#(221 4 #reduceFor: 13744130 false) 
	#(342 4 #reduceFor: 30896132 false) 
	#(344 4 #reduceFor: 31115265 false) 
	#(347 1 #reduceFor: 31460353 false) 
	#(350 0 #reduceFor: 31632385 false) 
	#(347 1 #reduceFor: 31460354 false) 
	#(359 2 #reduceFor: 32331777 false) 
	#(402 2 #reduceFor: 34648065 false) 
	#(401 3 #reduceFor: 34555907 false) 
	#(380 2 #reduceFor: 33707011 false) 
	#(398 2 #reduceFor: 34417665 false) 
	#(149 0 #reduceFor: 7113729 false) 
	#(146 0 #reduceFor: 6955009 false) 
	#(403 5 #reduceFor: 34735109 false) 
	#(208 5 #reduceFor: 12402689 false) 
	#(189 5 #reduceFor: 11027457 false) 
	#(197 2 #reduceFor: 11475969 false) 
	#(194 2 #reduceFor: 11385857 false) 
	#(188 5 #reduceFor: 10845186 false) 
	#(190 2 #reduceFor: 11208705 false) 
	#(188 5 #reduceFor: 10845191 false) 
	#(188 5 #reduceFor: 10845196 false) 
	#(188 5 #reduceFor: 10845188 false) 
	#(213 2 #reduceFor: 12907522 false) 
	#(186 5 #reduceFor: 10634245 false) 
	#(186 5 #reduceFor: 10634242 false) 
	#(186 5 #reduceFor: 10634251 false) 
	#(206 5 #reduceFor: 12126209 false) 
	#(170 1 #reduceFor: 9474050 false) 
	#(169 2 #reduceFor: 9450498 false) 
	#(167 4 #reduceFor: 9382920 false) 
	#(176 1 #reduceFor: 10056705 false) 
	#(178 0 #reduceFor: 10149889 false) 
	#(137 5 #reduceFor: 5961729 false) 
	#(137 5 #reduceFor: 5961730 false) 
	#(135 5 #reduceFor: 5840897 false) 
	#(229 2 #reduceFor: 14246913 false) 
	#(233 2 #reduceFor: 14470145 false) 
	#(365 0 #reduceFor: 32553985 false) 
	#(202 3 #reduceFor: 11782149 false) 
	#(202 3 #reduceFor: 11782146 false) 
	#(202 3 #reduceFor: 11782147 false) 
	#(202 3 #reduceFor: 11782148 false) 
	#(199 3 #reduceFor: 11714562 false) 
	#(201 2 #reduceFor: 11739138 false) 
	#(198 6 #reduceFor: 11563014 false) 
	#(198 6 #reduceFor: 11563015 false) 
	#(198 6 #reduceFor: 11563012 false) 
	#(220 2 #reduceFor: 13613057 false) 
	#(220 2 #reduceFor: 13613059 false) 
	#(220 2 #reduceFor: 13613058 false) 
	#(218 6 #reduceFor: 13472770 false) 
	#(362 5 #reduceFor: 32415752 false) 
	#(244 2 #reduceFor: 16113683 false) 
	#(244 2 #reduceFor: 16113677 false) 
	#(244 2 #reduceFor: 16113679 false) 
	#(244 2 #reduceFor: 16113681 false) 
	#(244 2 #reduceFor: 16113682 false) 
	#(244 2 #reduceFor: 16113707 false) 
	#(244 2 #reduceFor: 16113708 false) 
	#(251 2 #reduceFor: 22732801 false) 
	#(244 2 #reduceFor: 16113740 false) 
	#(244 2 #reduceFor: 16113727 false) 
	#(244 2 #reduceFor: 16113726 false) 
	#(244 2 #reduceFor: 16113723 false) 
	#(244 2 #reduceFor: 16113722 false) 
	#(310 1 #reduceFor: 28305409 false) 
	#(309 1 #reduceFor: 28274689 false) 
	#(307 1 #reduceFor: 27854850 false) 
	#(307 1 #reduceFor: 27854849 false) 
	#(307 1 #reduceFor: 27854851 false) 
	#(313 1 #reduceFor: 28513281 false) 
	#(307 1 #reduceFor: 27854853 false) 
	#(307 1 #reduceFor: 27854855 false) 
	#(307 1 #reduceFor: 27854852 false) 
	#(313 1 #reduceFor: 28513282 false) 
	#(307 1 #reduceFor: 27854856 false) 
	#(307 1 #reduceFor: 27854857 false) 
	#(313 1 #reduceFor: 28513283 false) 
	#(307 1 #reduceFor: 27854859 false) 
	#(313 1 #reduceFor: 28513285 false) 
	#(306 1 #reduceFor: 27487245 false) 
	#(304 0 #reduceFor: 27398145 false) 
	#(305 1 #reduceFor: 27426817 false) 
	#(306 1 #reduceFor: 27487233 false) 
	#(306 1 #reduceFor: 27487234 false) 
	#(306 1 #reduceFor: 27487235 false) 
	#(306 1 #reduceFor: 27487236 false) 
	#(305 1 #reduceFor: 27426818 false) 
	#(306 1 #reduceFor: 27487237 false) 
	#(306 1 #reduceFor: 27487238 false) 
	#(306 1 #reduceFor: 27487239 false) 
	#(306 1 #reduceFor: 27487240 false) 
	#(306 1 #reduceFor: 27487241 false) 
	#(306 1 #reduceFor: 27487242 false) 
	#(306 1 #reduceFor: 27487243 false) 
	#(306 1 #reduceFor: 27487244 false) 
	#(332 1 #reduceFor: 29966337 false) 
	#(313 1 #reduceFor: 28513287 false) 
	#(332 1 #reduceFor: 29966338 false) 
	#(313 1 #reduceFor: 28513288 false) 
	#(308 1 #reduceFor: 28154881 false) 
	#(307 1 #reduceFor: 27854854 false) 
	#(300 0 #reduceFor: 27162625 false) 
	#(285 2 #reduceFor: 25425921 false) 
	#(244 2 #reduceFor: 16113730 false) 
	#(252 2 #reduceFor: 22841345 false) 
	#(282 0 #reduceFor: 25010177 false) 
	#(279 2 #reduceFor: 24738817 false) 
	#(289 2 #reduceFor: 25942017 false) 
	#(244 2 #reduceFor: 16113665 false) 
	#(245 2 #reduceFor: 21742593 false) 
	#(244 2 #reduceFor: 16113704 false) 
	#(244 2 #reduceFor: 16113676 false) 
	#(340 5 #reduceFor: 30669825 false) 
	#(284 2 #reduceFor: 25147394 false) 
	#(284 2 #reduceFor: 25147396 false) 
	#(284 2 #reduceFor: 25147398 false) 
	#(284 2 #reduceFor: 25147400 false) 
	#(371 2 #reduceFor: 32897025 false) 
	#(392 1 #reduceFor: 34151425 false) 
	#(391 2 #reduceFor: 34101249 false) 
	#(225 2 #reduceFor: 13952003 false) 
	#(226 2 #reduceFor: 14044167 false) 
	#(226 2 #reduceFor: 14044163 false) 
	#(221 5 #reduceFor: 13744131 false) 
	#(393 5 #reduceFor: 34193410 false) 
	#(344 5 #reduceFor: 31115269 false) 
	#(216 6 #reduceFor: 13047809 false) 
	#(212 2 #reduceFor: 12727298 false) 
	#(344 5 #reduceFor: 31115266 false) 
	#(351 2 #reduceFor: 31682561 false) 
	#(344 5 #reduceFor: 31115267 false) 
	#(348 2 #reduceFor: 31581185 false) 
	#(401 4 #reduceFor: 34555906 false) 
	#(402 3 #reduceFor: 34648066 false) 
	#(386 2 #reduceFor: 33903618 false) 
	#(240 1 #reduceFor: 15628289 false) 
	#(248 3 #reduceFor: 22502401 false) 
	#(240 1 #reduceFor: 15628293 false) 
	#(240 1 #reduceFor: 15628290 false) 
	#(250 1 #reduceFor: 22625281 false) 
	#(240 1 #reduceFor: 15628291 false) 
	#(240 1 #reduceFor: 15628292 false) 
	#(249 1 #reduceFor: 22608899 false) 
	#(242 1 #reduceFor: 15866882 false) 
	#(249 1 #reduceFor: 22608897 false) 
	#(376 4 #reduceFor: 33172482 false) 
	#(378 2 #reduceFor: 33543170 false) 
	#(390 3 #reduceFor: 34021377 false) 
	#(144 2 #reduceFor: 6921217 false) 
	#(143 3 #reduceFor: 6749187 false) 
	#(161 6 #reduceFor: 8940546 false) 
	#(208 6 #reduceFor: 12402691 false) 
	#(189 6 #reduceFor: 11027458 false) 
	#(197 3 #reduceFor: 11475970 false) 
	#(189 6 #reduceFor: 11027459 false) 
	#(194 3 #reduceFor: 11385858 false) 
	#(196 2 #reduceFor: 11422722 false) 
	#(190 3 #reduceFor: 11208706 false) 
	#(192 2 #reduceFor: 11247618 false) 
	#(189 6 #reduceFor: 11027461 false) 
	#(188 6 #reduceFor: 10845192 false) 
	#(188 6 #reduceFor: 10845194 false) 
	#(188 6 #reduceFor: 10845189 false) 
	#(209 6 #reduceFor: 12536849 false) 
	#(186 6 #reduceFor: 10634247 false) 
	#(186 6 #reduceFor: 10634253 false) 
	#(186 6 #reduceFor: 10634250 false) 
	#(186 6 #reduceFor: 10634244 false) 
	#(206 6 #reduceFor: 12126211 false) 
	#(206 6 #reduceFor: 12126210 false) 
	#(218 6 #reduceFor: 13472771 false) 
	#(168 2 #reduceFor: 9450497 false) 
	#(167 5 #reduceFor: 9382915 false) 
	#(171 6 #reduceFor: 9574402 false) 
	#(171 6 #reduceFor: 9574401 false) 
	#(176 2 #reduceFor: 10056706 false) 
	#(183 2 #reduceFor: 10426370 false) 
	#(181 1 #reduceFor: 10263553 false) 
	#(179 2 #reduceFor: 10198017 false) 
	#(179 2 #reduceFor: 10198018 false) 
	#(183 2 #reduceFor: 10426369 false) 
	#(183 2 #reduceFor: 10426371 false) 
	#(176 2 #reduceFor: 10056707 false) 
	#(209 7 #reduceFor: 12536853 false) 
	#(207 7 #reduceFor: 12278788 false) 
	#(207 7 #reduceFor: 12278786 false) 
	#(233 3 #reduceFor: 14470147 false) 
	#(233 3 #reduceFor: 14470146 false) 
	#(232 3 #reduceFor: 14406657 false) 
	#(363 1 #reduceFor: 32533505 false) 
	#(202 4 #reduceFor: 11782150 false) 
	#(202 4 #reduceFor: 11782151 false) 
	#(202 4 #reduceFor: 11782152 false) 
	#(203 2 #reduceFor: 11926529 false) 
	#(205 2 #reduceFor: 12071937 false) 
	#(204 2 #reduceFor: 11998209 false) 
	#(200 2 #reduceFor: 11739137 false) 
	#(198 7 #reduceFor: 11563016 false) 
	#(220 3 #reduceFor: 13613061 false) 
	#(220 3 #reduceFor: 13613060 false) 
	#(244 3 #reduceFor: 16113678 false) 
	#(244 3 #reduceFor: 16113680 false) 
	#(244 3 #reduceFor: 16113734 false) 
	#(258 1 #reduceFor: 23139329 false) 
	#(256 1 #reduceFor: 23119873 false) 
	#(371 3 #reduceFor: 32897026 false) 
	#(244 3 #reduceFor: 16113732 false) 
	#(255 0 #reduceFor: 22982657 false) 
	#(251 3 #reduceFor: 22732802 false) 
	#(244 3 #reduceFor: 16113728 false) 
	#(244 3 #reduceFor: 16113724 false) 
	#(314 2 #reduceFor: 28687363 false) 
	#(326 2 #reduceFor: 29550593 false) 
	#(327 1 #reduceFor: 29627394 false) 
	#(307 2 #reduceFor: 27854858 false) 
	#(313 2 #reduceFor: 28513284 false) 
	#(307 2 #reduceFor: 27854860 false) 
	#(313 2 #reduceFor: 28513286 false) 
	#(330 2 #reduceFor: 29811713 false) 
	#(325 0 #reduceFor: 29508609 false) 
	#(306 2 #reduceFor: 27487246 false) 
	#(308 2 #reduceFor: 28154883 false) 
	#(308 2 #reduceFor: 28154885 false) 
	#(314 2 #reduceFor: 28687361 false) 
	#(302 2 #reduceFor: 27363329 false) 
	#(311 2 #reduceFor: 28333058 false) 
	#(290 3 #reduceFor: 26013697 false) 
	#(298 2 #reduceFor: 27126785 false) 
	#(279 3 #reduceFor: 24738823 false) 
	#(286 3 #reduceFor: 25503745 false) 
	#(279 3 #reduceFor: 24738819 false) 
	#(283 2 #reduceFor: 25069569 false) 
	#(280 2 #reduceFor: 24961025 false) 
	#(244 3 #reduceFor: 16113697 false) 
	#(244 3 #reduceFor: 16113687 false) 
	#(244 3 #reduceFor: 16113715 false) 
	#(244 3 #reduceFor: 16113702 false) 
	#(244 3 #reduceFor: 16113716 false) 
	#(244 3 #reduceFor: 16113685 false) 
	#(244 3 #reduceFor: 16113713 false) 
	#(244 3 #reduceFor: 16113688 false) 
	#(244 3 #reduceFor: 16113711 false) 
	#(244 3 #reduceFor: 16113689 false) 
	#(244 3 #reduceFor: 16113712 false) 
	#(244 3 #reduceFor: 16113672 false) 
	#(259 1 #reduceFor: 23203841 false) 
	#(244 3 #reduceFor: 16113671 false) 
	#(244 3 #reduceFor: 16113670 false) 
	#(244 3 #reduceFor: 16113705 false) 
	#(244 3 #reduceFor: 16113709 false) 
	#(244 3 #reduceFor: 16113686 false) 
	#(244 3 #reduceFor: 16113714 false) 
	#(244 3 #reduceFor: 16113690 false) 
	#(244 3 #reduceFor: 16113719 false) 
	#(244 3 #reduceFor: 16113701 false) 
	#(244 3 #reduceFor: 16113710 false) 
	#(244 3 #reduceFor: 16113696 false) 
	#(244 3 #reduceFor: 16113700 false) 
	#(244 3 #reduceFor: 16113691 false) 
	#(244 3 #reduceFor: 16113720 false) 
	#(244 3 #reduceFor: 16113692 false) 
	#(244 3 #reduceFor: 16113694 false) 
	#(244 3 #reduceFor: 16113718 false) 
	#(244 3 #reduceFor: 16113684 false) 
	#(244 3 #reduceFor: 16113717 false) 
	#(244 3 #reduceFor: 16113703 false) 
	#(244 3 #reduceFor: 16113695 false) 
	#(244 3 #reduceFor: 16113673 false) 
	#(269 0 #reduceFor: 23974913 false) 
	#(244 3 #reduceFor: 16113699 false) 
	#(244 3 #reduceFor: 16113698 false) 
	#(244 3 #reduceFor: 16113693 false) 
	#(267 3 #reduceFor: 23901185 false) 
	#(272 3 #reduceFor: 24259585 false) 
	#(275 0 #reduceFor: 24400897 false) 
	#(276 1 #reduceFor: 24457217 false) 
	#(373 2 #reduceFor: 32954370 false) 
	#(374 3 #reduceFor: 32996354 false) 
	#(372 2 #reduceFor: 32954369 false) 
	#(392 2 #reduceFor: 34151426 false) 
	#(225 3 #reduceFor: 13952002 false) 
	#(226 3 #reduceFor: 14044169 false) 
	#(226 3 #reduceFor: 14044165 false) 
	#(226 3 #reduceFor: 14044162 false) 
	#(216 7 #reduceFor: 13047811 false) 
	#(344 6 #reduceFor: 31115270 false) 
	#(344 6 #reduceFor: 31115271 false) 
	#(235 2 #reduceFor: 14617601 false) 
	#(235 2 #reduceFor: 14617604 false) 
	#(235 2 #reduceFor: 14617602 false) 
	#(235 2 #reduceFor: 14617603 false) 
	#(216 7 #reduceFor: 13047810 false) 
	#(346 2 #reduceFor: 31400961 false) 
	#(344 6 #reduceFor: 31115268 false) 
	#(348 3 #reduceFor: 31581186 false) 
	#(350 2 #reduceFor: 31632386 false) 
	#(385 2 #reduceFor: 33903617 false) 
	#(401 5 #reduceFor: 34555908 false) 
	#(242 2 #reduceFor: 15866881 false) 
	#(242 2 #reduceFor: 15866883 false) 
	#(248 4 #reduceFor: 22502402 false) 
	#(250 2 #reduceFor: 22625282 false) 
	#(249 2 #reduceFor: 22608898 false) 
	#(376 5 #reduceFor: 33172483 false) 
	#(377 2 #reduceFor: 33543169 false) 
	#(148 3 #reduceFor: 7084033 false) 
	#(150 1 #reduceFor: 7249922 false) 
	#(149 2 #reduceFor: 7113730 false) 
	#(150 1 #reduceFor: 7249921 false) 
	#(152 1 #reduceFor: 7477252 false) 
	#(152 1 #reduceFor: 7477249 false) 
	#(152 1 #reduceFor: 7477250 false) 
	#(152 1 #reduceFor: 7477251 false) 
	#(148 3 #reduceFor: 7084034 false) 
	#(148 3 #reduceFor: 7084035 false) 
	#(143 4 #reduceFor: 6749185 false) 
	#(144 3 #reduceFor: 6921218 false) 
	#(146 2 #reduceFor: 6955010 false) 
	#(156 1 #reduceFor: 7822337 false) 
	#(147 3 #reduceFor: 7014401 false) 
	#(143 4 #reduceFor: 6749186 false) 
	#(208 7 #reduceFor: 12402690 false) 
	#(189 7 #reduceFor: 11027460 false) 
	#(195 2 #reduceFor: 11422721 false) 
	#(193 4 #reduceFor: 11301889 false) 
	#(191 2 #reduceFor: 11247617 false) 
	#(189 7 #reduceFor: 11027462 false) 
	#(189 7 #reduceFor: 11027463 false) 
	#(188 7 #reduceFor: 10845195 false) 
	#(209 7 #reduceFor: 12536850 false) 
	#(209 7 #reduceFor: 12536833 false) 
	#(209 7 #reduceFor: 12536851 false) 
	#(186 7 #reduceFor: 10634246 false) 
	#(186 7 #reduceFor: 10634255 false) 
	#(186 7 #reduceFor: 10634252 false) 
	#(206 7 #reduceFor: 12126212 false) 
	#(218 7 #reduceFor: 13472772 false) 
	#(161 7 #reduceFor: 8940548 false) 
	#(209 7 #reduceFor: 12536857 false) 
	#(167 6 #reduceFor: 9382918 false) 
	#(185 2 #reduceFor: 10579969 false) 
	#(171 7 #reduceFor: 9574406 false) 
	#(171 7 #reduceFor: 9574405 false) 
	#(171 7 #reduceFor: 9574404 false) 
	#(171 7 #reduceFor: 9574403 false) 
	#(171 7 #reduceFor: 9574410 false) 
	#(171 7 #reduceFor: 9574409 false) 
	#(181 2 #reduceFor: 10263554 false) 
	#(181 2 #reduceFor: 10263555 false) 
	#(176 3 #reduceFor: 10056708 false) 
	#(178 2 #reduceFor: 10149890 false) 
	#(171 7 #reduceFor: 9574418 false) 
	#(171 7 #reduceFor: 9574417 false) 
	#(209 8 #reduceFor: 12536854 false) 
	#(209 8 #reduceFor: 12536837 false) 
	#(209 8 #reduceFor: 12536855 false) 
	#(233 4 #reduceFor: 14470148 false) 
	#(365 2 #reduceFor: 32553986 false) 
	#(363 2 #reduceFor: 32533506 false) 
	#(203 3 #reduceFor: 11926530 false) 
	#(204 3 #reduceFor: 11998210 false) 
	#(244 4 #reduceFor: 16113731 false) 
	#(257 2 #reduceFor: 23139329 false) 
	#(244 4 #reduceFor: 16113735 false) 
	#(256 2 #reduceFor: 23119874 false) 
	#(258 2 #reduceFor: 23139330 false) 
	#(253 2 #reduceFor: 22941697 false) 
	#(244 4 #reduceFor: 16113733 false) 
	#(314 3 #reduceFor: 28687364 false) 
	#(329 3 #reduceFor: 29744129 false) 
	#(327 2 #reduceFor: 29627393 false) 
	#(328 1 #reduceFor: 29702145 false) 
	#(327 2 #reduceFor: 29627395 false) 
	#(326 3 #reduceFor: 29550594 false) 
	#(331 2 #reduceFor: 29892609 false) 
	#(330 3 #reduceFor: 29811714 false) 
	#(308 3 #reduceFor: 28154887 false) 
	#(302 3 #reduceFor: 27363330 false) 
	#(314 3 #reduceFor: 28687362 false) 
	#(304 2 #reduceFor: 27398146 false) 
	#(312 3 #reduceFor: 28438529 false) 
	#(311 3 #reduceFor: 28333057 false) 
	#(322 3 #reduceFor: 29378561 false) 
	#(315 3 #reduceFor: 28775425 false) 
	#(316 1 #reduceFor: 28874753 false) 
	#(319 0 #reduceFor: 29039617 false) 
	#(316 1 #reduceFor: 28874756 false) 
	#(308 3 #reduceFor: 28154882 false) 
	#(298 3 #reduceFor: 27126786 false) 
	#(300 2 #reduceFor: 27162626 false) 
	#(295 0 #reduceFor: 26833921 false) 
	#(279 4 #reduceFor: 24738825 false) 
	#(279 4 #reduceFor: 24738821 false) 
	#(280 3 #reduceFor: 24961026 false) 
	#(282 2 #reduceFor: 25010178 false) 
	#(279 4 #reduceFor: 24738818 false) 
	#(278 2 #reduceFor: 24643585 false) 
	#(244 4 #reduceFor: 16113674 false) 
	#(244 4 #reduceFor: 16113675 false) 
	#(261 4 #reduceFor: 23373825 false) 
	#(264 0 #reduceFor: 23567361 false) 
	#(272 4 #reduceFor: 24259586 false) 
	#(273 2 #reduceFor: 24357889 false) 
	#(227 4 #reduceFor: 14136321 false) 
	#(225 4 #reduceFor: 13952004 false) 
	#(226 4 #reduceFor: 14044171 false) 
	#(226 4 #reduceFor: 14044168 false) 
	#(226 4 #reduceFor: 14044164 false) 
	#(216 8 #reduceFor: 13047812 false) 
	#(344 7 #reduceFor: 31115272 false) 
	#(235 3 #reduceFor: 14617607 false) 
	#(235 3 #reduceFor: 14617605 false) 
	#(235 3 #reduceFor: 14617606 false) 
	#(351 4 #reduceFor: 31682563 false) 
	#(351 4 #reduceFor: 31682562 false) 
	#(349 2 #reduceFor: 31632385 false) 
	#(145 2 #reduceFor: 6955009 false) 
	#(208 8 #reduceFor: 12402692 false) 
	#(193 5 #reduceFor: 11301890 false) 
	#(189 8 #reduceFor: 11027464 false) 
	#(209 8 #reduceFor: 12536852 false) 
	#(209 8 #reduceFor: 12536835 false) 
	#(186 8 #reduceFor: 10634248 false) 
	#(186 8 #reduceFor: 10634254 false) 
	#(209 8 #reduceFor: 12536861 false) 
	#(209 8 #reduceFor: 12536858 false) 
	#(209 8 #reduceFor: 12536841 false) 
	#(209 8 #reduceFor: 12536859 false) 
	#(167 7 #reduceFor: 9382921 false) 
	#(171 8 #reduceFor: 9574408 false) 
	#(171 8 #reduceFor: 9574407 false) 
	#(171 8 #reduceFor: 9574414 false) 
	#(171 8 #reduceFor: 9574413 false) 
	#(171 8 #reduceFor: 9574412 false) 
	#(171 8 #reduceFor: 9574411 false) 
	#(176 4 #reduceFor: 10056709 false) 
	#(182 3 #reduceFor: 10351617 false) 
	#(181 3 #reduceFor: 10263556 false) 
	#(181 3 #reduceFor: 10263557 false) 
	#(184 3 #reduceFor: 10513410 false) 
	#(184 3 #reduceFor: 10513409 false) 
	#(177 2 #reduceFor: 10149889 false) 
	#(171 8 #reduceFor: 9574422 false) 
	#(171 8 #reduceFor: 9574421 false) 
	#(171 8 #reduceFor: 9574420 false) 
	#(171 8 #reduceFor: 9574419 false) 
	#(171 8 #reduceFor: 9574426 false) 
	#(171 8 #reduceFor: 9574425 false) 
	#(209 9 #reduceFor: 12536856 false) 
	#(209 9 #reduceFor: 12536839 false) 
	#(364 2 #reduceFor: 32553985 false) 
	#(253 3 #reduceFor: 22941699 false) 
	#(253 3 #reduceFor: 22941698 false) 
	#(255 2 #reduceFor: 22982658 false) 
	#(324 2 #reduceFor: 29508609 false) 
	#(327 3 #reduceFor: 29627396 false) 
	#(328 2 #reduceFor: 29702146 false) 
	#(331 3 #reduceFor: 29892610 false) 
	#(325 2 #reduceFor: 29508610 false) 
	#(308 4 #reduceFor: 28154884 false) 
	#(308 4 #reduceFor: 28154886 false) 
	#(288 5 #reduceFor: 25812993 false) 
	#(303 2 #reduceFor: 27398145 false) 
	#(323 2 #reduceFor: 29477889 false) 
	#(322 4 #reduceFor: 29378562 false) 
	#(320 2 #reduceFor: 29079555 false) 
	#(321 2 #reduceFor: 29324289 false) 
	#(315 4 #reduceFor: 28775426 false) 
	#(316 2 #reduceFor: 28874754 false) 
	#(317 2 #reduceFor: 28994561 false) 
	#(290 5 #reduceFor: 26013698 false) 
	#(290 5 #reduceFor: 26013699 false) 
	#(290 5 #reduceFor: 26013700 false) 
	#(299 2 #reduceFor: 27162625 false) 
	#(292 5 #reduceFor: 26692609 false) 
	#(279 5 #reduceFor: 24738827 false) 
	#(279 5 #reduceFor: 24738824 false) 
	#(279 5 #reduceFor: 24738820 false) 
	#(283 4 #reduceFor: 25069570 false) 
	#(281 2 #reduceFor: 25010177 false) 
	#(244 5 #reduceFor: 16113668 false) 
	#(278 3 #reduceFor: 24643586 false) 
	#(269 2 #reduceFor: 23974914 false) 
	#(267 5 #reduceFor: 23901186 false) 
	#(266 2 #reduceFor: 23846913 false) 
	#(265 2 #reduceFor: 23690241 false) 
	#(261 5 #reduceFor: 23373826 false) 
	#(262 2 #reduceFor: 23520258 false) 
	#(261 5 #reduceFor: 23373827 false) 
	#(276 3 #reduceFor: 24457219 false) 
	#(273 3 #reduceFor: 24357890 false) 
	#(275 2 #reduceFor: 24400898 false) 
	#(276 3 #reduceFor: 24457218 false) 
	#(226 5 #reduceFor: 14044170 false) 
	#(226 5 #reduceFor: 14044166 false) 
	#(352 5 #reduceFor: 31799297 false) 
	#(241 4 #reduceFor: 15746049 false) 
	#(217 9 #reduceFor: 13206529 false) 
	#(151 1 #reduceFor: 7409665 false) 
	#(209 9 #reduceFor: 12536834 false) 
	#(186 9 #reduceFor: 10634256 false) 
	#(209 9 #reduceFor: 12536862 false) 
	#(209 9 #reduceFor: 12536845 false) 
	#(209 9 #reduceFor: 12536863 false) 
	#(209 9 #reduceFor: 12536860 false) 
	#(209 9 #reduceFor: 12536843 false) 
	#(171 9 #reduceFor: 9574416 false) 
	#(171 9 #reduceFor: 9574415 false) 
	#(176 5 #reduceFor: 10056710 false) 
	#(182 4 #reduceFor: 10351618 false) 
	#(181 4 #reduceFor: 10263558 false) 
	#(171 9 #reduceFor: 9574424 false) 
	#(171 9 #reduceFor: 9574423 false) 
	#(171 9 #reduceFor: 9574430 false) 
	#(171 9 #reduceFor: 9574429 false) 
	#(171 9 #reduceFor: 9574428 false) 
	#(171 9 #reduceFor: 9574427 false) 
	#(209 10 #reduceFor: 12536838 false) 
	#(217 10 #reduceFor: 13206530 false) 
	#(254 2 #reduceFor: 22982657 false) 
	#(308 5 #reduceFor: 28154888 false) 
	#(323 3 #reduceFor: 29477890 false) 
	#(320 3 #reduceFor: 29079556 false) 
	#(320 3 #reduceFor: 29079557 false) 
	#(316 3 #reduceFor: 28874755 false) 
	#(319 2 #reduceFor: 29039618 false) 
	#(291 6 #reduceFor: 26237953 false) 
	#(291 6 #reduceFor: 26237957 false) 
	#(292 6 #reduceFor: 26692610 false) 
	#(295 2 #reduceFor: 26833922 false) 
	#(279 6 #reduceFor: 24738826 false) 
	#(287 6 #reduceFor: 25636865 false) 
	#(279 6 #reduceFor: 24738822 false) 
	#(244 6 #reduceFor: 16113669 false) 
	#(268 2 #reduceFor: 23974913 false) 
	#(267 6 #reduceFor: 23901187 false) 
	#(262 3 #reduceFor: 23520259 false) 
	#(264 2 #reduceFor: 23567362 false) 
	#(274 2 #reduceFor: 24400897 false) 
	#(217 10 #reduceFor: 13206531 false) 
	#(226 6 #reduceFor: 14044172 false) 
	#(217 10 #reduceFor: 13206533 false) 
	#(151 2 #reduceFor: 7409666 false) 
	#(150 4 #reduceFor: 7249924 false) 
	#(153 1 #reduceFor: 7597057 false) 
	#(150 4 #reduceFor: 7249923 false) 
	#(209 10 #reduceFor: 12536836 false) 
	#(209 10 #reduceFor: 12536864 false) 
	#(209 10 #reduceFor: 12536847 false) 
	#(217 10 #reduceFor: 13206537 false) 
	#(209 10 #reduceFor: 12536842 false) 
	#(171 10 #reduceFor: 9574432 false) 
	#(171 10 #reduceFor: 9574431 false) 
	#(209 11 #reduceFor: 12536840 false) 
	#(320 4 #reduceFor: 29079558 false) 
	#(320 4 #reduceFor: 29079553 false) 
	#(320 4 #reduceFor: 29079554 false) 
	#(318 2 #reduceFor: 29039617 false) 
	#(297 2 #reduceFor: 27058177 false) 
	#(279 7 #reduceFor: 24738828 false) 
	#(265 4 #reduceFor: 23690243 false) 
	#(265 4 #reduceFor: 23690242 false) 
	#(263 2 #reduceFor: 23567361 false) 
	#(262 4 #reduceFor: 23520257 false) 
	#(217 11 #reduceFor: 13206532 false) 
	#(217 11 #reduceFor: 13206534 false) 
	#(217 11 #reduceFor: 13206535 false) 
	#(241 6 #reduceFor: 15746051 false) 
	#(241 6 #reduceFor: 15746050 false) 
	#(154 1 #reduceFor: 7669764 false) 
	#(150 5 #reduceFor: 7249925 false) 
	#(154 1 #reduceFor: 7669761 false) 
	#(154 1 #reduceFor: 7669762 false) 
	#(154 1 #reduceFor: 7669763 false) 
	#(209 11 #reduceFor: 12536846 false) 
	#(217 11 #reduceFor: 13206538 false) 
	#(217 11 #reduceFor: 13206539 false) 
	#(217 11 #reduceFor: 13206541 false) 
	#(209 11 #reduceFor: 12536844 false) 
	#(291 8 #reduceFor: 26237954 false) 
	#(291 8 #reduceFor: 26237955 false) 
	#(291 8 #reduceFor: 26237956 false) 
	#(297 3 #reduceFor: 27058178 false) 
	#(293 4 #reduceFor: 26818561 false) 
	#(296 1 #reduceFor: 26953730 false) 
	#(293 4 #reduceFor: 26818563 false) 
	#(294 3 #reduceFor: 26833921 false) 
	#(217 12 #reduceFor: 13206536 false) 
	#(150 6 #reduceFor: 7249926 false) 
	#(209 12 #reduceFor: 12536848 false) 
	#(217 12 #reduceFor: 13206540 false) 
	#(217 12 #reduceFor: 13206542 false) 
	#(217 12 #reduceFor: 13206543 false) 
	#(301 2 #reduceFor: 27183105 false) 
	#(296 2 #reduceFor: 26953729 false) 
	#(293 5 #reduceFor: 26818562 false) 
	#(296 2 #reduceFor: 26953731 false) 
	#(293 5 #reduceFor: 26818564 false) 
	#(241 8 #reduceFor: 15746052 false) 
	#(217 13 #reduceFor: 13206544 false) 
	#(301 5 #reduceFor: 27183106 false)
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
	^ #('"!"' '"!="' '"#"' '"$"' '"$crate"' '"%"' '"%="' '"&"' '"&&"' '"&="' '"''_"' '"''static"' '"("' '")"' '"*"' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"."' '".."' '"..."' '"..="' '"/"' '"/="' '":"' '"::"' '";"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>"' '">>="' '">>>"' '"?"' '"@"' '"Self"' '"["' '"]"' '"^"' '"^="' '"_"' '"abstract"' '"as"' '"async"' '"auto"' '"await"' '"become"' '"box"' '"break"' '"const"' '"continue"' '"crate"' '"default"' '"do"' '"dyn"' '"else"' '"enum"' '"extern"' '"false"' '"final"' '"fn"' '"for"' '"if"' '"impl"' '"in"' '"let"' '"loop"' '"macro"' '"macro_rules"' '"match"' '"mod"' '"move"' '"mut"' '"override"' '"priv"' '"pub"' '"ref"' '"return"' '"self"' '"static"' '"struct"' '"super"' '"trait"' '"true"' '"try"' '"type"' '"typeof"' '"union"' '"unsafe"' '"unsized"' '"use"' '"virtual"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"}"' '<bar>' '<lparen>' '<lbracket>' '<NON_KEYWORD_IDENTIFIER>' '<RAW_IDENTIFIER>' '<comment>' '<SHEBANG>' '<whitespace>' '<CHAR_LITERAL>' '<STRING_LITERAL>' '<rawStringStart>' '<simpleRawString>' '<BYTE_LITERAL>' '<BYTE_STRING_LITERAL>' '<INTEGER_LITERAL>' '<potentialFloat>' '<FLOAT_LITERAL>' '<LIFETIME_OR_LABEL>' '<lt>' '<gt>' '<amp>' 'B e g i n' 'crate' 'innerAttribute ''attribute''*' 'item*' 'macroInvocation' 'macroInvocationWithBlock' 'tokenTree*' 'macroInvocationWithoutBlock' 'delimTokenTree' 'tokenTree' 'tokenTreeToken' 'macroInvocationSemi' 'macroRulesDefinition' 'macroRulesDef' 'macroRules' '(";" ''semicolon'' macroRule ''rule'')' '(";" ''semicolon'' macroRule ''rule'')*' 'macroRule' 'macroMatcher' 'macroMatch ''match''*' 'macroMatch' 'macroMatch ''match''+' 'macroMatchToken' 'macroFragSpec' 'macroRepSep' 'macroRepOp' 'macroTranscriber' 'item' 'outerAttribute ''attribute''*' 'visItem' 'macroItem' 'module' 'innerAttribute*' 'externCrate' 'crateRef' 'asClause' 'useDeclaration' 'useTree' '("," ''comma'' useTree)' '("," ''comma'' useTree)*' '"," ''comma''?' 'function' 'functionQualifiers' '("extern" ''externToken'' abi?)' '("extern" ''externToken'' abi?)?' 'abi' 'functionParameters' '("," ''comma'' functionParam)' '("," ''comma'' functionParam)*' 'selfParam' 'outerAttribute*' 'shorthandSelf' 'typedSelf' 'functionParam' 'functionParamPattern' 'functionReturnType' 'typeAlias' 'struct' 'structStruct' 'tupleStruct' 'structFields' '("," ''comma'' structField ''field'')' '("," ''comma'' structField ''field'')*' 'structField' 'tupleFields' '("," ''comma'' tupleField ''field'')' '("," ''comma'' tupleField ''field'')*' 'tupleField' 'enumeration' 'enumItems' '("," ''comma'' enumItem)' '("," ''comma'' enumItem)*' 'enumItem' 'enumItemTuple' 'enumItemStruct' 'enumItemDiscriminant' 'union' 'constantItem' 'staticItem' 'trait' 'typeParamBounds?' 'whereClause ''where''?' 'associatedItem*' '(":" typeParamBounds?)' '(":" typeParamBounds?)?' 'implementation' 'inherentImpl' 'traitImpl' 'externBlock' 'externalItem*' 'externalItem' 'genericParams' '(genericParam "," ''comma'')' '(genericParam "," ''comma'')*' 'genericParam' 'lifetimeParam' 'typeParam' 'constParam' 'whereClause' '(whereClauseItem ''clause'' "," ''comma'')' '(whereClauseItem ''clause'' "," ''comma'')*' 'whereClauseItem' 'lifetimeWhereClauseItem' 'typeBoundWhereClauseItem' 'forLifetimes' 'associatedItem' 'innerAttribute' 'outerAttribute' 'attr' 'attrInput' 'statement' 'letStatement' 'expressionStatement' 'expression' 'expressionWithoutBlock' 'expressionWithBlock' 'literalExpression' 'pathExpression' 'blockExpression' 'statements' 'statement ''statement''+' 'asyncBlockExpression' 'unsafeBlockExpression' 'arrayElements' '("," ''separator'' expression ''element'')' '("," ''separator'' expression ''element'')*' 'tupleElements' '(expression ''element'' "," ''comma'')' '(expression ''element'' "," ''comma'')+' 'tupleIndex' 'structExpression' 'structExprStruct' 'structExprFields' '("," ''comma'' structExprField ''field'')' '("," ''comma'' structExprField ''field'')*' 'structExprField' 'structBase' 'structExprTuple' '("," ''comma'' expression ''arg'')' '("," ''comma'' expression ''arg'')*' 'structExprUnit' 'enumerationVariantExpression' 'enumExprStruct' 'enumExprFields' '("," ''comma'' enumExprField ''field'')' '("," ''comma'' enumExprField ''field'')*' 'enumExprField' 'enumExprFieldless' 'callParams' 'closureExpression' 'closureParameters' '("," ''comma'' closureParam ''parameter'')' '("," ''comma'' closureParam ''parameter'')*' 'closureParam' 'loopExpression' 'infiniteLoopExpression' 'predicateLoopExpression' 'predicatePatternLoopExpression' 'iteratorLoopExpression' 'loopLabel' 'ifExpression' 'ifLetExpression' 'matchExpression' 'matchArms' '(matchArm "=>" matchArmExpression)' '(matchArm "=>" matchArmExpression)*' 'matchArmExpression' 'matchArm' 'matchArmPatterns' '("|" pattern)' '("|" pattern)*' 'matchArmGuard' 'pattern' '("|" patternNoTopAlt)' '("|" patternNoTopAlt)*' 'patternNoTopAlt' 'patternWithoutRange' 'literalPattern' 'identifierPattern' 'wildcardPattern' 'restPattern' 'rangePattern' 'obsoleteRangePattern' 'rangePatternBound' 'referencePattern' 'structPattern' 'structPatternElements' 'structPatternFields' '("," ''comma'' structPatternField)' '("," ''comma'' structPatternField)*' 'structPatternField' 'structPatternEtCetera' 'tupleStructPattern' 'tupleStructItems' '("," ''comma'' pattern)' '("," ''comma'' pattern)*' 'tuplePattern' 'tuplePatternItems' '("," ''comma'' pattern)+' 'groupedPattern' 'slicePattern' 'slicePatternItems' 'pathPattern' 'type' 'typeNoBounds' 'parenthesizedType' 'neverType' 'tupleType' '(type ''type'' "," ''comma'')' '(type ''type'' "," ''comma'')+' 'arrayType' 'sliceType' 'referenceType' 'rawPointerType' 'bareFunctionType' 'functionTypeQualifiers' 'bareFunctionReturnType' 'functionParametersMaybeNamedVariadic' 'maybeNamedFunctionParameters' '("," ''comma'' maybeNamedParam)' '("," ''comma'' maybeNamedParam)*' 'maybeNamedParam' 'maybeNamedFunctionParametersVariadic' 'traitObjectType' 'traitObjectTypeOneBound' 'implTraitType' 'implTraitTypeOneBound' 'inferredType' 'typeParamBounds' '("+" typeParamBound)' '("+" typeParamBound)*' 'typeParamBound' 'traitBound' 'lifetimeBounds' '(lifetime "+")' '(lifetime "+")*' 'lifetime' 'simplePath' '("::" ''separator'' simplePathSegment)' '("::" ''separator'' simplePathSegment)*' 'simplePathSegment' 'pathInExpression' '("::" ''separator'' pathExprSegment)' '("::" ''separator'' pathExprSegment)*' 'pathExprSegment' 'pathIdentSegment' 'genericArgs' '("," ''comma'' genericArg ''genericArg'')' '("," ''comma'' genericArg ''genericArg'')*' 'genericArg' 'genericArgsConst' 'genericArgsLifetimes' '("," ''comma'' lifetime)' '("," ''comma'' lifetime)*' 'genericArgsTypes' '("," ''comma'' type ''type'')' '("," ''comma'' type ''type'')*' 'genericArgsBindings' '("," ''comma'' genericArgsBinding)' '("," ''comma'' genericArgsBinding)*' 'genericArgsBinding' 'qualifiedPathInExpression' '("::" ''separator'' pathExprSegment)+' 'qualifiedPathType' 'qualifiedPathInType' '("::" typePathSegment)' '("::" typePathSegment)+' 'typePath' '("::" ''separator'' typePathSegment)' '("::" ''separator'' typePathSegment)*' 'typePathSegment' 'typePathFn' 'typePathInputs' 'visibility' 'identifier' 'keyword' 'macroIdentifierLikeToken' 'macroLiteralToken' 'macroPunctuationToken' '<rawString>' 'E O F' 'error')
]

{ #category : #generated }
RustParser class >> transitionTable [
^#(
#[1 0 6 0 3 0 6 0 5 0 6 0 30 0 6 0 52 0 6 0 53 0 6 0 58 0 6 0 60 0 6 0 61 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 72 0 6 0 77 0 6 0 79 0 6 0 84 0 6 0 87 0 6 0 88 0 6 0 89 0 6 0 90 0 6 0 91 0 6 0 94 0 6 0 96 0 6 0 97 0 6 0 99 0 6 0 112 0 6 0 113 0 9 0 115 0 13 0 131 0 17 0 132 0 6 1 154] 
#[1 0 6 0 3 0 6 0 5 0 6 0 30 0 6 0 52 0 6 0 53 0 6 0 58 0 6 0 60 0 6 0 61 0 6 0 65 0 6 0 66 0 6 0 69 0 6 0 72 0 6 0 77 0 6 0 79 0 6 0 84 0 6 0 87 0 6 0 88 0 6 0 89 0 6 0 90 0 6 0 91 0 6 0 94 0 6 0 96 0 6 0 97 0 6 0 99 0 6 0 112 0 6 0 113 0 21 0 132 0 6 1 154] 
#[0 0 0 1 154] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 112 0 10 0 113 0 29 0 133 0 33 0 236 0 10 1 154] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 112 0 10 0 113 0 37 0 133 0 33 0 236 0 10 1 154] 
#[0 0 41 0 1] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158 0 18 1 154] 
#[0 0 22 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 46 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158 0 26 1 154] 
#[0 0 53 0 45] 
#[0 0 30 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 65 0 66 0 69 0 72 0 77 0 79 0 84 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 108 0 112 0 113 1 154] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 0 73 0 53 0 77 0 58 0 81 0 60 0 85 0 61 0 89 0 65 0 93 0 66 0 34 0 69 0 97 0 72 0 101 0 77 0 105 0 79 0 109 0 84 0 113 0 87 0 117 0 88 0 121 0 89 0 125 0 90 0 129 0 91 0 133 0 94 0 137 0 96 0 141 0 97 0 145 0 99 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 0 165 0 141 0 169 0 142 0 173 0 159 0 177 0 160 0 181 0 161 0 185 0 163 0 189 0 166 0 193 0 171 0 197 0 172 0 201 0 173 0 205 0 174 0 209 0 186 0 213 0 187 0 217 0 188 0 221 0 189 0 225 0 198 0 229 0 206 0 233 0 207 0 237 0 208 0 241 0 209 0 245 0 215 0 249 0 216 0 253 0 217 1 1 0 218 1 5 0 237 1 9 1 111 1 13 1 114 1 17 1 147 1 21 1 148] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 37 0 238 1 41 1 111 1 13 1 114 1 21 1 148] 
#[0 1 45 0 45] 
#[0 0 38 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 49 1 114 1 21 1 148] 
#[1 1 53 0 66 0 34 0 69 1 57 0 97 0 201 0 173 1 61 0 174] 
#[1 0 42 0 1 0 42 0 30 1 65 0 91] 
#[1 1 69 0 49 1 73 0 52 1 25 0 53 1 53 0 66 0 34 0 69 1 33 0 77 1 77 0 97 0 149 0 112 0 153 0 113 0 201 0 173 1 81 0 174 1 85 1 148] 
#[1 0 11 0 1 0 50 0 5 0 50 0 11 0 50 0 12 0 11 0 13 0 46 0 14 0 50 0 15 0 46 0 17 0 46 0 19 0 11 0 30 0 50 0 42 0 50 0 44 0 50 0 45 0 50 0 49 0 50 0 52 0 50 0 53 0 50 0 58 0 50 0 60 0 50 0 61 0 50 0 63 0 50 0 65 0 50 0 66 0 50 0 69 0 50 0 70 0 50 0 72 0 50 0 77 0 50 0 79 0 50 0 87 0 50 0 88 0 50 0 89 0 50 0 90 0 50 0 91 0 50 0 94 0 50 0 96 0 50 0 97 0 50 0 99 0 50 0 112 0 50 0 113 0 50 0 126 0 11 0 127 0 50 0 129] 
#[1 1 89 0 52 1 93 0 58 1 53 0 66 0 34 0 69 1 97 0 97 0 201 0 173 1 101 0 174] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 1 105 1 148] 
#[1 1 109 0 60 0 54 0 69 1 113 0 104 1 117 0 118 1 121 0 120 1 125 0 175 1 129 1 153] 
#[1 1 133 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 173 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 1 201 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 221 0 221 1 225 0 234 1 229 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 2 69 1 141 2 73 1 144 1 21 1 148] 
#[1 0 15 0 1 0 62 0 30] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 81 1 148] 
#[1 0 66 0 1 0 66 0 5 0 66 0 11 0 66 0 12 0 19 0 13 0 66 0 15 0 66 0 30 0 66 0 42 0 66 0 44 0 66 0 45 0 66 0 49 0 66 0 52 0 66 0 53 0 66 0 58 0 66 0 60 0 66 0 61 0 66 0 63 0 66 0 65 0 66 0 66 0 66 0 69 0 66 0 70 0 66 0 72 0 66 0 77 0 66 0 79 0 66 0 87 0 66 0 88 0 66 0 89 0 66 0 90 0 66 0 91 0 66 0 94 0 66 0 96 0 66 0 97 0 66 0 99 0 66 0 112 0 66 0 113 0 66 0 126 0 66 0 127 0 66 0 129] 
#[0 0 70 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 25 0 53 1 33 0 77 2 89 0 81 0 149 0 112 0 153 0 113 2 93 1 148] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 97 1 148] 
#[0 0 74 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 101 1 148] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 105 1 148] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 2 109 1 148] 
#[1 2 113 0 53 2 117 0 66 0 34 0 69 2 121 0 72 2 125 0 79 2 129 0 91 0 201 0 173 2 133 0 174] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 0 149 0 112 0 153 0 113 2 149 0 167 2 153 1 111 1 13 1 114 1 21 1 148] 
#[0 0 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 0 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 0 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 2 157 0 31] 
#[0 0 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 2 161 0 69] 
#[0 0 122 0 69] 
#[0 0 126 0 69] 
#[0 0 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 0 182 0 1 0 3 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 81 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 123 0 126 0 127 0 129] 
#[0 2 165 0 1] 
#[1 0 186 0 1 0 186 0 13 0 186 0 14 0 186 0 19 0 186 0 30 0 186 0 31 0 186 0 35 0 186 0 45 0 186 0 46 0 186 0 51 0 186 0 104 0 186 0 108 2 169 1 113] 
#[1 0 69 0 52 2 173 0 53 0 77 0 58 0 85 0 61 0 89 0 65 0 93 0 66 0 34 0 69 0 97 0 72 0 105 0 79 0 117 0 88 0 121 0 89 0 129 0 91 0 133 0 94 0 137 0 96 0 141 0 97 0 145 0 99 2 177 0 161 2 181 0 163 2 185 0 166 2 189 0 171 0 197 0 172 0 201 0 173 0 205 0 174 2 193 0 186 2 197 0 187 0 217 0 188 0 221 0 189 2 201 0 198 2 205 0 206 2 209 0 207 2 213 0 208 2 217 0 209 2 221 0 215 0 249 0 216 0 253 0 217 2 225 0 218] 
#[0 0 190 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 0 46 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 229 0 46] 
#[1 2 233 0 13 2 237 0 35 2 241 0 45 0 194 0 46 2 245 0 104 2 249 0 138 2 253 0 239] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 1 0 238 1 41 1 111 1 13 1 114 1 21 1 148] 
#[1 0 186 0 1 0 186 0 13 0 186 0 14 0 186 0 19 0 186 0 30 0 186 0 31 0 186 0 35 0 186 0 45 0 186 0 46 0 186 0 51 0 186 0 104 0 186 0 108 3 5 1 113] 
#[1 0 54 0 69 1 117 0 118 1 121 0 120 3 9 0 175 1 129 1 153] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 3 13 0 174] 
#[0 0 198 0 69] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 3 17 1 148] 
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
#[1 1 25 0 53 1 33 0 77 3 85 0 87 0 149 0 112 0 153 0 113 3 89 0 164 3 93 1 148] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 3 97 0 162] 
#[0 0 214 0 69 0 104] 
#[0 0 218 0 69 0 104] 
#[1 0 222 0 69 3 101 0 104] 
#[0 0 226 0 69 0 104] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 230 0 101 0 230 0 104 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 3 113 1 141 2 73 1 144 1 21 1 148] 
#[0 0 234 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 64 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[0 0 238 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 64 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 3 121 0 14 1 149 0 15 1 153 0 30 3 125 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 3 133 0 234 3 137 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 3 141 1 82 3 145 1 83 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 149 1 141 2 73 1 144 1 21 1 148] 
#[1 3 153 0 58 3 157 0 81] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 114 2 57 1 119 3 165 1 144 1 21 1 148] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 169 0 234 3 109 1 114 2 57 1 119 3 173 1 141 2 73 1 144 1 21 1 148] 
#[0 0 242 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 3 177 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 0 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 185 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 3 189 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 3 201 1 102 2 41 1 105 3 205 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 250 0 69 1 117 0 118 1 121 0 120 3 213 0 175 1 129 1 153] 
#[1 3 73 0 127 3 217 0 221] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 3 221 1 102 2 41 1 105 3 225 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 3 229 0 66 0 254 0 69] 
#[0 1 2 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 63 0 64 0 66 0 69 0 70 0 72 0 77 0 81 0 87 0 90 0 97 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 127 0 128 0 129] 
#[1 3 117 0 1 1 6 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 0 23 0 53 1 6 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 0 27 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 31 0 112 0 35 0 113 0 39 0 126 3 129 0 127 3 233 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 3 237 0 223 1 225 0 234 3 241 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 3 253 0 81 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 4 1 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 4 9 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 1 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 4 13 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 4 17 0 58 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 4 21 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 4 25 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 181 0 66 0 58 0 69 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 4 29 1 89 3 109 1 114 2 57 1 119 4 33 1 141 2 73 1 144 1 21 1 148] 
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
#[1 1 82 0 2 1 82 0 6 1 82 0 7 1 82 0 9 1 82 0 10 1 82 0 14 1 82 0 15 1 82 0 16 1 82 0 17 1 82 0 18 1 82 0 19 1 82 0 20 1 82 0 21 1 82 0 23 1 82 0 24 1 82 0 26 1 82 0 27 1 82 0 28 1 82 0 29 1 82 0 30 1 82 0 31 1 82 0 32 1 82 0 33 1 82 0 34 1 82 0 35 1 82 0 36 1 82 0 37 1 82 0 38 1 82 0 39 1 82 0 40 1 82 0 41 1 82 0 42 1 82 0 46 1 82 0 47 1 82 0 48 1 82 0 51 1 82 0 64 1 82 0 70 1 82 0 101 1 82 0 104 1 82 0 105 1 82 0 106 1 82 0 107 1 82 0 108 1 82 0 109 1 82 0 110 1 82 0 111 1 82 0 127 1 82 0 128 1 82 0 129 4 49 1 104] 
#[0 0 43 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 186 0 1 1 98 0 2 1 98 0 6 1 98 0 7 1 98 0 9 1 98 0 10 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 1 98 0 27 1 98 0 28 1 98 0 29 0 47 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 40 1 98 0 41 1 98 0 42 1 98 0 46 1 98 0 47 1 98 0 48 1 98 0 51 1 98 0 64 1 98 0 70 1 98 0 71 1 98 0 73 1 98 0 101 1 98 0 104 1 98 0 105 1 98 0 106 1 98 0 107 1 98 0 108 1 98 0 109 1 98 0 110 1 98 0 111 1 98 0 127 1 98 0 128 1 98 0 129 2 169 1 113] 
#[1 1 102 0 2 1 102 0 6 1 102 0 7 1 102 0 9 1 102 0 10 4 53 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 23 1 102 0 24 1 102 0 26 1 102 0 27 1 102 0 28 1 102 0 29 0 51 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 42 1 102 0 46 1 102 0 47 1 102 0 48 1 102 0 51 1 102 0 64 1 102 0 70 1 102 0 101 1 102 0 104 1 102 0 105 1 102 0 106 1 102 0 107 1 102 0 108 1 102 0 109 1 102 0 110 1 102 0 111 4 61 0 127 1 102 0 128 1 102 0 129 4 65 1 120 4 69 1 145] 
#[1 4 73 0 30 4 77 1 139 4 81 1 140] 
#[0 1 106 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 110 0 17 4 85 0 70 0 55 0 101 0 55 0 104] 
#[1 1 118 0 2 1 118 0 6 1 118 0 7 1 118 0 9 1 118 0 10 1 118 0 14 1 118 0 15 1 118 0 16 1 118 0 17 1 118 0 18 1 118 0 19 1 118 0 20 1 118 0 21 1 118 0 23 1 118 0 24 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 29 1 118 0 30 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 34 1 118 0 35 1 118 0 36 1 118 0 37 1 118 0 38 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 42 1 118 0 46 1 118 0 47 1 118 0 48 1 118 0 51 1 118 0 64 1 118 0 70 1 118 0 101 1 118 0 104 1 118 0 105 1 118 0 106 1 118 0 107 1 118 0 108 1 118 0 109 1 118 0 110 1 118 0 111 1 118 0 127 1 118 0 128 1 118 0 129 4 89 1 143] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 93 1 148] 
#[1 4 97 0 31 4 101 0 104] 
#[1 4 105 0 60 4 109 0 73 4 113 0 87 4 117 0 90] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 121 1 148] 
#[0 4 125 0 29] 
#[1 4 129 0 13 4 133 0 31 3 65 0 101 4 137 0 104 3 73 0 127 4 141 0 221 4 145 0 228] 
#[1 4 149 0 29 4 153 0 35 3 65 0 101 1 122 0 104 3 73 0 127 4 157 0 211 4 161 0 221 4 165 0 228] 
#[1 4 169 0 29 4 173 0 31 4 177 0 35 3 65 0 101 3 73 0 127 4 181 0 221 4 185 0 228] 
#[1 3 65 0 101 4 189 0 104 3 73 0 127 4 193 0 221 4 197 0 228] 
#[0 4 201 0 91] 
#[1 0 54 0 69 4 205 0 104 1 117 0 118 1 121 0 120 4 209 0 175 1 129 1 153] 
#[1 4 213 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 4 217 0 58 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 73 0 127 4 221 0 221 3 109 1 114 2 57 1 119 4 225 1 141 2 73 1 144 1 21 1 148] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 229 1 148] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 4 233 1 148] 
#[0 1 126 0 69] 
#[0 1 130 0 19 0 31 0 108] 
#[1 0 61 0 5 4 237 0 15 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 4 241 0 104 0 149 0 112 0 153 0 113 1 49 1 114 1 21 1 148] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 4 245 0 108 0 149 0 112 0 153 0 113 4 249 0 167 2 153 1 111 1 13 1 114 1 21 1 148] 
#[0 4 253 0 31] 
#[1 1 134 0 19 5 1 0 30 1 134 0 31 5 5 0 51 1 134 0 108] 
#[0 1 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 5 9 1 148] 
#[1 5 13 0 13 5 17 0 45 5 21 0 104] 
#[1 1 142 0 1 1 142 0 13 1 142 0 14 1 142 0 19 0 59 0 30 1 142 0 31 1 142 0 35 1 142 0 45 1 142 0 46 1 142 0 51 1 142 0 104 1 142 0 108 5 29 1 112] 
#[0 1 65 0 91] 
#[0 1 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 198 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 46 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 153 1 154] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 33 0 136 1 202 1 153] 
#[1 5 37 0 67 5 41 0 92 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 5 73 0 246 5 77 1 153] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 81 0 136 1 202 1 153] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 108 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 5 85 0 136 1 202 1 153] 
#[0 1 206 0 46] 
#[0 1 210 0 46] 
#[0 5 89 0 46] 
#[1 1 214 0 1 1 214 0 13 1 214 0 14 1 214 0 19 0 63 0 30 1 214 0 31 1 214 0 35 1 214 0 45 1 214 0 46 1 214 0 51 1 214 0 104 1 214 0 108 5 29 1 112] 
#[0 0 222 0 69] 
#[0 1 218 0 69] 
#[1 5 93 0 29 5 97 0 35 3 65 0 101 1 122 0 104 3 73 0 127 5 101 0 211 5 105 0 221 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 109 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 5 113 0 174] 
#[0 1 222 0 69] 
#[0 1 226 0 69] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 117 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
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
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 3 165 1 144 1 21 1 148] 
#[0 1 98 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 193 0 70] 
#[0 0 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 5 197 0 234 3 109 1 114 2 57 1 119 5 201 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 3 241 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 181 0 66 0 58 0 69 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 4 29 1 89 3 109 1 114 2 57 1 119 5 205 1 141 2 73 1 144 1 21 1 148] 
#[1 5 209 0 14 5 213 0 19] 
#[0 2 10 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 5 217 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 221 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 5 225 1 82 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 71 0 14 1 110 0 17 0 55 0 19] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 5 237 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 186 0 1 1 98 0 2 1 98 0 6 1 98 0 7 1 98 0 9 1 98 0 10 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 1 98 0 27 1 98 0 28 1 98 0 29 0 47 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 40 1 98 0 41 1 98 0 42 1 98 0 46 1 98 0 47 1 98 0 48 1 98 0 51 1 98 0 64 1 98 0 70 1 98 0 71 1 98 0 73 1 98 0 101 1 98 0 104 1 98 0 105 1 98 0 106 1 98 0 107 1 98 0 108 1 98 0 109 1 98 0 110 1 98 0 111 1 98 0 127 1 98 0 128 1 98 0 129 3 5 1 113] 
#[1 1 118 0 2 1 118 0 6 1 118 0 7 1 118 0 9 1 118 0 10 1 118 0 14 1 118 0 15 1 118 0 16 1 118 0 17 1 118 0 18 1 118 0 19 1 118 0 20 1 118 0 21 1 118 0 23 1 118 0 24 1 118 0 26 1 118 0 27 1 118 0 28 1 118 0 29 1 118 0 30 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 34 1 118 0 35 1 118 0 36 1 118 0 37 1 118 0 38 1 118 0 39 1 118 0 40 1 118 0 41 1 118 0 42 1 118 0 46 1 118 0 47 1 118 0 48 1 118 0 51 1 118 0 64 1 118 0 70 1 118 0 101 1 118 0 104 1 118 0 105 1 118 0 106 1 118 0 107 1 118 0 108 1 118 0 109 1 118 0 110 1 118 0 111 1 118 0 127 1 118 0 128 1 118 0 129 5 241 1 143] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 5 245 1 141 2 73 1 144 1 21 1 148] 
#[0 2 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 5 249 0 31 5 253 0 46] 
#[0 0 55 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 6 1 1 141 2 73 1 144 1 21 1 148] 
#[0 6 5 0 70] 
#[1 0 61 0 5 3 105 0 30 6 9 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 6 13 0 234 3 109 1 114 2 57 1 119 6 17 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 4 33 1 141 2 73 1 144 1 21 1 148] 
#[0 2 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 75 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 110 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 26 0 69] 
#[0 2 30 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 112 0 113 0 126 0 127 0 129] 
#[0 2 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 0 79 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 2 42 0 69 1 117 0 118 1 121 0 120 6 21 0 175 1 129 1 153] 
#[0 2 46 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[1 1 246 0 3 1 246 0 53 1 246 0 58 1 246 0 77 1 246 0 112 1 246 0 113 1 246 0 126 6 25 0 180 6 29 0 222 6 33 0 224] 
#[1 6 37 0 51 6 41 0 128] 
#[1 0 61 0 5 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 197 0 234 6 45 1 106 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 197 0 234 6 49 1 106 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 53 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 2 50 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 1 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 6 57 0 81 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 61 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 230 0 101 0 230 0 104 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 6 65 1 141 2 73 1 144 1 21 1 148] 
#[1 6 69 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 6 73 1 141 2 73 1 144 1 21 1 148] 
#[1 3 65 0 101 6 77 0 104 6 81 0 228] 
#[1 1 110 0 17 6 85 0 70 0 55 0 101 0 55 0 104] 
#[0 6 89 0 69] 
#[0 2 54 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 6 93 0 162] 
#[0 6 97 0 104] 
#[0 6 101 0 13] 
#[1 2 58 0 2 2 58 0 6 2 58 0 7 2 58 0 9 2 58 0 10 2 58 0 14 2 58 0 15 2 58 0 16 6 105 0 17 2 58 0 18 2 58 0 19 2 58 0 20 2 58 0 21 2 58 0 23 2 58 0 24 2 58 0 26 2 58 0 27 2 58 0 28 2 58 0 29 2 58 0 30 2 58 0 31 2 58 0 32 2 58 0 33 2 58 0 34 2 58 0 35 2 58 0 36 2 58 0 37 2 58 0 38 2 58 0 39 2 58 0 40 2 58 0 41 2 58 0 42 2 58 0 46 2 58 0 47 2 58 0 48 2 58 0 51 2 58 0 64 2 58 0 70 2 58 0 101 2 58 0 104 2 58 0 105 2 58 0 106 2 58 0 107 2 58 0 108 2 58 0 109 2 58 0 110 2 58 0 111 2 58 0 127 2 58 0 128 2 58 0 129 6 109 1 103] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 6 113 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 117 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 6 121 1 146 1 21 1 148] 
#[1 2 62 0 2 2 62 0 6 2 62 0 7 2 62 0 9 2 62 0 10 4 53 0 13 2 62 0 14 2 62 0 15 2 62 0 16 2 62 0 17 2 62 0 18 2 62 0 19 2 62 0 20 2 62 0 21 2 62 0 23 2 62 0 24 2 62 0 26 2 62 0 27 2 62 0 28 2 62 0 29 2 62 0 30 2 62 0 31 2 62 0 32 2 62 0 33 2 62 0 34 2 62 0 35 2 62 0 36 2 62 0 37 2 62 0 38 2 62 0 39 2 62 0 40 2 62 0 41 2 62 0 42 2 62 0 46 2 62 0 47 2 62 0 48 2 62 0 51 2 62 0 64 2 62 0 70 2 62 0 101 2 62 0 104 2 62 0 105 2 62 0 106 2 62 0 107 2 62 0 108 2 62 0 109 2 62 0 110 2 62 0 111 4 61 0 127 2 62 0 128 2 62 0 129 6 125 1 120 6 129 1 145] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 6 133 0 20 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 5 37 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 5 41 0 92 1 193 0 97 6 137 0 104 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 1 197 0 126 3 129 0 127 6 141 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 145 0 246 6 149 0 248 6 153 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 6 157 1 110 1 9 1 111 6 161 1 114 2 57 1 119 6 165 1 123 6 169 1 124 6 173 1 134 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 6 177 1 148 5 77 1 153] 
#[0 2 66 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 6 181 1 144 1 21 1 148] 
#[0 2 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 2 78 0 2 2 78 0 6 2 78 0 7 2 78 0 9 2 78 0 10 2 78 0 14 2 78 0 15 2 78 0 16 2 78 0 17 2 78 0 18 2 78 0 19 2 78 0 20 2 78 0 21 2 78 0 23 2 78 0 24 2 78 0 26 2 78 0 27 2 78 0 28 2 78 0 29 0 83 0 30 2 78 0 31 2 78 0 32 2 78 0 33 2 78 0 34 2 78 0 35 2 78 0 36 2 78 0 37 2 78 0 38 2 78 0 39 2 78 0 40 2 78 0 41 2 78 0 42 2 78 0 46 2 78 0 47 2 78 0 48 2 78 0 51 2 78 0 64 2 78 0 70 2 78 0 101 2 78 0 104 2 78 0 105 2 78 0 106 2 78 0 107 2 78 0 108 2 78 0 109 2 78 0 110 2 78 0 111 2 78 0 127 2 78 0 128 2 78 0 129 6 185 1 139] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 189 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 2 82 0 2 2 82 0 6 2 82 0 7 2 82 0 9 2 82 0 10 2 82 0 14 2 82 0 15 2 82 0 16 2 82 0 17 2 82 0 18 2 82 0 19 2 82 0 20 2 82 0 21 2 82 0 23 2 82 0 24 2 82 0 26 2 82 0 27 2 82 0 28 2 82 0 29 0 87 0 30 2 82 0 31 2 82 0 32 2 82 0 33 2 82 0 34 2 82 0 35 2 82 0 36 2 82 0 37 2 82 0 38 2 82 0 39 2 82 0 40 2 82 0 41 2 82 0 42 2 82 0 46 2 82 0 47 2 82 0 48 2 82 0 51 2 82 0 64 2 82 0 70 2 82 0 101 2 82 0 104 2 82 0 105 2 82 0 106 2 82 0 107 2 82 0 108 2 82 0 109 2 82 0 110 2 82 0 111 2 82 0 127 2 82 0 128 2 82 0 129 6 197 1 142] 
#[1 6 201 0 13 6 205 0 45 6 209 0 104 6 213 0 143] 
#[0 2 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 69 0 210 0 72 0 210 0 77 0 210 0 79 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 108 0 210 0 112 0 210 0 113 6 217 0 162] 
#[0 6 221 0 14] 
#[1 0 61 0 5 0 65 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 6 225 1 111 1 13 1 114 1 21 1 148] 
#[0 6 229 0 14] 
#[0 6 233 0 14] 
#[0 6 237 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 241 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 6 245 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 249 0 158 6 253 0 194 7 1 0 197] 
#[0 2 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 7 5 0 108 1 246 0 112 1 246 0 113 7 9 0 180 7 13 0 190 7 17 0 193] 
#[1 7 21 0 13 7 25 0 31 3 65 0 101 7 29 0 104 7 33 0 228] 
#[1 7 37 0 31 7 41 0 104] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 7 45 0 210 3 197 0 234 7 49 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 7 65 0 214 3 197 0 234 7 69 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 7 73 0 104] 
#[1 7 77 0 29 7 81 0 35 3 65 0 101 1 122 0 104 7 85 0 211 4 165 0 228] 
#[0 2 102 0 31 0 104] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 7 89 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 2 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 7 93 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 7 97 0 29 7 101 0 31 7 105 0 35 3 65 0 101 7 109 0 228] 
#[1 7 113 0 31 7 117 0 35] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 9 0 180 7 121 0 190 7 17 0 193] 
#[1 3 65 0 101 7 125 0 104 7 129 0 228] 
#[0 7 133 0 104] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 7 137 1 148] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 7 141 0 162] 
#[1 0 222 0 69 7 145 0 104] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 7 149 1 141 2 73 1 144 1 21 1 148] 
#[1 7 153 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 7 157 1 141 2 73 1 144 1 21 1 148] 
#[1 7 161 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 7 165 0 58 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 7 169 1 141 2 73 1 144 1 21 1 148] 
#[0 7 173 0 70] 
#[1 7 177 0 31 7 181 0 104] 
#[1 7 185 0 29 7 189 0 35 3 65 0 101 1 122 0 104 3 73 0 127 7 193 0 211 7 197 0 221 4 165 0 228] 
#[0 2 110 0 19 0 31 0 108] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 7 201 0 108 0 149 0 112 0 153 0 113 7 205 0 167 2 153 1 111 1 13 1 114 1 21 1 148] 
#[0 2 114 0 19 0 31 0 108] 
#[1 2 118 0 19 2 118 0 108 7 209 0 169] 
#[0 2 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 7 213 0 15 7 217 0 104] 
#[1 7 221 0 49 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 7 225 1 148] 
#[1 7 229 0 13 3 73 0 127 7 233 0 221] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 237 0 136 1 202 1 153] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 241 0 136 1 202 1 153] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 108 1 202 0 112 1 202 0 113 1 202 0 117 1 202 0 118 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 125 1 202 0 126 1 202 0 127 1 202 0 128 1 202 0 129 7 245 0 136 1 202 1 153] 
#[1 0 61 0 5 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 7 249 1 114 1 21 1 148] 
#[0 2 126 0 1 0 13 0 14 0 19 0 30 0 31 0 35 0 45 0 46 0 51 0 104 0 108] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 41 0 14 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 148 9 169 1 149 9 173 1 150 9 177 1 151 9 181 1 152 5 77 1 153] 
#[0 2 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 2 166 0 46] 
#[0 2 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 9 185 0 46 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 148 9 169 1 149 9 173 1 150 9 177 1 151 9 181 1 152 5 77 1 153] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 9 189 0 108 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 148 9 169 1 149 9 173 1 150 9 177 1 151 9 181 1 152 5 77 1 153] 
#[0 2 174 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 13 0 15 0 20 0 24 0 25 0 26 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 63 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 153] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 9 193 0 210 3 197 0 234 7 49 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 9 197 0 214 3 197 0 234 9 201 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 9 205 0 104] 
#[1 9 209 0 29 9 213 0 35 3 65 0 101 1 122 0 104 9 217 0 211 4 165 0 228] 
#[1 9 221 0 31 9 225 0 35] 
#[0 2 178 0 69] 
#[1 9 229 0 31 9 233 0 35] 
#[0 2 182 0 69] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 9 237 0 174] 
#[0 2 186 0 69] 
#[0 2 190 0 69] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 2 194 0 31 2 194 0 35 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 2 194 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 9 241 0 229 9 245 0 231 9 249 0 232 9 253 0 233 10 1 0 234 10 5 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 10 9 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 2 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 57 0 3 1 25 0 53 10 13 0 60 1 33 0 77 0 109 0 84 0 149 0 112 0 153 0 113 10 17 0 237 10 21 1 147 10 25 1 148] 
#[0 10 29 0 108] 
#[1 2 202 0 19 2 202 0 108 10 33 0 201] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 10 37 0 108 1 246 0 112 1 246 0 113 5 145 0 180 10 41 0 199 5 153 0 202] 
#[0 10 45 0 104] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 10 49 0 108 1 246 0 112 1 246 0 113 5 145 0 180 10 53 0 199 5 153 0 202] 
#[0 2 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 10 57 0 49 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 10 61 1 148] 
#[0 10 65 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 10 69 0 108 1 246 0 112 1 246 0 113 10 73 0 180 10 77 0 220] 
#[0 2 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 153] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 10 81 0 219 5 185 0 236] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 10 85 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 10 89 1 141 2 73 1 144 1 21 1 148] 
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
#[1 2 242 0 2 2 242 0 6 2 242 0 7 2 242 0 9 2 242 0 10 2 242 0 14 2 242 0 15 2 242 0 16 2 242 0 17 2 242 0 18 2 242 0 19 2 242 0 20 2 242 0 21 2 242 0 23 2 242 0 24 2 242 0 26 2 242 0 27 2 242 0 28 2 242 0 29 0 99 0 30 2 242 0 31 2 242 0 32 2 242 0 33 2 242 0 34 2 242 0 35 2 242 0 36 2 242 0 37 2 242 0 38 2 242 0 39 2 242 0 40 2 242 0 41 2 242 0 42 2 242 0 46 2 242 0 47 2 242 0 48 2 242 0 51 2 242 0 64 2 242 0 70 2 242 0 101 2 242 0 104 2 242 0 105 2 242 0 106 2 242 0 107 2 242 0 108 2 242 0 109 2 242 0 110 2 242 0 111 2 242 0 127 2 242 0 128 2 242 0 129 6 197 1 142] 
#[0 2 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 10 217 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 2 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 73 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 11 77 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 11 81 0 234 3 109 1 114 2 57 1 119 11 85 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 11 89 1 141 2 73 1 144 1 21 1 148] 
#[0 5 229 0 14] 
#[0 2 254 0 69] 
#[1 0 57 0 3 1 25 0 53 11 93 0 58 1 33 0 77 0 149 0 112 0 153 0 113 11 97 0 126 11 101 0 225 11 105 0 226 11 109 0 227 11 113 0 237 11 117 1 148] 
#[0 3 2 0 3 0 53 0 58 0 77 0 112 0 113 0 126] 
#[1 11 121 0 19 11 125 0 128] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 11 129 1 141 2 73 1 144 1 21 1 148] 
#[0 3 6 0 30] 
#[0 2 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 2 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 11 133 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 3 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 137 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 11 141 1 141 2 73 1 144 1 21 1 148] 
#[0 11 145 0 70] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 11 149 0 162] 
#[0 11 153 0 104] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 11 157 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 11 161 0 13] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 11 165 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 11 169 0 162] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 11 173 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 11 177 0 158 11 181 1 91 11 185 1 92 11 189 1 95 11 193 1 96] 
#[1 3 22 0 2 0 61 0 5 3 22 0 6 3 22 0 7 3 22 0 9 3 22 0 10 1 137 0 11 1 141 0 12 3 193 0 13 3 22 0 14 3 22 0 15 3 22 0 16 3 22 0 17 3 22 0 18 3 22 0 19 3 22 0 20 3 22 0 21 3 22 0 23 3 22 0 24 3 22 0 26 3 22 0 27 3 22 0 28 3 22 0 29 0 107 0 30 3 22 0 31 3 22 0 32 3 22 0 33 3 22 0 34 3 22 0 35 3 22 0 36 3 22 0 37 3 22 0 38 3 22 0 39 3 22 0 40 3 22 0 41 1 157 0 42 1 161 0 44 3 22 0 46 3 22 0 47 3 22 0 48 3 22 0 51 1 25 0 53 1 29 0 60 3 22 0 64 0 111 0 70 1 33 0 77 0 113 0 87 0 125 0 90 3 22 0 101 3 22 0 104 3 22 0 105 3 22 0 106 3 22 0 107 3 22 0 108 3 22 0 109 3 22 0 110 3 22 0 111 0 149 0 112 0 153 0 113 1 197 0 126 3 22 0 127 3 22 0 128 3 22 0 129 3 197 0 234 11 197 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 3 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 30 0 2 3 30 0 6 3 30 0 7 3 30 0 9 3 30 0 10 3 30 0 14 3 30 0 15 3 30 0 16 3 30 0 17 3 30 0 18 3 30 0 19 3 30 0 20 3 30 0 21 11 201 0 22 3 30 0 23 3 30 0 24 3 30 0 26 3 30 0 27 3 30 0 28 3 30 0 29 3 30 0 30 3 30 0 31 3 30 0 32 3 30 0 33 3 30 0 34 3 30 0 35 3 30 0 36 3 30 0 37 3 30 0 38 3 30 0 39 3 30 0 40 3 30 0 41 3 30 0 42 3 30 0 46 3 30 0 47 3 30 0 48 3 30 0 51 3 30 0 64 3 30 0 70 3 30 0 101 3 30 0 104 3 30 0 105 3 30 0 106 3 30 0 107 3 30 0 108 3 30 0 109 3 30 0 110 3 30 0 111 3 30 0 127 3 30 0 128 3 30 0 129] 
#[1 3 34 0 14 3 34 0 19 11 205 1 130] 
#[0 11 209 0 14] 
#[0 3 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 42 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 5 37 0 67 5 41 0 92 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 11 213 0 246 5 77 1 153] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 31 0 210 0 44 0 210 0 45 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 58 0 210 0 59 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 67 0 210 0 69 0 210 0 70 0 210 0 71 0 210 0 72 0 210 0 74 0 210 0 75 0 210 0 77 0 210 0 78 0 210 0 79 0 210 0 80 0 210 0 84 0 210 0 86 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 92 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 102 0 210 0 104 0 210 0 105 0 210 0 107 0 210 0 108 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 126 0 210 0 127 11 217 0 162 0 210 1 153] 
#[0 3 46 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 50 0 19 0 128] 
#[0 3 54 0 19 0 128] 
#[0 3 58 0 19 0 128] 
#[1 1 94 0 17 0 115 0 19 0 115 0 128] 
#[1 0 186 0 1 1 98 0 13 1 98 0 17 0 119 0 19 0 47 0 30 1 98 0 127 0 119 0 128 2 169 1 113] 
#[1 3 70 0 19 3 70 0 128 11 221 1 122] 
#[0 3 74 0 19 0 128] 
#[0 3 78 0 19 0 128] 
#[1 0 190 0 1 0 190 0 13 0 190 0 17 0 190 0 19 0 190 0 30 11 225 0 35 0 190 0 127 0 190 0 128] 
#[0 3 82 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 3 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 65 0 101 1 122 0 104 11 229 0 211 4 165 0 228] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 11 233 1 144 1 21 1 148] 
#[0 3 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 11 237 0 13 11 241 0 45 11 245 0 104 11 249 0 144 11 253 0 147 12 1 0 148] 
#[1 11 237 0 13 11 241 0 45 11 245 0 104 12 5 0 144 11 253 0 147 12 1 0 148] 
#[1 11 237 0 13 11 241 0 45 11 245 0 104 12 9 0 144 11 253 0 147 12 1 0 148] 
#[0 3 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 108 0 10 0 112 0 10 0 113 12 13 0 133 5 185 0 236] 
#[0 3 98 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[0 12 17 0 14] 
#[0 3 102 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[0 3 106 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 12 21 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 12 25 0 31 12 29 0 35] 
#[1 12 33 0 31 3 65 0 101 12 37 0 228] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 0 81 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 109 0 84 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 1 5 0 237 12 41 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 12 45 1 147 1 21 1 148] 
#[0 12 49 0 14] 
#[1 3 110 0 14 3 110 0 19 12 53 0 196] 
#[0 3 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 57 0 3 1 25 0 53 10 13 0 60 1 33 0 77 0 109 0 84 0 149 0 112 0 153 0 113 10 17 0 237 12 57 1 147 12 61 1 148] 
#[0 12 65 0 108] 
#[1 3 118 0 19 3 118 0 108 12 69 0 192] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 12 73 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 249 0 158 12 77 0 194 7 1 0 197] 
#[0 3 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 12 81 0 108 1 246 0 112 1 246 0 113 7 9 0 180 12 85 0 190 7 17 0 193] 
#[1 12 89 0 31 12 93 0 104] 
#[0 3 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 12 97 0 108 1 246 0 112 1 246 0 113 7 9 0 180 12 101 0 190 7 17 0 193] 
#[1 3 65 0 101 1 122 0 104 12 105 0 211 4 165 0 228] 
#[0 3 130 0 101 0 104] 
#[0 1 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 3 134 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 3 134 0 101 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 12 109 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 3 138 0 31 0 101] 
#[1 1 122 0 31 3 65 0 101 12 113 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 12 117 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 12 121 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 12 125 0 210 3 197 0 234 7 49 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 12 129 0 214 3 197 0 234 12 133 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 12 137 0 104] 
#[1 12 141 0 31 12 145 0 35 3 65 0 101 12 149 0 228] 
#[0 12 153 0 31] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 12 157 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 3 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 12 161 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 12 165 0 31 12 169 0 35] 
#[0 3 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 12 173 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 12 177 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 9 0 180 12 181 0 190 7 17 0 193] 
#[0 12 185 0 104] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 9 0 180 12 189 0 190 7 17 0 193] 
#[1 12 193 0 29 12 197 0 35 3 65 0 101 1 122 0 104 3 73 0 127 12 201 0 211 12 205 0 221 4 165 0 228] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 12 209 0 219 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 90 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 12 213 0 162] 
#[0 12 217 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 12 221 1 141 2 73 1 144 1 21 1 148] 
#[0 12 225 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 12 229 1 141 2 73 1 144 1 21 1 148] 
#[1 12 233 0 1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 12 237 1 141 2 73 1 144 1 21 1 148] 
#[0 12 241 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 12 245 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 3 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 65 0 210 0 66 0 210 0 69 0 210 0 72 0 210 0 77 0 210 0 79 0 210 0 84 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 94 0 210 0 96 0 210 0 97 0 210 0 99 0 210 0 108 0 210 0 112 0 210 0 113 12 249 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 12 253 0 210 3 197 0 234 7 49 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 13 1 0 214 3 197 0 234 13 5 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 13 9 0 104] 
#[1 13 13 0 29 13 17 0 35 3 65 0 101 1 122 0 104 13 21 0 211 4 165 0 228] 
#[0 3 154 0 19 0 31 0 108] 
#[1 2 118 0 19 2 118 0 108 13 25 0 169] 
#[1 13 29 0 19 3 158 0 108 13 33 0 168 13 37 0 170] 
#[0 3 162 0 19 0 31 0 108] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 13 41 0 108 0 149 0 112 0 153 0 113 13 45 0 167 2 153 1 111 1 13 1 114 1 21 1 148] 
#[0 3 166 0 19 0 31 0 108] 
#[0 3 170 0 19 0 31 0 108] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 13 49 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 13 53 0 176 13 57 0 179 13 61 0 180 13 65 0 183 1 246 1 153] 
#[0 13 69 0 13] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 13 73 0 14 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 148 9 169 1 149 9 173 1 150 9 177 1 151 9 181 1 152 5 77 1 153] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 13 77 0 46 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 148 9 169 1 149 9 173 1 150 9 177 1 151 9 181 1 152 5 77 1 153] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 8 9 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 2 233 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 2 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 2 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 13 81 0 108 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 9 145 0 138 9 149 0 139 9 153 0 140 9 157 0 155 9 161 0 246 9 165 1 148 9 169 1 149 9 173 1 150 9 177 1 151 9 181 1 152 5 77 1 153] 
#[0 3 174 0 1 0 13 0 14 0 19 0 30 0 31 0 35 0 45 0 46 0 51 0 104 0 108] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 3 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 4 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 3 65 0 101 1 122 0 104 13 85 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 13 89 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 13 93 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 13 97 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 13 101 0 210 3 197 0 234 7 49 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 13 105 0 214 3 197 0 234 13 109 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 13 113 0 104] 
#[0 5 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 117 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 5 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 121 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 5 126 0 69] 
#[0 5 130 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 104 0 112 0 113 0 126 0 127 0 129] 
#[1 13 125 0 19 5 134 0 31 5 134 0 35 5 134 0 104] 
#[0 5 138 0 19 0 31 0 35 0 104] 
#[0 5 142 0 19 0 31 0 35 0 104] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 13 129 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 13 133 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 13 137 1 141 2 73 1 144 1 21 1 148] 
#[0 13 141 0 29] 
#[1 1 94 0 17 0 123 0 29] 
#[0 0 50 0 53 0 77 0 112 0 113] 
#[0 5 146 0 1 0 3 0 5 0 9 0 11 0 12 0 13 0 15 0 20 0 24 0 25 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 56 0 58 0 60 0 61 0 63 0 66 0 67 0 69 0 70 0 72 0 74 0 77 0 81 0 84 0 85 0 87 0 88 0 90 0 92 0 94 0 97 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 129 1 153] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 13 149 1 148] 
#[1 13 153 0 13 5 150 0 19 13 157 0 35 13 161 0 104 5 150 0 108 13 165 0 203 13 169 0 204 13 173 0 205] 
#[0 5 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 13 177 0 19 5 158 0 108 13 181 0 200] 
#[0 5 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 185 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 13 189 0 108 1 246 0 112 1 246 0 113 5 145 0 180 13 193 0 199 5 153 0 202] 
#[0 5 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 197 0 108] 
#[0 5 170 0 31] 
#[0 5 174 0 31] 
#[0 5 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 5 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 1 25 0 53 13 201 0 58 0 81 0 60 0 85 0 61 1 53 0 66 0 34 0 69 1 33 0 77 0 109 0 84 0 113 0 87 0 117 0 88 0 125 0 90 13 205 0 97 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 13 209 0 141 13 213 0 171 0 197 0 172 0 201 0 173 0 205 0 174 13 217 0 208 10 17 0 237 1 9 1 111 1 13 1 114 13 221 1 147 1 21 1 148] 
#[0 5 186 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 13 225 0 108 1 246 0 112 1 246 0 113 10 73 0 180 10 77 0 220] 
#[1 3 65 0 101 1 122 0 104 13 229 0 211 4 165 0 228] 
#[1 0 127 0 14 2 246 0 17 2 246 0 19] 
#[0 5 190 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 194 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 198 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 237 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 13 241 0 81 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 245 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 13 249 0 81 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 13 253 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 8 0 6 0 9 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 20 0 6 0 24 0 6 0 26 0 6 0 30 0 6 0 44 0 6 0 45 0 6 0 52 0 6 0 53 0 6 0 56 0 6 0 57 0 6 0 59 0 6 0 60 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 74 0 6 0 75 0 6 0 77 0 6 0 78 0 6 0 80 0 6 0 86 0 6 0 87 0 6 0 90 0 6 0 92 0 6 0 97 0 6 0 102 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 112 0 6 0 113 0 6 0 117 0 6 0 118 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 127 14 1 0 132 0 6 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 5 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 9 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 5 202 0 2 0 57 0 3 0 61 0 5 5 202 0 6 5 202 0 7 10 109 0 8 10 113 0 9 5 202 0 10 10 117 0 13 5 202 0 14 10 121 0 15 5 202 0 16 5 202 0 17 5 202 0 18 5 202 0 19 10 125 0 20 5 202 0 21 5 202 0 23 5 202 0 27 5 202 0 28 10 137 0 30 5 202 0 31 5 202 0 32 5 202 0 33 5 202 0 34 5 202 0 35 5 202 0 36 5 202 0 37 5 202 0 38 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 42 1 161 0 44 10 141 0 45 5 202 0 46 5 202 0 47 5 202 0 48 5 202 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 202 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 131 0 104 10 197 0 105 5 202 0 106 10 201 0 107 5 202 0 108 5 202 0 109 5 202 0 110 5 202 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 5 202 0 128 5 202 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 13 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 17 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 114 14 21 1 118 11 61 1 119 1 21 1 148] 
#[1 0 6 0 1 0 6 0 3 0 6 0 5 0 6 0 8 0 6 0 9 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 24 0 6 0 26 0 6 0 30 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 52 0 6 0 53 0 6 0 56 0 6 0 57 0 6 0 59 0 6 0 60 0 6 0 67 0 6 0 70 0 6 0 71 0 6 0 74 0 6 0 75 0 6 0 77 0 6 0 78 0 6 0 80 0 6 0 86 0 6 0 87 0 6 0 90 0 6 0 92 0 6 0 97 0 6 0 102 0 6 0 104 0 6 0 105 0 6 0 107 0 6 0 112 0 6 0 113 0 6 0 117 0 6 0 118 0 6 0 120 0 6 0 121 0 6 0 122 0 6 0 123 0 6 0 125 0 6 0 126 0 6 0 127 14 25 0 132 0 6 1 153] 
#[1 14 29 0 80 6 137 0 104 14 33 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 37 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 5 206 0 2 0 57 0 3 0 61 0 5 5 206 0 6 5 206 0 7 10 109 0 8 10 113 0 9 5 206 0 10 10 117 0 13 5 206 0 14 10 121 0 15 5 206 0 16 5 206 0 17 5 206 0 18 5 206 0 19 10 125 0 20 5 206 0 21 5 206 0 23 10 129 0 24 10 133 0 26 5 206 0 27 5 206 0 28 10 137 0 30 5 206 0 31 5 206 0 32 5 206 0 33 5 206 0 34 5 206 0 35 5 206 0 36 5 206 0 37 5 206 0 38 5 206 0 39 5 206 0 40 5 206 0 41 5 206 0 42 1 161 0 44 10 141 0 45 5 206 0 46 5 206 0 47 5 206 0 48 5 206 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 206 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 135 0 104 10 197 0 105 5 206 0 106 10 201 0 107 5 206 0 108 5 206 0 109 5 206 0 110 5 206 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 14 41 0 126 3 129 0 127 5 206 0 128 5 206 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 45 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 5 210 0 2 0 57 0 3 0 61 0 5 5 210 0 6 5 210 0 7 10 109 0 8 10 113 0 9 5 210 0 10 10 117 0 13 5 210 0 14 10 121 0 15 5 210 0 16 5 210 0 17 5 210 0 18 5 210 0 19 10 125 0 20 5 210 0 21 5 210 0 23 10 129 0 24 10 133 0 26 5 210 0 27 5 210 0 28 10 137 0 30 5 210 0 31 5 210 0 32 5 210 0 33 5 210 0 34 5 210 0 35 5 210 0 36 5 210 0 37 5 210 0 38 5 210 0 39 5 210 0 40 5 210 0 41 5 210 0 42 1 161 0 44 10 141 0 45 5 210 0 46 5 210 0 47 5 210 0 48 5 210 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 210 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 139 0 104 10 197 0 105 5 210 0 106 10 201 0 107 5 210 0 108 5 210 0 109 5 210 0 110 5 210 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 14 49 0 126 3 129 0 127 5 210 0 128 5 210 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 53 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 14 141 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 14 225 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 229 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 14 237 1 42 14 241 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 6 137 0 104 14 245 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 14 249 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 14 253 0 105 15 1 0 107] 
#[1 10 105 0 1 5 214 0 2 0 57 0 3 0 61 0 5 5 214 0 6 5 214 0 7 10 109 0 8 10 113 0 9 5 214 0 10 10 117 0 13 5 214 0 14 10 121 0 15 5 214 0 16 5 214 0 17 5 214 0 18 5 214 0 19 10 125 0 20 5 214 0 21 5 214 0 23 10 129 0 24 10 133 0 26 5 214 0 27 5 214 0 28 10 137 0 30 5 214 0 31 5 214 0 32 5 214 0 33 5 214 0 34 5 214 0 35 5 214 0 36 5 214 0 37 5 214 0 38 5 214 0 39 5 214 0 40 5 214 0 41 5 214 0 42 1 161 0 44 10 141 0 45 5 214 0 46 5 214 0 47 5 214 0 48 5 214 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 214 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 143 0 104 10 197 0 105 5 214 0 106 10 201 0 107 5 214 0 108 5 214 0 109 5 214 0 110 5 214 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 5 214 0 128 5 214 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 5 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 6 137 0 104 15 9 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 15 13 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 17 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 0 147 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 15 25 0 180 15 29 1 24 15 33 1 27 1 246 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 15 37 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 41 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 15 45 0 29] 
#[0 5 218 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 49 0 243 15 53 0 244 15 57 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 165 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 5 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 226 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 234 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 238 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 242 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 246 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 5 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 5 254 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 2 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 18 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 6 22 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 6 26 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 6 30 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 6 34 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 10 161 0 70 10 173 0 75 10 193 0 102 15 213 1 29 15 217 1 30 15 221 1 31 15 225 1 32] 
#[0 6 38 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 6 42 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 6 46 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 6 50 0 2 6 50 0 6 6 50 0 7 6 50 0 9 6 50 0 10 15 229 0 13 6 50 0 14 6 50 0 15 6 50 0 16 6 50 0 17 6 50 0 18 6 50 0 19 6 50 0 20 6 50 0 21 6 50 0 23 6 50 0 24 6 50 0 26 6 50 0 27 6 50 0 28 6 50 0 31 6 50 0 32 6 50 0 33 6 50 0 34 6 50 0 35 6 50 0 36 6 50 0 37 6 50 0 38 6 50 0 39 6 50 0 40 6 50 0 41 6 50 0 42 6 50 0 46 6 50 0 47 6 50 0 48 6 50 0 51 6 50 0 64 0 151 0 104 6 50 0 106 6 50 0 107 6 50 0 108 6 50 0 109 6 50 0 110 6 50 0 111 6 50 0 127 6 50 0 128 6 50 0 129] 
#[1 6 54 0 2 6 54 0 6 6 54 0 7 6 54 0 9 6 54 0 10 6 54 0 13 6 54 0 14 6 54 0 15 6 54 0 16 6 54 0 17 6 54 0 18 6 54 0 19 6 54 0 20 6 54 0 21 6 54 0 23 6 54 0 24 6 54 0 25 6 54 0 26 6 54 0 27 6 54 0 28 6 54 0 29 6 54 0 30 6 54 0 31 6 54 0 32 6 54 0 33 6 54 0 34 6 54 0 35 6 54 0 36 6 54 0 37 6 54 0 38 6 54 0 39 6 54 0 40 6 54 0 41 6 54 0 42 6 54 0 46 6 54 0 47 6 54 0 48 6 54 0 51 6 54 0 64 6 54 0 71 6 54 0 73 6 54 0 104 6 54 0 105 6 54 0 106 6 54 0 107 6 54 0 108 6 54 0 109 6 54 0 110 6 54 0 111 6 54 0 127 6 54 0 128 6 54 0 129 15 237 1 117] 
#[1 6 58 0 2 6 58 0 6 6 58 0 7 6 58 0 9 6 58 0 10 6 58 0 13 6 58 0 14 6 58 0 15 6 58 0 16 6 58 0 17 6 58 0 18 6 58 0 19 6 58 0 20 6 58 0 21 6 58 0 23 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 27 6 58 0 28 6 58 0 29 0 155 0 30 6 58 0 31 6 58 0 32 6 58 0 33 6 58 0 34 6 58 0 35 6 58 0 36 6 58 0 37 6 58 0 38 6 58 0 39 6 58 0 40 6 58 0 41 6 58 0 42 6 58 0 46 6 58 0 47 6 58 0 48 6 58 0 51 6 58 0 64 6 58 0 71 6 58 0 73 6 58 0 104 6 58 0 105 6 58 0 106 6 58 0 107 6 58 0 108 6 58 0 109 6 58 0 110 6 58 0 111 6 58 0 127 6 58 0 128 6 58 0 129] 
#[0 6 62 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 245 0 30 15 249 1 116 15 253 1 136] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 1 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 65 0 101 1 122 0 104 16 5 0 211 4 165 0 228] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 16 9 1 141 2 73 1 144 1 21 1 148] 
#[0 10 93 0 14] 
#[0 10 97 0 14] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 16 13 1 148] 
#[1 6 66 0 19 16 17 0 29 6 66 0 128] 
#[0 6 70 0 19 0 128] 
#[0 6 74 0 19 0 128] 
#[0 6 78 0 19 0 128] 
#[1 5 146 0 3 0 159 0 53 5 146 0 58 0 163 0 77 0 167 0 112 0 171 0 113 0 175 0 126 16 25 1 148] 
#[1 6 82 0 19 16 29 0 29 16 33 0 35 6 82 0 128] 
#[1 6 86 0 3 6 86 0 53 6 86 0 58 6 86 0 77 6 86 0 112 6 86 0 113 6 86 0 126 16 37 0 128] 
#[0 6 90 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[0 16 41 0 128] 
#[0 6 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 45 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 16 49 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 53 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 16 57 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 16 61 0 162] 
#[1 3 65 0 101 1 122 0 104 16 65 0 211 4 165 0 228] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 16 69 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 11 177 0 158 16 73 1 91 11 185 1 92 11 189 1 95 11 193 1 96] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 16 77 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 16 89 0 212 5 185 0 236] 
#[1 6 98 0 2 6 98 0 6 6 98 0 7 6 98 0 9 6 98 0 10 6 98 0 14 6 98 0 15 6 98 0 16 6 98 0 17 6 98 0 18 6 98 0 19 6 98 0 20 6 98 0 21 16 93 0 22 6 98 0 23 6 98 0 24 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 29 6 98 0 30 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 34 6 98 0 35 6 98 0 36 6 98 0 37 6 98 0 38 6 98 0 39 6 98 0 40 6 98 0 41 6 98 0 42 6 98 0 46 6 98 0 47 6 98 0 48 6 98 0 51 6 98 0 64 6 98 0 70 6 98 0 101 6 98 0 104 6 98 0 105 6 98 0 106 6 98 0 107 6 98 0 108 6 98 0 109 6 98 0 110 6 98 0 111 6 98 0 127 6 98 0 128 6 98 0 129 16 97 1 90] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 16 101 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 1 5 0 237 16 105 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 16 109 1 148] 
#[0 16 113 0 14] 
#[0 6 102 0 14] 
#[1 6 106 0 14 6 106 0 19 16 117 1 94] 
#[0 6 110 0 14] 
#[0 6 114 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 121 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 6 118 0 14 16 125 0 19 16 129 1 129] 
#[1 6 122 0 2 6 122 0 6 6 122 0 7 6 122 0 9 6 122 0 10 6 122 0 14 6 122 0 15 6 122 0 16 6 122 0 17 6 122 0 18 6 122 0 19 6 122 0 20 6 122 0 21 16 133 0 22 6 122 0 23 6 122 0 24 6 122 0 26 6 122 0 27 6 122 0 28 6 122 0 29 6 122 0 30 6 122 0 31 6 122 0 32 6 122 0 33 6 122 0 34 6 122 0 35 6 122 0 36 6 122 0 37 6 122 0 38 6 122 0 39 6 122 0 40 6 122 0 41 6 122 0 42 6 122 0 46 6 122 0 47 6 122 0 48 6 122 0 51 6 122 0 64 6 122 0 70 6 122 0 101 6 122 0 104 6 122 0 105 6 122 0 106 6 122 0 107 6 122 0 108 6 122 0 109 6 122 0 110 6 122 0 111 6 122 0 127 6 122 0 128 6 122 0 129] 
#[0 6 126 0 19 0 128] 
#[1 10 105 0 1 0 179 0 3 0 183 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 0 187 0 30 16 141 0 31 1 161 0 44 10 141 0 45 0 191 0 52 0 195 0 53 10 149 0 56 10 153 0 57 0 14 0 58 10 157 0 59 0 199 0 60 0 14 0 61 0 14 0 65 0 14 0 66 5 37 0 67 0 14 0 69 10 161 0 70 10 165 0 71 0 14 0 72 0 203 0 74 10 173 0 75 0 207 0 77 10 177 0 78 0 14 0 79 10 181 0 80 0 14 0 84 10 185 0 86 0 211 0 87 0 14 0 88 0 14 0 89 0 215 0 90 0 14 0 91 5 41 0 92 0 14 0 94 0 14 0 96 0 219 0 97 0 14 0 99 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 16 145 0 108 0 223 0 112 0 227 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 16 149 0 135 16 153 0 137 16 157 0 141 16 161 0 157 0 49 0 158 16 165 0 180 5 185 0 236 10 213 0 237 16 169 0 240 16 173 0 241 16 177 0 242 15 49 0 243 16 181 0 244 16 185 0 245 10 229 0 246 10 233 0 247 10 237 0 248 16 189 0 249 16 193 0 250 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 16 197 0 19 16 201 0 128 16 205 1 121] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 16 209 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 16 213 0 104] 
#[0 6 130 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 6 134 0 1 6 134 0 2 6 134 0 3 6 134 0 4 6 134 0 5 6 134 0 6 6 134 0 7 6 134 0 9 6 134 0 10 6 134 0 11 6 134 0 12 6 134 0 13 6 134 0 14 6 134 0 15 6 134 0 16 6 134 0 17 6 134 0 18 6 134 0 19 6 134 0 20 6 134 0 21 6 134 0 22 6 134 0 23 6 134 0 24 6 134 0 25 6 134 0 26 6 134 0 27 6 134 0 28 6 134 0 29 6 134 0 30 6 134 0 31 6 134 0 32 6 134 0 33 6 134 0 34 6 134 0 35 6 134 0 36 6 134 0 37 6 134 0 38 6 134 0 39 6 134 0 40 6 134 0 41 6 134 0 42 6 134 0 43 6 134 0 44 6 134 0 45 6 134 0 47 6 134 0 48 6 134 0 49 6 134 0 50 6 134 0 51 6 134 0 52 6 134 0 53 6 134 0 54 6 134 0 55 6 134 0 56 6 134 0 57 6 134 0 58 6 134 0 59 6 134 0 60 6 134 0 62 6 134 0 63 6 134 0 64 6 134 0 65 6 134 0 66 6 134 0 67 6 134 0 68 6 134 0 69 6 134 0 70 6 134 0 71 6 134 0 72 6 134 0 73 6 134 0 74 6 134 0 75 6 134 0 76 6 134 0 77 6 134 0 78 6 134 0 79 6 134 0 80 6 134 0 81 6 134 0 82 6 134 0 83 6 134 0 84 6 134 0 85 6 134 0 86 6 134 0 87 6 134 0 88 6 134 0 89 6 134 0 90 6 134 0 91 6 134 0 92 6 134 0 93 6 134 0 94 6 134 0 95 6 134 0 96 6 134 0 97 6 134 0 98 6 134 0 99 6 134 0 100 6 134 0 101 6 134 0 102 6 134 0 103 6 134 0 104 6 134 0 105 6 134 0 106 6 134 0 107 6 134 0 112 6 134 0 113 6 134 0 117 6 134 0 118 6 134 0 120 6 134 0 121 6 134 0 122 6 134 0 123 6 134 0 125 6 134 0 126 6 134 0 127 6 134 0 128 6 134 0 129 16 217 0 149 6 134 1 153] 
#[1 6 134 0 1 6 134 0 2 6 134 0 3 6 134 0 4 6 134 0 5 6 134 0 6 6 134 0 7 6 134 0 9 6 134 0 10 6 134 0 11 6 134 0 12 6 134 0 13 6 134 0 15 6 134 0 16 6 134 0 17 6 134 0 18 6 134 0 19 6 134 0 20 6 134 0 21 6 134 0 22 6 134 0 23 6 134 0 24 6 134 0 25 6 134 0 26 6 134 0 27 6 134 0 28 6 134 0 29 6 134 0 30 6 134 0 31 6 134 0 32 6 134 0 33 6 134 0 34 6 134 0 35 6 134 0 36 6 134 0 37 6 134 0 38 6 134 0 39 6 134 0 40 6 134 0 41 6 134 0 42 6 134 0 43 6 134 0 44 6 134 0 45 6 134 0 46 6 134 0 47 6 134 0 48 6 134 0 49 6 134 0 50 6 134 0 51 6 134 0 52 6 134 0 53 6 134 0 54 6 134 0 55 6 134 0 56 6 134 0 57 6 134 0 58 6 134 0 59 6 134 0 60 6 134 0 62 6 134 0 63 6 134 0 64 6 134 0 65 6 134 0 66 6 134 0 67 6 134 0 68 6 134 0 69 6 134 0 70 6 134 0 71 6 134 0 72 6 134 0 73 6 134 0 74 6 134 0 75 6 134 0 76 6 134 0 77 6 134 0 78 6 134 0 79 6 134 0 80 6 134 0 81 6 134 0 82 6 134 0 83 6 134 0 84 6 134 0 85 6 134 0 86 6 134 0 87 6 134 0 88 6 134 0 89 6 134 0 90 6 134 0 91 6 134 0 92 6 134 0 93 6 134 0 94 6 134 0 95 6 134 0 96 6 134 0 97 6 134 0 98 6 134 0 99 6 134 0 100 6 134 0 101 6 134 0 102 6 134 0 103 6 134 0 104 6 134 0 105 6 134 0 106 6 134 0 107 6 134 0 112 6 134 0 113 6 134 0 117 6 134 0 118 6 134 0 120 6 134 0 121 6 134 0 122 6 134 0 123 6 134 0 125 6 134 0 126 6 134 0 127 6 134 0 128 6 134 0 129 16 221 0 149 6 134 1 153] 
#[1 6 134 0 1 6 134 0 2 6 134 0 3 6 134 0 4 6 134 0 5 6 134 0 6 6 134 0 7 6 134 0 9 6 134 0 10 6 134 0 11 6 134 0 12 6 134 0 13 6 134 0 15 6 134 0 16 6 134 0 17 6 134 0 18 6 134 0 19 6 134 0 20 6 134 0 21 6 134 0 22 6 134 0 23 6 134 0 24 6 134 0 25 6 134 0 26 6 134 0 27 6 134 0 28 6 134 0 29 6 134 0 30 6 134 0 31 6 134 0 32 6 134 0 33 6 134 0 34 6 134 0 35 6 134 0 36 6 134 0 37 6 134 0 38 6 134 0 39 6 134 0 40 6 134 0 41 6 134 0 42 6 134 0 43 6 134 0 44 6 134 0 45 6 134 0 47 6 134 0 48 6 134 0 49 6 134 0 50 6 134 0 51 6 134 0 52 6 134 0 53 6 134 0 54 6 134 0 55 6 134 0 56 6 134 0 57 6 134 0 58 6 134 0 59 6 134 0 60 6 134 0 62 6 134 0 63 6 134 0 64 6 134 0 65 6 134 0 66 6 134 0 67 6 134 0 68 6 134 0 69 6 134 0 70 6 134 0 71 6 134 0 72 6 134 0 73 6 134 0 74 6 134 0 75 6 134 0 76 6 134 0 77 6 134 0 78 6 134 0 79 6 134 0 80 6 134 0 81 6 134 0 82 6 134 0 83 6 134 0 84 6 134 0 85 6 134 0 86 6 134 0 87 6 134 0 88 6 134 0 89 6 134 0 90 6 134 0 91 6 134 0 92 6 134 0 93 6 134 0 94 6 134 0 95 6 134 0 96 6 134 0 97 6 134 0 98 6 134 0 99 6 134 0 100 6 134 0 101 6 134 0 102 6 134 0 103 6 134 0 104 6 134 0 105 6 134 0 106 6 134 0 107 6 134 0 108 6 134 0 112 6 134 0 113 6 134 0 117 6 134 0 118 6 134 0 120 6 134 0 121 6 134 0 122 6 134 0 123 6 134 0 125 6 134 0 126 6 134 0 127 6 134 0 128 6 134 0 129 16 225 0 149 6 134 1 153] 
#[0 16 229 0 14] 
#[1 6 138 0 14 6 138 0 31 6 138 0 46 6 138 0 108 16 233 0 146] 
#[0 16 237 0 37] 
#[0 16 241 0 46] 
#[0 16 245 0 108] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 61 0 14 0 65 0 14 0 66 0 14 0 69 0 14 0 72 0 14 0 77 0 14 0 79 0 14 0 84 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 91 0 14 0 94 0 14 0 96 0 14 0 97 0 14 0 99 16 249 0 108 0 14 0 112 0 14 0 113 0 45 0 157 0 49 0 158] 
#[0 6 142 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 61 0 63 0 65 0 66 0 69 0 70 0 72 0 77 0 79 0 87 0 88 0 89 0 90 0 91 0 94 0 96 0 97 0 99 0 112 0 113 0 126 0 127 0 129] 
#[1 16 253 0 31 17 1 0 35] 
#[0 6 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 17 5 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 6 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 17 9 0 31] 
#[0 6 154 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 13 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 17 17 0 31 3 65 0 101 17 21 0 228] 
#[1 6 158 0 14 17 25 0 19 17 29 0 195] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 17 33 1 148] 
#[0 17 37 0 29] 
#[0 6 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 17 41 0 19 6 166 0 108 17 45 0 191] 
#[1 17 49 0 31 3 65 0 101 17 53 0 228] 
#[0 17 57 0 14] 
#[0 6 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 17 61 0 108] 
#[0 6 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 17 65 0 108 1 246 0 112 1 246 0 113 7 9 0 180 17 69 0 190 7 17 0 193] 
#[0 6 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
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
#[0 6 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 109 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 17 113 0 31 17 117 0 35] 
#[0 6 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 17 121 0 31 17 125 0 35 3 65 0 101 17 129 0 228] 
#[0 17 133 0 31] 
#[0 6 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 137 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 17 141 0 31] 
#[0 6 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 17 145 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 1 246 0 112 1 246 0 113 7 9 0 180 17 149 0 190 7 17 0 193] 
#[0 17 153 0 108] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 17 157 0 210 3 197 0 234 7 49 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 17 161 0 214 3 197 0 234 17 165 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 17 169 0 104] 
#[1 17 173 0 29 17 177 0 35 3 65 0 101 1 122 0 104 17 181 0 211 4 165 0 228] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 17 185 0 108 1 246 0 112 1 246 0 113 10 73 0 180 10 77 0 220] 
#[1 0 67 0 3 2 2 0 5 2 2 0 30 2 2 0 52 2 2 0 53 2 2 0 58 2 2 0 60 2 2 0 61 2 2 0 66 2 2 0 69 2 2 0 77 2 2 0 84 2 2 0 87 2 2 0 88 2 2 0 90 2 2 0 97 2 2 0 108 2 2 0 112 2 2 0 113 17 189 0 219 5 185 0 236] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 193 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 17 197 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 201 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 17 205 0 70] 
#[1 0 61 0 5 3 105 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 2 57 1 119 17 209 1 141 2 73 1 144 1 21 1 148] 
#[0 17 213 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 17 217 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 65 0 101 1 122 0 104 17 221 0 211 4 165 0 228] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 61 0 10 0 65 0 10 0 66 0 10 0 69 0 10 0 72 0 10 0 77 0 10 0 79 0 10 0 84 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 91 0 10 0 94 0 10 0 96 0 10 0 97 0 10 0 99 0 10 0 108 0 10 0 112 0 10 0 113 17 225 0 133 5 185 0 236] 
#[1 3 65 0 101 1 122 0 104 17 229 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 17 233 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 17 237 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 17 241 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 17 245 0 210 3 197 0 234 7 49 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 17 249 0 214 3 197 0 234 17 253 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 18 1 0 104] 
#[1 13 29 0 19 3 158 0 108 13 33 0 168 18 5 0 170] 
#[1 0 61 0 5 2 137 0 15 2 141 0 30 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 2 145 0 104 6 202 0 108 0 149 0 112 0 153 0 113 18 9 0 167 2 153 1 111 1 13 1 114 1 21 1 148] 
#[0 6 206 0 19 0 108] 
#[0 18 13 0 108] 
#[0 6 210 0 19 0 31 0 108] 
#[1 2 118 0 19 2 118 0 108 18 17 0 169] 
#[1 18 21 0 22 18 25 0 31 3 65 0 101 6 137 0 104 18 29 0 185 18 33 0 228 18 37 0 248] 
#[0 18 41 0 14] 
#[1 6 214 0 14 18 45 0 19] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 53 0 25 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 1 177 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 18 69 0 81 14 93 0 85 18 73 0 87 0 125 0 90 14 97 0 92 1 193 0 97 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 18 77 0 129 18 81 0 134 1 213 0 135 1 217 0 137 18 85 0 181 18 89 0 182 18 93 0 184 1 225 0 234 10 17 0 237 18 97 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 18 101 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 18 105 1 119 14 213 1 135 18 109 1 137 2 65 1 138 3 181 1 141 2 73 1 144 14 217 1 148 14 221 1 153] 
#[1 6 218 0 14 6 218 0 19 18 113 0 178] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 18 117 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 18 121 0 176 13 57 0 179 13 61 0 180 13 65 0 183 1 246 1 153] 
#[0 6 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 226 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 6 230 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 101 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153 1 154] 
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
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 6 238 0 19 3 105 0 30 6 238 0 31 6 238 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 6 238 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 18 173 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 6 242 0 11 6 242 0 12 6 242 0 19 6 242 0 31 6 242 0 35 6 242 0 104 6 242 0 126 18 177 1 107 18 181 1 109] 
#[1 13 153 0 13 6 246 0 19 13 157 0 35 13 161 0 104 6 246 0 108 18 185 0 203 18 189 0 204 18 193 0 205] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 18 197 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 249 0 158 18 201 0 194 7 1 0 197] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 18 205 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 18 209 0 108 1 246 0 112 1 246 0 113 7 9 0 180 18 213 0 190 7 17 0 193] 
#[0 6 250 0 19 0 108] 
#[0 6 254 0 19 0 108] 
#[0 7 2 0 19 0 108] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 7 6 0 108 1 246 0 112 1 246 0 113 5 145 0 180 18 217 0 202] 
#[0 7 10 0 19 0 108] 
#[0 7 14 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 7 18 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 18 221 0 108] 
#[0 7 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 73 0 52 1 53 0 66 0 34 0 69 1 77 0 97 0 201 0 173 1 81 0 174] 
#[1 1 53 0 66 0 34 0 69 0 201 0 173 2 133 0 174] 
#[0 7 26 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 7 30 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 7 34 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 0 69 0 52 13 201 0 58 0 85 0 61 1 53 0 66 0 34 0 69 0 117 0 88 13 205 0 97 18 225 0 171 0 197 0 172 0 201 0 173 0 205 0 174 18 229 0 208] 
#[0 7 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 18 233 0 104] 
#[0 7 42 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 46 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 46 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 46 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 46 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 46 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 46 0 64 7 46 0 104 15 181 0 106 15 185 0 107 7 46 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 18 237 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 50 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 50 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 50 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 50 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 50 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 50 0 64 7 50 0 104 15 181 0 106 15 185 0 107 7 50 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 18 241 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 7 54 0 7 7 54 0 9 7 54 0 10 7 54 0 14 15 81 0 15 7 54 0 16 15 89 0 17 7 54 0 18 7 54 0 19 15 97 0 20 7 54 0 21 15 105 0 23 7 54 0 24 7 54 0 26 15 117 0 27 7 54 0 28 7 54 0 31 15 125 0 32 7 54 0 33 15 133 0 34 7 54 0 35 15 141 0 36 7 54 0 37 15 145 0 38 15 149 0 39 7 54 0 40 15 157 0 41 15 161 0 42 7 54 0 46 15 169 0 47 7 54 0 48 15 177 0 51 7 54 0 64 7 54 0 104 7 54 0 106 7 54 0 107 7 54 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 16 137 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 18 245 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 0 33 0 236 10 213 0 237 18 249 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 18 253 1 0 19 1 1 1 19 5 1 2 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 7 58 0 2 7 58 0 6 7 58 0 7 7 58 0 9 7 58 0 10 7 58 0 14 7 58 0 15 7 58 0 16 7 58 0 17 7 58 0 18 7 58 0 19 7 58 0 20 7 58 0 21 15 105 0 23 7 58 0 24 7 58 0 26 7 58 0 27 7 58 0 28 7 58 0 31 7 58 0 32 7 58 0 33 7 58 0 34 7 58 0 35 7 58 0 36 7 58 0 37 7 58 0 38 7 58 0 39 7 58 0 40 7 58 0 41 15 161 0 42 7 58 0 46 7 58 0 47 7 58 0 48 15 177 0 51 7 58 0 64 7 58 0 104 7 58 0 106 7 58 0 107 7 58 0 108 7 58 0 109 15 193 0 110 15 197 0 111 7 58 0 127 7 58 0 128 7 58 0 129] 
#[1 7 62 0 2 15 65 0 6 7 62 0 7 7 62 0 9 7 62 0 10 7 62 0 14 15 81 0 15 7 62 0 16 7 62 0 17 7 62 0 18 7 62 0 19 7 62 0 20 7 62 0 21 15 105 0 23 7 62 0 24 7 62 0 26 15 117 0 27 7 62 0 28 7 62 0 31 7 62 0 32 7 62 0 33 7 62 0 34 7 62 0 35 7 62 0 36 7 62 0 37 7 62 0 38 7 62 0 39 7 62 0 40 7 62 0 41 15 161 0 42 7 62 0 46 7 62 0 47 7 62 0 48 15 177 0 51 7 62 0 64 7 62 0 104 7 62 0 106 7 62 0 107 7 62 0 108 7 62 0 109 15 193 0 110 15 197 0 111 7 62 0 127 7 62 0 128 7 62 0 129] 
#[1 15 61 0 2 15 65 0 6 7 66 0 7 15 73 0 9 7 66 0 10 7 66 0 14 15 81 0 15 7 66 0 16 15 89 0 17 7 66 0 18 7 66 0 19 15 97 0 20 7 66 0 21 15 105 0 23 15 117 0 27 7 66 0 28 7 66 0 31 15 125 0 32 7 66 0 33 15 133 0 34 7 66 0 35 15 141 0 36 7 66 0 37 15 145 0 38 15 149 0 39 7 66 0 40 15 157 0 41 15 161 0 42 7 66 0 46 15 169 0 47 7 66 0 48 15 177 0 51 7 66 0 64 7 66 0 104 7 66 0 106 15 185 0 107 7 66 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 7 70 0 7 15 73 0 9 7 70 0 10 7 70 0 14 15 81 0 15 7 70 0 16 15 89 0 17 7 70 0 18 7 70 0 19 15 97 0 20 7 70 0 21 15 105 0 23 15 117 0 27 7 70 0 28 7 70 0 31 15 125 0 32 7 70 0 33 15 133 0 34 7 70 0 35 15 141 0 36 7 70 0 37 15 145 0 38 15 149 0 39 7 70 0 40 15 157 0 41 15 161 0 42 7 70 0 46 15 169 0 47 7 70 0 48 15 177 0 51 7 70 0 64 7 70 0 104 7 70 0 106 15 185 0 107 7 70 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 6 54 0 2 6 54 0 6 6 54 0 7 6 54 0 9 6 54 0 10 6 54 0 13 6 54 0 14 6 54 0 15 6 54 0 16 6 54 0 17 6 54 0 18 6 54 0 19 6 54 0 20 6 54 0 21 6 54 0 23 6 54 0 24 6 54 0 25 6 54 0 26 6 54 0 27 6 54 0 28 6 54 0 29 6 54 0 30 6 54 0 31 6 54 0 32 6 54 0 33 6 54 0 34 6 54 0 35 6 54 0 36 6 54 0 37 6 54 0 38 6 54 0 39 6 54 0 40 6 54 0 41 6 54 0 42 6 54 0 46 6 54 0 47 6 54 0 48 6 54 0 51 6 54 0 64 6 54 0 71 6 54 0 73 6 54 0 104 6 54 0 105 6 54 0 106 6 54 0 107 6 54 0 108 6 54 0 109 6 54 0 110 6 54 0 111 6 54 0 127 6 54 0 128 6 54 0 129 19 9 1 117] 
#[1 10 105 0 1 16 137 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 19 13 0 46 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 0 33 0 236 10 213 0 237 19 17 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 19 21 0 253 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 6 137 0 104 19 25 0 248] 
#[0 7 74 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 78 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 78 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 78 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 78 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 78 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 78 0 64 7 78 0 104 15 181 0 106 15 185 0 107 7 78 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 7 82 0 2 0 57 0 3 0 61 0 5 7 82 0 6 7 82 0 7 10 109 0 8 10 113 0 9 7 82 0 10 10 117 0 13 7 82 0 14 10 121 0 15 7 82 0 16 7 82 0 17 7 82 0 18 7 82 0 19 10 125 0 20 7 82 0 21 7 82 0 23 10 129 0 24 10 133 0 26 7 82 0 27 7 82 0 28 15 45 0 29 10 137 0 30 7 82 0 31 7 82 0 32 7 82 0 33 7 82 0 34 7 82 0 35 7 82 0 36 7 82 0 37 7 82 0 38 7 82 0 39 7 82 0 40 7 82 0 41 7 82 0 42 1 161 0 44 10 141 0 45 7 82 0 46 7 82 0 47 7 82 0 48 7 82 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 7 82 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 239 0 104 10 197 0 105 7 82 0 106 10 201 0 107 7 82 0 108 7 82 0 109 7 82 0 110 7 82 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 7 82 0 128 7 82 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 29 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 86 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 86 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 86 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 86 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 86 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 86 0 64 7 86 0 104 15 181 0 106 15 185 0 107 7 86 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 7 90 0 2 0 57 0 3 0 61 0 5 7 90 0 6 7 90 0 7 10 109 0 8 10 113 0 9 7 90 0 10 10 117 0 13 7 90 0 14 10 121 0 15 7 90 0 16 7 90 0 17 7 90 0 18 7 90 0 19 10 125 0 20 7 90 0 21 7 90 0 23 10 129 0 24 10 133 0 26 7 90 0 27 7 90 0 28 15 45 0 29 10 137 0 30 7 90 0 31 7 90 0 32 7 90 0 33 7 90 0 34 7 90 0 35 7 90 0 36 7 90 0 37 7 90 0 38 7 90 0 39 7 90 0 40 7 90 0 41 7 90 0 42 1 161 0 44 10 141 0 45 7 90 0 46 7 90 0 47 7 90 0 48 7 90 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 7 90 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 0 243 0 104 10 197 0 105 7 90 0 106 10 201 0 107 7 90 0 108 7 90 0 109 7 90 0 110 7 90 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 7 90 0 128 7 90 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 33 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 94 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 94 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 94 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 94 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 94 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 94 0 64 7 94 0 104 15 181 0 106 15 185 0 107 7 94 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 19 37 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 41 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 19 49 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 53 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 19 57 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 19 61 1 71 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 19 65 0 123 19 69 0 125] 
#[0 7 98 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 19 73 0 46 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 77 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 19 81 1 75 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 7 102 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 85 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 7 106 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 19 89 1 148] 
#[1 1 25 0 53 1 33 0 77 19 93 0 81 0 149 0 112 0 153 0 113 19 97 1 148] 
#[0 7 110 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 101 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 7 114 0 14 7 114 0 19 7 118 0 24 7 118 0 25 7 118 0 26 7 114 0 29 7 114 0 31 7 114 0 35 7 114 0 37 7 114 0 46 7 114 0 71 7 114 0 73 7 114 0 105 7 114 0 108] 
#[0 7 122 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 126 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 7 130 0 14 7 130 0 19 7 134 0 24 7 134 0 25 7 134 0 26 7 130 0 29 7 130 0 31 7 130 0 35 7 130 0 37 7 130 0 46 7 130 0 71 7 130 0 73 7 130 0 105 7 130 0 108] 
#[0 7 138 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 7 142 0 14 7 142 0 19 7 146 0 24 7 146 0 25 7 146 0 26 7 142 0 29 7 142 0 31 7 142 0 35 7 142 0 37 7 142 0 46 7 142 0 71 7 142 0 73 7 142 0 105 7 142 0 108] 
#[1 7 150 0 14 7 150 0 19 7 154 0 24 7 154 0 25 7 154 0 26 7 150 0 29 7 150 0 31 7 150 0 35 7 150 0 37 7 150 0 46 7 150 0 71 7 150 0 73 7 150 0 105 7 150 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 19 105 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 109 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 7 158 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 19 113 0 73] 
#[1 7 162 0 14 7 162 0 19 7 162 0 29 7 162 0 31 7 162 0 35 7 162 0 37 7 162 0 46 7 162 0 71 7 162 0 73 7 162 0 105 7 162 0 108 19 117 1 48] 
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
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 145 1 42 14 241 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 19 149 0 248] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 153 1 46 19 157 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 19 161 0 35] 
#[1 7 246 0 35 7 246 0 37 7 246 0 71 7 246 0 105 19 165 1 44] 
#[0 7 250 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 19 169 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 0 251 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 15 25 0 180 19 177 1 24 15 33 1 27 1 246 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 19 181 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 185 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 7 254 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 7 254 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 7 254 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 7 254 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 7 254 0 46 15 169 0 47 15 173 0 48 15 177 0 51 7 254 0 64 7 254 0 104 15 181 0 106 15 185 0 107 7 254 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 8 2 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 19 189 1 42 14 241 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 19 193 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 19 197 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 201 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 57 0 3 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 10 17 0 237 19 205 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 19 209 0 105] 
#[1 8 6 0 19 8 6 0 105 19 213 1 26] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 19 217 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 15 61 0 2 15 65 0 6 8 10 0 7 15 73 0 9 8 10 0 10 8 10 0 14 15 81 0 15 8 10 0 16 15 89 0 17 8 10 0 18 8 10 0 19 15 97 0 20 8 10 0 21 15 105 0 23 8 10 0 24 8 10 0 26 15 117 0 27 8 10 0 28 8 10 0 31 15 125 0 32 8 10 0 33 15 133 0 34 8 10 0 35 15 141 0 36 8 10 0 37 15 145 0 38 15 149 0 39 8 10 0 40 15 157 0 41 15 161 0 42 8 10 0 46 15 169 0 47 8 10 0 48 15 177 0 51 8 10 0 64 8 10 0 104 8 10 0 106 8 10 0 107 8 10 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 8 14 0 70 0 75 0 102] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 255 0 2 0 255 0 6 0 255 0 7 0 255 0 9 0 255 0 10 8 18 0 14 0 255 0 15 0 255 0 16 0 255 0 17 0 255 0 18 8 18 0 19 0 255 0 20 0 255 0 21 0 255 0 23 0 255 0 24 0 255 0 26 0 255 0 27 0 255 0 28 8 18 0 31 0 255 0 32 0 255 0 33 0 255 0 34 0 255 0 35 0 255 0 36 8 18 0 37 0 255 0 38 0 255 0 39 0 255 0 40 0 255 0 41 0 255 0 42 8 18 0 46 0 255 0 47 0 255 0 48 0 255 0 51 8 18 0 64 8 18 0 104 0 255 0 106 0 255 0 107 8 18 0 108 0 255 0 109 0 255 0 110 0 255 0 111 0 255 0 127 0 255 0 128 0 255 0 129] 
#[1 8 22 0 1 1 3 0 2 8 22 0 3 8 22 0 5 1 3 0 6 1 3 0 7 8 22 0 8 1 3 0 9 1 3 0 10 8 22 0 13 8 22 0 14 1 3 0 15 1 3 0 16 1 3 0 17 1 3 0 18 8 22 0 19 1 3 0 20 1 3 0 21 1 3 0 23 1 3 0 24 1 3 0 26 1 3 0 27 1 3 0 28 8 22 0 30 8 22 0 31 1 3 0 32 1 3 0 33 1 3 0 34 1 3 0 35 1 3 0 36 8 22 0 37 1 3 0 38 1 3 0 39 1 3 0 40 1 3 0 41 1 3 0 42 8 22 0 44 8 22 0 45 8 22 0 46 1 3 0 47 1 3 0 48 8 22 0 49 1 3 0 51 8 22 0 52 8 22 0 53 8 22 0 56 8 22 0 57 8 22 0 58 8 22 0 59 8 22 0 60 8 22 0 61 8 22 0 64 8 22 0 65 8 22 0 66 8 22 0 67 8 22 0 69 8 22 0 70 8 22 0 71 8 22 0 72 8 22 0 74 8 22 0 75 8 22 0 77 8 22 0 78 8 22 0 79 8 22 0 80 8 22 0 81 8 22 0 84 8 22 0 85 8 22 0 86 8 22 0 87 8 22 0 88 8 22 0 89 8 22 0 90 8 22 0 91 8 22 0 92 8 22 0 94 8 22 0 96 8 22 0 97 8 22 0 99 8 22 0 102 8 22 0 104 8 22 0 105 1 3 0 106 1 3 0 107 8 22 0 108 1 3 0 109 1 3 0 110 1 3 0 111 8 22 0 112 8 22 0 113 8 22 0 117 8 22 0 118 8 22 0 120 8 22 0 121 8 22 0 122 8 22 0 123 8 22 0 125 8 22 0 126 1 3 0 127 1 3 0 128 1 3 0 129 8 22 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 221 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 225 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 229 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 233 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 237 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 241 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 245 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 249 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 19 253 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 1 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 5 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 20 9 0 54 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 20 13 0 123 20 17 1 3 3 109 1 114 20 21 1 118 11 61 1 119 20 25 1 148] 
#[1 10 105 0 1 8 26 0 2 0 57 0 3 0 61 0 5 8 26 0 6 8 26 0 7 10 109 0 8 10 113 0 9 8 26 0 10 10 117 0 13 8 26 0 14 10 121 0 15 8 26 0 16 8 26 0 17 8 26 0 18 8 26 0 19 10 125 0 20 8 26 0 21 8 26 0 23 8 26 0 27 8 26 0 28 10 137 0 30 8 26 0 31 8 26 0 32 8 26 0 33 8 26 0 34 8 26 0 35 8 26 0 36 8 26 0 37 8 26 0 38 8 26 0 39 8 26 0 40 8 26 0 41 8 26 0 42 1 161 0 44 10 141 0 45 8 26 0 46 8 26 0 47 8 26 0 48 8 26 0 51 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 8 26 0 64 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 1 7 0 104 10 197 0 105 8 26 0 106 10 201 0 107 8 26 0 108 8 26 0 109 8 26 0 110 8 26 0 111 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 8 26 0 128 8 26 0 129 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 29 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 33 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 37 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 41 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 45 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 49 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 53 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 57 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 61 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 65 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 69 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 73 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 77 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 8 30 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 8 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 81 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 85 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 20 89 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 93 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 97 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 101 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 20 105 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 109 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 20 113 1 22 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 117 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 121 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 125 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 129 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 8 38 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 8 42 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 8 46 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 8 50 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 20 133 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 137 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 6 0 3 0 6 0 24 1 11 0 53 1 15 0 77 1 19 0 108 1 23 0 112 1 27 0 113 1 31 0 123 20 145 0 132 20 149 1 3 20 153 1 17 20 157 1 20 20 161 1 148] 
#[1 8 54 0 2 8 54 0 6 8 54 0 7 8 54 0 9 8 54 0 10 8 54 0 13 8 54 0 14 8 54 0 15 8 54 0 16 8 54 0 17 8 54 0 18 8 54 0 19 8 54 0 20 8 54 0 21 8 54 0 23 8 54 0 24 8 54 0 25 8 54 0 26 8 54 0 27 8 54 0 28 8 54 0 29 15 245 0 30 8 54 0 31 8 54 0 32 8 54 0 33 8 54 0 34 8 54 0 35 8 54 0 36 8 54 0 37 8 54 0 38 8 54 0 39 8 54 0 40 8 54 0 41 8 54 0 42 8 54 0 46 8 54 0 47 8 54 0 48 8 54 0 51 8 54 0 64 8 54 0 71 8 54 0 73 8 54 0 104 8 54 0 105 8 54 0 106 8 54 0 107 8 54 0 108 8 54 0 109 8 54 0 110 8 54 0 111 8 54 0 127 8 54 0 128 8 54 0 129 20 165 1 116] 
#[1 4 61 0 127 20 169 1 120] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 20 173 1 118 11 61 1 119 1 21 1 148] 
#[0 8 58 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 8 62 0 2 8 62 0 6 8 62 0 7 8 62 0 9 8 62 0 10 8 62 0 14 8 62 0 15 8 62 0 16 8 62 0 17 8 62 0 18 8 62 0 19 8 62 0 20 8 62 0 21 8 62 0 23 8 62 0 24 8 62 0 25 8 62 0 26 8 62 0 27 8 62 0 28 8 62 0 29 15 245 0 30 8 62 0 31 8 62 0 32 8 62 0 33 8 62 0 34 8 62 0 35 8 62 0 36 8 62 0 37 8 62 0 38 8 62 0 39 8 62 0 40 8 62 0 41 8 62 0 42 8 62 0 46 8 62 0 47 8 62 0 48 8 62 0 51 8 62 0 64 8 62 0 71 8 62 0 73 8 62 0 104 8 62 0 105 8 62 0 106 8 62 0 107 8 62 0 108 8 62 0 109 8 62 0 110 8 62 0 111 8 62 0 127 8 62 0 128 8 62 0 129 20 177 1 116] 
#[1 3 65 0 101 1 122 0 104 20 181 0 211 4 165 0 228] 
#[0 20 185 0 104] 
#[0 13 233 0 14] 
#[0 20 189 0 29] 
#[1 6 242 0 11 6 242 0 12 6 242 0 19 6 242 0 126 6 242 0 128 20 193 1 107 18 181 1 109] 
#[1 8 66 0 19 20 197 0 29 8 66 0 128] 
#[1 8 70 0 19 20 201 0 29 20 205 0 35 8 70 0 128] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 8 74 0 19 3 105 0 30 20 209 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 8 74 0 128 3 197 0 234 20 213 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 20 217 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 8 78 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 58 0 60 0 63 0 66 0 69 0 70 0 72 0 77 0 87 0 90 0 97 0 101 0 104 0 112 0 113 0 126 0 127 0 129] 
#[0 8 82 0 30] 
#[1 3 65 0 101 1 122 0 104 20 221 0 211 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 20 225 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 65 0 101 1 122 0 104 20 229 0 211 4 165 0 228] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 20 233 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 20 237 0 212 5 185 0 236] 
#[0 20 241 0 104] 
#[1 8 86 0 2 8 86 0 6 8 86 0 7 8 86 0 9 8 86 0 10 8 86 0 14 8 86 0 15 8 86 0 16 8 86 0 17 8 86 0 18 8 86 0 19 8 86 0 20 8 86 0 21 16 93 0 22 8 86 0 23 8 86 0 24 8 86 0 26 8 86 0 27 8 86 0 28 8 86 0 29 8 86 0 30 8 86 0 31 8 86 0 32 8 86 0 33 8 86 0 34 8 86 0 35 8 86 0 36 8 86 0 37 8 86 0 38 8 86 0 39 8 86 0 40 8 86 0 41 8 86 0 42 8 86 0 46 8 86 0 47 8 86 0 48 8 86 0 51 8 86 0 64 8 86 0 70 8 86 0 101 8 86 0 104 8 86 0 105 8 86 0 106 8 86 0 107 8 86 0 108 8 86 0 109 8 86 0 110 8 86 0 111 8 86 0 127 8 86 0 128 8 86 0 129 20 245 1 90] 
#[0 20 249 0 14] 
#[0 8 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 57 0 3 0 61 0 5 0 65 0 30 0 69 0 52 1 25 0 53 0 77 0 58 0 81 0 60 0 85 0 61 1 53 0 66 0 34 0 69 1 33 0 77 0 109 0 84 0 113 0 87 0 125 0 90 0 133 0 94 13 205 0 97 0 149 0 112 0 153 0 113 0 157 0 135 0 161 0 137 20 253 0 141 21 1 0 171 0 197 0 172 0 201 0 173 0 205 0 174 21 5 0 186 21 9 0 207 10 17 0 237 1 9 1 111 1 13 1 114 21 13 1 147 1 21 1 148] 
#[0 8 94 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 21 17 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 21 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 8 98 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 246 0 14 0 246 0 19 21 25 0 29] 
#[0 8 102 0 14 0 19] 
#[1 0 190 0 1 0 190 0 13 0 190 0 14 0 190 0 17 0 190 0 19 21 29 0 29 0 190 0 30 0 190 0 127] 
#[1 8 106 0 2 8 106 0 6 8 106 0 7 8 106 0 9 8 106 0 10 8 106 0 14 8 106 0 15 8 106 0 16 8 106 0 17 8 106 0 18 8 106 0 19 8 106 0 20 8 106 0 21 16 93 0 22 8 106 0 23 8 106 0 24 8 106 0 26 8 106 0 27 8 106 0 28 8 106 0 29 8 106 0 30 8 106 0 31 8 106 0 32 8 106 0 33 8 106 0 34 8 106 0 35 8 106 0 36 8 106 0 37 8 106 0 38 8 106 0 39 8 106 0 40 8 106 0 41 8 106 0 42 8 106 0 46 8 106 0 47 8 106 0 48 8 106 0 51 8 106 0 64 8 106 0 70 8 106 0 101 8 106 0 104 8 106 0 105 8 106 0 106 8 106 0 107 8 106 0 108 8 106 0 109 8 106 0 110 8 106 0 111 8 106 0 127 8 106 0 128 8 106 0 129 21 33 1 90] 
#[1 8 110 0 14 21 37 0 19 21 41 1 93] 
#[0 8 114 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 8 118 0 14 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 45 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 8 122 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 49 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 41 0 1 1 45 0 45] 
#[0 8 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 8 130 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153 1 154] 
#[1 0 86 0 1 1 14 0 2 0 86 0 3 0 86 0 5 1 14 0 6 1 14 0 7 0 86 0 8 1 35 0 9 1 14 0 10 0 86 0 13 1 35 0 15 1 14 0 16 1 14 0 17 1 14 0 18 1 35 0 20 1 14 0 21 1 14 0 23 1 35 0 24 1 35 0 26 1 14 0 27 1 14 0 28 0 86 0 30 1 35 0 31 1 14 0 32 1 14 0 33 1 14 0 34 1 14 0 35 1 14 0 36 1 14 0 38 1 14 0 39 1 14 0 40 1 14 0 41 1 14 0 42 0 86 0 44 0 86 0 45 1 14 0 47 1 14 0 48 1 14 0 51 0 86 0 52 0 86 0 53 0 86 0 56 0 86 0 57 0 86 0 58 0 86 0 59 0 86 0 60 0 86 0 61 0 86 0 65 0 86 0 66 0 86 0 67 0 86 0 69 0 86 0 70 0 86 0 71 0 86 0 72 0 86 0 74 0 86 0 75 0 86 0 77 0 86 0 78 0 86 0 79 0 86 0 80 0 86 0 84 0 86 0 86 0 86 0 87 0 86 0 88 0 86 0 89 0 86 0 90 0 86 0 91 0 86 0 92 0 86 0 94 0 86 0 96 0 86 0 97 0 86 0 99 0 86 0 102 0 86 0 104 0 86 0 105 1 14 0 106 1 35 0 107 1 35 0 108 1 14 0 109 1 14 0 110 1 14 0 111 0 86 0 112 0 86 0 113 0 86 0 117 0 86 0 118 0 86 0 120 0 86 0 121 0 86 0 122 0 86 0 123 0 86 0 125 0 86 0 126 1 35 0 127 1 14 0 128 1 14 0 129 0 86 1 153] 
#[1 1 18 0 2 1 18 0 6 1 18 0 7 1 18 0 9 1 18 0 10 1 18 0 15 1 18 0 16 1 18 0 17 1 18 0 18 1 18 0 20 1 18 0 21 1 18 0 23 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 39 0 31 1 18 0 32 1 18 0 33 1 18 0 34 1 18 0 35 1 18 0 36 1 18 0 38 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 42 1 18 0 47 1 18 0 48 1 18 0 51 1 18 0 106 1 18 0 107 1 18 0 108 1 18 0 109 1 18 0 110 1 18 0 111 1 18 0 127 1 18 0 128 1 18 0 129] 
#[0 8 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 8 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[1 0 57 0 3 21 53 0 74 10 17 0 237] 
#[0 8 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 8 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 8 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[1 5 222 0 2 5 222 0 6 5 222 0 7 5 222 0 9 5 222 0 10 5 222 0 15 5 222 0 16 5 222 0 17 5 222 0 18 5 222 0 20 5 222 0 21 5 222 0 23 5 222 0 24 5 222 0 26 5 222 0 27 5 222 0 28 21 57 0 31 5 222 0 32 5 222 0 33 5 222 0 34 5 222 0 35 5 222 0 36 5 222 0 38 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 42 5 222 0 47 5 222 0 48 5 222 0 51 5 222 0 106 5 222 0 107 8 154 0 108 5 222 0 109 5 222 0 110 5 222 0 111 5 222 0 127 5 222 0 128 5 222 0 129] 
#[1 8 158 0 1 5 226 0 2 8 158 0 3 8 158 0 5 5 226 0 6 5 226 0 7 8 158 0 8 1 43 0 9 5 226 0 10 8 158 0 13 1 43 0 15 5 226 0 16 5 226 0 17 5 226 0 18 1 43 0 20 5 226 0 21 5 226 0 23 1 43 0 24 1 43 0 26 5 226 0 27 5 226 0 28 8 158 0 30 1 47 0 31 5 226 0 32 5 226 0 33 5 226 0 34 5 226 0 35 5 226 0 36 5 226 0 38 5 226 0 39 5 226 0 40 5 226 0 41 5 226 0 42 8 158 0 44 8 158 0 45 5 226 0 47 5 226 0 48 5 226 0 51 8 158 0 52 8 158 0 53 8 158 0 56 8 158 0 57 8 158 0 58 8 158 0 59 8 158 0 60 8 158 0 61 8 158 0 65 8 158 0 66 8 158 0 67 8 158 0 69 8 158 0 70 8 158 0 71 8 158 0 72 8 158 0 74 8 158 0 75 8 158 0 77 8 158 0 78 8 158 0 79 8 158 0 80 8 158 0 84 8 158 0 86 8 158 0 87 8 158 0 88 8 158 0 89 8 158 0 90 8 158 0 91 8 158 0 92 8 158 0 94 8 158 0 96 8 158 0 97 8 158 0 99 8 158 0 102 8 158 0 104 8 158 0 105 5 226 0 106 1 43 0 107 8 158 0 108 5 226 0 109 5 226 0 110 5 226 0 111 8 158 0 112 8 158 0 113 8 158 0 117 8 158 0 118 8 158 0 120 8 158 0 121 8 158 0 122 8 158 0 123 8 158 0 125 8 158 0 126 1 43 0 127 5 226 0 128 5 226 0 129 8 158 1 153] 
#[0 21 65 0 108] 
#[1 10 105 0 1 1 51 0 3 0 183 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 0 187 0 30 16 141 0 31 1 161 0 44 10 141 0 45 0 191 0 52 0 195 0 53 10 149 0 56 10 153 0 57 0 14 0 58 10 157 0 59 0 199 0 60 0 14 0 61 0 14 0 65 0 14 0 66 5 37 0 67 0 14 0 69 10 161 0 70 10 165 0 71 0 14 0 72 0 203 0 74 10 173 0 75 0 207 0 77 10 177 0 78 0 14 0 79 10 181 0 80 0 14 0 84 10 185 0 86 0 211 0 87 0 14 0 88 0 14 0 89 0 215 0 90 0 14 0 91 5 41 0 92 0 14 0 94 0 14 0 96 0 219 0 97 0 14 0 99 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 8 162 0 108 0 223 0 112 0 227 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 16 149 0 135 16 153 0 137 16 157 0 141 16 161 0 157 0 49 0 158 16 165 0 180 10 213 0 237 21 69 0 240 16 173 0 241 16 177 0 242 15 49 0 243 21 73 0 244 16 185 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 6 133 0 20 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 5 37 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 5 41 0 92 1 193 0 97 6 137 0 104 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 1 197 0 126 3 129 0 127 21 77 0 128 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 145 0 246 6 149 0 248 6 153 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 6 157 1 110 1 9 1 111 6 161 1 114 2 57 1 119 21 81 1 123 6 169 1 124 6 173 1 134 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 6 177 1 148 5 77 1 153] 
#[0 8 166 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 8 170 0 19 0 128] 
#[0 8 174 0 19 0 128] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 21 85 0 162] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 21 93 0 14 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 21 101 0 150 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 148 9 169 1 149 21 113 1 150 21 117 1 151 21 121 1 152 5 77 1 153] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 21 125 0 46 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 21 101 0 150 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 148 9 169 1 149 21 113 1 150 21 117 1 151 21 121 1 152 5 77 1 153] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 21 129 0 108 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 21 101 0 150 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 148 9 169 1 149 21 113 1 150 21 117 1 151 21 121 1 152 5 77 1 153] 
#[0 21 133 0 31] 
#[1 8 178 0 14 21 137 0 31 8 178 0 46 8 178 0 108 21 141 0 145] 
#[1 2 233 0 13 2 241 0 45 2 245 0 104 21 145 0 138 21 149 0 156] 
#[0 21 153 0 31] 
#[0 8 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 8 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 8 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 21 157 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 21 161 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 8 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 8 198 0 14 0 19] 
#[0 8 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 21 165 0 31] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 8 206 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 84 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 6 249 0 158 21 169 0 197] 
#[0 8 210 0 14 0 19] 
#[0 21 173 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 177 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 1 246 0 3 1 246 0 53 1 246 0 60 1 246 0 77 1 246 0 84 8 214 0 108 1 246 0 112 1 246 0 113 7 9 0 180 21 181 0 193] 
#[0 8 218 0 19 0 108] 
#[0 8 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 21 185 0 31] 
#[1 21 189 0 31 3 65 0 101 21 193 0 228] 
#[0 8 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 8 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 21 197 0 108] 
#[0 8 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 21 201 0 162] 
#[0 8 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 21 205 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 21 209 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 21 213 0 104] 
#[0 21 217 0 31] 
#[1 1 122 0 31 3 65 0 101 21 221 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 21 225 0 212 5 185 0 236] 
#[0 21 229 0 31] 
#[0 8 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 233 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 8 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 21 237 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 21 241 0 31 21 245 0 35] 
#[0 8 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 21 249 0 31] 
#[0 8 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 9 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 21 253 0 108] 
#[0 9 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 65 0 101 1 122 0 104 22 1 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 22 5 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 22 9 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 22 13 0 162] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 3 105 0 30 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 94 0 101 2 94 0 104 0 149 0 112 0 153 0 113 1 197 0 126 22 17 0 210 3 197 0 234 7 49 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 7 57 0 29 3 105 0 30 2 98 0 31 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 2 98 0 101 0 149 0 112 0 153 0 113 1 197 0 126 7 61 0 213 22 21 0 214 3 197 0 234 22 25 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 22 29 0 104] 
#[0 9 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 88 1 246 0 90 1 246 0 97 22 33 0 108 1 246 0 112 1 246 0 113 10 73 0 180 10 77 0 220] 
#[1 3 65 0 101 1 122 0 104 22 37 0 211 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 22 41 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 65 0 101 1 122 0 104 22 45 0 211 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 22 49 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 22 53 0 70] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 22 57 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
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
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 22 113 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 9 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 22 117 0 31 3 65 0 101 6 137 0 104 22 121 0 228 22 125 0 248] 
#[1 22 129 0 31 6 137 0 104 22 133 0 248] 
#[0 9 26 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 18 21 0 22 22 137 0 31 3 65 0 101 6 137 0 104 22 141 0 185 22 145 0 228 22 149 0 248] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 9 30 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 22 153 0 180 22 157 0 183 1 246 1 153] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 22 161 0 14 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 3 125 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 1 177 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 3 133 0 234 19 53 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 19 57 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 19 61 1 71 14 197 1 73 14 201 1 74 14 205 1 76 3 137 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 3 141 1 82 3 145 1 83 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 18 105 1 119 14 213 1 135 18 109 1 137 2 65 1 138 3 149 1 141 2 73 1 144 14 217 1 148 14 221 1 153] 
#[0 9 34 0 14 0 19] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 161 1 114 14 21 1 118 18 105 1 119 3 165 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 19 73 0 46 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 1 177 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 19 77 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 19 81 1 75 14 205 1 76 3 177 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 18 105 1 119 14 213 1 135 18 109 1 137 2 65 1 138 3 181 1 141 2 73 1 144 14 217 1 148 14 221 1 153] 
#[1 1 55 0 14 1 55 0 19 7 102 0 29 0 246 0 31 1 55 0 46 7 102 0 105] 
#[1 1 25 0 53 1 33 0 77 22 169 0 87 0 149 0 112 0 153 0 113 19 89 1 148] 
#[1 0 70 0 1 0 70 0 13 1 59 0 14 0 70 0 17 1 59 0 19 0 70 0 24 0 70 0 25 0 70 0 26 1 63 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 3 245 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 22 177 0 81 14 93 0 85 22 181 0 87 0 125 0 90 14 97 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 19 109 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 4 1 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 22 185 1 110 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 18 105 1 119 14 213 1 135 18 109 1 137 2 65 1 138 3 181 1 141 2 73 1 144 14 217 1 148 14 221 1 153] 
#[1 1 67 0 14 1 67 0 19 7 158 0 29 1 10 0 31 1 67 0 46 7 158 0 105] 
#[0 9 42 0 14 0 19] 
#[0 9 46 0 14 0 19] 
#[0 9 50 0 14 0 19] 
#[0 22 189 0 29] 
#[0 9 54 0 14 0 19] 
#[1 1 71 0 13 1 75 0 14 1 102 0 17 1 75 0 19 6 58 0 24 6 58 0 25 6 58 0 26 6 58 0 29 1 79 0 30 1 102 0 31 1 75 0 46 6 58 0 104 6 58 0 105 4 61 0 127 4 65 1 120 4 69 1 145] 
#[1 22 197 0 30 15 249 1 116 15 253 1 136 4 77 1 139 4 81 1 140] 
#[1 9 58 0 14 22 201 0 19 22 205 0 177] 
#[1 18 21 0 22 22 209 0 31 3 65 0 101 6 137 0 104 22 213 0 185 22 217 0 228 22 221 0 248] 
#[0 22 225 0 14] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 22 229 0 162] 
#[0 9 62 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 22 233 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 22 237 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 22 241 0 104] 
#[0 22 245 0 31] 
#[1 1 122 0 31 3 65 0 101 22 249 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 22 253 0 212 5 185 0 236] 
#[0 9 66 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 9 70 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 9 74 0 19 3 105 0 30 9 74 0 31 9 74 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 9 74 0 104 0 149 0 112 0 153 0 113 1 197 0 126 3 197 0 234 23 1 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[0 23 5 0 13] 
#[0 9 78 0 19 0 31 0 35 0 104] 
#[0 9 82 0 19 0 31 0 35 0 104] 
#[1 1 137 0 11 1 141 0 12 9 86 0 19 9 86 0 31 9 86 0 35 9 86 0 104 1 197 0 126 9 86 0 128 23 9 1 108 23 13 1 110] 
#[0 9 90 0 19 0 108] 
#[0 9 94 0 19 0 108] 
#[0 9 98 0 19 0 108] 
#[0 9 102 0 19 0 108] 
#[0 23 17 0 14] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 106 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 9 106 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 9 110 0 19 0 108] 
#[0 23 21 0 108] 
#[0 9 114 0 19 0 108] 
#[0 9 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 9 122 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[0 9 126 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 88 0 90 0 97 0 108 0 112 0 113] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 23 25 0 162] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 130 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 130 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 9 130 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 9 130 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 130 0 46 15 169 0 47 15 173 0 48 15 177 0 51 9 130 0 64 9 130 0 104 15 181 0 106 15 185 0 107 9 130 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 9 134 0 7 9 134 0 9 9 134 0 10 9 134 0 14 15 81 0 15 9 134 0 16 15 89 0 17 9 134 0 18 9 134 0 19 15 97 0 20 9 134 0 21 15 105 0 23 9 134 0 24 9 134 0 26 15 117 0 27 9 134 0 28 9 134 0 31 15 125 0 32 9 134 0 33 15 133 0 34 9 134 0 35 15 141 0 36 9 134 0 37 15 145 0 38 15 149 0 39 9 134 0 40 15 157 0 41 15 161 0 42 9 134 0 46 15 169 0 47 9 134 0 48 15 177 0 51 9 134 0 64 9 134 0 104 9 134 0 106 9 134 0 107 9 134 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 9 138 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 23 29 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 23 33 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 23 37 0 14] 
#[0 9 142 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 74 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 9 146 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 23 41 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 23 45 1 1 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 9 150 0 2 9 150 0 6 9 150 0 7 9 150 0 9 9 150 0 10 9 150 0 13 9 150 0 14 9 150 0 15 9 150 0 16 9 150 0 17 9 150 0 18 9 150 0 19 9 150 0 20 9 150 0 21 9 150 0 23 9 150 0 24 9 150 0 25 9 150 0 26 9 150 0 27 9 150 0 28 9 150 0 29 15 245 0 30 9 150 0 31 9 150 0 32 9 150 0 33 9 150 0 34 9 150 0 35 9 150 0 36 9 150 0 37 9 150 0 38 9 150 0 39 9 150 0 40 9 150 0 41 9 150 0 42 9 150 0 46 9 150 0 47 9 150 0 48 9 150 0 51 9 150 0 64 9 150 0 71 9 150 0 73 9 150 0 104 9 150 0 105 9 150 0 106 9 150 0 107 9 150 0 108 9 150 0 109 9 150 0 110 9 150 0 111 9 150 0 127 9 150 0 128 9 150 0 129 20 165 1 116] 
#[0 9 154 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 158 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 23 49 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 158 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 23 53 0 255] 
#[0 23 57 0 46] 
#[0 9 162 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 166 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 166 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 9 166 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 9 166 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 166 0 46 15 169 0 47 15 173 0 48 15 177 0 51 9 166 0 64 9 166 0 104 15 181 0 106 15 185 0 107 9 166 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 170 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 170 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 9 170 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 9 170 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 170 0 46 15 169 0 47 15 173 0 48 15 177 0 51 9 170 0 64 9 170 0 104 15 181 0 106 15 185 0 107 9 170 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 23 61 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 23 65 1 148 14 221 1 153] 
#[0 9 174 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 19 125 0 25] 
#[0 9 178 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 23 69 0 14 23 73 0 19 23 77 1 68 23 81 1 72] 
#[1 1 83 0 14 7 182 0 19 7 182 0 105] 
#[0 23 85 0 14] 
#[1 9 186 0 14 9 186 0 19 9 190 0 24 9 190 0 25 9 190 0 26 9 186 0 29 9 186 0 31 9 186 0 35 9 186 0 37 9 186 0 46 9 186 0 71 9 186 0 73 9 186 0 105 9 186 0 108] 
#[1 9 194 0 14 9 194 0 19 9 198 0 24 9 198 0 25 9 198 0 26 9 194 0 29 9 194 0 31 9 194 0 35 9 194 0 37 9 194 0 46 9 194 0 71 9 194 0 73 9 194 0 105 9 194 0 108] 
#[0 9 202 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 206 0 19 9 206 0 46 23 89 1 69] 
#[0 23 93 0 46] 
#[0 9 210 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 214 0 14 9 214 0 19 9 214 0 29 9 214 0 31 9 214 0 35 9 214 0 37 23 97 0 43 9 214 0 46 9 214 0 71 9 214 0 73 9 214 0 105 9 214 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 23 101 1 148] 
#[1 9 218 0 14 9 218 0 19 9 218 0 29 9 218 0 31 9 218 0 35 9 218 0 37 23 105 0 43 9 218 0 46 9 218 0 71 9 218 0 73 9 218 0 105 9 218 0 108] 
#[1 7 162 0 14 7 162 0 19 7 162 0 29 7 162 0 31 7 162 0 35 7 162 0 37 7 162 0 46 7 162 0 71 7 162 0 73 7 162 0 105 7 162 0 108 23 109 1 48] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 23 113 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 23 65 1 148 14 221 1 153] 
#[0 9 222 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 23 117 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 9 226 0 14 9 226 0 19 9 226 0 29 9 226 0 31 9 226 0 35 9 226 0 37 9 226 0 46 9 226 0 71 9 226 0 73 1 87 0 105 9 226 0 108 23 125 1 47] 
#[0 9 230 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 23 129 0 20 23 133 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 23 137 0 117 23 141 0 121 23 145 0 123 23 149 0 125 3 129 0 127 23 153 1 57 3 109 1 114 23 157 1 115 11 57 1 118 11 61 1 119 23 161 1 135 11 69 1 137 1 21 1 148] 
#[1 0 61 0 5 23 129 0 20 23 133 0 30 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 23 137 0 117 23 141 0 121 23 145 0 123 23 149 0 125 3 129 0 127 23 165 1 57 3 109 1 114 23 157 1 115 11 57 1 118 11 61 1 119 23 161 1 135 11 69 1 137 1 21 1 148] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 23 169 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 23 173 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 23 177 1 67 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 1 91 0 3 1 246 0 24 0 14 0 53 0 14 0 77 0 14 0 81 0 14 0 85 23 181 0 108 0 14 0 112 0 14 0 113 0 14 0 123 23 185 0 158 23 189 0 180 23 193 1 60 23 197 1 61 23 201 1 64 23 205 1 65] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 23 209 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 23 213 0 35] 
#[1 9 234 0 1 9 234 0 2 9 234 0 3 9 234 0 5 9 234 0 6 9 234 0 7 9 234 0 8 9 234 0 9 9 234 0 10 9 234 0 13 9 234 0 14 9 234 0 15 9 234 0 16 9 234 0 17 9 234 0 18 9 234 0 19 9 234 0 20 9 234 0 21 9 234 0 23 9 234 0 24 9 234 0 26 9 234 0 27 9 234 0 28 9 234 0 30 9 234 0 31 9 234 0 32 9 234 0 33 9 234 0 34 9 234 0 35 9 234 0 36 9 234 0 37 9 234 0 38 9 234 0 39 9 234 0 40 9 234 0 41 9 234 0 42 9 234 0 44 9 234 0 45 9 234 0 46 9 234 0 47 9 234 0 48 9 234 0 49 9 234 0 51 9 234 0 52 9 234 0 53 9 234 0 56 9 234 0 57 9 234 0 58 9 234 0 59 9 234 0 60 9 234 0 61 1 95 0 64 9 234 0 65 9 234 0 66 9 234 0 67 9 234 0 69 9 234 0 70 9 234 0 71 9 234 0 72 9 234 0 74 9 234 0 75 9 234 0 77 9 234 0 78 9 234 0 79 9 234 0 80 9 234 0 81 9 234 0 84 9 234 0 85 9 234 0 86 9 234 0 87 9 234 0 88 9 234 0 89 9 234 0 90 9 234 0 91 9 234 0 92 9 234 0 94 9 234 0 96 9 234 0 97 9 234 0 99 9 234 0 102 9 234 0 104 9 234 0 105 9 234 0 106 9 234 0 107 9 234 0 108 9 234 0 109 9 234 0 110 9 234 0 111 9 234 0 112 9 234 0 113 9 234 0 117 9 234 0 118 9 234 0 120 9 234 0 121 9 234 0 122 9 234 0 123 9 234 0 125 9 234 0 126 9 234 0 127 9 234 0 128 9 234 0 129 9 234 1 153] 
#[1 7 246 0 35 7 246 0 37 7 246 0 71 7 246 0 105 23 221 1 44] 
#[1 7 162 0 35 7 162 0 37 7 162 0 71 7 162 0 105 23 225 1 48] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 23 229 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 9 238 0 35 9 238 0 37 9 238 0 71 23 233 0 105 23 237 1 43] 
#[1 0 210 0 3 0 210 0 5 0 210 0 9 0 210 0 13 0 210 0 20 0 210 0 24 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 49 0 210 0 53 0 210 0 56 0 210 0 60 0 210 0 67 0 210 0 77 0 210 0 81 0 210 0 85 0 210 0 87 0 210 0 90 0 210 0 92 0 210 0 105 0 210 0 108 0 210 0 112 0 210 0 113 0 210 0 117 0 210 0 118 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 125 0 210 0 127 0 210 0 129 23 241 0 162 0 210 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 23 245 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 23 249 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 23 253 0 105] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 1 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 15 61 0 2 15 65 0 6 9 242 0 7 15 73 0 9 9 242 0 10 9 242 0 14 15 81 0 15 9 242 0 16 15 89 0 17 9 242 0 18 9 242 0 19 15 97 0 20 9 242 0 21 15 105 0 23 9 242 0 24 9 242 0 26 15 117 0 27 9 242 0 28 9 242 0 31 15 125 0 32 9 242 0 33 15 133 0 34 9 242 0 35 15 141 0 36 9 242 0 37 15 145 0 38 15 149 0 39 9 242 0 40 15 157 0 41 15 161 0 42 9 242 0 46 15 169 0 47 9 242 0 48 15 177 0 51 9 242 0 64 9 242 0 104 9 242 0 106 9 242 0 107 9 242 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 24 5 0 35] 
#[0 9 246 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 9 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 9 250 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 9 250 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 9 250 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 9 250 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 9 250 0 46 15 169 0 47 15 173 0 48 15 177 0 51 9 250 0 64 9 250 0 104 15 181 0 106 15 185 0 107 9 250 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 9 254 0 19 24 13 0 29 9 254 0 105] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 24 17 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 24 21 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 24 25 0 19 10 2 0 105 24 29 1 25] 
#[1 6 137 0 104 24 33 0 248] 
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
#[0 24 37 0 110] 
#[1 10 62 0 2 10 62 0 6 10 62 0 7 10 62 0 9 10 62 0 10 10 62 0 14 10 62 0 15 10 62 0 16 10 62 0 17 10 62 0 18 10 62 0 19 10 62 0 20 10 62 0 21 10 62 0 23 10 62 0 24 10 62 0 26 10 62 0 27 10 62 0 28 0 190 0 30 10 62 0 31 10 62 0 32 10 62 0 33 10 62 0 34 10 62 0 35 10 62 0 36 10 62 0 37 10 62 0 38 10 62 0 39 10 62 0 40 10 62 0 41 10 62 0 42 10 62 0 46 10 62 0 47 10 62 0 48 10 62 0 51 10 62 0 64 10 62 0 104 10 62 0 106 10 62 0 107 10 62 0 108 10 62 0 109 1 99 0 110 10 62 0 111 10 62 0 127 10 62 0 128 10 62 0 129] 
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
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 146 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 146 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 24 41 1 13] 
#[0 24 45 0 14] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 24 49 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 65 0 6 10 150 0 7 10 150 0 9 10 150 0 10 10 150 0 14 15 81 0 15 10 150 0 16 15 89 0 17 10 150 0 18 10 150 0 19 15 97 0 20 10 150 0 21 15 105 0 23 10 150 0 24 10 150 0 26 15 117 0 27 10 150 0 28 10 150 0 31 15 125 0 32 10 150 0 33 10 150 0 35 10 150 0 37 15 149 0 39 10 150 0 40 15 157 0 41 15 161 0 42 10 150 0 46 15 169 0 47 10 150 0 48 15 177 0 51 10 150 0 64 10 150 0 104 10 150 0 106 10 150 0 107 10 150 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 209 0 129] 
#[1 15 65 0 6 10 154 0 7 10 154 0 9 10 154 0 10 10 154 0 14 15 81 0 15 10 154 0 16 15 89 0 17 10 154 0 18 10 154 0 19 15 97 0 20 10 154 0 21 15 105 0 23 10 154 0 24 10 154 0 26 15 117 0 27 10 154 0 28 10 154 0 31 15 125 0 32 10 154 0 33 10 154 0 35 10 154 0 37 15 149 0 39 10 154 0 40 15 157 0 41 15 161 0 42 10 154 0 46 15 169 0 47 10 154 0 48 15 177 0 51 10 154 0 64 10 154 0 104 10 154 0 106 10 154 0 107 10 154 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 209 0 129] 
#[1 10 158 0 2 15 65 0 6 10 158 0 7 10 158 0 9 10 158 0 10 10 158 0 14 15 81 0 15 10 158 0 16 15 89 0 17 10 158 0 18 10 158 0 19 15 97 0 20 10 158 0 21 15 105 0 23 10 158 0 24 10 158 0 26 15 117 0 27 10 158 0 28 10 158 0 31 15 125 0 32 10 158 0 33 10 158 0 34 10 158 0 35 10 158 0 36 10 158 0 37 10 158 0 38 15 149 0 39 10 158 0 40 15 157 0 41 15 161 0 42 10 158 0 46 10 158 0 47 10 158 0 48 15 177 0 51 10 158 0 64 10 158 0 104 10 158 0 106 10 158 0 107 10 158 0 108 10 158 0 109 15 193 0 110 15 197 0 111 10 158 0 127 10 158 0 128 10 158 0 129] 
#[0 10 162 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 10 146 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 10 146 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 24 53 1 13] 
#[0 10 166 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 1 103 0 3 24 57 0 24 0 14 0 53 0 14 0 77 24 61 0 108 0 14 0 112 0 14 0 113 0 14 0 123 24 65 0 158 0 33 0 236 24 69 1 6 24 73 1 9 24 77 1 10] 
#[0 24 81 0 29] 
#[0 24 85 0 108] 
#[1 10 170 0 19 10 170 0 108 24 89 1 19] 
#[1 10 174 0 19 24 93 0 29 10 174 0 108] 
#[0 10 178 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 182 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 186 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 10 190 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 71 0 73 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 24 97 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 101 0 162] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 105 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 10 194 0 19 0 128] 
#[1 6 242 0 11 6 242 0 12 6 242 0 19 6 242 0 126 6 242 0 128 24 109 1 107 18 181 1 109] 
#[1 0 61 0 5 1 137 0 11 1 141 0 12 3 193 0 13 10 198 0 19 3 105 0 30 24 113 0 35 1 157 0 42 1 161 0 44 1 25 0 53 1 29 0 60 1 185 0 70 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 1 197 0 126 10 198 0 128 3 197 0 234 24 117 1 102 2 41 1 105 7 53 1 106 2 49 1 110 3 109 1 114 2 57 1 119 3 209 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 121 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 125 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 10 202 0 19 24 129 0 35 10 202 0 128] 
#[0 10 206 0 19 0 128] 
#[0 24 133 0 104] 
#[1 3 65 0 101 1 122 0 104 24 137 0 211 4 165 0 228] 
#[0 24 141 0 104] 
#[0 10 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 24 145 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 149 0 162] 
#[0 10 214 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 218 0 2 10 218 0 6 10 218 0 7 10 218 0 9 10 218 0 10 10 218 0 14 10 218 0 15 10 218 0 16 10 218 0 17 10 218 0 18 10 218 0 19 10 218 0 20 10 218 0 21 16 93 0 22 10 218 0 23 10 218 0 24 10 218 0 26 10 218 0 27 10 218 0 28 10 218 0 29 10 218 0 30 10 218 0 31 10 218 0 32 10 218 0 33 10 218 0 34 10 218 0 35 10 218 0 36 10 218 0 37 10 218 0 38 10 218 0 39 10 218 0 40 10 218 0 41 10 218 0 42 10 218 0 46 10 218 0 47 10 218 0 48 10 218 0 51 10 218 0 64 10 218 0 70 10 218 0 101 10 218 0 104 10 218 0 105 10 218 0 106 10 218 0 107 10 218 0 108 10 218 0 109 10 218 0 110 10 218 0 111 10 218 0 127 10 218 0 128 10 218 0 129 24 153 1 90] 
#[0 10 222 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 226 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 230 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 10 234 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[1 0 69 0 52 0 77 0 58 0 85 0 61 1 53 0 66 0 34 0 69 0 133 0 94 13 205 0 97 24 157 0 171 0 197 0 172 0 201 0 173 0 205 0 174 24 161 0 186 24 165 0 207] 
#[0 10 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 10 242 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 169 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 173 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 10 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 14 0 1 1 91 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 10 250 0 14 0 14 0 15 1 246 0 25 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 11 177 0 158 24 177 0 180 24 181 1 95] 
#[0 10 254 0 14 0 19] 
#[0 11 2 0 14 0 19] 
#[0 11 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 24 185 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 11 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 11 14 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 11 18 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153 1 154] 
#[0 11 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[1 5 222 0 2 5 222 0 6 5 222 0 7 5 222 0 9 5 222 0 10 5 222 0 15 5 222 0 16 5 222 0 17 5 222 0 18 5 222 0 20 5 222 0 21 5 222 0 23 5 222 0 24 5 222 0 26 5 222 0 27 5 222 0 28 21 57 0 31 5 222 0 32 5 222 0 33 5 222 0 34 5 222 0 35 5 222 0 36 5 222 0 38 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 42 5 222 0 47 5 222 0 48 5 222 0 51 5 222 0 106 5 222 0 107 11 26 0 108 5 222 0 109 5 222 0 110 5 222 0 111 5 222 0 127 5 222 0 128 5 222 0 129] 
#[0 11 30 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 71 0 73 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 11 34 0 19 0 128] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 24 189 0 212 5 185 0 236] 
#[1 24 193 0 13 1 25 0 53 1 33 0 77 24 197 0 87 0 149 0 112 0 153 0 113 24 201 1 148] 
#[0 11 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 11 78 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 11 237 0 13 11 82 0 14 11 241 0 45 11 82 0 46 11 245 0 104 11 82 0 108 24 205 0 147 12 1 0 148] 
#[0 11 86 0 14 0 31 0 46 0 108] 
#[0 11 90 0 14 0 31 0 46 0 108] 
#[0 11 94 0 14 0 31 0 46 0 108] 
#[0 11 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 24 209 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 11 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 110 0 14 0 19] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 213 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 11 114 0 19 0 108] 
#[0 11 118 0 19 0 108] 
#[0 11 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 24 217 0 31] 
#[0 11 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 24 221 0 212 5 185 0 236] 
#[0 11 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 24 225 0 162] 
#[0 11 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 24 229 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 24 233 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 11 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 24 237 0 31] 
#[0 24 241 0 31] 
#[0 11 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 24 245 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 11 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 24 249 0 104] 
#[0 24 253 0 31] 
#[1 1 122 0 31 3 65 0 101 25 1 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 25 5 0 212 5 185 0 236] 
#[1 3 65 0 101 1 122 0 104 25 9 0 211 4 165 0 228] 
#[1 1 122 0 31 3 65 0 101 25 13 0 211 4 165 0 228] 
#[1 7 57 0 29 2 98 0 31 2 98 0 101 7 61 0 213 25 17 0 214] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 21 0 162] 
#[0 11 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 25 25 0 104] 
#[1 3 65 0 101 1 122 0 104 25 29 0 211 4 165 0 228] 
#[0 25 33 0 104] 
#[1 3 65 0 101 1 122 0 104 25 37 0 211 4 165 0 228] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 25 41 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 65 0 101 1 122 0 104 25 45 0 211 4 165 0 228] 
#[0 25 49 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 53 0 162] 
#[0 11 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 57 0 162] 
#[0 11 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 25 61 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 25 65 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 25 69 0 104] 
#[0 25 73 0 31] 
#[1 1 122 0 31 3 65 0 101 25 77 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 25 81 0 212 5 185 0 236] 
#[0 11 174 0 19 0 31 0 108] 
#[0 25 85 0 108] 
#[0 11 178 0 31 0 101 0 104] 
#[0 11 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 25 89 0 31 6 137 0 104 25 93 0 248] 
#[0 11 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 25 97 0 31 3 65 0 101 6 137 0 104 25 101 0 228 25 105 0 248] 
#[1 25 109 0 31 6 137 0 104 25 113 0 248] 
#[0 11 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 3 117 0 1 0 57 0 3 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 53 0 25 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 1 177 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 18 93 0 184 1 225 0 234 10 17 0 237 18 97 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 18 101 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 18 105 1 119 14 213 1 135 18 109 1 137 2 65 1 138 3 181 1 141 2 73 1 144 14 217 1 148 14 221 1 153] 
#[1 6 218 0 14 6 218 0 19 25 117 0 178] 
#[1 1 107 0 14 1 107 0 19 9 178 0 29 2 6 0 31 1 107 0 46 9 178 0 105] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 1 137 0 11 1 141 0 12 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 3 245 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 25 121 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 1 197 0 126 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 19 109 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 4 1 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 4 9 1 110 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 18 105 1 119 14 213 1 135 18 109 1 137 2 65 1 138 3 181 1 141 2 73 1 144 14 217 1 148 14 221 1 153] 
#[1 11 206 0 14 11 206 0 19 25 125 0 29] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 25 129 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 3 245 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 14 89 0 81 14 93 0 85 25 133 0 87 0 125 0 90 14 97 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 23 113 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 6 53 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 18 105 1 119 14 213 1 135 18 109 1 137 2 65 1 138 3 181 1 141 2 73 1 144 23 65 1 148 14 221 1 153] 
#[1 0 70 0 1 0 70 0 13 1 111 0 14 1 111 0 19 0 70 0 25 0 70 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 25 137 0 81 25 141 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 6 61 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 25 145 0 25 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 25 149 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 4 53 0 13 2 62 0 14 2 62 0 17 2 62 0 19 2 62 0 30 2 62 0 31 2 62 0 46 4 61 0 127 25 153 1 120 6 129 1 145] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 20 173 1 118 18 105 1 119 6 181 1 144 1 21 1 148] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 11 214 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 22 153 0 180 25 157 0 183 1 246 1 153] 
#[0 11 218 0 14 0 19] 
#[0 11 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 25 161 0 31 3 65 0 101 6 137 0 104 25 165 0 228 25 169 0 248] 
#[1 25 173 0 31 6 137 0 104 25 177 0 248] 
#[0 11 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 18 21 0 22 25 181 0 31 3 65 0 101 6 137 0 104 25 185 0 185 25 189 0 228 25 193 0 248] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 25 197 0 212 5 185 0 236] 
#[0 11 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 11 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 25 201 0 162] 
#[0 11 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 25 205 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 25 209 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 11 242 0 19 0 31 0 35 0 104] 
#[1 0 14 0 1 0 14 0 3 0 14 0 5 0 14 0 11 0 14 0 12 0 14 0 13 25 213 0 14 0 14 0 15 0 14 0 30 0 14 0 42 0 14 0 44 0 14 0 45 0 14 0 49 0 14 0 53 0 14 0 60 0 14 0 63 0 14 0 66 0 14 0 69 0 14 0 70 0 14 0 72 0 14 0 77 0 14 0 87 0 14 0 90 0 14 0 97 0 14 0 112 0 14 0 113 0 14 0 126 0 14 0 127 0 14 0 129 11 177 0 158 25 217 1 91 11 185 1 92 11 189 1 95 11 193 1 96] 
#[0 11 246 0 11 0 12 0 19 0 31 0 35 0 104 0 126 0 128] 
#[1 25 221 0 17 11 250 0 19 11 250 0 31 11 250 0 35 11 250 0 104 11 250 0 128] 
#[0 11 254 0 19 0 108] 
#[0 12 2 0 19 0 108] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 25 225 0 212 5 185 0 236] 
#[0 12 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 10 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 74 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 12 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 12 18 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 23 33 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 12 22 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 67 0 70 0 71 0 74 0 75 0 77 0 78 0 80 0 86 0 87 0 90 0 92 0 97 0 102 0 104 0 105 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 25 229 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 25 233 0 19 12 26 0 46 25 237 0 254] 
#[0 12 30 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 34 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 190 0 1 0 190 0 13 1 115 0 14 1 115 0 19 0 190 0 25 1 115 0 29 0 190 0 30 1 115 0 31 1 115 0 35 1 115 0 37 25 241 0 43 1 115 0 46 1 115 0 71 1 115 0 73 0 190 0 104 1 115 0 105 1 115 0 108 0 190 0 127] 
#[0 12 38 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 12 42 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 25 245 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 12 46 0 14 0 19] 
#[1 12 50 0 14 25 249 0 19 25 253 1 68] 
#[0 12 54 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 26 1 0 19 12 58 0 46 26 5 1 68] 
#[0 12 62 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 26 9 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 12 66 0 14 12 66 0 19 12 66 0 29 12 66 0 31 12 66 0 35 12 66 0 37 26 13 0 43 12 66 0 46 12 66 0 71 12 66 0 73 12 66 0 105 12 66 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 26 17 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 12 70 0 14 12 70 0 19 12 70 0 29 12 70 0 31 12 70 0 35 12 70 0 37 12 70 0 46 12 70 0 71 12 70 0 73 1 119 0 105 12 70 0 108 23 125 1 47] 
#[0 12 74 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 26 21 0 248] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 26 25 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 12 78 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 26 29 0 123 26 33 0 125] 
#[1 0 61 0 5 1 161 0 44 1 25 0 53 1 29 0 60 1 33 0 77 0 113 0 87 0 125 0 90 0 149 0 112 0 153 0 113 3 109 1 114 14 21 1 118 11 61 1 119 1 21 1 148] 
#[0 7 118 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 134 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 146 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 154 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 82 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 226 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 7 234 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 86 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 12 90 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 9 206 0 14 9 206 0 19 26 37 1 69] 
#[0 26 41 0 14] 
#[0 12 94 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 57 0 3 1 25 0 53 1 33 0 77 26 45 0 81 26 49 0 85 0 149 0 112 0 153 0 113 20 13 0 123 1 5 0 237 26 53 1 3 26 57 1 148] 
#[1 0 57 0 3 26 61 0 24 10 17 0 237] 
#[0 26 65 0 108] 
#[1 26 69 0 19 12 98 0 108] 
#[1 12 102 0 19 12 102 0 108 26 73 1 63] 
#[0 12 106 0 108] 
#[0 12 110 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 77 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 165 0 71 10 169 0 74 6 137 0 104 26 81 0 248 26 85 1 34 26 89 1 35] 
#[1 12 114 0 35 12 114 0 37 12 114 0 71 23 233 0 105 23 237 1 43] 
#[1 1 123 0 35 1 123 0 37 1 123 0 71 1 127 0 105 23 125 1 47] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 26 93 0 64 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 26 97 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 12 118 0 35 0 37 0 71 0 105] 
#[1 1 131 0 3 12 122 0 5 12 122 0 9 12 122 0 13 12 122 0 20 12 122 0 24 12 122 0 30 12 122 0 44 12 122 0 45 12 122 0 49 12 122 0 53 12 122 0 56 12 122 0 60 12 122 0 67 12 122 0 77 12 122 0 81 12 122 0 85 12 122 0 87 12 122 0 90 12 122 0 92 12 122 0 105 26 101 0 108 12 122 0 112 12 122 0 113 12 122 0 117 12 122 0 118 12 122 0 120 12 122 0 121 12 122 0 122 12 122 0 123 12 122 0 125 12 122 0 127 12 122 0 129 5 185 0 236 26 105 1 37 26 109 1 39 12 122 1 153] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 113 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 12 126 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 12 126 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 12 126 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 12 126 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 12 126 0 46 15 169 0 47 15 173 0 48 15 177 0 51 12 126 0 64 12 126 0 104 15 181 0 106 15 185 0 107 12 126 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 26 117 0 22 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 121 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 6 137 0 104 26 125 0 248] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 129 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 6 137 0 104 26 133 0 248] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 137 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 141 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 12 130 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 12 130 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 12 130 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 12 130 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 12 130 0 46 15 169 0 47 15 173 0 48 15 177 0 51 12 130 0 64 12 130 0 104 15 181 0 106 15 185 0 107 12 130 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 135 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 15 25 0 180 26 145 1 27 1 246 1 153] 
#[0 12 138 0 19 0 105] 
#[0 12 142 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 26 149 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 20 109 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 26 153 1 22 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 12 146 0 14 26 157 0 19 26 161 1 12] 
#[0 12 150 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 154 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 26 165 0 14 26 169 0 19 26 161 1 12] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 173 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 12 158 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 0 57 0 3 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 20 13 0 123 1 5 0 237 26 177 1 3 26 181 1 148] 
#[0 26 185 0 108] 
#[1 12 162 0 19 12 162 0 108 26 189 1 8] 
#[0 26 193 0 108] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 197 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 12 166 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 26 201 0 19 12 170 0 108 26 205 1 18] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 26 209 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 213 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 26 217 0 212 5 185 0 236] 
#[0 12 174 0 19 0 128] 
#[0 12 178 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 221 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 12 182 0 19 26 225 0 35 12 182 0 128] 
#[0 12 186 0 19 0 128] 
#[0 12 190 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 26 229 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 233 0 162] 
#[0 26 237 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 26 241 0 162] 
#[0 12 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 26 245 0 212 5 185 0 236] 
#[0 12 198 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 70 0 101 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 12 202 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 206 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 210 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 61 0 66 0 69 0 77 0 84 0 87 0 90 0 94 0 97 0 108 0 112 0 113] 
#[0 12 214 0 14 0 19] 
#[0 12 218 0 14 0 19] 
#[1 0 57 0 3 26 249 0 25 10 17 0 237] 
#[0 12 222 0 14 0 19] 
#[1 26 253 0 29 27 1 0 31 27 5 0 35] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 9 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 27 13 0 150 27 17 0 151 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 148 9 169 1 149 21 113 1 150 21 117 1 151 21 121 1 152 5 77 1 153] 
#[0 27 21 0 29] 
#[0 27 25 0 29] 
#[0 12 226 0 14 0 31 0 46 0 108] 
#[0 12 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 12 234 0 19 0 108] 
#[0 12 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 29 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 33 0 212 5 185 0 236] 
#[0 12 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 12 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 12 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 12 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 27 37 0 31] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 41 0 162] 
#[0 13 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 27 45 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 49 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 27 53 0 104] 
#[0 27 57 0 31] 
#[1 1 122 0 31 3 65 0 101 27 61 0 211 4 165 0 228] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 65 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 69 0 162] 
#[0 27 73 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 77 0 162] 
#[0 27 81 0 104] 
#[1 3 65 0 101 1 122 0 104 27 85 0 211 4 165 0 228] 
#[0 27 89 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 93 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 97 0 212 5 185 0 236] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 101 0 212 5 185 0 236] 
#[0 13 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 27 105 0 162] 
#[0 13 14 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 27 109 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 113 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 13 18 0 19 0 31 0 108] 
#[0 13 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 26 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 30 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 27 117 0 31 6 137 0 104 27 121 0 248] 
#[0 13 34 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 42 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 13 46 0 14 27 125 0 19 22 205 0 177] 
#[1 3 117 0 1 0 61 0 5 14 57 0 9 18 49 0 13 1 149 0 15 14 65 0 20 14 69 0 24 18 57 0 30 1 157 0 42 1 161 0 44 18 61 0 45 18 65 0 49 1 25 0 53 14 81 0 56 1 29 0 60 3 245 0 63 1 181 0 66 14 85 0 67 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 1 193 0 97 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 22 165 0 129 18 81 0 134 1 213 0 135 1 217 0 137 1 225 0 234 23 113 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 173 1 56 19 45 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 6 53 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 18 105 1 119 14 213 1 135 18 109 1 137 2 65 1 138 3 181 1 141 2 73 1 144 23 65 1 148 14 221 1 153] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 27 129 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 13 50 0 14 0 19] 
#[1 0 70 0 1 0 70 0 13 1 139 0 14 1 139 0 19 0 70 0 25 0 70 0 29 0 70 0 30 0 70 0 104 0 70 0 105 0 70 0 127] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 27 133 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 11 133 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 0 70 0 1 0 70 0 13 1 143 0 14 1 143 0 19 0 70 0 30 0 70 0 127] 
#[0 13 62 0 14 0 19] 
#[0 13 66 0 14 0 19] 
#[1 10 182 0 13 1 147 0 14 3 38 0 17 1 147 0 19 10 182 0 24 10 182 0 25 10 182 0 26 10 182 0 29 1 147 0 30 3 38 0 31 1 147 0 46 10 182 0 104 10 182 0 105] 
#[0 13 70 0 14 0 19] 
#[0 13 74 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 27 137 0 31 6 137 0 104 27 141 0 248] 
#[0 13 78 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 82 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 27 145 0 31 3 65 0 101 6 137 0 104 27 149 0 228 27 153 0 248] 
#[1 27 157 0 31 6 137 0 104 27 161 0 248] 
#[0 13 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 165 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 27 169 0 212 5 185 0 236] 
#[0 13 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 13 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 16 93 0 22 1 151 0 29 27 173 1 90] 
#[0 27 177 0 14] 
#[0 13 106 0 11 0 12 0 19 0 31 0 35 0 104 0 126 0 128] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 27 181 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 13 110 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 13 114 0 46 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 27 185 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 13 118 0 19 0 46] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 27 189 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 13 122 0 14 0 19 0 46] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 13 126 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 25 245 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 13 130 0 14 0 19] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 13 134 0 46 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 25 245 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 13 138 0 14 0 19 0 46] 
#[0 13 142 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 27 193 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 13 146 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 13 150 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 13 154 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 9 190 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 9 198 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 13 158 0 14 27 197 0 19 26 5 1 68] 
#[0 13 162 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 27 201 1 148] 
#[1 1 25 0 53 1 33 0 77 27 205 0 81 0 149 0 112 0 153 0 113 27 209 1 148] 
#[0 27 213 0 29] 
#[1 13 166 0 19 27 217 0 29 13 166 0 108] 
#[0 13 170 0 108] 
#[0 13 174 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 1 246 0 3 1 246 0 24 13 178 0 108 23 189 0 180 27 221 1 65] 
#[1 1 155 0 19 13 182 0 108 27 229 1 62] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 26 93 0 64 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 27 233 0 248] 
#[0 13 186 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 13 190 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 13 194 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 6 137 0 104 27 237 0 248] 
#[0 13 198 0 35 0 37 0 71 0 105] 
#[0 13 202 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 27 241 0 108] 
#[1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 13 1 246 0 20 1 246 0 24 1 246 0 30 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 67 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 127 1 246 0 129 27 245 0 180 27 249 1 38 27 253 1 41 1 246 1 153] 
#[1 6 137 0 104 28 1 0 248] 
#[1 3 117 0 1 0 61 0 5 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 3 245 0 63 1 181 0 66 0 58 0 69 1 185 0 70 3 249 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 28 5 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 21 1 98 2 29 1 100 2 33 1 101 4 5 1 106 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 13 206 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 13 206 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 13 206 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 13 206 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 13 206 0 46 15 169 0 47 15 173 0 48 15 177 0 51 13 206 0 64 13 206 0 104 15 181 0 106 15 185 0 107 13 206 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 13 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 26 93 0 64 6 137 0 104 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129 28 9 0 248] 
#[0 13 214 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 13 218 0 19 0 105] 
#[1 6 137 0 104 28 13 0 248] 
#[0 13 222 0 19 0 105] 
#[0 13 226 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 28 17 0 14] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 13 230 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 28 21 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 13 234 0 14 0 19] 
#[0 13 238 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 28 25 0 14 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 28 21 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 13 242 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 28 29 0 29] 
#[1 13 246 0 19 28 33 0 29 13 246 0 108] 
#[0 13 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 28 37 0 19 13 254 0 108 28 41 1 7] 
#[0 14 2 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 14 6 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 14 6 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 1 25 0 53 1 33 0 77 14 10 0 108 0 149 0 112 0 153 0 113 20 13 0 123 20 149 1 3 28 45 1 20 20 161 1 148] 
#[0 14 14 0 19 0 108] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 14 18 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 14 18 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 49 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 53 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 22 0 19 0 128] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 28 57 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 14 26 0 19 0 128] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 61 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 65 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 69 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 73 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 30 0 14] 
#[1 3 117 0 1 0 61 0 5 1 137 0 11 1 141 0 12 1 145 0 13 1 149 0 15 1 153 0 30 1 157 0 42 1 161 0 44 1 165 0 45 1 169 0 49 1 25 0 53 1 29 0 60 1 177 0 63 1 181 0 66 0 58 0 69 1 185 0 70 1 189 0 72 1 33 0 77 0 113 0 87 0 125 0 90 1 193 0 97 0 149 0 112 0 153 0 113 1 197 0 126 3 129 0 127 1 205 0 129 1 209 0 134 1 213 0 135 1 217 0 137 1 225 0 234 28 77 1 77 1 233 1 78 1 237 1 79 1 241 1 80 1 245 1 81 1 249 1 84 1 253 1 85 2 1 1 86 2 5 1 87 2 9 1 88 2 13 1 89 2 17 1 97 2 21 1 98 2 25 1 99 2 29 1 100 2 33 1 101 2 37 1 102 2 41 1 105 2 45 1 106 2 49 1 110 1 9 1 111 2 53 1 114 2 57 1 119 2 61 1 137 2 65 1 138 3 181 1 141 2 73 1 144 1 21 1 148] 
#[0 14 34 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 28 81 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 14 38 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 21 89 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 11 237 0 13 28 85 0 14 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 11 241 0 45 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 11 245 0 104 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 21 97 0 148 28 89 0 150 21 105 0 152 21 109 0 155 9 161 0 246 9 165 1 148 9 169 1 149 21 113 1 150 21 117 1 151 21 121 1 152 5 77 1 153] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 28 93 0 153 28 97 1 148] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 28 101 0 153 28 97 1 148] 
#[0 14 46 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 105 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 50 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 109 0 212 5 185 0 236] 
#[0 14 54 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 58 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 113 0 162] 
#[0 14 62 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 28 117 0 31] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 121 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 125 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 129 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 133 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 137 0 162] 
#[0 28 141 0 104] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 28 145 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 149 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 153 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 157 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 161 0 212 5 185 0 236] 
#[0 14 66 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 70 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 74 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 78 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 1 1 246 0 3 1 246 0 5 1 246 0 9 1 246 0 11 1 246 0 12 1 246 0 13 14 82 0 14 1 246 0 15 1 246 0 20 1 246 0 24 1 246 0 25 1 246 0 30 1 246 0 42 1 246 0 44 1 246 0 45 1 246 0 49 1 246 0 53 1 246 0 56 1 246 0 60 1 246 0 63 1 246 0 66 1 246 0 67 1 246 0 69 1 246 0 70 1 246 0 72 1 246 0 77 1 246 0 81 1 246 0 85 1 246 0 87 1 246 0 90 1 246 0 92 1 246 0 97 1 246 0 105 1 246 0 112 1 246 0 113 1 246 0 117 1 246 0 118 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 123 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 129 22 153 0 180 25 157 0 183 1 246 1 153] 
#[0 14 86 0 14 0 19] 
#[1 0 70 0 1 0 70 0 13 1 159 0 14 1 159 0 19 0 70 0 30 0 70 0 127] 
#[0 14 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 28 165 0 31 6 137 0 104 28 169 0 248] 
#[0 14 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 173 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 1 163 0 29] 
#[1 16 93 0 22 1 167 0 29 28 177 1 90] 
#[0 14 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 14 126 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 14 126 0 46 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 1 171 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[0 14 130 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 71 0 73 0 105 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 134 0 14 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 25 245 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 14 138 0 19 0 108] 
#[1 1 25 0 53 1 33 0 77 0 149 0 112 0 153 0 113 28 181 1 148] 
#[0 14 142 0 19 0 108] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 28 185 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 101 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 28 189 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 14 146 0 108] 
#[1 0 14 0 3 0 14 0 53 0 14 0 77 0 14 0 81 0 14 0 85 0 14 0 112 0 14 0 113 0 14 0 123 23 185 0 158 28 193 1 64] 
#[0 14 150 0 19 0 108] 
#[1 14 154 0 1 14 154 0 2 14 154 0 3 14 154 0 5 14 154 0 6 14 154 0 7 14 154 0 8 14 154 0 9 14 154 0 10 14 154 0 13 14 154 0 14 14 154 0 15 14 154 0 16 14 154 0 17 14 154 0 18 14 154 0 19 14 154 0 20 14 154 0 21 14 154 0 23 14 154 0 24 14 154 0 26 14 154 0 27 14 154 0 28 14 154 0 30 14 154 0 31 14 154 0 32 14 154 0 33 14 154 0 34 14 154 0 35 14 154 0 36 14 154 0 37 14 154 0 38 14 154 0 39 14 154 0 40 14 154 0 41 14 154 0 42 14 154 0 44 14 154 0 45 14 154 0 46 14 154 0 47 14 154 0 48 14 154 0 49 14 154 0 51 14 154 0 52 14 154 0 53 14 154 0 56 14 154 0 57 14 154 0 58 14 154 0 59 14 154 0 60 14 154 0 61 1 175 0 64 14 154 0 65 14 154 0 66 14 154 0 67 14 154 0 69 14 154 0 70 14 154 0 71 14 154 0 72 14 154 0 74 14 154 0 75 14 154 0 77 14 154 0 78 14 154 0 79 14 154 0 80 14 154 0 81 14 154 0 84 14 154 0 85 14 154 0 86 14 154 0 87 14 154 0 88 14 154 0 89 14 154 0 90 14 154 0 91 14 154 0 92 14 154 0 94 14 154 0 96 14 154 0 97 14 154 0 99 14 154 0 102 14 154 0 104 14 154 0 105 14 154 0 106 14 154 0 107 14 154 0 108 14 154 0 109 14 154 0 110 14 154 0 111 14 154 0 112 14 154 0 113 14 154 0 117 14 154 0 118 14 154 0 120 14 154 0 121 14 154 0 122 14 154 0 123 14 154 0 125 14 154 0 126 14 154 0 127 14 154 0 128 14 154 0 129 14 154 1 153] 
#[0 14 158 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 14 162 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 0 57 0 3 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 10 17 0 237 28 201 1 42 14 241 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[0 14 166 0 3 0 5 0 9 0 13 0 20 0 24 0 30 0 44 0 45 0 49 0 53 0 56 0 60 0 67 0 77 0 81 0 85 0 87 0 90 0 92 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 127 0 129 1 153] 
#[0 28 205 0 37] 
#[0 14 170 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 6 137 0 104 28 209 0 248] 
#[0 14 174 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 14 178 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[0 14 182 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 14 186 0 14 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 14 186 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 14 190 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 28 213 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 28 217 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 0 14 0 3 24 57 0 24 0 14 0 53 0 14 0 77 14 194 0 108 0 14 0 112 0 14 0 113 0 14 0 123 24 65 0 158 28 221 1 9 28 225 1 10] 
#[0 14 198 0 19 0 108] 
#[0 14 202 0 19 0 108] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 229 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 210 0 19 0 128] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 233 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 28 237 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 28 241 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 214 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 28 245 0 31 28 249 0 35] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 28 253 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 7 253 0 1 8 1 0 2 8 5 0 3 29 1 0 4 8 13 0 5 8 17 0 6 8 21 0 7 8 25 0 9 8 29 0 10 8 33 0 11 8 37 0 12 8 45 0 15 8 49 0 16 8 53 0 17 8 57 0 18 8 61 0 19 8 65 0 20 8 69 0 21 8 73 0 22 8 77 0 23 8 81 0 24 8 85 0 25 8 89 0 26 8 93 0 27 8 97 0 28 8 101 0 29 8 105 0 30 8 109 0 31 8 113 0 32 8 117 0 33 8 121 0 34 8 125 0 35 8 129 0 36 8 133 0 37 8 137 0 38 8 141 0 39 8 145 0 40 8 149 0 41 8 153 0 42 8 157 0 43 8 161 0 44 8 165 0 47 8 169 0 48 8 173 0 49 8 177 0 50 8 181 0 51 8 185 0 52 1 25 0 53 8 189 0 54 8 193 0 55 8 197 0 56 8 201 0 57 8 205 0 58 8 209 0 59 8 213 0 60 8 217 0 62 8 221 0 63 8 225 0 64 8 229 0 65 8 233 0 66 5 37 0 67 8 237 0 68 8 241 0 69 8 245 0 70 8 249 0 71 8 253 0 72 9 1 0 73 9 5 0 74 9 9 0 75 9 13 0 76 1 33 0 77 9 17 0 78 9 21 0 79 9 25 0 80 9 29 0 81 9 33 0 82 9 37 0 83 9 41 0 84 9 45 0 85 9 49 0 86 9 53 0 87 9 57 0 88 9 61 0 89 9 65 0 90 9 69 0 91 5 41 0 92 9 73 0 93 9 77 0 94 9 81 0 95 9 85 0 96 9 89 0 97 9 93 0 98 9 97 0 99 9 101 0 100 9 105 0 101 9 109 0 102 9 113 0 103 9 117 0 105 9 121 0 106 9 125 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 9 129 0 126 9 133 0 127 9 137 0 128 9 141 0 129 29 5 0 154 29 9 0 155 9 161 0 246 9 165 1 148 9 169 1 149 29 13 1 150 29 17 1 151 29 21 1 152 5 77 1 153] 
#[0 14 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 14 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 14 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 14 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 14 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 25 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 29 0 212 5 185 0 236] 
#[0 14 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 33 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 37 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 41 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 45 0 212 5 185 0 236] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 61 0 210 0 66 0 210 0 69 0 210 0 77 0 210 0 84 0 210 0 87 0 210 0 90 0 210 0 94 0 210 0 97 0 210 0 108 0 210 0 112 0 210 0 113 29 49 0 162] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 53 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 57 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 14 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 61 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 14 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 15 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 15 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 1 179 0 29] 
#[0 15 10 0 19 0 108] 
#[0 15 14 0 19 0 108] 
#[0 15 18 0 19 0 108] 
#[0 15 22 0 19 0 108] 
#[1 10 165 0 71 10 169 0 74 6 137 0 104 29 65 0 248 29 69 1 34 29 73 1 35] 
#[1 15 26 0 37 29 77 0 71 29 81 1 45] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 15 49 0 243 29 85 0 244 29 89 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 29 93 1 40 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 15 30 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 64 0 104 0 106 0 107 0 108 0 109 0 110 0 111 0 127 0 128 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 34 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 34 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 38 0 19 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 38 0 108 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 15 42 0 19 0 108] 
#[0 15 46 0 108] 
#[0 15 50 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 15 54 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 97 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 58 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 15 62 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 29 101 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 15 66 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 15 70 0 15 0 17 0 42] 
#[1 8 45 0 15 8 53 0 17 8 153 0 42 29 105 0 155] 
#[0 15 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 15 78 0 15 0 17 0 42] 
#[0 15 82 0 15 0 17 0 42] 
#[0 15 86 0 15 0 17 0 42] 
#[0 15 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 109 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 113 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 117 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[1 0 103 0 3 3 18 0 5 3 18 0 30 3 18 0 52 3 18 0 53 3 18 0 58 3 18 0 60 3 18 0 61 3 18 0 66 3 18 0 69 3 18 0 77 3 18 0 84 3 18 0 87 3 18 0 90 3 18 0 94 3 18 0 97 3 18 0 108 3 18 0 112 3 18 0 113 29 121 0 212 5 185 0 236] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 125 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 15 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 15 110 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 15 114 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 15 118 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 64 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 29 129 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 29 133 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[0 15 122 0 37] 
#[1 5 222 0 2 5 222 0 6 5 222 0 7 5 222 0 9 5 222 0 10 5 222 0 15 5 222 0 16 5 222 0 17 5 222 0 18 29 137 0 19 5 222 0 20 5 222 0 21 5 222 0 23 5 222 0 24 5 222 0 26 5 222 0 27 5 222 0 28 5 222 0 32 5 222 0 33 5 222 0 34 5 222 0 35 5 222 0 36 5 222 0 38 5 222 0 39 5 222 0 40 5 222 0 41 5 222 0 42 5 222 0 47 5 222 0 48 5 222 0 51 5 222 0 106 5 222 0 107 15 126 0 108 5 222 0 109 5 222 0 110 5 222 0 111 5 222 0 127 5 222 0 128 5 222 0 129] 
#[1 5 226 0 2 15 130 0 3 15 130 0 5 5 226 0 6 5 226 0 7 1 183 0 9 5 226 0 10 15 130 0 13 5 226 0 15 5 226 0 16 5 226 0 17 5 226 0 18 29 141 0 19 1 183 0 20 5 226 0 21 5 226 0 23 1 183 0 24 5 226 0 26 5 226 0 27 5 226 0 28 15 130 0 30 5 226 0 32 5 226 0 33 5 226 0 34 5 226 0 35 5 226 0 36 5 226 0 38 5 226 0 39 5 226 0 40 5 226 0 41 5 226 0 42 15 130 0 44 15 130 0 45 5 226 0 47 5 226 0 48 15 130 0 49 5 226 0 51 15 130 0 53 15 130 0 56 15 130 0 60 15 130 0 67 15 130 0 77 15 130 0 81 15 130 0 85 15 130 0 87 15 130 0 90 15 130 0 92 15 130 0 105 5 226 0 106 5 226 0 107 15 134 0 108 5 226 0 109 5 226 0 110 5 226 0 111 15 130 0 112 15 130 0 113 15 130 0 117 15 130 0 118 15 130 0 120 15 130 0 121 15 130 0 122 15 130 0 123 15 130 0 125 1 183 0 127 5 226 0 128 1 183 0 129 15 130 1 153] 
#[0 15 138 0 3 0 5 0 9 0 13 0 20 0 24 0 30 0 44 0 45 0 49 0 53 0 56 0 60 0 67 0 77 0 81 0 85 0 87 0 90 0 92 0 105 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 127 0 129 1 153] 
#[0 15 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 29 145 0 31 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[0 15 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 1 153] 
#[0 15 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 15 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 15 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 1 246 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 61 1 246 0 66 1 246 0 69 1 246 0 77 1 246 0 84 1 246 0 87 1 246 0 90 1 246 0 94 1 246 0 97 29 149 0 108 1 246 0 112 1 246 0 113 16 81 0 180 16 85 0 235] 
#[0 15 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[1 0 61 0 5 14 57 0 9 14 61 0 13 14 65 0 20 14 69 0 24 10 137 0 30 1 161 0 44 14 73 0 45 14 77 0 49 1 25 0 53 14 81 0 56 1 29 0 60 14 85 0 67 1 33 0 77 14 89 0 81 14 93 0 85 0 113 0 87 0 125 0 90 14 97 0 92 14 233 0 105 0 149 0 112 0 153 0 113 14 105 0 117 14 109 0 118 14 113 0 120 14 117 0 121 14 121 0 122 14 125 0 123 14 129 0 125 3 129 0 127 14 133 0 129 14 137 0 134 1 213 0 135 1 217 0 137 29 153 1 42 14 241 1 46 14 145 1 49 14 149 1 50 14 153 1 51 14 157 1 52 14 161 1 53 14 165 1 54 14 169 1 55 14 173 1 56 14 177 1 57 14 181 1 58 14 185 1 59 14 189 1 66 14 193 1 70 14 197 1 73 14 201 1 74 14 205 1 76 1 9 1 111 2 53 1 114 14 209 1 115 11 57 1 118 11 61 1 119 14 213 1 135 11 69 1 137 14 217 1 148 14 221 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 166 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129] 
#[1 15 170 0 3 15 170 0 5 15 170 0 9 15 170 0 13 15 170 0 20 15 170 0 24 15 170 0 30 15 170 0 44 15 170 0 45 15 170 0 49 15 170 0 53 15 170 0 56 15 170 0 60 15 170 0 67 15 170 0 77 15 170 0 81 15 170 0 85 15 170 0 87 15 170 0 90 15 170 0 92 15 170 0 105 15 174 0 108 15 170 0 112 15 170 0 113 15 170 0 117 15 170 0 118 15 170 0 120 15 170 0 121 15 170 0 122 15 170 0 123 15 170 0 125 15 170 0 127 15 170 0 129 15 170 1 153] 
#[1 15 178 0 3 15 178 0 5 15 178 0 9 15 178 0 13 15 178 0 20 15 178 0 24 15 178 0 30 15 178 0 44 15 178 0 45 15 178 0 49 15 178 0 53 15 178 0 56 15 178 0 60 15 178 0 67 15 178 0 77 15 178 0 81 15 178 0 85 15 178 0 87 15 178 0 90 15 178 0 92 15 178 0 105 15 182 0 108 15 178 0 112 15 178 0 113 15 178 0 117 15 178 0 118 15 178 0 120 15 178 0 121 15 178 0 122 15 178 0 123 15 178 0 125 15 178 0 127 15 178 0 129 15 178 1 153] 
#[0 15 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153] 
#[0 15 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 61 0 65 0 66 0 67 0 69 0 70 0 71 0 72 0 74 0 75 0 77 0 78 0 79 0 80 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 94 0 96 0 97 0 99 0 102 0 104 0 105 0 107 0 108 0 112 0 113 0 117 0 118 0 120 0 121 0 122 0 123 0 125 0 126 0 127 1 153 1 154] 
#[0 29 157 0 35] 
#[1 10 105 0 1 0 57 0 3 0 61 0 5 10 109 0 8 10 113 0 9 10 117 0 13 10 121 0 15 10 125 0 20 10 129 0 24 10 133 0 26 10 137 0 30 1 161 0 44 10 141 0 45 10 145 0 52 1 25 0 53 10 149 0 56 10 153 0 57 10 157 0 59 1 29 0 60 5 37 0 67 10 161 0 70 10 165 0 71 10 169 0 74 10 173 0 75 1 33 0 77 10 177 0 78 10 181 0 80 10 185 0 86 0 113 0 87 0 125 0 90 5 41 0 92 10 189 0 97 10 193 0 102 6 137 0 104 10 197 0 105 10 201 0 107 0 149 0 112 0 153 0 113 5 45 0 117 5 49 0 118 5 53 0 120 5 57 0 121 5 61 0 122 5 65 0 123 5 69 0 125 10 205 0 126 3 129 0 127 10 209 0 134 1 213 0 135 1 217 0 137 10 213 0 237 29 161 0 243 10 221 0 244 10 225 0 245 10 229 0 246 10 233 0 247 10 237 0 248 10 241 0 251 10 245 0 252 10 249 1 4 10 253 1 5 11 1 1 11 11 5 1 15 11 9 1 16 11 13 1 23 11 17 1 28 11 21 1 29 11 25 1 30 11 29 1 31 11 33 1 32 11 37 1 33 11 41 1 34 11 45 1 35 11 49 1 36 1 9 1 111 2 53 1 114 11 53 1 115 11 57 1 118 11 61 1 119 11 65 1 135 11 69 1 137 1 21 1 148 5 77 1 153] 
#[1 15 61 0 2 15 65 0 6 15 69 0 7 15 73 0 9 15 77 0 10 15 81 0 15 15 85 0 16 15 89 0 17 15 93 0 18 15 97 0 20 15 101 0 21 15 105 0 23 15 109 0 24 15 113 0 26 15 117 0 27 15 121 0 28 15 125 0 32 15 129 0 33 15 133 0 34 15 137 0 35 15 141 0 36 15 194 0 37 15 145 0 38 15 149 0 39 15 153 0 40 15 157 0 41 15 161 0 42 15 169 0 47 15 173 0 48 15 177 0 51 26 93 0 64 15 181 0 106 15 185 0 107 15 189 0 109 15 193 0 110 15 197 0 111 15 201 0 127 15 205 0 128 15 209 0 129]
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
