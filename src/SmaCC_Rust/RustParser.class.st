Class {
	#name : #RustParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Rust'
}

{ #category : #generated }
RustParser class >> ambiguousTransitions [
^#(
#[ 0 10 0 17] 
#[ 0 50 0 54] 
#[ 0 66 2 33] 
#[ 0 70 2 41] 
#[ 1 1 1 10] 
#[ 1 9 1 10] 
#[ 0 133 1 10] 
#[ 0 137 1 10] 
#[ 1 10 1 153] 
#[ 1 90 1 94] 
#[ 0 186 1 102] 
#[ 1 106 3 237] 
#[ 1 114 1 118] 
#[ 1 142 4 201] 
#[ 1 214 4 201] 
#[ 0 17 1 246] 
#[ 1 114 1 118 5 141] 
#[ 1 94 2 10] 
#[ 1 94 2 26] 
#[ 2 66 3 253] 
#[ 2 70 3 253] 
#[ 2 2 9 193] 
#[ 2 42 9 197] 
#[ 2 226 3 253] 
#[ 0 17 3 2] 
#[ 3 6 3 41] 
#[ 1 141 3 6] 
#[ 1 98 3 46] 
#[ 1 102 3 50] 
#[ 1 98 12 157] 
#[ 2 230 12 253] 
#[ 5 178 6 33] 
#[ 5 182 6 33] 
#[ 5 186 6 33] 
#[ 5 190 6 33] 
#[ 1 234 14 25] 
#[ 6 26 14 237] 
#[ 6 34 14 245] 
#[ 1 1 5 122] 
#[ 1 9 5 122] 
#[ 0 133 5 122] 
#[ 0 137 5 122] 
#[ 5 122 15 17] 
#[ 0 14 1 234 15 129] 
#[ 0 14 0 49] 
#[ 0 14 9 237] 
#[ 0 14 9 245] 
#[ 0 14 1 1] 
#[ 0 14 1 5] 
#[ 0 14 1 9] 
#[ 0 14 0 97] 
#[ 0 14 0 109] 
#[ 0 14 10 29] 
#[ 0 14 0 133] 
#[ 0 14 0 137] 
#[ 1 114 2 42] 
#[ 1 114 1 118 2 42] 
#[ 6 33 7 50] 
#[ 6 33 7 58] 
#[ 0 190 7 206] 
#[ 1 234 18 89] 
#[ 5 198 7 238] 
#[ 5 202 7 242] 
#[ 6 33 7 246] 
#[ 0 210 1 1] 
#[ 0 210 1 9] 
#[ 0 210 19 57] 
#[ 0 133 0 210] 
#[ 0 137 0 210] 
#[ 0 210 18 185] 
#[ 0 94 1 18] 
#[ 1 22 2 109] 
#[ 5 202 8 122] 
#[ 8 122 19 225] 
#[ 0 14 0 45 1 234] 
#[ 0 250 7 70] 
#[ 0 74 8 254] 
#[ 0 74 21 37] 
#[ 1 14 7 126] 
#[ 3 233 6 34] 
#[ 1 106 6 34] 
#[ 1 106 6 34 21 57] 
#[ 7 150 9 138] 
#[ 9 178 21 233] 
#[ 0 190 10 10] 
#[ 0 17 1 234] 
#[ 1 250 9 134] 
#[ 0 74 11 142] 
#[ 0 190 7 206 9 166] 
#[ 11 250 21 233] 
#[ 0 17 12 42] 
#[ 1 234 12 54] 
#[ 0 74 12 218] 
#[ 0 74 12 222] 
#[ 3 22 10 126] 
#[ 6 74 8 50] 
#[ 13 90 26 17] 
#[ 9 178 11 250] 
#[ 9 178 11 250 21 233] 
#[ 0 74 13 250] 
#[ 8 62 10 158] 
#[ 8 70 10 162] 
#[ 12 34 13 50] 
#[ 10 190 12 118] 
#[ 5 202 15 26]
	).
]

{ #category : #'generated-accessing' }
RustParser class >> cacheId [
	^'2022-02-05T17:17:43.876882-06:00'
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

<SHEBANG>: /* TODO: {this.SOF()}*/? \xfeff? \#\! [^\r\n]* /* TODO: -> channel(HIDDEN)*/;

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
   : innerAttribute 'attribute'* item* {{}}
   ;

# 3
macroInvocation ###
   : macroInvocationWithoutBlock
   | macroInvocationWithBlock
   ;
macroInvocationWithBlock ###
	: simplePath ""!"" ""{"" 'left' tokenTree* ""}"" 'right' {{MacroInvocation}}
	;
macroInvocationWithoutBlock ###
	: simplePath ""!"" ""("" 'left' tokenTree* "")"" 'right' {{MacroInvocation}}
	| simplePath ""!"" ""["" 'left' tokenTree* ""]"" 'right' {{MacroInvocation}}
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
   : ""macro_rules"" 'macroRulesToken' ""!"" identifier macroRulesDef {{}}
   ;
macroRulesDef
   : ""("" 'leftParen' macroRules "")"" 'rightParen' "";"" 'semicolon'
   | ""["" 'leftBracket' macroRules ""]"" 'rightBracket' "";"" 'semicolon'
   | ""{"" 'leftBrace' macroRules ""}"" 'rightBrace'
   ;
macroRules
   : macroRule ("";"" 'semicolon' macroRule)* "";"" 'semicolon'?
   ;
macroRule
   : macroMatcher ""=>"" macroTranscriber
   ;
macroMatcher
   : ""("" 'leftParen' macroMatch* "")"" 'rightParen'
   | ""["" 'leftBracket' macroMatch* ""]"" 'rightBracket'
   | ""{"" 'leftBrace' macroMatch* ""}"" 'rightBrace'
   ;
macroMatch
   : macroMatchToken
   | macroMatcher
   | ""$"" (identifier | ""self"" 'selfToken') "":"" macroFragSpec
   | ""$"" ""("" 'leftParen' macroMatch+ "")"" 'rightParen' macroRepSep? macroRepOp
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
   : functionQualifiers ""fn"" 'fnToken' identifier genericParams? ""("" 'leftParen' functionParameters? "")"" 'rightParen' functionReturnType? whereClause?
      (blockExpression | "";"" 'semicolon')
   ;
functionQualifiers
   : ""const"" 'constToken'? ""async"" 'asyncToken'? ""unsafe"" 'unsafeToken'? (""extern"" 'externToken' abi?)?
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
   : ""mut"" 'mutToken'? ""self"" 'selfToken' "":"" type
   ;
functionParam
   : outerAttribute* (functionParamPattern | ""..."" | type)
   ;
functionParamPattern
   : pattern "":"" (type | ""..."")
   ;
functionReturnType
   : ""->"" type
   ;

# 6.5
typeAlias
   : ""type"" 'typeToken' identifier genericParams? ("":"" 'colon' typeParamBounds)? whereClause? (""="" type)? "";"" 'semicolon'
   ;

# 6.6
struct
   : structStruct
   | tupleStruct
   ;
structStruct
   : ""struct"" 'structToken' identifier genericParams? whereClause? (""{"" 'leftBrace' structFields? ""}"" 'rightBrace' | "";"" 'semicolon')
   ;
tupleStruct
   : ""struct"" 'structToken' identifier genericParams? ""("" 'leftParen' tupleFields? "")"" 'rightParen' whereClause? "";"" 'semicolon'
   ;
structFields
   : structField ("","" 'comma' structField)* "","" 'comma'?
   ;
structField
   : outerAttribute* visibility? identifier "":"" type
   ;
tupleFields
   : tupleField ("","" 'comma' tupleField)* "","" 'comma'?
   ;
tupleField
   : outerAttribute* visibility? type
   ;

# 6.7
enumeration
   : ""enum"" 'enumToken' identifier genericParams? whereClause? ""{"" 'leftBrace' enumItems? ""}"" 'rightBrace'
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
   : ""union"" 'unionToken' identifier genericParams? whereClause? ""{"" 'leftBrace' structFields ""}"" 'rightBrace'
   ;

# 6.9
constantItem
   : ""const"" 'constToken' (identifier | ""_"") "":"" type (""="" expression)? "";"" 'semicolon'
   ;

# 6.10
staticItem
   : ""static"" 'staticToken' ""mut"" 'mutToken'? identifier "":"" type (""="" expression)? "";"" 'semicolon'
   ;

# 6.11
trait
   : ""unsafe"" 'unsafeToken'? ""auto"" 'autoToken'? ""trait"" 'traitToken' identifier genericParams? ("":"" typeParamBounds?)? whereClause? ""{"" 'leftBrace' innerAttribute* associatedItem* ""}"" 'rightBrace'
   ;

# 6.12
implementation
   : inherentImpl
   | traitImpl
   ;
inherentImpl
   : ""impl"" 'implToken' genericParams? type whereClause? ""{"" 'leftBrace' innerAttribute* associatedItem* ""}"" 'rightBrace'
   ;
traitImpl
   : ""unsafe"" 'unsafeToken'? ""impl"" 'implToken' genericParams? ""!""? typePath ""for"" 'forToken' type whereClause? ""{"" 'leftBrace' innerAttribute* associatedItem* ""}"" 'rightBrace'
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
   : outerAttribute? identifier ("":"" typeParamBounds?)? (""="" type)?
   ;
constParam
   : ""const"" 'constToken' identifier "":"" type
   ;

whereClause
   : ""where"" 'whereToken' (whereClauseItem "","" 'comma')* whereClauseItem?
   ;
whereClauseItem
   : lifetimeWhereClauseItem
   | typeBoundWhereClauseItem
   ;
lifetimeWhereClauseItem
   : lifetime "":"" lifetimeBounds
   ;
typeBoundWhereClauseItem
   : forLifetimes? type "":"" typeParamBounds?
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
   : ""#"" ""!"" ""["" 'leftBracket' attr ""]"" 'rightBracket'
   ;
outerAttribute
   : ""#"" ""["" 'leftBracket' attr ""]"" 'rightBracket'
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
   : outerAttribute* ""let"" 'letToken' pattern ("":"" type)? (""="" expression)? "";"" 'semicolon'
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
	: outerAttribute expressionWithoutBlock                         # AttributedExpression # technical, remove left recursive
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
   | expression ""as"" typeNoBounds                       # TypeCastExpression  # 8.2.4
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
   | ""return"" 'returnToken' expression?                               # ReturnExpression # 8.2.17
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
   : outerAttribute expressionWithBlock # technical
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
   : <CHAR_LITERAL> 'value' {{Literal}}
   | <STRING_LITERAL> 'value' {{Literal}}
   | <rawString> 'value' {{Literal}}
   | <simpleRawString> 'value' {{Literal}}
   | <BYTE_LITERAL> 'value' {{Literal}}
   | <BYTE_STRING_LITERAL> 'value' {{Literal}}
   | <INTEGER_LITERAL> 'value' {{Literal}}
   | <FLOAT_LITERAL> 'value' {{Literal}}
   | ""true"" 'value' {{Literal}}
   | ""false"" 'value' {{Literal}}
   ;

# 8.2.2
pathExpression
   : pathInExpression
   | qualifiedPathInExpression
   ;

# 8.2.3
blockExpression
   : ""{"" 'leftBrace' innerAttribute* statements? ""}"" 'rightBrace'
   ;
statements
   : statement+ expressionWithoutBlock?
   | expressionWithoutBlock
   ;

asyncBlockExpression
   : ""async"" 'asyncToken' ""move"" 'moveToken'? blockExpression
   ;
unsafeBlockExpression
   : ""unsafe"" 'unsafeToken' blockExpression
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
   : expression ("","" 'comma' expression)* "","" 'comma'?
   ;

# 8.2.12
closureExpression
   : ""move"" 'moveToken'? (""||"" | ""|"" closureParameters? ""|"")
   (
      expression
      | ""->"" typeNoBounds blockExpression
   )
   ;
closureParameters
   : closureParam ("","" 'comma' closureParam)* "","" 'comma'?
   ;
closureParam
   : outerAttribute* pattern ("":"" type)?
   ;

# 8.2.13
loopExpression
   : loopLabel?
   (
      infiniteLoopExpression
      | predicateLoopExpression
      | predicatePatternLoopExpression
      | iteratorLoopExpression
   )
   ;
infiniteLoopExpression
   : ""loop"" 'loopToken' blockExpression
   ;
predicateLoopExpression
   : ""while"" 'whileToken' expression /*except structExpression*/ blockExpression
   ;
predicatePatternLoopExpression
   : ""while"" 'whileToken' ""let"" 'letToken' matchArmPatterns ""="" expression blockExpression
   ;
iteratorLoopExpression
   : ""for"" 'forToken' pattern ""in"" 'inToken' expression blockExpression
   ;
loopLabel
   : <LIFETIME_OR_LABEL> 'label' "":""
   ;

# 8.2.15
ifExpression
   : ""if"" 'ifToken' expression blockExpression
   (
      ""else"" 'elseToken' (blockExpression | ifExpression | ifLetExpression)
   )?
   ;
ifLetExpression
   : ""if"" 'ifToken' ""let"" 'letToken' matchArmPatterns ""="" expression blockExpression
   (
      ""else"" 'elseToken' (blockExpression | ifExpression | ifLetExpression)
   )?
   ;

# 8.2.16
matchExpression
   : ""match"" 'matchToken' expression ""{"" 'leftBrace' innerAttribute* matchArms? ""}"" 'rightBrace'
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
   : ""("" 'leftParen' type "")"" 'rightParen'
   ;

# 10.1.4
neverType
   : ""!""
   ;

# 10.1.5
tupleType
   : ""("" 'leftParen' ((type "","" 'comma')+ type?)? "")"" 'rightParen'
   ;

# 10.1.6
arrayType
   : ""["" 'leftBracket' type "";"" 'semicolon' expression ""]"" 'rightBracket'
   ;

# 10.1.7
sliceType
   : ""["" 'leftBracket' type ""]"" 'rightBracket'
   ;

# 10.1.13
referenceType
   : <amp> 'amp' lifetime? ""mut"" 'mutToken'? typeNoBounds
   ;
rawPointerType
   : ""*"" (""mut"" 'mutToken' | ""const"" 'constToken') typeNoBounds
   ;

# 10.1.14
bareFunctionType
   : forLifetimes? functionTypeQualifiers ""fn"" 'fnToken' ""("" 'leftParen' functionParametersMaybeNamedVariadic? "")"" 'rightParen' bareFunctionReturnType?
   ;
functionTypeQualifiers
   : ""unsafe"" 'unsafeToken'? (""extern"" 'externToken' abi?)?
   ;
bareFunctionReturnType
   : ""->"" typeNoBounds
   ;
functionParametersMaybeNamedVariadic
   : maybeNamedFunctionParameters
   | maybeNamedFunctionParametersVariadic
   ;
maybeNamedFunctionParameters
   : maybeNamedParam ("","" 'comma' maybeNamedParam)* "","" 'comma'?
   ;
maybeNamedParam
   : outerAttribute* ((identifier | ""_"") "":"")? type
   ;
maybeNamedFunctionParametersVariadic
   : maybeNamedParam ("","" 'comma' maybeNamedParam)* "","" 'comma' outerAttribute* ""...""
   ;

# 10.1.15
traitObjectType
   : ""dyn"" 'dynToken'? typeParamBounds
   ;
traitObjectTypeOneBound
   : ""dyn"" 'dynToken'? traitBound
   ;
implTraitType
   : ""impl"" 'implToken' typeParamBounds
   ;
implTraitTypeOneBound
   : ""impl"" 'implToken' traitBound
   ;

# 10.1.18
inferredType
   : ""_""
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
   : ""::""? simplePathSegment (""::"" simplePathSegment)*
   ;
simplePathSegment
   : identifier
   | ""super"" 'superToken'
   | ""self"" 'selfToken'
   | ""crate"" 'crateToken'
   | ""$crate""
   ;

pathInExpression
   : ""::""? pathExprSegment (""::"" pathExprSegment)*
   ;
pathExprSegment
   : pathIdentSegment (""::"" genericArgs)?
   ;
pathIdentSegment
   : simplePathSegment
   | ""Self""
   ;

#TODO: let x : T<_>=something;
genericArgs
   : <lt> 'lt' <gt> 'gt'
   ### handled below by genericArg ###| <lt> 'lt' genericArgsLifetimes ("","" 'comma' genericArgsTypes)? ("","" 'comma' genericArgsBindings)? "","" 'comma'? <gt> 'gt'
   ### handled below by genericArg ###| <lt> 'lt' genericArgsTypes ("","" 'comma' genericArgsBindings)? "","" 'comma'? <gt> 'gt'
   | <lt> 'lt' genericArg ("","" 'comma' genericArg)* "","" 'comma'? <gt> 'gt'
   ;
genericArg
   : lifetime
   | type
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
   : type ("","" 'comma' type)*
   ;
genericArgsBindings
   : genericArgsBinding ("","" 'comma' genericArgsBinding)*
   ;
genericArgsBinding
   : identifier ""="" type
   ;

qualifiedPathInExpression
   : qualifiedPathType (""::"" pathExprSegment)+
   ;
qualifiedPathType
   : <lt> 'lt' type (""as"" 'asToken' typePath)? <gt> 'gt'
   ;
qualifiedPathInType
   : qualifiedPathType (""::"" typePathSegment)+
   ;

typePath
   : ""::""? typePathSegment (""::"" typePathSegment)*
   ;
typePathSegment
   : pathIdentSegment ""::""? (genericArgs | typePathFn)?
   ;
typePathFn
   : ""("" 'leftParen' typePathInputs? "")"" 'rightParen' (""->"" type)?
   ;
typePathInputs
   : type ("","" 'comma' type)* "","" 'comma'?
   ;

# 12.6
visibility
   : ""pub"" 'pubToken' (""("" 'leftParen' (""crate"" 'crateToken' | ""self"" 'selfToken' | ""super"" 'superToken' | ""in"" 'inToken' simplePath) "")"" 'rightParen')?
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
	#(129 0 #reduceFor: 5662721 false) 
	#(130 0 #reduceFor: 5691393 false) 
	#(155 0 #reduceFor: 8413185 false) 
	#(128 2 #reduceFor: 5651457 false) 
	#(129 2 #reduceFor: 5662722 false) 
	#(130 2 #reduceFor: 5691394 false) 
	#(169 0 #reduceFor: 9688065 false) 
	#(362 1 #reduceFor: 29592581 false) 
	#(169 1 #reduceFor: 9688069 false) 
	#(395 1 #reduceFor: 31570948 false) 
	#(169 1 #reduceFor: 9688073 false) 
	#(362 1 #reduceFor: 29592580 false) 
	#(394 1 #reduceFor: 31347718 false) 
	#(170 0 #reduceFor: 9806849 false) 
	#(337 0 #reduceFor: 28276737 false) 
	#(395 1 #reduceFor: 31570947 false) 
	#(394 1 #reduceFor: 31347713 false) 
	#(362 1 #reduceFor: 29592579 false) 
	#(362 1 #reduceFor: 29592578 false) 
	#(169 1 #reduceFor: 9688067 false) 
	#(395 1 #reduceFor: 31570945 false) 
	#(395 1 #reduceFor: 31570946 false) 
	#(138 1 #reduceFor: 6418434 false) 
	#(157 1 #reduceFor: 8767489 false) 
	#(157 1 #reduceFor: 8767490 false) 
	#(154 2 #reduceFor: 8402945 false) 
	#(154 2 #reduceFor: 8402946 false) 
	#(156 1 #reduceFor: 8483841 false) 
	#(156 1 #reduceFor: 8483842 false) 
	#(156 1 #reduceFor: 8483843 false) 
	#(156 1 #reduceFor: 8483844 false) 
	#(156 1 #reduceFor: 8483845 false) 
	#(156 1 #reduceFor: 8483846 false) 
	#(183 1 #reduceFor: 10588161 false) 
	#(183 1 #reduceFor: 10588162 false) 
	#(156 1 #reduceFor: 8483847 false) 
	#(156 1 #reduceFor: 8483848 false) 
	#(156 1 #reduceFor: 8483849 false) 
	#(156 1 #reduceFor: 8483850 false) 
	#(156 1 #reduceFor: 8483851 false) 
	#(156 1 #reduceFor: 8483852 false) 
	#(209 1 #reduceFor: 12362753 false) 
	#(209 1 #reduceFor: 12362754 false) 
	#(156 1 #reduceFor: 8483853 false) 
	#(155 2 #reduceFor: 8413186 false) 
	#(361 0 #reduceFor: 29560833 false) 
	#(362 1 #reduceFor: 29592577 false) 
	#(232 1 #reduceFor: 14159873 false) 
	#(169 2 #reduceFor: 9688071 false) 
	#(169 2 #reduceFor: 9688077 false) 
	#(169 2 #reduceFor: 9688075 false) 
	#(159 0 #reduceFor: 8943617 false) 
	#(171 1 #reduceFor: 9819137 false) 
	#(171 1 #reduceFor: 9819139 false) 
	#(169 2 #reduceFor: 9688066 false) 
	#(170 1 #reduceFor: 9806850 false) 
	#(171 1 #reduceFor: 9819138 false) 
	#(328 1 #reduceFor: 27617281 false) 
	#(358 1 #reduceFor: 29446147 false) 
	#(358 1 #reduceFor: 29446146 false) 
	#(367 1 #reduceFor: 29864962 false) 
	#(349 1 #reduceFor: 29119489 false) 
	#(337 1 #reduceFor: 28276738 false) 
	#(337 1 #reduceFor: 28276740 false) 
	#(358 1 #reduceFor: 29446145 false) 
	#(217 0 #reduceFor: 13067265 false) 
	#(326 1 #reduceFor: 27236366 false) 
	#(131 1 #reduceFor: 5712898 false) 
	#(131 1 #reduceFor: 5712897 false) 
	#(325 1 #reduceFor: 27166721 false) 
	#(326 1 #reduceFor: 27236353 false) 
	#(326 1 #reduceFor: 27236358 false) 
	#(326 1 #reduceFor: 27236357 false) 
	#(326 1 #reduceFor: 27236361 false) 
	#(326 1 #reduceFor: 27236362 false) 
	#(326 1 #reduceFor: 27236360 false) 
	#(326 1 #reduceFor: 27236359 false) 
	#(326 1 #reduceFor: 27236365 false) 
	#(325 1 #reduceFor: 27166723 false) 
	#(326 1 #reduceFor: 27236355 false) 
	#(325 1 #reduceFor: 27166722 false) 
	#(326 1 #reduceFor: 27236354 false) 
	#(326 1 #reduceFor: 27236363 false) 
	#(345 1 #reduceFor: 28858369 false) 
	#(352 0 #reduceFor: 29192193 false) 
	#(346 1 #reduceFor: 28919809 false) 
	#(353 1 #reduceFor: 29224962 false) 
	#(353 1 #reduceFor: 29224961 false) 
	#(367 1 #reduceFor: 29864961 false) 
	#(391 1 #reduceFor: 31111169 false) 
	#(326 1 #reduceFor: 27236364 false) 
	#(354 1 #reduceFor: 29276161 false) 
	#(326 1 #reduceFor: 27236356 false) 
	#(390 0 #reduceFor: 31081473 false) 
	#(207 0 #reduceFor: 12269569 false) 
	#(164 1 #reduceFor: 9284609 false) 
	#(164 1 #reduceFor: 9284618 false) 
	#(138 2 #reduceFor: 6418433 false) 
	#(359 2 #reduceFor: 29519873 false) 
	#(156 2 #reduceFor: 8483854 false) 
	#(156 2 #reduceFor: 8483855 false) 
	#(156 2 #reduceFor: 8483856 false) 
	#(156 2 #reduceFor: 8483857 false) 
	#(156 2 #reduceFor: 8483858 false) 
	#(156 2 #reduceFor: 8483859 false) 
	#(156 2 #reduceFor: 8483860 false) 
	#(156 2 #reduceFor: 8483861 false) 
	#(156 2 #reduceFor: 8483862 false) 
	#(156 2 #reduceFor: 8483863 false) 
	#(156 2 #reduceFor: 8483864 false) 
	#(156 2 #reduceFor: 8483865 false) 
	#(156 2 #reduceFor: 8483866 false) 
	#(230 5 #reduceFor: 14010369 false) 
	#(133 0 #reduceFor: 5862401 false) 
	#(233 1 #reduceFor: 14197761 false) 
	#(232 2 #reduceFor: 14159874 false) 
	#(359 3 #reduceFor: 29519874 false) 
	#(169 3 #reduceFor: 9688070 false) 
	#(169 3 #reduceFor: 9688079 false) 
	#(169 3 #reduceFor: 9688074 false) 
	#(224 0 #reduceFor: 13524993 false) 
	#(176 0 #reduceFor: 10048513 false) 
	#(161 1 #reduceFor: 9100290 false) 
	#(161 1 #reduceFor: 9100289 false) 
	#(213 0 #reduceFor: 12868609 false) 
	#(329 2 #reduceFor: 27652097 false) 
	#(331 1 #reduceFor: 27684865 false) 
	#(354 2 #reduceFor: 29276163 false) 
	#(345 2 #reduceFor: 28858370 false) 
	#(346 2 #reduceFor: 28919810 false) 
	#(337 2 #reduceFor: 28276739 false) 
	#(228 2 #reduceFor: 13801473 false) 
	#(347 2 #reduceFor: 28984321 false) 
	#(348 2 #reduceFor: 29044737 false) 
	#(337 2 #reduceFor: 28276741 false) 
	#(215 2 #reduceFor: 13036545 false) 
	#(334 2 #reduceFor: 27922433 false) 
	#(354 2 #reduceFor: 29276162 false) 
	#(350 2 #reduceFor: 29155329 false) 
	#(391 2 #reduceFor: 31111172 false) 
	#(391 2 #reduceFor: 31111170 false) 
	#(391 2 #reduceFor: 31111171 false) 
	#(388 1 #reduceFor: 31013889 false) 
	#(386 2 #reduceFor: 30969857 false) 
	#(389 2 #reduceFor: 31044609 false) 
	#(158 3 #reduceFor: 8842241 false) 
	#(184 3 #reduceFor: 10636291 false) 
	#(206 0 #reduceFor: 12250113 false) 
	#(207 1 #reduceFor: 12269570 false) 
	#(182 3 #reduceFor: 10440705 false) 
	#(169 3 #reduceFor: 9688068 false) 
	#(164 2 #reduceFor: 9284612 false) 
	#(164 2 #reduceFor: 9284610 false) 
	#(166 0 #reduceFor: 9352193 false) 
	#(163 3 #reduceFor: 9217025 false) 
	#(361 2 #reduceFor: 29560834 false) 
	#(240 1 #reduceFor: 20417546 false) 
	#(240 1 #reduceFor: 20417545 false) 
	#(240 1 #reduceFor: 20417537 false) 
	#(240 1 #reduceFor: 20417538 false) 
	#(240 1 #reduceFor: 20417540 false) 
	#(240 1 #reduceFor: 20417541 false) 
	#(240 1 #reduceFor: 20417542 false) 
	#(240 1 #reduceFor: 20417543 false) 
	#(240 1 #reduceFor: 20417544 false) 
	#(233 2 #reduceFor: 14197762 false) 
	#(240 1 #reduceFor: 20417539 false) 
	#(231 4 #reduceFor: 14087169 false) 
	#(169 4 #reduceFor: 9688072 false) 
	#(169 4 #reduceFor: 9688078 false) 
	#(169 4 #reduceFor: 9688076 false) 
	#(222 2 #reduceFor: 13486081 false) 
	#(194 4 #reduceFor: 11226113 false) 
	#(197 0 #reduceFor: 11377665 false) 
	#(160 4 #reduceFor: 8996865 false) 
	#(159 2 #reduceFor: 8943618 false) 
	#(327 3 #reduceFor: 27539457 false) 
	#(330 2 #reduceFor: 27684865 false) 
	#(329 3 #reduceFor: 27652098 false) 
	#(331 2 #reduceFor: 27684866 false) 
	#(354 3 #reduceFor: 29276165 false) 
	#(335 3 #reduceFor: 28001282 false) 
	#(335 3 #reduceFor: 28001281 false) 
	#(389 3 #reduceFor: 31044610 false) 
	#(354 3 #reduceFor: 29276164 false) 
	#(333 3 #reduceFor: 27847681 false) 
	#(337 3 #reduceFor: 28276742 false) 
	#(217 2 #reduceFor: 13067266 false) 
	#(385 3 #reduceFor: 30887937 false) 
	#(334 3 #reduceFor: 27922434 false) 
	#(334 3 #reduceFor: 27922435 false) 
	#(208 0 #reduceFor: 12315649 false) 
	#(350 3 #reduceFor: 29155330 false) 
	#(352 2 #reduceFor: 29192194 false) 
	#(392 2 #reduceFor: 31190017 false) 
	#(378 0 #reduceFor: 30646273 false) 
	#(391 3 #reduceFor: 31111173 false) 
	#(391 3 #reduceFor: 31111174 false) 
	#(368 2 #reduceFor: 29956097 false) 
	#(372 1 #reduceFor: 30456834 false) 
	#(372 1 #reduceFor: 30456833 false) 
	#(371 1 #reduceFor: 30368770 false) 
	#(371 1 #reduceFor: 30368769 false) 
	#(372 1 #reduceFor: 30456836 false) 
	#(370 0 #reduceFor: 30313473 false) 
	#(371 1 #reduceFor: 30368771 false) 
	#(371 1 #reduceFor: 30368772 false) 
	#(387 2 #reduceFor: 31013889 false) 
	#(388 2 #reduceFor: 31013890 false) 
	#(390 2 #reduceFor: 31081474 false) 
	#(139 4 #reduceFor: 6554625 false) 
	#(394 4 #reduceFor: 31347714 false) 
	#(394 4 #reduceFor: 31347715 false) 
	#(394 4 #reduceFor: 31347716 false) 
	#(192 0 #reduceFor: 11118593 false) 
	#(184 4 #reduceFor: 10636289 false) 
	#(188 0 #reduceFor: 10972161 false) 
	#(184 4 #reduceFor: 10636297 false) 
	#(184 4 #reduceFor: 10636294 false) 
	#(206 1 #reduceFor: 12250114 false) 
	#(182 4 #reduceFor: 10440713 false) 
	#(182 4 #reduceFor: 10440707 false) 
	#(158 4 #reduceFor: 8842243 false) 
	#(164 3 #reduceFor: 9284613 false) 
	#(167 0 #reduceFor: 9375745 false) 
	#(164 3 #reduceFor: 9284615 false) 
	#(164 3 #reduceFor: 9284620 false) 
	#(164 3 #reduceFor: 9284619 false) 
	#(360 2 #reduceFor: 29560833 false) 
	#(399 1 #reduceFor: 32683013 false) 
	#(399 1 #reduceFor: 32683033 false) 
	#(399 1 #reduceFor: 32683050 false) 
	#(137 1 #reduceFor: 6289413 false) 
	#(397 1 #reduceFor: 32465924 false) 
	#(399 1 #reduceFor: 32683011 false) 
	#(399 1 #reduceFor: 32683025 false) 
	#(399 1 #reduceFor: 32683016 false) 
	#(399 1 #reduceFor: 32683027 false) 
	#(397 1 #reduceFor: 32465923 false) 
	#(396 1 #reduceFor: 31676467 false) 
	#(135 3 #reduceFor: 6092801 false) 
	#(152 1 #reduceFor: 7671809 false) 
	#(399 1 #reduceFor: 32683023 false) 
	#(152 1 #reduceFor: 7671810 false) 
	#(399 1 #reduceFor: 32683021 false) 
	#(399 1 #reduceFor: 32683044 false) 
	#(399 1 #reduceFor: 32683009 false) 
	#(399 1 #reduceFor: 32683022 false) 
	#(399 1 #reduceFor: 32683048 false) 
	#(399 1 #reduceFor: 32683040 false) 
	#(399 1 #reduceFor: 32683041 false) 
	#(399 1 #reduceFor: 32683042 false) 
	#(399 1 #reduceFor: 32683043 false) 
	#(399 1 #reduceFor: 32683010 false) 
	#(399 1 #reduceFor: 32683024 false) 
	#(399 1 #reduceFor: 32683046 false) 
	#(399 1 #reduceFor: 32683047 false) 
	#(399 1 #reduceFor: 32683045 false) 
	#(399 1 #reduceFor: 32683018 false) 
	#(399 1 #reduceFor: 32683029 false) 
	#(399 1 #reduceFor: 32683037 false) 
	#(399 1 #reduceFor: 32683031 false) 
	#(399 1 #reduceFor: 32683032 false) 
	#(399 1 #reduceFor: 32683049 false) 
	#(399 1 #reduceFor: 32683036 false) 
	#(399 1 #reduceFor: 32683019 false) 
	#(399 1 #reduceFor: 32683030 false) 
	#(399 1 #reduceFor: 32683020 false) 
	#(152 1 #reduceFor: 7671811 false) 
	#(399 1 #reduceFor: 32683038 false) 
	#(396 1 #reduceFor: 31676440 false) 
	#(399 1 #reduceFor: 32683012 false) 
	#(399 1 #reduceFor: 32683026 false) 
	#(399 1 #reduceFor: 32683039 false) 
	#(396 1 #reduceFor: 31676453 false) 
	#(396 1 #reduceFor: 31676417 false) 
	#(396 1 #reduceFor: 31676450 false) 
	#(396 1 #reduceFor: 31676451 false) 
	#(396 1 #reduceFor: 31676454 false) 
	#(396 1 #reduceFor: 31676455 false) 
	#(396 1 #reduceFor: 31676418 false) 
	#(396 1 #reduceFor: 31676419 false) 
	#(396 1 #reduceFor: 31676420 false) 
	#(396 1 #reduceFor: 31676421 false) 
	#(396 1 #reduceFor: 31676456 false) 
	#(396 1 #reduceFor: 31676452 false) 
	#(396 1 #reduceFor: 31676422 false) 
	#(396 1 #reduceFor: 31676423 false) 
	#(396 1 #reduceFor: 31676424 false) 
	#(396 1 #reduceFor: 31676457 false) 
	#(396 1 #reduceFor: 31676425 false) 
	#(396 1 #reduceFor: 31676426 false) 
	#(396 1 #reduceFor: 31676427 false) 
	#(396 1 #reduceFor: 31676428 false) 
	#(396 1 #reduceFor: 31676429 false) 
	#(396 1 #reduceFor: 31676430 false) 
	#(396 1 #reduceFor: 31676431 false) 
	#(396 1 #reduceFor: 31676458 false) 
	#(396 1 #reduceFor: 31676432 false) 
	#(396 1 #reduceFor: 31676433 false) 
	#(396 1 #reduceFor: 31676434 false) 
	#(396 1 #reduceFor: 31676435 false) 
	#(396 1 #reduceFor: 31676459 false) 
	#(396 1 #reduceFor: 31676460 false) 
	#(396 1 #reduceFor: 31676436 false) 
	#(396 1 #reduceFor: 31676437 false) 
	#(396 1 #reduceFor: 31676438 false) 
	#(396 1 #reduceFor: 31676439 false) 
	#(396 1 #reduceFor: 31676441 false) 
	#(396 1 #reduceFor: 31676442 false) 
	#(396 1 #reduceFor: 31676443 false) 
	#(396 1 #reduceFor: 31676444 false) 
	#(396 1 #reduceFor: 31676465 false) 
	#(396 1 #reduceFor: 31676445 false) 
	#(396 1 #reduceFor: 31676461 false) 
	#(396 1 #reduceFor: 31676466 false) 
	#(396 1 #reduceFor: 31676446 false) 
	#(396 1 #reduceFor: 31676462 false) 
	#(396 1 #reduceFor: 31676447 false) 
	#(396 1 #reduceFor: 31676463 false) 
	#(396 1 #reduceFor: 31676448 false) 
	#(396 1 #reduceFor: 31676449 false) 
	#(396 1 #reduceFor: 31676464 false) 
	#(399 1 #reduceFor: 32683015 false) 
	#(399 1 #reduceFor: 32683028 false) 
	#(399 1 #reduceFor: 32683017 false) 
	#(397 1 #reduceFor: 32465925 false) 
	#(399 1 #reduceFor: 32683035 false) 
	#(399 1 #reduceFor: 32683034 false) 
	#(399 1 #reduceFor: 32683014 false) 
	#(136 1 #reduceFor: 6233090 false) 
	#(133 2 #reduceFor: 5862402 false) 
	#(136 1 #reduceFor: 6233089 false) 
	#(137 1 #reduceFor: 6289412 false) 
	#(398 1 #reduceFor: 32576513 false) 
	#(397 1 #reduceFor: 32465922 false) 
	#(397 1 #reduceFor: 32465921 false) 
	#(137 1 #reduceFor: 6289409 false) 
	#(137 1 #reduceFor: 6289410 false) 
	#(137 1 #reduceFor: 6289411 false) 
	#(135 3 #reduceFor: 6092802 false) 
	#(135 3 #reduceFor: 6092803 false) 
	#(203 5 #reduceFor: 11896835 false) 
	#(169 5 #reduceFor: 9688080 false) 
	#(203 5 #reduceFor: 11896833 false) 
	#(224 2 #reduceFor: 13524994 false) 
	#(222 3 #reduceFor: 13486082 false) 
	#(225 1 #reduceFor: 13579265 false) 
	#(225 1 #reduceFor: 13579266 false) 
	#(176 2 #reduceFor: 10048514 false) 
	#(198 2 #reduceFor: 11420673 false) 
	#(194 5 #reduceFor: 11226114 false) 
	#(195 2 #reduceFor: 11353089 false) 
	#(194 5 #reduceFor: 11226117 false) 
	#(194 5 #reduceFor: 11226115 false) 
	#(162 2 #reduceFor: 9155586 false) 
	#(162 2 #reduceFor: 9155585 false) 
	#(160 5 #reduceFor: 8996866 false) 
	#(212 5 #reduceFor: 12765185 false) 
	#(213 2 #reduceFor: 12868610 false) 
	#(354 4 #reduceFor: 29276167 false) 
	#(354 4 #reduceFor: 29276166 false) 
	#(329 4 #reduceFor: 27652099 false) 
	#(238 1 #reduceFor: 15293482 false) 
	#(238 1 #reduceFor: 15293501 false) 
	#(238 1 #reduceFor: 15293497 false) 
	#(238 1 #reduceFor: 15293505 false) 
	#(238 1 #reduceFor: 15293515 false) 
	#(237 1 #reduceFor: 15167489 false) 
	#(237 1 #reduceFor: 15167490 false) 
	#(238 1 #reduceFor: 15293442 false) 
	#(238 1 #reduceFor: 15293443 false) 
	#(239 1 #reduceFor: 20171778 false) 
	#(239 1 #reduceFor: 20171779 false) 
	#(239 1 #reduceFor: 20171780 false) 
	#(238 1 #reduceFor: 15293512 false) 
	#(254 1 #reduceFor: 21531649 false) 
	#(254 1 #reduceFor: 21531650 false) 
	#(238 1 #reduceFor: 15293513 false) 
	#(263 1 #reduceFor: 22253569 false) 
	#(238 1 #reduceFor: 15293514 false) 
	#(239 1 #reduceFor: 20171781 false) 
	#(276 1 #reduceFor: 23122945 false) 
	#(276 1 #reduceFor: 23122946 false) 
	#(276 1 #reduceFor: 23122947 false) 
	#(276 1 #reduceFor: 23122948 false) 
	#(239 1 #reduceFor: 20171782 false) 
	#(239 1 #reduceFor: 20171783 false) 
	#(239 1 #reduceFor: 20171784 false) 
	#(241 1 #reduceFor: 20857857 false) 
	#(365 0 #reduceFor: 29770753 false) 
	#(366 1 #reduceFor: 29800449 false) 
	#(241 1 #reduceFor: 20857858 false) 
	#(219 1 #reduceFor: 13244417 false) 
	#(218 2 #reduceFor: 13139969 false) 
	#(218 2 #reduceFor: 13139970 false) 
	#(218 2 #reduceFor: 13139971 false) 
	#(220 1 #reduceFor: 13336577 false) 
	#(216 2 #reduceFor: 13067265 false) 
	#(215 4 #reduceFor: 13036546 false) 
	#(334 4 #reduceFor: 27922436 false) 
	#(336 4 #reduceFor: 28098561 false) 
	#(339 1 #reduceFor: 28419073 false) 
	#(342 0 #reduceFor: 28591105 false) 
	#(339 1 #reduceFor: 28419074 false) 
	#(351 2 #reduceFor: 29192193 false) 
	#(393 2 #reduceFor: 31275009 false) 
	#(392 3 #reduceFor: 31190019 false) 
	#(372 2 #reduceFor: 30456835 false) 
	#(146 0 #reduceFor: 7030785 false) 
	#(143 0 #reduceFor: 6887425 false) 
	#(394 5 #reduceFor: 31347717 false) 
	#(204 5 #reduceFor: 12013569 false) 
	#(185 5 #reduceFor: 10791937 false) 
	#(193 2 #reduceFor: 11163649 false) 
	#(190 2 #reduceFor: 11089921 false) 
	#(184 5 #reduceFor: 10636290 false) 
	#(186 2 #reduceFor: 10941441 false) 
	#(184 5 #reduceFor: 10636295 false) 
	#(184 5 #reduceFor: 10636300 false) 
	#(184 5 #reduceFor: 10636292 false) 
	#(182 5 #reduceFor: 10440709 false) 
	#(182 5 #reduceFor: 10440706 false) 
	#(182 5 #reduceFor: 10440715 false) 
	#(202 5 #reduceFor: 11764737 false) 
	#(167 1 #reduceFor: 9375746 false) 
	#(166 2 #reduceFor: 9352194 false) 
	#(164 4 #reduceFor: 9284616 false) 
	#(172 1 #reduceFor: 9891841 false) 
	#(174 0 #reduceFor: 9985025 false) 
	#(134 5 #reduceFor: 5909505 false) 
	#(134 5 #reduceFor: 5909506 false) 
	#(132 5 #reduceFor: 5803009 false) 
	#(223 2 #reduceFor: 13524993 false) 
	#(227 2 #reduceFor: 13724673 false) 
	#(357 0 #reduceFor: 29414401 false) 
	#(198 3 #reduceFor: 11420677 false) 
	#(198 3 #reduceFor: 11420674 false) 
	#(198 3 #reduceFor: 11420675 false) 
	#(198 3 #reduceFor: 11420676 false) 
	#(195 3 #reduceFor: 11353090 false) 
	#(197 2 #reduceFor: 11377666 false) 
	#(194 6 #reduceFor: 11226118 false) 
	#(194 6 #reduceFor: 11226119 false) 
	#(194 6 #reduceFor: 11226116 false) 
	#(214 2 #reduceFor: 12905473 false) 
	#(214 2 #reduceFor: 12905475 false) 
	#(214 2 #reduceFor: 12905474 false) 
	#(212 6 #reduceFor: 12765186 false) 
	#(354 5 #reduceFor: 29276168 false) 
	#(238 2 #reduceFor: 15293459 false) 
	#(238 2 #reduceFor: 15293453 false) 
	#(238 2 #reduceFor: 15293455 false) 
	#(238 2 #reduceFor: 15293457 false) 
	#(238 2 #reduceFor: 15293458 false) 
	#(238 2 #reduceFor: 15293483 false) 
	#(238 2 #reduceFor: 15293484 false) 
	#(245 2 #reduceFor: 21117953 false) 
	#(238 2 #reduceFor: 15293516 false) 
	#(238 2 #reduceFor: 15293503 false) 
	#(238 2 #reduceFor: 15293502 false) 
	#(238 2 #reduceFor: 15293499 false) 
	#(238 2 #reduceFor: 15293498 false) 
	#(302 1 #reduceFor: 25535489 false) 
	#(301 1 #reduceFor: 25504769 false) 
	#(299 1 #reduceFor: 25112578 false) 
	#(299 1 #reduceFor: 25112577 false) 
	#(299 1 #reduceFor: 25112579 false) 
	#(305 1 #reduceFor: 25704449 false) 
	#(299 1 #reduceFor: 25112581 false) 
	#(299 1 #reduceFor: 25112583 false) 
	#(299 1 #reduceFor: 25112580 false) 
	#(305 1 #reduceFor: 25704450 false) 
	#(299 1 #reduceFor: 25112584 false) 
	#(299 1 #reduceFor: 25112585 false) 
	#(305 1 #reduceFor: 25704451 false) 
	#(299 1 #reduceFor: 25112587 false) 
	#(305 1 #reduceFor: 25704453 false) 
	#(298 1 #reduceFor: 24813581 false) 
	#(296 0 #reduceFor: 24722433 false) 
	#(297 1 #reduceFor: 24751105 false) 
	#(298 1 #reduceFor: 24813569 false) 
	#(298 1 #reduceFor: 24813570 false) 
	#(298 1 #reduceFor: 24813571 false) 
	#(298 1 #reduceFor: 24813572 false) 
	#(297 1 #reduceFor: 24751106 false) 
	#(298 1 #reduceFor: 24813573 false) 
	#(298 1 #reduceFor: 24813574 false) 
	#(298 1 #reduceFor: 24813575 false) 
	#(298 1 #reduceFor: 24813576 false) 
	#(298 1 #reduceFor: 24813577 false) 
	#(298 1 #reduceFor: 24813578 false) 
	#(298 1 #reduceFor: 24813579 false) 
	#(298 1 #reduceFor: 24813580 false) 
	#(324 1 #reduceFor: 27086849 false) 
	#(305 1 #reduceFor: 25704455 false) 
	#(324 1 #reduceFor: 27086850 false) 
	#(305 1 #reduceFor: 25704456 false) 
	#(300 1 #reduceFor: 25412609 false) 
	#(299 1 #reduceFor: 25112582 false) 
	#(277 2 #reduceFor: 23304193 false) 
	#(238 2 #reduceFor: 15293506 false) 
	#(246 2 #reduceFor: 21208065 false) 
	#(274 0 #reduceFor: 23005185 false) 
	#(271 2 #reduceFor: 22811649 false) 
	#(281 2 #reduceFor: 23718913 false) 
	#(238 2 #reduceFor: 15293441 false) 
	#(239 2 #reduceFor: 20171777 false) 
	#(238 2 #reduceFor: 15293480 false) 
	#(238 2 #reduceFor: 15293452 false) 
	#(332 5 #reduceFor: 27746305 false) 
	#(276 2 #reduceFor: 23122949 false) 
	#(276 2 #reduceFor: 23122950 false) 
	#(276 2 #reduceFor: 23122951 false) 
	#(276 2 #reduceFor: 23122952 false) 
	#(363 2 #reduceFor: 29725697 false) 
	#(384 1 #reduceFor: 30858241 false) 
	#(383 2 #reduceFor: 30808065 false) 
	#(219 2 #reduceFor: 13244419 false) 
	#(220 2 #reduceFor: 13336583 false) 
	#(220 2 #reduceFor: 13336579 false) 
	#(215 5 #reduceFor: 13036547 false) 
	#(385 5 #reduceFor: 30887938 false) 
	#(336 5 #reduceFor: 28098565 false) 
	#(210 6 #reduceFor: 12417025 false) 
	#(208 2 #reduceFor: 12315650 false) 
	#(336 5 #reduceFor: 28098562 false) 
	#(343 2 #reduceFor: 28641281 false) 
	#(336 5 #reduceFor: 28098563 false) 
	#(340 2 #reduceFor: 28539905 false) 
	#(392 4 #reduceFor: 31190018 false) 
	#(393 3 #reduceFor: 31275010 false) 
	#(378 2 #reduceFor: 30646274 false) 
	#(234 1 #reduceFor: 14815233 false) 
	#(242 3 #reduceFor: 20941825 false) 
	#(234 1 #reduceFor: 14815237 false) 
	#(234 1 #reduceFor: 14815234 false) 
	#(244 1 #reduceFor: 21047297 false) 
	#(234 1 #reduceFor: 14815235 false) 
	#(234 1 #reduceFor: 14815236 false) 
	#(243 1 #reduceFor: 21030915 false) 
	#(236 1 #reduceFor: 15046658 false) 
	#(243 1 #reduceFor: 21030913 false) 
	#(368 4 #reduceFor: 29956098 false) 
	#(370 2 #reduceFor: 30313474 false) 
	#(382 3 #reduceFor: 30756865 false) 
	#(141 2 #reduceFor: 6860801 false) 
	#(140 3 #reduceFor: 6653955 false) 
	#(158 6 #reduceFor: 8842242 false) 
	#(204 6 #reduceFor: 12013571 false) 
	#(185 6 #reduceFor: 10791938 false) 
	#(193 3 #reduceFor: 11163650 false) 
	#(185 6 #reduceFor: 10791939 false) 
	#(190 3 #reduceFor: 11089922 false) 
	#(192 2 #reduceFor: 11118594 false) 
	#(186 3 #reduceFor: 10941442 false) 
	#(188 2 #reduceFor: 10972162 false) 
	#(185 6 #reduceFor: 10791941 false) 
	#(184 6 #reduceFor: 10636296 false) 
	#(184 6 #reduceFor: 10636298 false) 
	#(184 6 #reduceFor: 10636293 false) 
	#(182 6 #reduceFor: 10440711 false) 
	#(182 6 #reduceFor: 10440717 false) 
	#(182 6 #reduceFor: 10440714 false) 
	#(182 6 #reduceFor: 10440708 false) 
	#(202 6 #reduceFor: 11764739 false) 
	#(202 6 #reduceFor: 11764738 false) 
	#(212 6 #reduceFor: 12765187 false) 
	#(165 2 #reduceFor: 9352193 false) 
	#(164 5 #reduceFor: 9284611 false) 
	#(168 6 #reduceFor: 9476098 false) 
	#(168 6 #reduceFor: 9476097 false) 
	#(172 2 #reduceFor: 9891842 false) 
	#(179 2 #reduceFor: 10254338 false) 
	#(177 1 #reduceFor: 10098689 false) 
	#(175 2 #reduceFor: 10033153 false) 
	#(175 2 #reduceFor: 10033154 false) 
	#(179 2 #reduceFor: 10254337 false) 
	#(179 2 #reduceFor: 10254339 false) 
	#(172 2 #reduceFor: 9891843 false) 
	#(203 7 #reduceFor: 11896836 false) 
	#(203 7 #reduceFor: 11896834 false) 
	#(227 3 #reduceFor: 13724675 false) 
	#(227 3 #reduceFor: 13724674 false) 
	#(226 3 #reduceFor: 13661185 false) 
	#(355 1 #reduceFor: 29393921 false) 
	#(198 4 #reduceFor: 11420678 false) 
	#(198 4 #reduceFor: 11420679 false) 
	#(198 4 #reduceFor: 11420680 false) 
	#(199 2 #reduceFor: 11565057 false) 
	#(201 2 #reduceFor: 11710465 false) 
	#(200 2 #reduceFor: 11636737 false) 
	#(196 2 #reduceFor: 11377665 false) 
	#(194 7 #reduceFor: 11226120 false) 
	#(214 3 #reduceFor: 12905477 false) 
	#(214 3 #reduceFor: 12905476 false) 
	#(238 3 #reduceFor: 15293454 false) 
	#(238 3 #reduceFor: 15293456 false) 
	#(238 3 #reduceFor: 15293510 false) 
	#(252 1 #reduceFor: 21438465 false) 
	#(250 1 #reduceFor: 21419009 false) 
	#(363 3 #reduceFor: 29725698 false) 
	#(238 3 #reduceFor: 15293508 false) 
	#(249 0 #reduceFor: 21320705 false) 
	#(245 3 #reduceFor: 21117954 false) 
	#(238 3 #reduceFor: 15293504 false) 
	#(238 3 #reduceFor: 15293500 false) 
	#(306 2 #reduceFor: 25878531 false) 
	#(318 2 #reduceFor: 26671105 false) 
	#(319 1 #reduceFor: 26747906 false) 
	#(299 2 #reduceFor: 25112586 false) 
	#(305 2 #reduceFor: 25704452 false) 
	#(299 2 #reduceFor: 25112588 false) 
	#(305 2 #reduceFor: 25704454 false) 
	#(322 2 #reduceFor: 26932225 false) 
	#(317 0 #reduceFor: 26629121 false) 
	#(300 2 #reduceFor: 25412611 false) 
	#(300 2 #reduceFor: 25412613 false) 
	#(306 2 #reduceFor: 25878529 false) 
	#(294 2 #reduceFor: 24687617 false) 
	#(292 0 #reduceFor: 24610817 false) 
	#(282 3 #reduceFor: 23782401 false) 
	#(271 3 #reduceFor: 22811655 false) 
	#(278 3 #reduceFor: 23373825 false) 
	#(271 3 #reduceFor: 22811651 false) 
	#(275 2 #reduceFor: 23052289 false) 
	#(272 2 #reduceFor: 22968321 false) 
	#(238 3 #reduceFor: 15293473 false) 
	#(238 3 #reduceFor: 15293463 false) 
	#(238 3 #reduceFor: 15293491 false) 
	#(238 3 #reduceFor: 15293478 false) 
	#(238 3 #reduceFor: 15293492 false) 
	#(238 3 #reduceFor: 15293461 false) 
	#(238 3 #reduceFor: 15293489 false) 
	#(238 3 #reduceFor: 15293464 false) 
	#(238 3 #reduceFor: 15293487 false) 
	#(238 3 #reduceFor: 15293465 false) 
	#(238 3 #reduceFor: 15293488 false) 
	#(238 3 #reduceFor: 15293448 false) 
	#(253 1 #reduceFor: 21482497 false) 
	#(238 3 #reduceFor: 15293447 false) 
	#(238 3 #reduceFor: 15293446 false) 
	#(238 3 #reduceFor: 15293481 false) 
	#(238 3 #reduceFor: 15293485 false) 
	#(238 3 #reduceFor: 15293462 false) 
	#(238 3 #reduceFor: 15293490 false) 
	#(238 3 #reduceFor: 15293466 false) 
	#(238 3 #reduceFor: 15293495 false) 
	#(238 3 #reduceFor: 15293477 false) 
	#(238 3 #reduceFor: 15293486 false) 
	#(238 3 #reduceFor: 15293472 false) 
	#(238 3 #reduceFor: 15293476 false) 
	#(238 3 #reduceFor: 15293467 false) 
	#(238 3 #reduceFor: 15293496 false) 
	#(238 3 #reduceFor: 15293468 false) 
	#(238 3 #reduceFor: 15293470 false) 
	#(238 3 #reduceFor: 15293494 false) 
	#(238 3 #reduceFor: 15293460 false) 
	#(238 3 #reduceFor: 15293493 false) 
	#(238 3 #reduceFor: 15293479 false) 
	#(238 3 #reduceFor: 15293471 false) 
	#(238 3 #reduceFor: 15293449 false) 
	#(238 3 #reduceFor: 15293475 false) 
	#(238 3 #reduceFor: 15293474 false) 
	#(238 3 #reduceFor: 15293469 false) 
	#(261 3 #reduceFor: 22073345 false) 
	#(264 3 #reduceFor: 22414337 false) 
	#(267 0 #reduceFor: 22542337 false) 
	#(268 1 #reduceFor: 22590465 false) 
	#(365 2 #reduceFor: 29770754 false) 
	#(366 3 #reduceFor: 29800450 false) 
	#(364 2 #reduceFor: 29770753 false) 
	#(384 2 #reduceFor: 30858242 false) 
	#(219 3 #reduceFor: 13244418 false) 
	#(220 3 #reduceFor: 13336585 false) 
	#(220 3 #reduceFor: 13336581 false) 
	#(220 3 #reduceFor: 13336578 false) 
	#(210 7 #reduceFor: 12417027 false) 
	#(336 6 #reduceFor: 28098566 false) 
	#(336 6 #reduceFor: 28098567 false) 
	#(229 2 #reduceFor: 13864961 false) 
	#(229 2 #reduceFor: 13864964 false) 
	#(229 2 #reduceFor: 13864962 false) 
	#(229 2 #reduceFor: 13864963 false) 
	#(210 7 #reduceFor: 12417026 false) 
	#(338 2 #reduceFor: 28366849 false) 
	#(336 6 #reduceFor: 28098564 false) 
	#(340 3 #reduceFor: 28539906 false) 
	#(342 2 #reduceFor: 28591106 false) 
	#(377 2 #reduceFor: 30646273 false) 
	#(392 5 #reduceFor: 31190020 false) 
	#(236 2 #reduceFor: 15046657 false) 
	#(236 2 #reduceFor: 15046659 false) 
	#(242 4 #reduceFor: 20941826 false) 
	#(244 2 #reduceFor: 21047298 false) 
	#(243 2 #reduceFor: 21030914 false) 
	#(368 5 #reduceFor: 29956099 false) 
	#(369 2 #reduceFor: 30313473 false) 
	#(145 3 #reduceFor: 6995969 false) 
	#(147 1 #reduceFor: 7172098 false) 
	#(146 2 #reduceFor: 7030786 false) 
	#(147 1 #reduceFor: 7172097 false) 
	#(149 1 #reduceFor: 7370756 false) 
	#(149 1 #reduceFor: 7370753 false) 
	#(149 1 #reduceFor: 7370754 false) 
	#(149 1 #reduceFor: 7370755 false) 
	#(145 3 #reduceFor: 6995970 false) 
	#(145 3 #reduceFor: 6995971 false) 
	#(140 4 #reduceFor: 6653953 false) 
	#(141 3 #reduceFor: 6860802 false) 
	#(143 2 #reduceFor: 6887426 false) 
	#(153 1 #reduceFor: 7715841 false) 
	#(144 3 #reduceFor: 6939649 false) 
	#(140 4 #reduceFor: 6653954 false) 
	#(204 7 #reduceFor: 12013570 false) 
	#(185 7 #reduceFor: 10791940 false) 
	#(191 2 #reduceFor: 11118593 false) 
	#(189 4 #reduceFor: 11018241 false) 
	#(187 2 #reduceFor: 10972161 false) 
	#(185 7 #reduceFor: 10791942 false) 
	#(185 7 #reduceFor: 10791943 false) 
	#(184 7 #reduceFor: 10636299 false) 
	#(205 7 #reduceFor: 12140545 false) 
	#(182 7 #reduceFor: 10440710 false) 
	#(182 7 #reduceFor: 10440719 false) 
	#(182 7 #reduceFor: 10440716 false) 
	#(202 7 #reduceFor: 11764740 false) 
	#(212 7 #reduceFor: 12765188 false) 
	#(158 7 #reduceFor: 8842244 false) 
	#(164 6 #reduceFor: 9284614 false) 
	#(181 2 #reduceFor: 10393601 false) 
	#(168 7 #reduceFor: 9476102 false) 
	#(168 7 #reduceFor: 9476101 false) 
	#(168 7 #reduceFor: 9476100 false) 
	#(168 7 #reduceFor: 9476099 false) 
	#(168 7 #reduceFor: 9476106 false) 
	#(168 7 #reduceFor: 9476105 false) 
	#(177 2 #reduceFor: 10098690 false) 
	#(177 2 #reduceFor: 10098691 false) 
	#(172 3 #reduceFor: 9891844 false) 
	#(174 2 #reduceFor: 9985026 false) 
	#(168 7 #reduceFor: 9476114 false) 
	#(168 7 #reduceFor: 9476113 false) 
	#(205 8 #reduceFor: 12140549 false) 
	#(227 4 #reduceFor: 13724676 false) 
	#(357 2 #reduceFor: 29414402 false) 
	#(355 2 #reduceFor: 29393922 false) 
	#(199 3 #reduceFor: 11565058 false) 
	#(200 3 #reduceFor: 11636738 false) 
	#(238 4 #reduceFor: 15293507 false) 
	#(251 2 #reduceFor: 21438465 false) 
	#(238 4 #reduceFor: 15293511 false) 
	#(250 2 #reduceFor: 21419010 false) 
	#(252 2 #reduceFor: 21438466 false) 
	#(247 2 #reduceFor: 21289985 false) 
	#(238 4 #reduceFor: 15293509 false) 
	#(306 3 #reduceFor: 25878532 false) 
	#(321 3 #reduceFor: 26864641 false) 
	#(319 2 #reduceFor: 26747905 false) 
	#(320 1 #reduceFor: 26822657 false) 
	#(319 2 #reduceFor: 26747907 false) 
	#(318 3 #reduceFor: 26671106 false) 
	#(323 2 #reduceFor: 27013121 false) 
	#(322 3 #reduceFor: 26932226 false) 
	#(300 3 #reduceFor: 25412615 false) 
	#(294 3 #reduceFor: 24687618 false) 
	#(306 3 #reduceFor: 25878530 false) 
	#(296 2 #reduceFor: 24722434 false) 
	#(304 3 #reduceFor: 25629697 false) 
	#(303 3 #reduceFor: 25563137 false) 
	#(314 3 #reduceFor: 26499073 false) 
	#(307 3 #reduceFor: 25966593 false) 
	#(308 1 #reduceFor: 26065921 false) 
	#(311 0 #reduceFor: 26230785 false) 
	#(308 1 #reduceFor: 26065924 false) 
	#(300 3 #reduceFor: 25412610 false) 
	#(290 2 #reduceFor: 24574977 false) 
	#(287 0 #reduceFor: 24282113 false) 
	#(271 4 #reduceFor: 22811657 false) 
	#(271 4 #reduceFor: 22811653 false) 
	#(272 3 #reduceFor: 22968322 false) 
	#(274 2 #reduceFor: 23005186 false) 
	#(271 4 #reduceFor: 22811650 false) 
	#(270 2 #reduceFor: 22728705 false) 
	#(238 4 #reduceFor: 15293450 false) 
	#(238 4 #reduceFor: 15293451 false) 
	#(255 4 #reduceFor: 21652481 false) 
	#(258 0 #reduceFor: 21820417 false) 
	#(264 4 #reduceFor: 22414338 false) 
	#(265 2 #reduceFor: 22507521 false) 
	#(221 4 #reduceFor: 13421569 false) 
	#(219 4 #reduceFor: 13244420 false) 
	#(220 4 #reduceFor: 13336587 false) 
	#(220 4 #reduceFor: 13336584 false) 
	#(220 4 #reduceFor: 13336580 false) 
	#(210 8 #reduceFor: 12417028 false) 
	#(336 7 #reduceFor: 28098568 false) 
	#(229 3 #reduceFor: 13864967 false) 
	#(229 3 #reduceFor: 13864965 false) 
	#(229 3 #reduceFor: 13864966 false) 
	#(343 4 #reduceFor: 28641283 false) 
	#(343 4 #reduceFor: 28641282 false) 
	#(341 2 #reduceFor: 28591105 false) 
	#(211 8 #reduceFor: 12560385 false) 
	#(142 2 #reduceFor: 6887425 false) 
	#(204 8 #reduceFor: 12013572 false) 
	#(189 5 #reduceFor: 11018242 false) 
	#(185 8 #reduceFor: 10791944 false) 
	#(205 8 #reduceFor: 12140547 false) 
	#(182 8 #reduceFor: 10440712 false) 
	#(182 8 #reduceFor: 10440718 false) 
	#(205 8 #reduceFor: 12140553 false) 
	#(164 7 #reduceFor: 9284617 false) 
	#(168 8 #reduceFor: 9476104 false) 
	#(168 8 #reduceFor: 9476103 false) 
	#(168 8 #reduceFor: 9476110 false) 
	#(168 8 #reduceFor: 9476109 false) 
	#(168 8 #reduceFor: 9476108 false) 
	#(168 8 #reduceFor: 9476107 false) 
	#(172 4 #reduceFor: 9891845 false) 
	#(178 3 #reduceFor: 10186753 false) 
	#(177 3 #reduceFor: 10098692 false) 
	#(177 3 #reduceFor: 10098693 false) 
	#(180 3 #reduceFor: 10334210 false) 
	#(180 3 #reduceFor: 10334209 false) 
	#(173 2 #reduceFor: 9985025 false) 
	#(168 8 #reduceFor: 9476118 false) 
	#(168 8 #reduceFor: 9476117 false) 
	#(168 8 #reduceFor: 9476116 false) 
	#(168 8 #reduceFor: 9476115 false) 
	#(168 8 #reduceFor: 9476122 false) 
	#(168 8 #reduceFor: 9476121 false) 
	#(205 9 #reduceFor: 12140551 false) 
	#(356 2 #reduceFor: 29414401 false) 
	#(211 9 #reduceFor: 12560387 false) 
	#(247 3 #reduceFor: 21289987 false) 
	#(247 3 #reduceFor: 21289986 false) 
	#(249 2 #reduceFor: 21320706 false) 
	#(316 2 #reduceFor: 26629121 false) 
	#(319 3 #reduceFor: 26747908 false) 
	#(320 2 #reduceFor: 26822658 false) 
	#(323 3 #reduceFor: 27013122 false) 
	#(317 2 #reduceFor: 26629122 false) 
	#(300 4 #reduceFor: 25412612 false) 
	#(300 4 #reduceFor: 25412614 false) 
	#(280 5 #reduceFor: 23616513 false) 
	#(295 2 #reduceFor: 24722433 false) 
	#(315 2 #reduceFor: 26598401 false) 
	#(314 4 #reduceFor: 26499074 false) 
	#(313 2 #reduceFor: 26444801 false) 
	#(312 2 #reduceFor: 26270723 false) 
	#(307 4 #reduceFor: 25966594 false) 
	#(308 2 #reduceFor: 26065922 false) 
	#(309 2 #reduceFor: 26185729 false) 
	#(290 3 #reduceFor: 24574978 false) 
	#(292 2 #reduceFor: 24610818 false) 
	#(282 5 #reduceFor: 23782402 false) 
	#(282 5 #reduceFor: 23782403 false) 
	#(282 5 #reduceFor: 23782404 false) 
	#(284 5 #reduceFor: 24145921 false) 
	#(271 5 #reduceFor: 22811659 false) 
	#(271 5 #reduceFor: 22811656 false) 
	#(271 5 #reduceFor: 22811652 false) 
	#(275 4 #reduceFor: 23052290 false) 
	#(273 2 #reduceFor: 23005185 false) 
	#(238 5 #reduceFor: 15293444 false) 
	#(270 3 #reduceFor: 22728706 false) 
	#(261 5 #reduceFor: 22073346 false) 
	#(260 2 #reduceFor: 22035457 false) 
	#(259 2 #reduceFor: 21935105 false) 
	#(255 5 #reduceFor: 21652482 false) 
	#(256 2 #reduceFor: 21781506 false) 
	#(255 5 #reduceFor: 21652483 false) 
	#(268 3 #reduceFor: 22590467 false) 
	#(265 3 #reduceFor: 22507522 false) 
	#(267 2 #reduceFor: 22542338 false) 
	#(268 3 #reduceFor: 22590466 false) 
	#(220 5 #reduceFor: 13336586 false) 
	#(220 5 #reduceFor: 13336582 false) 
	#(211 9 #reduceFor: 12560389 false) 
	#(344 5 #reduceFor: 28716033 false) 
	#(235 4 #reduceFor: 14932993 false) 
	#(211 9 #reduceFor: 12560386 false) 
	#(148 1 #reduceFor: 7311361 false) 
	#(205 9 #reduceFor: 12140546 false) 
	#(182 9 #reduceFor: 10440720 false) 
	#(205 9 #reduceFor: 12140557 false) 
	#(211 9 #reduceFor: 12560393 false) 
	#(205 9 #reduceFor: 12140555 false) 
	#(168 9 #reduceFor: 9476112 false) 
	#(168 9 #reduceFor: 9476111 false) 
	#(172 5 #reduceFor: 9891846 false) 
	#(178 4 #reduceFor: 10186754 false) 
	#(177 4 #reduceFor: 10098694 false) 
	#(168 9 #reduceFor: 9476120 false) 
	#(168 9 #reduceFor: 9476119 false) 
	#(168 9 #reduceFor: 9476126 false) 
	#(168 9 #reduceFor: 9476125 false) 
	#(168 9 #reduceFor: 9476124 false) 
	#(168 9 #reduceFor: 9476123 false) 
	#(205 10 #reduceFor: 12140550 false) 
	#(211 10 #reduceFor: 12560388 false) 
	#(248 2 #reduceFor: 21320705 false) 
	#(300 5 #reduceFor: 25412616 false) 
	#(315 3 #reduceFor: 26598402 false) 
	#(312 3 #reduceFor: 26270724 false) 
	#(312 3 #reduceFor: 26270725 false) 
	#(308 3 #reduceFor: 26065923 false) 
	#(311 2 #reduceFor: 26230786 false) 
	#(283 6 #reduceFor: 23938049 false) 
	#(291 2 #reduceFor: 24610817 false) 
	#(284 6 #reduceFor: 24145922 false) 
	#(287 2 #reduceFor: 24282114 false) 
	#(271 6 #reduceFor: 22811658 false) 
	#(279 6 #reduceFor: 23486465 false) 
	#(271 6 #reduceFor: 22811654 false) 
	#(238 6 #reduceFor: 15293445 false) 
	#(261 6 #reduceFor: 22073347 false) 
	#(256 3 #reduceFor: 21781507 false) 
	#(258 2 #reduceFor: 21820418 false) 
	#(266 2 #reduceFor: 22542337 false) 
	#(220 6 #reduceFor: 13336588 false) 
	#(211 10 #reduceFor: 12560391 false) 
	#(211 10 #reduceFor: 12560390 false) 
	#(148 2 #reduceFor: 7311362 false) 
	#(147 4 #reduceFor: 7172100 false) 
	#(150 1 #reduceFor: 7490561 false) 
	#(147 4 #reduceFor: 7172099 false) 
	#(205 10 #reduceFor: 12140548 false) 
	#(205 10 #reduceFor: 12140559 false) 
	#(211 10 #reduceFor: 12560395 false) 
	#(211 10 #reduceFor: 12560397 false) 
	#(211 10 #reduceFor: 12560394 false) 
	#(205 10 #reduceFor: 12140554 false) 
	#(168 10 #reduceFor: 9476128 false) 
	#(168 10 #reduceFor: 9476127 false) 
	#(205 11 #reduceFor: 12140552 false) 
	#(312 4 #reduceFor: 26270726 false) 
	#(312 4 #reduceFor: 26270721 false) 
	#(312 4 #reduceFor: 26270722 false) 
	#(310 2 #reduceFor: 26230785 false) 
	#(289 2 #reduceFor: 24506369 false) 
	#(271 7 #reduceFor: 22811660 false) 
	#(259 4 #reduceFor: 21935107 false) 
	#(259 4 #reduceFor: 21935106 false) 
	#(257 2 #reduceFor: 21820417 false) 
	#(256 4 #reduceFor: 21781505 false) 
	#(211 11 #reduceFor: 12560392 false) 
	#(235 6 #reduceFor: 14932995 false) 
	#(235 6 #reduceFor: 14932994 false) 
	#(151 1 #reduceFor: 7563268 false) 
	#(147 5 #reduceFor: 7172101 false) 
	#(151 1 #reduceFor: 7563265 false) 
	#(151 1 #reduceFor: 7563266 false) 
	#(151 1 #reduceFor: 7563267 false) 
	#(205 11 #reduceFor: 12140558 false) 
	#(211 11 #reduceFor: 12560396 false) 
	#(211 11 #reduceFor: 12560399 false) 
	#(211 11 #reduceFor: 12560398 false) 
	#(205 11 #reduceFor: 12140556 false) 
	#(283 8 #reduceFor: 23938050 false) 
	#(283 8 #reduceFor: 23938051 false) 
	#(283 8 #reduceFor: 23938052 false) 
	#(289 3 #reduceFor: 24506370 false) 
	#(285 4 #reduceFor: 24266753 false) 
	#(288 1 #reduceFor: 24401922 false) 
	#(285 4 #reduceFor: 24266755 false) 
	#(286 3 #reduceFor: 24282113 false) 
	#(147 6 #reduceFor: 7172102 false) 
	#(205 12 #reduceFor: 12140560 false) 
	#(211 12 #reduceFor: 12560400 false) 
	#(293 2 #reduceFor: 24631297 false) 
	#(288 2 #reduceFor: 24401921 false) 
	#(285 5 #reduceFor: 24266754 false) 
	#(288 2 #reduceFor: 24401923 false) 
	#(285 5 #reduceFor: 24266756 false) 
	#(235 8 #reduceFor: 14932996 false)
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
	^ #('"!"' '"!="' '"#"' '"$"' '"$crate"' '"%"' '"%="' '"&"' '"&&"' '"&="' '"''_"' '"''static"' '"("' '")"' '"*"' '"*="' '"+"' '"+="' '","' '"-"' '"-="' '"->"' '"."' '".."' '"..."' '"..="' '"/"' '"/="' '":"' '"::"' '";"' '"<<"' '"<<="' '"<="' '"="' '"=="' '"=>"' '">="' '">>"' '">>="' '">>>"' '"?"' '"@"' '"Self"' '"["' '"]"' '"^"' '"^="' '"_"' '"abstract"' '"as"' '"async"' '"auto"' '"await"' '"become"' '"box"' '"break"' '"const"' '"continue"' '"crate"' '"do"' '"dyn"' '"else"' '"enum"' '"extern"' '"false"' '"final"' '"fn"' '"for"' '"if"' '"impl"' '"in"' '"let"' '"loop"' '"macro"' '"macro_rules"' '"match"' '"mod"' '"move"' '"mut"' '"override"' '"priv"' '"pub"' '"ref"' '"return"' '"self"' '"static"' '"struct"' '"super"' '"trait"' '"true"' '"try"' '"type"' '"typeof"' '"union"' '"unsafe"' '"unsized"' '"use"' '"virtual"' '"where"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"}"' '<bar>' '<lparen>' '<lbracket>' '<NON_KEYWORD_IDENTIFIER>' '<RAW_IDENTIFIER>' '<comment>' '<whitespace>' '<CHAR_LITERAL>' '<STRING_LITERAL>' '<rawStringStart>' '<simpleRawString>' '<BYTE_LITERAL>' '<BYTE_STRING_LITERAL>' '<INTEGER_LITERAL>' '<FLOAT_LITERAL>' '<LIFETIME_OR_LABEL>' '<lt>' '<gt>' '<amp>' 'B e g i n' 'crate' 'innerAttribute ''attribute''*' 'item*' 'macroInvocation' 'macroInvocationWithBlock' 'tokenTree*' 'macroInvocationWithoutBlock' 'delimTokenTree' 'tokenTree' 'tokenTreeToken' 'macroInvocationSemi' 'macroRulesDefinition' 'macroRulesDef' 'macroRules' '(";" ''semicolon'' macroRule)' '(";" ''semicolon'' macroRule)*' 'macroRule' 'macroMatcher' 'macroMatch*' 'macroMatch' 'macroMatch+' 'macroMatchToken' 'macroFragSpec' 'macroRepSep' 'macroRepOp' 'macroTranscriber' 'item' 'outerAttribute ''attribute''*' 'visItem' 'macroItem' 'module' 'innerAttribute*' 'externCrate' 'crateRef' 'asClause' 'useDeclaration' 'useTree' '("," ''comma'' useTree)' '("," ''comma'' useTree)*' '"," ''comma''?' 'function' 'functionQualifiers' 'abi?' 'abi' 'functionParameters' '("," ''comma'' functionParam)' '("," ''comma'' functionParam)*' 'selfParam' 'outerAttribute*' 'shorthandSelf' 'typedSelf' 'functionParam' 'functionParamPattern' 'functionReturnType' 'typeAlias' 'struct' 'structStruct' 'tupleStruct' 'structFields' '("," ''comma'' structField)' '("," ''comma'' structField)*' 'structField' 'tupleFields' '("," ''comma'' tupleField)' '("," ''comma'' tupleField)*' 'tupleField' 'enumeration' 'enumItems' '("," ''comma'' enumItem)' '("," ''comma'' enumItem)*' 'enumItem' 'enumItemTuple' 'enumItemStruct' 'enumItemDiscriminant' 'union' 'constantItem' 'staticItem' 'trait' 'typeParamBounds?' 'whereClause?' 'associatedItem*' 'implementation' 'inherentImpl' 'traitImpl' 'externBlock' 'externalItem*' 'externalItem' 'genericParams' '(genericParam "," ''comma'')' '(genericParam "," ''comma'')*' 'genericParam' 'lifetimeParam' 'typeParam' 'constParam' 'whereClause' '(whereClauseItem "," ''comma'')' '(whereClauseItem "," ''comma'')*' 'whereClauseItem' 'lifetimeWhereClauseItem' 'typeBoundWhereClauseItem' 'forLifetimes' 'associatedItem' 'innerAttribute' 'outerAttribute' 'attr' 'attrInput' 'statement' 'letStatement' 'expressionStatement' 'expression' 'expressionWithoutBlock' 'expressionWithBlock' 'literalExpression' 'pathExpression' 'blockExpression' 'statements' 'statement+' 'asyncBlockExpression' 'unsafeBlockExpression' 'arrayElements' '("," ''comma'' expression)' '("," ''comma'' expression)*' 'tupleElements' '(expression "," ''comma'')' '(expression "," ''comma'')+' 'tupleIndex' 'structExpression' 'structExprStruct' 'structExprFields' '("," ''comma'' structExprField)' '("," ''comma'' structExprField)*' 'structExprField' 'structBase' 'structExprTuple' 'structExprUnit' 'enumerationVariantExpression' 'enumExprStruct' 'enumExprFields' '("," ''comma'' enumExprField)' '("," ''comma'' enumExprField)*' 'enumExprField' 'enumExprFieldless' 'callParams' 'closureExpression' 'closureParameters' '("," ''comma'' closureParam)' '("," ''comma'' closureParam)*' 'closureParam' 'loopExpression' 'infiniteLoopExpression' 'predicateLoopExpression' 'predicatePatternLoopExpression' 'iteratorLoopExpression' 'loopLabel' 'ifExpression' 'ifLetExpression' 'matchExpression' 'matchArms' '(matchArm "=>" matchArmExpression)' '(matchArm "=>" matchArmExpression)*' 'matchArmExpression' 'matchArm' 'matchArmPatterns' '("|" pattern)' '("|" pattern)*' 'matchArmGuard' 'pattern' '("|" patternNoTopAlt)' '("|" patternNoTopAlt)*' 'patternNoTopAlt' 'patternWithoutRange' 'literalPattern' 'identifierPattern' 'wildcardPattern' 'restPattern' 'rangePattern' 'obsoleteRangePattern' 'rangePatternBound' 'referencePattern' 'structPattern' 'structPatternElements' 'structPatternFields' '("," ''comma'' structPatternField)' '("," ''comma'' structPatternField)*' 'structPatternField' 'structPatternEtCetera' 'tupleStructPattern' 'tupleStructItems' '("," ''comma'' pattern)' '("," ''comma'' pattern)*' 'tuplePattern' 'tuplePatternItems' '("," ''comma'' pattern)+' 'groupedPattern' 'slicePattern' 'slicePatternItems' 'pathPattern' 'type' 'typeNoBounds' 'parenthesizedType' 'neverType' 'tupleType' '(type "," ''comma'')' '(type "," ''comma'')+' 'arrayType' 'sliceType' 'referenceType' 'rawPointerType' 'bareFunctionType' 'functionTypeQualifiers' 'bareFunctionReturnType' 'functionParametersMaybeNamedVariadic' 'maybeNamedFunctionParameters' '("," ''comma'' maybeNamedParam)' '("," ''comma'' maybeNamedParam)*' 'maybeNamedParam' 'maybeNamedFunctionParametersVariadic' 'traitObjectType' 'traitObjectTypeOneBound' 'implTraitType' 'implTraitTypeOneBound' 'inferredType' 'typeParamBounds' '("+" typeParamBound)' '("+" typeParamBound)*' 'typeParamBound' 'traitBound' 'lifetimeBounds' '(lifetime "+")' '(lifetime "+")*' 'lifetime' 'simplePath' '("::" simplePathSegment)' '("::" simplePathSegment)*' 'simplePathSegment' 'pathInExpression' '("::" pathExprSegment)' '("::" pathExprSegment)*' 'pathExprSegment' 'pathIdentSegment' 'genericArgs' '("," ''comma'' genericArg)' '("," ''comma'' genericArg)*' 'genericArg' 'genericArgsConst' 'genericArgsLifetimes' '("," ''comma'' lifetime)' '("," ''comma'' lifetime)*' 'genericArgsTypes' '("," ''comma'' type)' '("," ''comma'' type)*' 'genericArgsBindings' '("," ''comma'' genericArgsBinding)' '("," ''comma'' genericArgsBinding)*' 'genericArgsBinding' 'qualifiedPathInExpression' '("::" pathExprSegment)+' 'qualifiedPathType' 'qualifiedPathInType' '("::" typePathSegment)' '("::" typePathSegment)+' 'typePath' '("::" typePathSegment)*' 'typePathSegment' 'typePathFn' 'typePathInputs' 'visibility' 'identifier' 'keyword' 'macroIdentifierLikeToken' 'macroLiteralToken' 'macroPunctuationToken' '<rawString>' 'E O F' 'error')
]

{ #category : #generated }
RustParser class >> transitionTable [
^#(
#[1 0 6 0 3 0 6 0 5 0 6 0 30 0 6 0 52 0 6 0 53 0 6 0 58 0 6 0 60 0 6 0 64 0 6 0 65 0 6 0 68 0 6 0 71 0 6 0 76 0 6 0 78 0 6 0 83 0 6 0 86 0 6 0 87 0 6 0 88 0 6 0 89 0 6 0 90 0 6 0 93 0 6 0 95 0 6 0 96 0 6 0 98 0 6 0 111 0 6 0 112 0 9 0 128 0 13 0 129 0 6 1 145] 
#[0 0 0 1 145] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 64 0 10 0 65 0 10 0 68 0 10 0 71 0 10 0 76 0 10 0 78 0 10 0 83 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 93 0 10 0 95 0 10 0 96 0 10 0 98 0 10 0 111 0 10 0 112 0 21 0 130 0 25 0 230 0 10 1 145] 
#[0 0 29 0 1] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 64 0 14 0 65 0 14 0 68 0 14 0 71 0 14 0 76 0 14 0 78 0 14 0 83 0 14 0 86 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 93 0 14 0 95 0 14 0 96 0 14 0 98 0 14 0 111 0 14 0 112 0 33 0 154 0 37 0 155 0 18 1 145] 
#[0 0 22 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 64 0 65 0 68 0 71 0 76 0 78 0 83 0 86 0 87 0 88 0 89 0 90 0 93 0 95 0 96 0 98 0 111 0 112 1 145] 
#[0 0 41 0 45] 
#[0 0 26 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 64 0 65 0 68 0 71 0 76 0 78 0 83 0 86 0 87 0 88 0 89 0 90 0 93 0 95 0 96 0 98 0 107 0 111 0 112 1 145] 
#[1 0 45 0 3 0 49 0 5 0 53 0 30 0 57 0 52 0 61 0 53 0 65 0 58 0 69 0 60 0 73 0 64 0 77 0 65 0 30 0 68 0 81 0 71 0 85 0 76 0 89 0 78 0 93 0 83 0 97 0 86 0 101 0 87 0 105 0 88 0 109 0 89 0 113 0 90 0 117 0 93 0 121 0 95 0 125 0 96 0 129 0 98 0 133 0 111 0 137 0 112 0 141 0 132 0 145 0 134 0 149 0 138 0 153 0 139 0 157 0 156 0 161 0 157 0 165 0 158 0 169 0 160 0 173 0 163 0 177 0 168 0 181 0 169 0 185 0 182 0 189 0 183 0 193 0 184 0 197 0 185 0 201 0 194 0 205 0 202 0 209 0 203 0 213 0 204 0 217 0 205 0 221 0 209 0 225 0 210 0 229 0 211 0 233 0 212 0 237 0 231 0 241 1 103 0 245 1 106 0 249 1 138 0 253 1 139] 
#[1 0 49 0 5 0 53 0 30 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 1 13 0 232 1 17 1 103 0 245 1 106 0 253 1 139] 
#[0 1 21 0 45] 
#[0 0 34 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 49 0 5 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 1 25 1 106 0 253 1 139] 
#[1 1 29 0 65 0 38 0 68 1 33 0 96] 
#[1 0 42 0 1 0 42 0 30 1 37 0 90] 
#[1 1 41 0 49 1 45 0 52 1 1 0 53 1 49 0 65 0 46 0 68 1 9 0 76 1 53 0 96 0 133 0 111 0 137 0 112 1 57 1 139] 
#[1 0 11 0 1 0 54 0 5 0 54 0 11 0 54 0 12 0 11 0 13 0 50 0 14 0 54 0 15 0 50 0 17 0 50 0 19 0 11 0 30 0 54 0 42 0 54 0 44 0 54 0 45 0 54 0 49 0 54 0 52 0 54 0 53 0 54 0 58 0 54 0 60 0 54 0 62 0 54 0 64 0 54 0 65 0 54 0 68 0 54 0 69 0 54 0 71 0 54 0 76 0 54 0 78 0 54 0 86 0 54 0 87 0 54 0 88 0 54 0 89 0 54 0 90 0 54 0 93 0 54 0 95 0 54 0 96 0 54 0 98 0 54 0 111 0 54 0 112 0 54 0 123 0 11 0 124 0 54 0 126] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 1 61 1 139] 
#[1 1 65 0 60 0 58 0 68 1 69 0 103 1 73 0 116 1 77 0 118 1 81 0 170 1 85 0 171 1 89 1 144] 
#[1 1 93 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 1 157 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 177 0 215 1 181 0 228 1 185 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 2 25 1 133 2 29 1 135 0 253 1 139] 
#[1 0 15 0 1 0 66 0 30] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 2 37 1 139] 
#[1 0 70 0 1 0 70 0 5 0 70 0 11 0 70 0 12 0 19 0 13 0 70 0 15 0 70 0 30 0 70 0 42 0 70 0 44 0 70 0 45 0 70 0 49 0 70 0 52 0 70 0 53 0 70 0 58 0 70 0 60 0 70 0 62 0 70 0 64 0 70 0 65 0 70 0 68 0 70 0 69 0 70 0 71 0 70 0 76 0 70 0 78 0 70 0 86 0 70 0 87 0 70 0 88 0 70 0 89 0 70 0 90 0 70 0 93 0 70 0 95 0 70 0 96 0 70 0 98 0 70 0 111 0 70 0 112 0 70 0 123 0 70 0 124 0 70 0 126] 
#[0 0 74 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 1 1 0 53 1 9 0 76 2 45 0 80 0 133 0 111 0 137 0 112 2 49 1 139] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 2 53 1 139] 
#[0 0 78 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 2 57 1 139] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 2 61 1 139] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 2 65 1 139] 
#[1 2 69 0 53 2 73 0 65 0 82 0 68 2 77 0 71 2 81 0 78 2 85 0 90] 
#[1 0 49 0 5 2 89 0 15 2 93 0 30 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 2 97 0 103 0 133 0 111 0 137 0 112 2 101 0 164 2 105 1 103 0 245 1 106 0 253 1 139] 
#[0 0 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 0 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 0 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 2 109 0 31] 
#[0 0 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 2 113 0 68] 
#[0 0 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 0 182 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 64 0 65 0 68 0 71 0 76 0 78 0 83 0 86 0 87 0 88 0 89 0 90 0 93 0 95 0 96 0 98 0 111 0 112] 
#[0 2 117 0 1] 
#[1 0 186 0 1 0 186 0 13 0 186 0 14 0 186 0 19 0 186 0 30 0 186 0 31 0 186 0 35 0 186 0 45 0 186 0 46 0 186 0 51 0 186 0 103 0 186 0 107 2 121 1 105] 
#[1 0 57 0 52 2 125 0 53 0 65 0 58 0 73 0 64 0 77 0 65 0 30 0 68 0 81 0 71 0 89 0 78 0 101 0 87 0 105 0 88 0 113 0 90 0 117 0 93 0 121 0 95 0 125 0 96 0 129 0 98 2 129 0 158 2 133 0 160 2 137 0 163 2 141 0 168 0 181 0 169 2 145 0 182 2 149 0 183 0 193 0 184 0 197 0 185 2 153 0 194 2 157 0 202 2 161 0 203 2 165 0 204 2 169 0 205 2 173 0 209 0 225 0 210 0 229 0 211 2 177 0 212] 
#[0 0 190 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 0 50 0 1 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 45 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 0 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 181 0 46] 
#[1 2 185 0 13 2 189 0 35 2 193 0 45 0 194 0 46 2 197 0 103 2 201 0 135 2 205 0 233] 
#[1 0 49 0 5 0 53 0 30 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 2 209 0 232 1 17 1 103 0 245 1 106 0 253 1 139] 
#[1 0 186 0 1 0 186 0 13 0 186 0 14 0 186 0 19 0 186 0 30 0 186 0 31 0 186 0 35 0 186 0 45 0 186 0 46 0 186 0 51 0 186 0 103 0 186 0 107 2 213 1 105] 
#[1 0 58 0 68 1 73 0 116 1 77 0 118 2 217 0 170 2 221 0 171 1 89 1 144] 
#[1 2 225 0 65 0 198 0 68] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 2 229 1 139] 
#[0 2 233 0 29] 
#[1 2 237 0 65 0 202 0 68 2 241 0 96] 
#[1 0 58 0 68 1 73 0 116 1 77 0 118 2 245 0 170 2 221 0 171 1 89 1 144] 
#[1 2 249 0 65 0 206 0 68] 
#[0 2 253 0 29] 
#[1 3 1 0 100 3 5 0 103 3 9 0 124 3 13 0 215 3 17 0 222] 
#[1 1 1 0 53 1 9 0 76 3 21 0 86 0 133 0 111 0 137 0 112 3 25 0 161 3 29 1 139] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 87 0 210 0 89 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 3 33 0 159] 
#[0 0 214 0 68 0 103] 
#[0 0 218 0 68 0 103] 
#[0 0 222 0 68] 
#[1 0 226 0 68 3 37 0 103] 
#[0 0 230 0 68 0 103] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 234 0 100 0 234 0 103 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 3 49 1 133 2 29 1 135 0 253 1 139] 
#[0 0 238 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 80 0 86 0 89 0 96 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 124 0 125 0 126] 
#[0 0 242 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 80 0 86 0 89 0 96 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 3 57 0 14 1 109 0 15 1 113 0 30 3 61 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 3 69 0 228 3 73 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 3 77 1 74 3 81 1 75 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 85 1 133 2 29 1 135 0 253 1 139] 
#[1 3 89 0 58 3 93 0 80] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 97 1 106 2 13 1 111 3 101 1 135 0 253 1 139] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 105 0 228 3 45 1 106 2 13 1 111 3 109 1 133 2 29 1 135 0 253 1 139] 
#[0 0 246 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 3 113 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 0 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 1 153 0 123 3 125 0 228 3 129 1 94 1 253 1 97 3 133 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[1 0 254 0 68 1 73 0 116 1 77 0 118 3 141 0 171 1 89 1 144] 
#[1 3 9 0 124 3 145 0 215] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 1 153 0 123 3 125 0 228 3 149 1 94 1 253 1 97 3 153 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[1 3 157 0 65 1 2 0 68] 
#[0 1 6 0 1 0 2 0 5 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 80 0 86 0 89 0 96 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 124 0 125 0 126] 
#[1 3 53 0 1 1 10 0 3 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 0 23 0 53 1 10 0 58 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 0 27 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 31 0 111 0 35 0 112 0 39 0 123 3 65 0 124 3 161 0 125 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 3 165 0 217 1 181 0 228 3 169 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 3 181 0 80 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 3 185 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 3 193 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 1 14 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 18 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 197 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 3 201 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 205 1 133 2 29 1 135 0 253 1 139] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 137 0 65 0 62 0 68 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 209 1 81 3 45 1 106 2 13 1 111 3 213 1 133 2 29 1 135 0 253 1 139] 
#[1 3 1 0 100 3 217 0 103 3 221 0 222] 
#[0 1 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 30 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 34 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 42 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 46 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 50 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 54 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 58 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 3 225 0 68] 
#[0 1 62 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 66 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 78 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 82 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 1 86 0 2 1 86 0 6 1 86 0 7 1 86 0 9 1 86 0 10 1 86 0 14 1 86 0 15 1 86 0 16 1 86 0 17 1 86 0 18 1 86 0 19 1 86 0 20 1 86 0 21 1 86 0 23 1 86 0 24 1 86 0 26 1 86 0 27 1 86 0 28 1 86 0 29 1 86 0 30 1 86 0 31 1 86 0 32 1 86 0 33 1 86 0 34 1 86 0 35 1 86 0 36 1 86 0 37 1 86 0 38 1 86 0 39 1 86 0 40 1 86 0 41 1 86 0 42 1 86 0 46 1 86 0 47 1 86 0 48 1 86 0 51 1 86 0 69 1 86 0 100 1 86 0 103 1 86 0 104 1 86 0 105 1 86 0 106 1 86 0 107 1 86 0 108 1 86 0 109 1 86 0 110 1 86 0 124 1 86 0 125 1 86 0 126 3 229 1 96] 
#[0 0 43 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 98 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 186 0 1 1 102 0 2 1 102 0 6 1 102 0 7 1 102 0 9 1 102 0 10 1 102 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 23 1 102 0 24 1 102 0 25 1 102 0 26 1 102 0 27 1 102 0 28 1 102 0 29 0 47 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 42 1 102 0 46 1 102 0 47 1 102 0 48 1 102 0 51 1 102 0 69 1 102 0 70 1 102 0 72 1 102 0 100 1 102 0 103 1 102 0 104 1 102 0 105 1 102 0 106 1 102 0 107 1 102 0 108 1 102 0 109 1 102 0 110 1 102 0 124 1 102 0 125 1 102 0 126 2 121 1 105] 
#[1 1 106 0 2 1 106 0 6 1 106 0 7 1 106 0 9 1 106 0 10 3 233 0 13 1 106 0 14 1 106 0 15 1 106 0 16 1 106 0 17 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 21 1 106 0 23 1 106 0 24 1 106 0 26 1 106 0 27 1 106 0 28 1 106 0 29 0 51 0 30 1 106 0 31 1 106 0 32 1 106 0 33 1 106 0 34 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 39 1 106 0 40 1 106 0 41 1 106 0 42 1 106 0 46 1 106 0 47 1 106 0 48 1 106 0 51 1 106 0 69 1 106 0 100 1 106 0 103 1 106 0 104 1 106 0 105 1 106 0 106 1 106 0 107 1 106 0 108 1 106 0 109 1 106 0 110 3 241 0 124 1 106 0 125 1 106 0 126 3 245 1 112 3 249 1 136] 
#[1 3 253 0 30 4 1 1 131 4 5 1 132] 
#[0 1 110 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 1 114 0 17 4 9 0 69 0 55 0 100 0 55 0 103] 
#[1 1 122 0 2 1 122 0 6 1 122 0 7 1 122 0 9 1 122 0 10 1 122 0 14 1 122 0 15 1 122 0 16 1 122 0 17 1 122 0 18 1 122 0 19 1 122 0 20 1 122 0 21 1 122 0 23 1 122 0 24 1 122 0 26 1 122 0 27 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 34 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 46 1 122 0 47 1 122 0 48 1 122 0 51 1 122 0 69 1 122 0 100 1 122 0 103 1 122 0 104 1 122 0 105 1 122 0 106 1 122 0 107 1 122 0 108 1 122 0 109 1 122 0 110 1 122 0 124 1 122 0 125 1 122 0 126 4 13 1 134] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 4 17 1 139] 
#[1 4 21 0 31 4 25 0 103] 
#[1 4 29 0 60 4 33 0 72 4 37 0 86 4 41 0 89] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 4 45 1 139] 
#[0 4 49 0 29] 
#[1 4 53 0 13 4 57 0 31 3 1 0 100 4 61 0 103 3 9 0 124 4 65 0 215 4 69 0 222] 
#[1 4 73 0 29 3 1 0 100 1 126 0 103 3 9 0 124 4 77 0 207 4 81 0 215 4 85 0 222] 
#[1 4 89 0 29 4 93 0 31 4 97 0 35 3 1 0 100 3 9 0 124 4 101 0 215 4 105 0 222] 
#[1 3 1 0 100 4 109 0 103 3 9 0 124 4 113 0 215 4 117 0 222] 
#[0 4 121 0 90] 
#[1 0 58 0 68 4 125 0 103 1 73 0 116 1 77 0 118 4 129 0 170 4 133 0 171 1 89 1 144] 
#[1 4 137 0 1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 9 0 124 4 141 0 215 3 45 1 106 2 13 1 111 4 145 1 133 2 29 1 135 0 253 1 139] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 4 149 1 139] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 4 153 1 139] 
#[0 1 130 0 19 0 31 0 107] 
#[1 0 49 0 5 4 157 0 15 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 4 161 0 103 0 133 0 111 0 137 0 112 1 25 1 106 0 253 1 139] 
#[1 0 49 0 5 2 89 0 15 2 93 0 30 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 2 97 0 103 4 165 0 107 0 133 0 111 0 137 0 112 4 169 0 164 2 105 1 103 0 245 1 106 0 253 1 139] 
#[0 4 173 0 31] 
#[1 1 134 0 19 4 177 0 30 1 134 0 31 4 181 0 51 1 134 0 107] 
#[0 1 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 4 185 1 139] 
#[1 4 189 0 13 4 193 0 45 4 197 0 103] 
#[1 1 142 0 1 1 142 0 13 1 142 0 14 1 142 0 19 0 59 0 30 1 142 0 31 1 142 0 35 1 142 0 45 1 142 0 46 1 142 0 51 1 142 0 103 1 142 0 107 4 205 1 104] 
#[0 1 37 0 90] 
#[0 1 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 198 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 46 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 1 144 1 145] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 61 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 111 1 202 0 112 1 202 0 115 1 202 0 116 1 202 0 118 1 202 0 119 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 124 1 202 0 125 1 202 0 126 4 209 0 133 1 202 1 144] 
#[1 4 213 0 66 4 217 0 91 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 4 249 0 240 4 253 1 144] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 61 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 111 1 202 0 112 1 202 0 115 1 202 0 116 1 202 0 118 1 202 0 119 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 124 1 202 0 125 1 202 0 126 5 1 0 133 1 202 1 144] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 61 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 111 1 202 0 112 1 202 0 115 1 202 0 116 1 202 0 118 1 202 0 119 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 124 1 202 0 125 1 202 0 126 5 5 0 133 1 202 1 144] 
#[0 1 206 0 46] 
#[0 1 210 0 46] 
#[0 5 9 0 46] 
#[1 1 214 0 1 1 214 0 13 1 214 0 14 1 214 0 19 0 63 0 30 1 214 0 31 1 214 0 35 1 214 0 45 1 214 0 46 1 214 0 51 1 214 0 103 1 214 0 107 4 205 1 104] 
#[0 1 218 0 68] 
#[0 0 226 0 68] 
#[1 0 58 0 68 1 73 0 116 1 77 0 118 5 13 0 170 2 221 0 171 1 89 1 144] 
#[1 5 17 0 29 3 1 0 100 1 126 0 103 3 9 0 124 5 21 0 207 5 25 0 215 4 85 0 222] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 5 29 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 58 0 68 1 73 0 116 1 77 0 118 5 33 0 170 2 221 0 171 1 89 1 144] 
#[1 5 37 0 65 1 222 0 68] 
#[0 1 226 0 68] 
#[1 0 58 0 68 1 73 0 116 1 77 0 118 5 41 0 170 2 221 0 171 1 89 1 144] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 5 45 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 1 230 0 1 1 230 0 5 1 230 0 11 1 230 0 12 1 230 0 13 1 230 0 15 1 230 0 30 1 230 0 31 1 230 0 35 1 230 0 42 1 230 0 44 1 230 0 45 1 230 0 49 1 230 0 53 1 230 0 60 1 230 0 62 1 230 0 65 1 230 0 68 1 230 0 69 1 230 0 71 1 230 0 76 1 230 0 86 1 230 0 89 1 230 0 96 1 230 0 103 1 230 0 111 1 230 0 112 1 230 0 123 1 230 0 124 1 230 0 126 5 49 0 224] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 5 53 0 107 1 234 0 111 1 234 0 112 5 57 0 176 5 61 0 195 5 65 0 198] 
#[1 1 10 0 3 1 10 0 53 1 10 0 58 1 10 0 76 1 10 0 111 1 10 0 112 1 10 0 123 3 161 0 125 3 165 0 217] 
#[1 3 1 0 100 5 69 0 103 5 73 0 222] 
#[0 5 77 0 103] 
#[0 1 238 0 31 0 51] 
#[1 5 81 0 31 5 85 0 51 5 89 0 162] 
#[0 1 242 0 31 0 51] 
#[1 0 67 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 65 1 246 0 68 1 246 0 76 1 246 0 83 1 246 0 86 1 246 0 87 1 246 0 89 1 246 0 96 1 246 0 107 1 246 0 111 1 246 0 112 5 93 0 213 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 87 0 210 0 89 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 5 101 0 159] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 3 101 1 135 0 253 1 139] 
#[0 1 102 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 105 0 69] 
#[0 0 234 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 5 109 0 228 3 45 1 106 2 13 1 111 5 113 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 3 169 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 137 0 65 0 62 0 68 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 209 1 81 3 45 1 106 2 13 1 111 5 117 1 133 2 29 1 135 0 253 1 139] 
#[1 5 121 0 14 5 125 0 19] 
#[0 1 254 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 111 0 112 0 123 0 124 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 5 129 0 14 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 5 133 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 5 137 1 74 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 71 0 14 1 114 0 17 0 55 0 19] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 5 145 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 5 149 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 186 0 1 1 102 0 2 1 102 0 6 1 102 0 7 1 102 0 9 1 102 0 10 1 102 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 23 1 102 0 24 1 102 0 25 1 102 0 26 1 102 0 27 1 102 0 28 1 102 0 29 0 47 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 40 1 102 0 41 1 102 0 42 1 102 0 46 1 102 0 47 1 102 0 48 1 102 0 51 1 102 0 69 1 102 0 70 1 102 0 72 1 102 0 100 1 102 0 103 1 102 0 104 1 102 0 105 1 102 0 106 1 102 0 107 1 102 0 108 1 102 0 109 1 102 0 110 1 102 0 124 1 102 0 125 1 102 0 126 2 213 1 105] 
#[1 1 122 0 2 1 122 0 6 1 122 0 7 1 122 0 9 1 122 0 10 1 122 0 14 1 122 0 15 1 122 0 16 1 122 0 17 1 122 0 18 1 122 0 19 1 122 0 20 1 122 0 21 1 122 0 23 1 122 0 24 1 122 0 26 1 122 0 27 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 34 1 122 0 35 1 122 0 36 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 41 1 122 0 42 1 122 0 46 1 122 0 47 1 122 0 48 1 122 0 51 1 122 0 69 1 122 0 100 1 122 0 103 1 122 0 104 1 122 0 105 1 122 0 106 1 122 0 107 1 122 0 108 1 122 0 109 1 122 0 110 1 122 0 124 1 122 0 125 1 122 0 126 5 153 1 134] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 5 157 1 133 2 29 1 135 0 253 1 139] 
#[0 2 2 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 5 161 0 31 5 165 0 46] 
#[0 0 55 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 49 0 5 3 41 0 30 5 169 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 5 173 0 228 3 45 1 106 2 13 1 111 5 177 1 133 2 29 1 135 0 253 1 139] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 3 213 1 133 2 29 1 135 0 253 1 139] 
#[0 2 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 0 75 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 114 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 2 14 0 68] 
#[0 2 18 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 111 0 112 0 123 0 124 0 126] 
#[0 2 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 0 79 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 2 30 0 68 1 73 0 116 1 77 0 118 5 181 0 171 1 89 1 144] 
#[0 2 34 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 100 0 103 0 111 0 112 0 123 0 124 0 126] 
#[1 1 234 0 3 1 234 0 53 1 234 0 58 1 234 0 76 1 234 0 111 1 234 0 112 1 234 0 123 5 185 0 176 5 189 0 216 5 193 0 218] 
#[1 5 197 0 51 5 201 0 125] 
#[1 0 49 0 5 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 125 0 228 5 205 1 98 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[1 0 49 0 5 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 125 0 228 5 209 1 98 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 5 213 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 2 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 1 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 5 217 0 80 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 5 221 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 234 0 100 0 234 0 103 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 5 225 1 133 2 29 1 135 0 253 1 139] 
#[1 3 1 0 100 5 229 0 103 5 233 0 222] 
#[1 1 114 0 17 5 237 0 69 0 55 0 100 0 55 0 103] 
#[0 5 241 0 68] 
#[0 2 42 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 5 245 0 159] 
#[0 5 249 0 103] 
#[0 5 253 0 13] 
#[1 2 46 0 2 2 46 0 6 2 46 0 7 2 46 0 9 2 46 0 10 2 46 0 14 2 46 0 15 2 46 0 16 6 1 0 17 2 46 0 18 2 46 0 19 2 46 0 20 2 46 0 21 2 46 0 23 2 46 0 24 2 46 0 26 2 46 0 27 2 46 0 28 2 46 0 29 2 46 0 30 2 46 0 31 2 46 0 32 2 46 0 33 2 46 0 34 2 46 0 35 2 46 0 36 2 46 0 37 2 46 0 38 2 46 0 39 2 46 0 40 2 46 0 41 2 46 0 42 2 46 0 46 2 46 0 47 2 46 0 48 2 46 0 51 2 46 0 69 2 46 0 100 2 46 0 103 2 46 0 104 2 46 0 105 2 46 0 106 2 46 0 107 2 46 0 108 2 46 0 109 2 46 0 110 2 46 0 124 2 46 0 125 2 46 0 126 6 5 1 95] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 6 9 0 14 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 6 13 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 6 17 1 137 0 253 1 139] 
#[1 2 50 0 2 2 50 0 6 2 50 0 7 2 50 0 9 2 50 0 10 3 233 0 13 2 50 0 14 2 50 0 15 2 50 0 16 2 50 0 17 2 50 0 18 2 50 0 19 2 50 0 20 2 50 0 21 2 50 0 23 2 50 0 24 2 50 0 26 2 50 0 27 2 50 0 28 2 50 0 29 2 50 0 30 2 50 0 31 2 50 0 32 2 50 0 33 2 50 0 34 2 50 0 35 2 50 0 36 2 50 0 37 2 50 0 38 2 50 0 39 2 50 0 40 2 50 0 41 2 50 0 42 2 50 0 46 2 50 0 47 2 50 0 48 2 50 0 51 2 50 0 69 2 50 0 100 2 50 0 103 2 50 0 104 2 50 0 105 2 50 0 106 2 50 0 107 2 50 0 108 2 50 0 109 2 50 0 110 3 241 0 124 2 50 0 125 2 50 0 126 6 21 1 112 6 25 1 136] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 6 29 0 20 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 4 213 0 66 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 4 217 0 91 1 149 0 96 6 33 0 103 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 1 153 0 123 3 65 0 124 6 37 0 125 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 6 41 0 240 6 45 0 242 6 49 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 6 53 1 102 0 241 1 103 6 57 1 106 2 13 1 111 6 61 1 115 6 65 1 116 6 69 1 126 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 6 73 1 139 4 253 1 144] 
#[0 2 54 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 2 58 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 6 77 1 135 0 253 1 139] 
#[0 2 62 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 2 66 0 2 2 66 0 6 2 66 0 7 2 66 0 9 2 66 0 10 2 66 0 14 2 66 0 15 2 66 0 16 2 66 0 17 2 66 0 18 2 66 0 19 2 66 0 20 2 66 0 21 2 66 0 23 2 66 0 24 2 66 0 26 2 66 0 27 2 66 0 28 2 66 0 29 0 83 0 30 2 66 0 31 2 66 0 32 2 66 0 33 2 66 0 34 2 66 0 35 2 66 0 36 2 66 0 37 2 66 0 38 2 66 0 39 2 66 0 40 2 66 0 41 2 66 0 42 2 66 0 46 2 66 0 47 2 66 0 48 2 66 0 51 2 66 0 69 2 66 0 100 2 66 0 103 2 66 0 104 2 66 0 105 2 66 0 106 2 66 0 107 2 66 0 108 2 66 0 109 2 66 0 110 2 66 0 124 2 66 0 125 2 66 0 126 6 81 1 131] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 6 85 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 2 70 0 2 2 70 0 6 2 70 0 7 2 70 0 9 2 70 0 10 2 70 0 14 2 70 0 15 2 70 0 16 2 70 0 17 2 70 0 18 2 70 0 19 2 70 0 20 2 70 0 21 2 70 0 23 2 70 0 24 2 70 0 26 2 70 0 27 2 70 0 28 2 70 0 29 0 87 0 30 2 70 0 31 2 70 0 32 2 70 0 33 2 70 0 34 2 70 0 35 2 70 0 36 2 70 0 37 2 70 0 38 2 70 0 39 2 70 0 40 2 70 0 41 2 70 0 42 2 70 0 46 2 70 0 47 2 70 0 48 2 70 0 51 2 70 0 69 2 70 0 100 2 70 0 103 2 70 0 104 2 70 0 105 2 70 0 106 2 70 0 107 2 70 0 108 2 70 0 109 2 70 0 110 2 70 0 124 2 70 0 125 2 70 0 126 6 89 1 131] 
#[1 6 93 0 13 6 97 0 45 6 101 0 103 6 105 0 140] 
#[0 2 74 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 64 0 210 0 65 0 210 0 68 0 210 0 71 0 210 0 76 0 210 0 78 0 210 0 83 0 210 0 86 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 93 0 210 0 95 0 210 0 96 0 210 0 98 0 210 0 107 0 210 0 111 0 210 0 112 6 109 0 159] 
#[0 6 113 0 14] 
#[1 0 49 0 5 0 53 0 30 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 6 117 1 103 0 245 1 106 0 253 1 139] 
#[0 6 121 0 14] 
#[0 6 125 0 14] 
#[0 6 129 0 29] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 6 133 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 11 1 234 0 12 1 234 0 13 6 137 0 14 1 234 0 15 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 96 1 234 0 111 1 234 0 112 1 234 0 123 1 234 0 124 1 234 0 126 6 141 0 176 6 145 0 190 6 149 0 193] 
#[0 2 78 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 6 153 0 107 1 234 0 111 1 234 0 112 6 157 0 176 6 161 0 186 6 165 0 189] 
#[1 6 169 0 13 6 173 0 31 3 1 0 100 6 177 0 103 6 181 0 222] 
#[1 6 185 0 31 6 189 0 103] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 2 82 0 100 2 82 0 103 0 133 0 111 0 137 0 112 1 153 0 123 6 193 0 206 3 125 0 228 6 197 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 6 205 0 103] 
#[1 6 209 0 29 3 1 0 100 1 126 0 103 6 213 0 207 4 85 0 222] 
#[0 2 86 0 103] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 1 153 0 123 3 125 0 228 6 217 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 2 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 6 221 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 6 225 0 29 6 229 0 31 6 233 0 35 3 1 0 100 6 237 0 222] 
#[1 6 241 0 31 6 245 0 35] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 1 234 0 111 1 234 0 112 6 157 0 176 6 249 0 186 6 165 0 189] 
#[1 3 1 0 100 6 253 0 103 7 1 0 222] 
#[0 7 5 0 103] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 7 9 1 139] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 87 0 210 0 89 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 7 13 0 159] 
#[0 2 94 0 68] 
#[1 0 226 0 68 7 17 0 103] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 7 21 1 133 2 29 1 135 0 253 1 139] 
#[1 7 25 0 1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 7 29 1 133 2 29 1 135 0 253 1 139] 
#[0 7 33 0 69] 
#[1 7 37 0 31 7 41 0 103] 
#[1 7 45 0 29 3 1 0 100 1 126 0 103 3 9 0 124 7 49 0 207 7 53 0 215 4 85 0 222] 
#[0 2 98 0 19 0 31 0 107] 
#[1 0 49 0 5 2 89 0 15 2 93 0 30 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 2 97 0 103 7 57 0 107 0 133 0 111 0 137 0 112 7 61 0 164 2 105 1 103 0 245 1 106 0 253 1 139] 
#[0 2 102 0 19 0 31 0 107] 
#[1 2 106 0 19 2 106 0 107 7 65 0 166] 
#[0 2 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 7 69 0 15 7 73 0 103] 
#[1 7 77 0 49 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 7 81 1 139] 
#[1 7 85 0 13 3 9 0 124 7 89 0 215] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 61 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 111 1 202 0 112 1 202 0 115 1 202 0 116 1 202 0 118 1 202 0 119 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 124 1 202 0 125 1 202 0 126 7 93 0 133 1 202 1 144] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 46 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 61 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 111 1 202 0 112 1 202 0 115 1 202 0 116 1 202 0 118 1 202 0 119 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 124 1 202 0 125 1 202 0 126 7 97 0 133 1 202 1 144] 
#[1 1 202 0 1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 1 202 0 9 1 202 0 10 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 19 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 23 1 202 0 24 1 202 0 25 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 29 1 202 0 30 1 202 0 31 1 202 0 32 1 202 0 33 1 202 0 34 1 202 0 35 1 202 0 36 1 202 0 37 1 202 0 38 1 202 0 39 1 202 0 40 1 202 0 41 1 202 0 42 1 202 0 43 1 202 0 44 1 202 0 45 1 202 0 47 1 202 0 48 1 202 0 49 1 202 0 50 1 202 0 51 1 202 0 52 1 202 0 53 1 202 0 54 1 202 0 55 1 202 0 56 1 202 0 57 1 202 0 58 1 202 0 59 1 202 0 60 1 202 0 61 1 202 0 62 1 202 0 63 1 202 0 64 1 202 0 65 1 202 0 66 1 202 0 67 1 202 0 68 1 202 0 69 1 202 0 70 1 202 0 71 1 202 0 72 1 202 0 73 1 202 0 74 1 202 0 75 1 202 0 76 1 202 0 77 1 202 0 78 1 202 0 79 1 202 0 80 1 202 0 81 1 202 0 82 1 202 0 83 1 202 0 84 1 202 0 85 1 202 0 86 1 202 0 87 1 202 0 88 1 202 0 89 1 202 0 90 1 202 0 91 1 202 0 92 1 202 0 93 1 202 0 94 1 202 0 95 1 202 0 96 1 202 0 97 1 202 0 98 1 202 0 99 1 202 0 100 1 202 0 101 1 202 0 102 1 202 0 103 1 202 0 104 1 202 0 105 1 202 0 106 1 202 0 107 1 202 0 111 1 202 0 112 1 202 0 115 1 202 0 116 1 202 0 118 1 202 0 119 1 202 0 120 1 202 0 121 1 202 0 122 1 202 0 123 1 202 0 124 1 202 0 125 1 202 0 126 7 101 0 133 1 202 1 144] 
#[1 0 49 0 5 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 7 105 1 106 0 253 1 139] 
#[0 2 114 0 1 0 13 0 14 0 19 0 30 0 31 0 35 0 45 0 46 0 51 0 103 0 107] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 7 121 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 2 185 0 13 7 153 0 14 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 2 193 0 45 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 2 197 0 103 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 9 1 0 135 9 5 0 136 9 9 0 137 9 13 0 152 9 17 0 240 9 21 1 139 9 25 1 140 9 29 1 141 9 33 1 142 9 37 1 143 4 253 1 144] 
#[0 2 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 2 154 0 46] 
#[0 2 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 7 121 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 2 185 0 13 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 2 193 0 45 9 41 0 46 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 2 197 0 103 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 9 1 0 135 9 5 0 136 9 9 0 137 9 13 0 152 9 17 0 240 9 21 1 139 9 25 1 140 9 29 1 141 9 33 1 142 9 37 1 143 4 253 1 144] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 7 121 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 2 185 0 13 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 2 193 0 45 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 2 197 0 103 8 229 0 104 8 233 0 105 8 237 0 106 9 45 0 107 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 9 1 0 135 9 5 0 136 9 9 0 137 9 13 0 152 9 17 0 240 9 21 1 139 9 25 1 140 9 29 1 141 9 33 1 142 9 37 1 143 4 253 1 144] 
#[0 2 162 0 1 0 3 0 5 0 8 0 9 0 11 0 12 0 13 0 15 0 20 0 24 0 25 0 26 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 62 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 1 144] 
#[0 2 166 0 68] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 2 82 0 100 2 82 0 103 0 133 0 111 0 137 0 112 1 153 0 123 9 49 0 206 3 125 0 228 6 197 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 9 53 0 103] 
#[1 9 57 0 29 3 1 0 100 1 126 0 103 9 61 0 207 4 85 0 222] 
#[1 9 65 0 31 9 69 0 35] 
#[0 2 170 0 68] 
#[1 0 58 0 68 1 73 0 116 1 77 0 118 9 73 0 170 2 221 0 171 1 89 1 144] 
#[0 2 174 0 68] 
#[1 9 77 0 31 9 81 0 35] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 2 178 0 31 2 178 0 35 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 2 178 0 103 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 9 85 0 223 9 89 0 225 9 93 0 226 9 97 0 227 9 101 0 228 9 105 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 9 109 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 2 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 45 0 3 1 1 0 53 9 113 0 60 1 9 0 76 0 93 0 83 0 133 0 111 0 137 0 112 9 117 0 231 9 121 1 138 9 125 1 139] 
#[0 9 129 0 107] 
#[1 2 186 0 19 2 186 0 107 9 133 0 197] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 9 137 0 107 1 234 0 111 1 234 0 112 5 57 0 176 9 141 0 195 5 65 0 198] 
#[0 9 145 0 103] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 9 149 0 107 1 234 0 111 1 234 0 112 5 57 0 176 9 153 0 195 5 65 0 198] 
#[0 2 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 9 157 0 49 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 9 161 1 139] 
#[0 9 165 0 31] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 87 1 234 0 89 1 234 0 96 9 169 0 107 1 234 0 111 1 234 0 112 9 173 0 176 9 177 0 214] 
#[0 2 194 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 46 0 49 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 1 144] 
#[1 0 67 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 65 1 246 0 68 1 246 0 76 1 246 0 83 1 246 0 86 1 246 0 87 1 246 0 89 1 246 0 96 1 246 0 107 1 246 0 111 1 246 0 112 9 181 0 213 5 97 0 230] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 9 185 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 9 189 1 133 2 29 1 135 0 253 1 139] 
#[1 0 91 0 14 2 2 0 17 2 2 0 19] 
#[1 0 95 0 14 2 42 0 17 2 42 0 19] 
#[0 2 198 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 2 202 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 111 0 112 0 123 0 124 0 126] 
#[0 2 206 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 9 201 0 14 5 125 0 19] 
#[0 2 210 0 1 0 5 0 11 0 12 0 13 0 14 0 15 0 30 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 111 0 112 0 123 0 124 0 126] 
#[0 2 214 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 2 218 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 2 222 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 2 226 0 2 2 226 0 6 2 226 0 7 2 226 0 9 2 226 0 10 2 226 0 14 2 226 0 15 2 226 0 16 2 226 0 17 2 226 0 18 2 226 0 19 2 226 0 20 2 226 0 21 2 226 0 23 2 226 0 24 2 226 0 26 2 226 0 27 2 226 0 28 2 226 0 29 0 99 0 30 2 226 0 31 2 226 0 32 2 226 0 33 2 226 0 34 2 226 0 35 2 226 0 36 2 226 0 37 2 226 0 38 2 226 0 39 2 226 0 40 2 226 0 41 2 226 0 42 2 226 0 46 2 226 0 47 2 226 0 48 2 226 0 51 2 226 0 69 2 226 0 100 2 226 0 103 2 226 0 104 2 226 0 105 2 226 0 106 2 226 0 107 2 226 0 108 2 226 0 109 2 226 0 110 2 226 0 124 2 226 0 125 2 226 0 126 6 89 1 131] 
#[0 2 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 10 57 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 2 234 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 10 169 0 228 3 45 1 106 2 13 1 111 10 173 1 133 2 29 1 135 0 253 1 139] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 10 177 1 133 2 29 1 135 0 253 1 139] 
#[0 5 141 0 14] 
#[0 2 238 0 68] 
#[1 0 45 0 3 1 1 0 53 10 181 0 58 1 9 0 76 0 133 0 111 0 137 0 112 10 185 0 123 10 189 0 219 10 193 0 220 10 197 0 221 10 201 0 231 10 205 1 139] 
#[0 2 242 0 3 0 53 0 58 0 76 0 111 0 112 0 123] 
#[1 10 209 0 19 10 213 0 125] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 10 217 1 133 2 29 1 135 0 253 1 139] 
#[0 2 246 0 30] 
#[0 2 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 2 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 2 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 10 221 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 2 254 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 10 225 0 69] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 10 229 0 159] 
#[0 10 233 0 103] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 10 237 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 10 241 0 13] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 10 245 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 10 249 0 159] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 11 1 234 0 12 1 234 0 13 10 253 0 14 1 234 0 15 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 86 1 234 0 89 1 234 0 96 1 234 0 111 1 234 0 112 1 234 0 123 1 234 0 124 1 234 0 126 11 1 0 176 11 5 1 83 11 9 1 84 11 13 1 87 11 17 1 88] 
#[1 3 6 0 2 0 49 0 5 3 6 0 6 3 6 0 7 3 6 0 9 3 6 0 10 1 97 0 11 1 101 0 12 3 121 0 13 3 6 0 14 3 6 0 15 3 6 0 16 3 6 0 17 3 6 0 18 3 6 0 19 3 6 0 20 3 6 0 21 3 6 0 23 3 6 0 24 3 6 0 26 3 6 0 27 3 6 0 28 3 6 0 29 0 107 0 30 3 6 0 31 3 6 0 32 3 6 0 33 3 6 0 34 3 6 0 35 3 6 0 36 3 6 0 37 3 6 0 38 3 6 0 39 3 6 0 40 3 6 0 41 1 117 0 42 1 121 0 44 3 6 0 46 3 6 0 47 3 6 0 48 3 6 0 51 1 1 0 53 1 5 0 60 0 111 0 69 1 9 0 76 0 97 0 86 0 109 0 89 3 6 0 100 3 6 0 103 3 6 0 104 3 6 0 105 3 6 0 106 3 6 0 107 3 6 0 108 3 6 0 109 3 6 0 110 0 133 0 111 0 137 0 112 1 153 0 123 3 6 0 124 3 6 0 125 3 6 0 126 3 125 0 228 11 21 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 3 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 14 0 2 3 14 0 6 3 14 0 7 3 14 0 9 3 14 0 10 3 14 0 14 3 14 0 15 3 14 0 16 3 14 0 17 3 14 0 18 3 14 0 19 3 14 0 20 3 14 0 21 11 25 0 22 3 14 0 23 3 14 0 24 3 14 0 26 3 14 0 27 3 14 0 28 3 14 0 29 3 14 0 30 3 14 0 31 3 14 0 32 3 14 0 33 3 14 0 34 3 14 0 35 3 14 0 36 3 14 0 37 3 14 0 38 3 14 0 39 3 14 0 40 3 14 0 41 3 14 0 42 3 14 0 46 3 14 0 47 3 14 0 48 3 14 0 51 3 14 0 69 3 14 0 100 3 14 0 103 3 14 0 104 3 14 0 105 3 14 0 106 3 14 0 107 3 14 0 108 3 14 0 109 3 14 0 110 3 14 0 124 3 14 0 125 3 14 0 126] 
#[1 3 18 0 14 3 18 0 19 11 29 1 122] 
#[0 11 33 0 14] 
#[0 3 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 3 26 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 4 213 0 66 4 217 0 91 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 11 37 0 240 4 253 1 144] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 31 0 210 0 44 0 210 0 45 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 58 0 210 0 59 0 210 0 60 0 210 0 64 0 210 0 65 0 210 0 66 0 210 0 68 0 210 0 69 0 210 0 70 0 210 0 71 0 210 0 73 0 210 0 74 0 210 0 76 0 210 0 77 0 210 0 78 0 210 0 79 0 210 0 83 0 210 0 85 0 210 0 86 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 91 0 210 0 93 0 210 0 95 0 210 0 96 0 210 0 98 0 210 0 101 0 210 0 103 0 210 0 104 0 210 0 106 0 210 0 107 0 210 0 111 0 210 0 112 0 210 0 115 0 210 0 116 0 210 0 118 0 210 0 119 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 124 11 41 0 159 0 210 1 144] 
#[0 3 30 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 3 34 0 19 0 125] 
#[0 3 38 0 19 0 125] 
#[0 3 42 0 19 0 125] 
#[1 1 98 0 17 0 115 0 19 0 115 0 125] 
#[1 0 186 0 1 1 102 0 13 1 102 0 17 0 119 0 19 0 47 0 30 1 102 0 124 0 119 0 125 2 121 1 105] 
#[1 3 54 0 19 3 54 0 125 11 45 1 114] 
#[0 3 58 0 19 0 125] 
#[0 3 62 0 19 0 125] 
#[1 0 190 0 1 0 190 0 13 0 190 0 17 0 190 0 19 0 190 0 30 11 49 0 35 0 190 0 124 0 190 0 125] 
#[0 3 66 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 3 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 1 0 100 11 53 0 103 11 57 0 222] 
#[0 3 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 11 61 0 13 11 65 0 45 11 69 0 103 11 73 0 141 11 77 0 144 11 81 0 145] 
#[1 11 61 0 13 11 65 0 45 11 69 0 103 11 85 0 141 11 77 0 144 11 81 0 145] 
#[1 11 61 0 13 11 65 0 45 11 69 0 103 11 89 0 141 11 77 0 144 11 81 0 145] 
#[0 3 78 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 64 0 10 0 65 0 10 0 68 0 10 0 71 0 10 0 76 0 10 0 78 0 10 0 83 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 93 0 10 0 95 0 10 0 96 0 10 0 98 0 10 0 107 0 10 0 111 0 10 0 112 11 93 0 130 5 97 0 230] 
#[0 3 82 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 62 0 64 0 65 0 68 0 69 0 71 0 76 0 78 0 86 0 87 0 88 0 89 0 90 0 93 0 95 0 96 0 98 0 111 0 112 0 123 0 124 0 126] 
#[0 11 97 0 14] 
#[0 3 86 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 62 0 64 0 65 0 68 0 69 0 71 0 76 0 78 0 86 0 87 0 88 0 89 0 90 0 93 0 95 0 96 0 98 0 111 0 112 0 123 0 124 0 126] 
#[0 3 90 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 62 0 64 0 65 0 68 0 69 0 71 0 76 0 78 0 86 0 87 0 88 0 89 0 90 0 93 0 95 0 96 0 98 0 111 0 112 0 123 0 124 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 11 101 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 11 105 0 31 11 109 0 35] 
#[1 11 113 0 31 3 1 0 100 11 117 0 222] 
#[1 3 53 0 1 0 45 0 3 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 0 69 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 93 0 83 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 9 117 0 231 11 121 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 11 125 1 138 0 253 1 139] 
#[0 11 129 0 14] 
#[1 3 94 0 14 3 94 0 19 11 133 0 192] 
#[0 3 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 45 0 3 1 1 0 53 9 113 0 60 1 9 0 76 0 93 0 83 0 133 0 111 0 137 0 112 9 117 0 231 11 137 1 138 11 141 1 139] 
#[0 11 145 0 107] 
#[1 3 102 0 19 3 102 0 107 11 149 0 188] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 11 1 234 0 12 1 234 0 13 11 153 0 14 1 234 0 15 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 96 1 234 0 111 1 234 0 112 1 234 0 123 1 234 0 124 1 234 0 126 6 141 0 176 11 157 0 190 6 149 0 193] 
#[0 3 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 11 161 0 107 1 234 0 111 1 234 0 112 6 157 0 176 11 165 0 186 6 165 0 189] 
#[1 11 169 0 31 11 173 0 103] 
#[0 3 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 11 177 0 107 1 234 0 111 1 234 0 112 6 157 0 176 11 181 0 186 6 165 0 189] 
#[1 3 1 0 100 1 126 0 103 11 185 0 207 4 85 0 222] 
#[0 3 114 0 100 0 103] 
#[0 1 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 11 189 0 159] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 2 82 0 100 2 82 0 103 0 133 0 111 0 137 0 112 1 153 0 123 11 193 0 206 3 125 0 228 6 197 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 11 197 0 103] 
#[1 11 201 0 31 11 205 0 35 3 1 0 100 11 209 0 222] 
#[0 11 213 0 31] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 1 153 0 123 3 125 0 228 11 217 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 3 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 11 221 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 11 225 0 31 11 229 0 35] 
#[0 3 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 11 233 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 11 237 0 107] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 1 234 0 111 1 234 0 112 6 157 0 176 11 241 0 186 6 165 0 189] 
#[0 11 245 0 103] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 1 234 0 111 1 234 0 112 6 157 0 176 11 249 0 186 6 165 0 189] 
#[1 11 253 0 29 3 1 0 100 1 126 0 103 3 9 0 124 12 1 0 207 12 5 0 215 4 85 0 222] 
#[1 0 67 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 65 1 246 0 68 1 246 0 76 1 246 0 83 1 246 0 86 1 246 0 87 1 246 0 89 1 246 0 96 1 246 0 107 1 246 0 111 1 246 0 112 12 9 0 213 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 87 0 210 0 89 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 12 13 0 159] 
#[0 12 17 0 69] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 12 21 1 133 2 29 1 135 0 253 1 139] 
#[0 12 25 0 69] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 12 29 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 3 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 64 0 210 0 65 0 210 0 68 0 210 0 71 0 210 0 76 0 210 0 78 0 210 0 83 0 210 0 86 0 210 0 87 0 210 0 88 0 210 0 89 0 210 0 90 0 210 0 93 0 210 0 95 0 210 0 96 0 210 0 98 0 210 0 107 0 210 0 111 0 210 0 112 12 33 0 159] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 2 82 0 100 2 82 0 103 0 133 0 111 0 137 0 112 1 153 0 123 12 37 0 206 3 125 0 228 6 197 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 12 41 0 103] 
#[1 12 45 0 29 3 1 0 100 1 126 0 103 12 49 0 207 4 85 0 222] 
#[0 3 130 0 19 0 31 0 107] 
#[1 2 106 0 19 2 106 0 107 12 53 0 166] 
#[1 12 57 0 19 3 134 0 107 12 61 0 165 12 65 0 167] 
#[0 3 138 0 19 0 31 0 107] 
#[1 0 49 0 5 2 89 0 15 2 93 0 30 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 2 97 0 103 12 69 0 107 0 133 0 111 0 137 0 112 12 73 0 164 2 105 1 103 0 245 1 106 0 253 1 139] 
#[0 3 142 0 19 0 31 0 107] 
#[0 3 146 0 19 0 31 0 107] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 11 1 234 0 12 1 234 0 13 12 77 0 14 1 234 0 15 1 234 0 20 1 234 0 24 1 234 0 25 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 66 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 1 234 0 96 1 234 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 123 1 234 0 124 1 234 0 126 12 81 0 172 12 85 0 175 12 89 0 176 12 93 0 179 1 234 1 144] 
#[0 12 97 0 13] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 7 121 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 2 185 0 13 12 101 0 14 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 2 193 0 45 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 2 197 0 103 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 9 1 0 135 9 5 0 136 9 9 0 137 9 13 0 152 9 17 0 240 9 21 1 139 9 25 1 140 9 29 1 141 9 33 1 142 9 37 1 143 4 253 1 144] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 7 121 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 2 185 0 13 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 2 193 0 45 12 105 0 46 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 2 197 0 103 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 9 1 0 135 9 5 0 136 9 9 0 137 9 13 0 152 9 17 0 240 9 21 1 139 9 25 1 140 9 29 1 141 9 33 1 142 9 37 1 143 4 253 1 144] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 7 121 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 2 185 0 13 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 2 193 0 45 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 2 197 0 103 8 229 0 104 8 233 0 105 8 237 0 106 12 109 0 107 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 9 1 0 135 9 5 0 136 9 9 0 137 9 13 0 152 9 17 0 240 9 21 1 139 9 25 1 140 9 29 1 141 9 33 1 142 9 37 1 143 4 253 1 144] 
#[0 3 150 0 1 0 13 0 14 0 19 0 30 0 31 0 35 0 45 0 46 0 51 0 103 0 107] 
#[0 3 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 3 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 94 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 106 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 110 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 114 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 154 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 158 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 162 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 166 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 170 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 174 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 178 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 182 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 186 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 190 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 198 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 202 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 206 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 218 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 230 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 234 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 4 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 22 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 46 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 50 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 54 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 58 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 62 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 66 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 70 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 86 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 90 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 3 1 0 100 1 126 0 103 12 113 0 207 4 85 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 12 117 0 159] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 2 82 0 100 2 82 0 103 0 133 0 111 0 137 0 112 1 153 0 123 12 121 0 206 3 125 0 228 6 197 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 12 125 0 103] 
#[0 5 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 12 129 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 5 98 0 68] 
#[0 5 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 12 133 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 5 106 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 103 0 111 0 112 0 123 0 124 0 126] 
#[1 12 137 0 19 5 110 0 31 5 110 0 35 5 110 0 103] 
#[0 5 114 0 19 0 31 0 35 0 103] 
#[0 5 118 0 19 0 31 0 35 0 103] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 12 141 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 12 145 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 12 149 1 133 2 29 1 135 0 253 1 139] 
#[0 12 153 0 29] 
#[1 1 98 0 17 0 123 0 29] 
#[0 0 54 0 53 0 76 0 111 0 112] 
#[0 5 122 0 1 0 3 0 5 0 9 0 11 0 12 0 13 0 15 0 20 0 24 0 25 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 62 0 65 0 66 0 68 0 69 0 71 0 73 0 76 0 80 0 83 0 84 0 86 0 87 0 89 0 91 0 93 0 96 0 104 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 126 1 144] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 12 161 1 139] 
#[1 12 165 0 13 5 126 0 19 12 169 0 35 12 173 0 103 5 126 0 107 12 177 0 199 12 181 0 200 12 185 0 201] 
#[0 5 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 12 189 0 19 5 134 0 107 12 193 0 196] 
#[0 5 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 197 0 107] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 12 201 0 107 1 234 0 111 1 234 0 112 5 57 0 176 12 205 0 195 5 65 0 198] 
#[0 5 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 209 0 107] 
#[0 5 146 0 31] 
#[0 5 150 0 31] 
#[0 5 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 5 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 45 0 3 0 49 0 5 0 53 0 30 0 57 0 52 1 1 0 53 12 213 0 58 0 69 0 60 12 217 0 65 0 30 0 68 1 9 0 76 0 93 0 83 0 97 0 86 0 101 0 87 0 109 0 89 12 221 0 96 0 133 0 111 0 137 0 112 0 141 0 132 0 145 0 134 12 225 0 138 12 229 0 168 0 181 0 169 12 233 0 204 9 117 0 231 0 241 1 103 0 245 1 106 12 237 1 138 0 253 1 139] 
#[0 5 162 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 87 0 89 0 96 0 107 0 111 0 112] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 87 1 234 0 89 1 234 0 96 12 241 0 107 1 234 0 111 1 234 0 112 9 173 0 176 9 177 0 214] 
#[1 3 1 0 100 12 245 0 103 12 249 0 222] 
#[1 0 127 0 14 2 230 0 17 2 230 0 19] 
#[0 5 166 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 170 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 174 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 1 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 13 5 0 80 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 9 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 13 13 0 80 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 17 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 14 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 59 0 210 0 60 0 210 0 66 0 210 0 69 0 210 0 70 0 210 0 74 0 210 0 76 0 210 0 77 0 210 0 79 0 210 0 85 0 210 0 86 0 210 0 89 0 210 0 91 0 210 0 96 0 210 0 101 0 210 0 103 0 210 0 104 0 210 0 106 0 210 0 111 0 210 0 112 0 210 0 115 0 210 0 116 0 210 0 118 0 210 0 119 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 124 13 21 0 159 0 210 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 25 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 29 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 5 178 0 2 0 45 0 3 0 49 0 5 5 178 0 6 5 178 0 7 9 209 0 8 9 213 0 9 5 178 0 10 9 217 0 13 5 178 0 14 9 221 0 15 5 178 0 16 5 178 0 17 5 178 0 18 5 178 0 19 9 225 0 20 5 178 0 21 5 178 0 23 5 178 0 27 5 178 0 28 9 237 0 30 5 178 0 31 5 178 0 32 5 178 0 33 5 178 0 34 5 178 0 35 5 178 0 36 5 178 0 37 5 178 0 38 5 178 0 39 5 178 0 40 5 178 0 41 5 178 0 42 1 121 0 44 9 241 0 45 5 178 0 46 5 178 0 47 5 178 0 48 5 178 0 51 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 0 131 0 103 10 37 0 104 5 178 0 105 10 41 0 106 5 178 0 107 5 178 0 108 5 178 0 109 5 178 0 110 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 5 178 0 125 5 178 0 126 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 33 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 37 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 97 1 106 13 41 1 110 10 157 1 111 0 253 1 139] 
#[1 0 210 0 1 0 210 0 3 0 210 0 5 0 210 0 8 0 210 0 9 0 210 0 13 0 210 0 15 0 210 0 20 0 210 0 24 0 210 0 26 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 46 0 210 0 52 0 210 0 53 0 210 0 56 0 210 0 57 0 210 0 59 0 210 0 60 0 210 0 66 0 210 0 69 0 210 0 70 0 210 0 74 0 210 0 76 0 210 0 77 0 210 0 79 0 210 0 85 0 210 0 86 0 210 0 89 0 210 0 91 0 210 0 96 0 210 0 101 0 210 0 103 0 210 0 104 0 210 0 106 0 210 0 111 0 210 0 112 0 210 0 115 0 210 0 116 0 210 0 118 0 210 0 119 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 123 0 210 0 124 13 45 0 159 0 210 1 144] 
#[1 13 49 0 79 6 33 0 103 13 53 0 242] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 57 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 5 182 0 2 0 45 0 3 0 49 0 5 5 182 0 6 5 182 0 7 9 209 0 8 9 213 0 9 5 182 0 10 9 217 0 13 5 182 0 14 9 221 0 15 5 182 0 16 5 182 0 17 5 182 0 18 5 182 0 19 9 225 0 20 5 182 0 21 5 182 0 23 9 229 0 24 9 233 0 26 5 182 0 27 5 182 0 28 9 237 0 30 5 182 0 31 5 182 0 32 5 182 0 33 5 182 0 34 5 182 0 35 5 182 0 36 5 182 0 37 5 182 0 38 5 182 0 39 5 182 0 40 5 182 0 41 5 182 0 42 1 121 0 44 9 241 0 45 5 182 0 46 5 182 0 47 5 182 0 48 5 182 0 51 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 0 135 0 103 10 37 0 104 5 182 0 105 10 41 0 106 5 182 0 107 5 182 0 108 5 182 0 109 5 182 0 110 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 13 61 0 123 3 65 0 124 5 182 0 125 5 182 0 126 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 65 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 5 186 0 2 0 45 0 3 0 49 0 5 5 186 0 6 5 186 0 7 9 209 0 8 9 213 0 9 5 186 0 10 9 217 0 13 5 186 0 14 9 221 0 15 5 186 0 16 5 186 0 17 5 186 0 18 5 186 0 19 9 225 0 20 5 186 0 21 5 186 0 23 9 229 0 24 9 233 0 26 5 186 0 27 5 186 0 28 9 237 0 30 5 186 0 31 5 186 0 32 5 186 0 33 5 186 0 34 5 186 0 35 5 186 0 36 5 186 0 37 5 186 0 38 5 186 0 39 5 186 0 40 5 186 0 41 5 186 0 42 1 121 0 44 9 241 0 45 5 186 0 46 5 186 0 47 5 186 0 48 5 186 0 51 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 0 139 0 103 10 37 0 104 5 186 0 105 10 41 0 106 5 186 0 107 5 186 0 108 5 186 0 109 5 186 0 110 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 13 69 0 123 3 65 0 124 5 186 0 125 5 186 0 126 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 73 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 13 157 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 13 241 0 73 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 245 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 6 33 0 103 13 249 0 242] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 13 253 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 1 0 104 14 5 0 106] 
#[1 9 205 0 1 5 190 0 2 0 45 0 3 0 49 0 5 5 190 0 6 5 190 0 7 9 209 0 8 9 213 0 9 5 190 0 10 9 217 0 13 5 190 0 14 9 221 0 15 5 190 0 16 5 190 0 17 5 190 0 18 5 190 0 19 9 225 0 20 5 190 0 21 5 190 0 23 9 229 0 24 9 233 0 26 5 190 0 27 5 190 0 28 9 237 0 30 5 190 0 31 5 190 0 32 5 190 0 33 5 190 0 34 5 190 0 35 5 190 0 36 5 190 0 37 5 190 0 38 5 190 0 39 5 190 0 40 5 190 0 41 5 190 0 42 1 121 0 44 9 241 0 45 5 190 0 46 5 190 0 47 5 190 0 48 5 190 0 51 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 0 143 0 103 10 37 0 104 5 190 0 105 10 41 0 106 5 190 0 107 5 190 0 108 5 190 0 109 5 190 0 110 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 5 190 0 125 5 190 0 126 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 14 9 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 6 33 0 103 14 13 0 242] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 14 17 0 73 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 14 21 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 13 1 234 0 20 1 234 0 24 1 234 0 30 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 66 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 0 147 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 124 1 234 0 126 14 29 0 176 14 33 1 16 14 37 1 19 1 234 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 14 41 0 22 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 14 45 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 14 49 0 29] 
#[0 5 194 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 14 53 0 237 14 57 0 238 14 61 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 169 0 46 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 5 198 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 202 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 206 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 214 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 218 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 222 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 226 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 230 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 234 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 238 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 242 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 246 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 5 250 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 5 254 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 6 2 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 6 6 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 6 10 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 10 5 0 69 10 13 0 74 10 33 0 101 14 217 1 21 14 221 1 22 14 225 1 23 14 229 1 24] 
#[0 6 14 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 6 18 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 6 22 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 6 26 0 2 6 26 0 6 6 26 0 7 6 26 0 9 6 26 0 10 14 233 0 13 6 26 0 14 6 26 0 15 6 26 0 16 6 26 0 17 6 26 0 18 6 26 0 19 6 26 0 20 6 26 0 21 6 26 0 23 6 26 0 24 6 26 0 26 6 26 0 27 6 26 0 28 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 34 6 26 0 35 6 26 0 36 6 26 0 37 6 26 0 38 6 26 0 39 6 26 0 40 6 26 0 41 6 26 0 42 6 26 0 46 6 26 0 47 6 26 0 48 6 26 0 51 0 151 0 103 6 26 0 105 6 26 0 106 6 26 0 107 6 26 0 108 6 26 0 109 6 26 0 110 6 26 0 124 6 26 0 125 6 26 0 126] 
#[1 6 30 0 2 6 30 0 6 6 30 0 7 6 30 0 9 6 30 0 10 6 30 0 13 6 30 0 14 6 30 0 15 6 30 0 16 6 30 0 17 6 30 0 18 6 30 0 19 6 30 0 20 6 30 0 21 6 30 0 23 6 30 0 24 6 30 0 25 6 30 0 26 6 30 0 27 6 30 0 28 6 30 0 29 6 30 0 30 6 30 0 31 6 30 0 32 6 30 0 33 6 30 0 34 6 30 0 35 6 30 0 36 6 30 0 37 6 30 0 38 6 30 0 39 6 30 0 40 6 30 0 41 6 30 0 42 6 30 0 46 6 30 0 47 6 30 0 48 6 30 0 51 6 30 0 70 6 30 0 72 6 30 0 103 6 30 0 104 6 30 0 105 6 30 0 106 6 30 0 107 6 30 0 108 6 30 0 109 6 30 0 110 6 30 0 124 6 30 0 125 6 30 0 126 14 241 1 109] 
#[1 6 34 0 2 6 34 0 6 6 34 0 7 6 34 0 9 6 34 0 10 6 34 0 13 6 34 0 14 6 34 0 15 6 34 0 16 6 34 0 17 6 34 0 18 6 34 0 19 6 34 0 20 6 34 0 21 6 34 0 23 6 34 0 24 6 34 0 25 6 34 0 26 6 34 0 27 6 34 0 28 6 34 0 29 0 155 0 30 6 34 0 31 6 34 0 32 6 34 0 33 6 34 0 34 6 34 0 35 6 34 0 36 6 34 0 37 6 34 0 38 6 34 0 39 6 34 0 40 6 34 0 41 6 34 0 42 6 34 0 46 6 34 0 47 6 34 0 48 6 34 0 51 6 34 0 70 6 34 0 72 6 34 0 103 6 34 0 104 6 34 0 105 6 34 0 106 6 34 0 107 6 34 0 108 6 34 0 109 6 34 0 110 6 34 0 124 6 34 0 125 6 34 0 126] 
#[0 6 38 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 249 0 30 14 253 1 108 15 1 1 128] 
#[1 0 49 0 5 3 41 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 2 13 1 111 15 5 1 133 2 29 1 135 0 253 1 139] 
#[0 9 193 0 14] 
#[0 9 197 0 14] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 15 9 1 139] 
#[1 6 42 0 19 15 13 0 29 6 42 0 125] 
#[0 6 46 0 19 0 125] 
#[0 6 50 0 19 0 125] 
#[0 6 54 0 19 0 125] 
#[1 5 122 0 3 0 159 0 53 5 122 0 58 0 163 0 76 0 167 0 111 0 171 0 112 0 175 0 123 15 21 1 139] 
#[1 6 58 0 19 15 25 0 29 15 29 0 35 6 58 0 125] 
#[1 6 62 0 3 6 62 0 53 6 62 0 58 6 62 0 76 6 62 0 111 6 62 0 112 6 62 0 123 15 33 0 125] 
#[0 6 66 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 100 0 103 0 111 0 112 0 123 0 124 0 126] 
#[0 15 37 0 125] 
#[0 6 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 15 41 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 15 45 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 15 49 0 159] 
#[1 3 1 0 100 15 53 0 103 15 57 0 222] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 11 1 234 0 12 1 234 0 13 15 61 0 14 1 234 0 15 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 86 1 234 0 89 1 234 0 96 1 234 0 111 1 234 0 112 1 234 0 123 1 234 0 124 1 234 0 126 11 1 0 176 15 65 1 83 11 9 1 84 11 13 1 87 11 17 1 88] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 15 69 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 15 81 0 208 5 97 0 230] 
#[1 6 74 0 2 6 74 0 6 6 74 0 7 6 74 0 9 6 74 0 10 6 74 0 14 6 74 0 15 6 74 0 16 6 74 0 17 6 74 0 18 6 74 0 19 6 74 0 20 6 74 0 21 15 85 0 22 6 74 0 23 6 74 0 24 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 29 6 74 0 30 6 74 0 31 6 74 0 32 6 74 0 33 6 74 0 34 6 74 0 35 6 74 0 36 6 74 0 37 6 74 0 38 6 74 0 39 6 74 0 40 6 74 0 41 6 74 0 42 6 74 0 46 6 74 0 47 6 74 0 48 6 74 0 51 6 74 0 69 6 74 0 100 6 74 0 103 6 74 0 104 6 74 0 105 6 74 0 106 6 74 0 107 6 74 0 108 6 74 0 109 6 74 0 110 6 74 0 124 6 74 0 125 6 74 0 126 15 89 1 82] 
#[1 3 53 0 1 0 45 0 3 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 15 93 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 9 117 0 231 15 97 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 15 101 1 139] 
#[0 15 105 0 14] 
#[0 6 78 0 14] 
#[1 6 82 0 14 6 82 0 19 15 109 1 86] 
#[0 6 86 0 14] 
#[0 6 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 15 113 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 6 94 0 14 15 117 0 19 15 121 1 121] 
#[1 6 98 0 2 6 98 0 6 6 98 0 7 6 98 0 9 6 98 0 10 6 98 0 14 6 98 0 15 6 98 0 16 6 98 0 17 6 98 0 18 6 98 0 19 6 98 0 20 6 98 0 21 15 125 0 22 6 98 0 23 6 98 0 24 6 98 0 26 6 98 0 27 6 98 0 28 6 98 0 29 6 98 0 30 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 34 6 98 0 35 6 98 0 36 6 98 0 37 6 98 0 38 6 98 0 39 6 98 0 40 6 98 0 41 6 98 0 42 6 98 0 46 6 98 0 47 6 98 0 48 6 98 0 51 6 98 0 69 6 98 0 100 6 98 0 103 6 98 0 104 6 98 0 105 6 98 0 106 6 98 0 107 6 98 0 108 6 98 0 109 6 98 0 110 6 98 0 124 6 98 0 125 6 98 0 126] 
#[0 6 102 0 19 0 125] 
#[1 9 205 0 1 0 179 0 3 0 183 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 0 187 0 30 15 133 0 31 1 121 0 44 9 241 0 45 0 191 0 52 0 195 0 53 9 249 0 56 9 253 0 57 0 14 0 58 10 1 0 59 0 199 0 60 0 14 0 64 0 14 0 65 4 213 0 66 0 14 0 68 10 5 0 69 10 9 0 70 0 14 0 71 1 234 0 73 10 13 0 74 0 203 0 76 10 17 0 77 0 14 0 78 10 21 0 79 0 14 0 83 10 25 0 85 0 207 0 86 0 14 0 87 0 14 0 88 0 211 0 89 0 14 0 90 4 217 0 91 0 14 0 93 0 14 0 95 0 215 0 96 0 14 0 98 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 15 137 0 107 0 219 0 111 0 223 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 15 141 0 132 15 145 0 134 15 149 0 138 15 153 0 154 0 37 0 155 15 157 0 176 5 97 0 230 10 53 0 231 15 161 0 234 15 165 0 235 15 169 0 236 14 53 0 237 15 173 0 238 15 177 0 239 10 69 0 240 10 73 0 241 10 77 0 242 15 181 0 243 15 185 0 244 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 15 189 0 19 15 193 0 125 15 197 1 113] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 15 201 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 15 205 0 159] 
#[0 15 209 0 103] 
#[1 6 106 0 1 6 106 0 2 6 106 0 3 6 106 0 4 6 106 0 5 6 106 0 6 6 106 0 7 6 106 0 9 6 106 0 10 6 106 0 11 6 106 0 12 6 106 0 13 6 106 0 14 6 106 0 15 6 106 0 16 6 106 0 17 6 106 0 18 6 106 0 19 6 106 0 20 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 29 6 106 0 30 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 34 6 106 0 35 6 106 0 36 6 106 0 37 6 106 0 38 6 106 0 39 6 106 0 40 6 106 0 41 6 106 0 42 6 106 0 43 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 48 6 106 0 49 6 106 0 50 6 106 0 51 6 106 0 52 6 106 0 53 6 106 0 54 6 106 0 55 6 106 0 56 6 106 0 57 6 106 0 58 6 106 0 59 6 106 0 60 6 106 0 61 6 106 0 62 6 106 0 63 6 106 0 64 6 106 0 65 6 106 0 66 6 106 0 67 6 106 0 68 6 106 0 69 6 106 0 70 6 106 0 71 6 106 0 72 6 106 0 73 6 106 0 74 6 106 0 75 6 106 0 76 6 106 0 77 6 106 0 78 6 106 0 79 6 106 0 80 6 106 0 81 6 106 0 82 6 106 0 83 6 106 0 84 6 106 0 85 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 90 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 95 6 106 0 96 6 106 0 97 6 106 0 98 6 106 0 99 6 106 0 100 6 106 0 101 6 106 0 102 6 106 0 103 6 106 0 104 6 106 0 105 6 106 0 106 6 106 0 111 6 106 0 112 6 106 0 115 6 106 0 116 6 106 0 118 6 106 0 119 6 106 0 120 6 106 0 121 6 106 0 122 6 106 0 123 6 106 0 124 6 106 0 125 6 106 0 126 15 213 0 146 6 106 1 144] 
#[1 6 106 0 1 6 106 0 2 6 106 0 3 6 106 0 4 6 106 0 5 6 106 0 6 6 106 0 7 6 106 0 9 6 106 0 10 6 106 0 11 6 106 0 12 6 106 0 13 6 106 0 15 6 106 0 16 6 106 0 17 6 106 0 18 6 106 0 19 6 106 0 20 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 29 6 106 0 30 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 34 6 106 0 35 6 106 0 36 6 106 0 37 6 106 0 38 6 106 0 39 6 106 0 40 6 106 0 41 6 106 0 42 6 106 0 43 6 106 0 44 6 106 0 45 6 106 0 46 6 106 0 47 6 106 0 48 6 106 0 49 6 106 0 50 6 106 0 51 6 106 0 52 6 106 0 53 6 106 0 54 6 106 0 55 6 106 0 56 6 106 0 57 6 106 0 58 6 106 0 59 6 106 0 60 6 106 0 61 6 106 0 62 6 106 0 63 6 106 0 64 6 106 0 65 6 106 0 66 6 106 0 67 6 106 0 68 6 106 0 69 6 106 0 70 6 106 0 71 6 106 0 72 6 106 0 73 6 106 0 74 6 106 0 75 6 106 0 76 6 106 0 77 6 106 0 78 6 106 0 79 6 106 0 80 6 106 0 81 6 106 0 82 6 106 0 83 6 106 0 84 6 106 0 85 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 90 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 95 6 106 0 96 6 106 0 97 6 106 0 98 6 106 0 99 6 106 0 100 6 106 0 101 6 106 0 102 6 106 0 103 6 106 0 104 6 106 0 105 6 106 0 106 6 106 0 111 6 106 0 112 6 106 0 115 6 106 0 116 6 106 0 118 6 106 0 119 6 106 0 120 6 106 0 121 6 106 0 122 6 106 0 123 6 106 0 124 6 106 0 125 6 106 0 126 15 217 0 146 6 106 1 144] 
#[1 6 106 0 1 6 106 0 2 6 106 0 3 6 106 0 4 6 106 0 5 6 106 0 6 6 106 0 7 6 106 0 9 6 106 0 10 6 106 0 11 6 106 0 12 6 106 0 13 6 106 0 15 6 106 0 16 6 106 0 17 6 106 0 18 6 106 0 19 6 106 0 20 6 106 0 21 6 106 0 22 6 106 0 23 6 106 0 24 6 106 0 25 6 106 0 26 6 106 0 27 6 106 0 28 6 106 0 29 6 106 0 30 6 106 0 31 6 106 0 32 6 106 0 33 6 106 0 34 6 106 0 35 6 106 0 36 6 106 0 37 6 106 0 38 6 106 0 39 6 106 0 40 6 106 0 41 6 106 0 42 6 106 0 43 6 106 0 44 6 106 0 45 6 106 0 47 6 106 0 48 6 106 0 49 6 106 0 50 6 106 0 51 6 106 0 52 6 106 0 53 6 106 0 54 6 106 0 55 6 106 0 56 6 106 0 57 6 106 0 58 6 106 0 59 6 106 0 60 6 106 0 61 6 106 0 62 6 106 0 63 6 106 0 64 6 106 0 65 6 106 0 66 6 106 0 67 6 106 0 68 6 106 0 69 6 106 0 70 6 106 0 71 6 106 0 72 6 106 0 73 6 106 0 74 6 106 0 75 6 106 0 76 6 106 0 77 6 106 0 78 6 106 0 79 6 106 0 80 6 106 0 81 6 106 0 82 6 106 0 83 6 106 0 84 6 106 0 85 6 106 0 86 6 106 0 87 6 106 0 88 6 106 0 89 6 106 0 90 6 106 0 91 6 106 0 92 6 106 0 93 6 106 0 94 6 106 0 95 6 106 0 96 6 106 0 97 6 106 0 98 6 106 0 99 6 106 0 100 6 106 0 101 6 106 0 102 6 106 0 103 6 106 0 104 6 106 0 105 6 106 0 106 6 106 0 107 6 106 0 111 6 106 0 112 6 106 0 115 6 106 0 116 6 106 0 118 6 106 0 119 6 106 0 120 6 106 0 121 6 106 0 122 6 106 0 123 6 106 0 124 6 106 0 125 6 106 0 126 15 221 0 146 6 106 1 144] 
#[0 15 225 0 14] 
#[1 6 110 0 14 6 110 0 31 6 110 0 46 6 110 0 107 15 229 0 143] 
#[0 15 233 0 37] 
#[0 15 237 0 46] 
#[0 15 241 0 107] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 64 0 14 0 65 0 14 0 68 0 14 0 71 0 14 0 76 0 14 0 78 0 14 0 83 0 14 0 86 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 93 0 14 0 95 0 14 0 96 0 14 0 98 15 245 0 107 0 14 0 111 0 14 0 112 0 33 0 154 0 37 0 155] 
#[0 6 114 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 42 0 44 0 45 0 49 0 52 0 53 0 58 0 60 0 62 0 64 0 65 0 68 0 69 0 71 0 76 0 78 0 86 0 87 0 88 0 89 0 90 0 93 0 95 0 96 0 98 0 111 0 112 0 123 0 124 0 126] 
#[1 15 249 0 31 15 253 0 35] 
#[0 6 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 16 1 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 6 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 16 5 0 31] 
#[0 6 126 0 14 0 19] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 16 9 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 16 13 0 31 3 1 0 100 16 17 0 222] 
#[1 6 130 0 14 16 21 0 19 16 25 0 191] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 16 29 1 139] 
#[0 16 33 0 29] 
#[0 6 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 16 37 0 19 6 138 0 107 16 41 0 187] 
#[1 16 45 0 31 3 1 0 100 16 49 0 222] 
#[0 16 53 0 14] 
#[0 6 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 16 57 0 107] 
#[0 6 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 16 61 0 107 1 234 0 111 1 234 0 112 6 157 0 176 16 65 0 186 6 165 0 189] 
#[0 6 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 16 69 0 107] 
#[0 16 73 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 16 77 0 208 5 97 0 230] 
#[1 3 1 0 100 1 126 0 103 16 81 0 207 4 85 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 16 85 0 159] 
#[0 6 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 16 89 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 16 93 0 31 16 97 0 35] 
#[0 6 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 16 101 0 31 16 105 0 35 3 1 0 100 16 109 0 222] 
#[0 16 113 0 31] 
#[0 6 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 16 117 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 16 121 0 31] 
#[0 6 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 16 125 0 107] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 1 234 0 111 1 234 0 112 6 157 0 176 16 129 0 186 6 165 0 189] 
#[0 16 133 0 107] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 2 82 0 100 2 82 0 103 0 133 0 111 0 137 0 112 1 153 0 123 16 137 0 206 3 125 0 228 6 197 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 16 141 0 103] 
#[1 16 145 0 29 3 1 0 100 1 126 0 103 16 149 0 207 4 85 0 222] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 87 1 234 0 89 1 234 0 96 16 153 0 107 1 234 0 111 1 234 0 112 9 173 0 176 9 177 0 214] 
#[1 0 67 0 3 1 246 0 5 1 246 0 30 1 246 0 52 1 246 0 53 1 246 0 58 1 246 0 60 1 246 0 65 1 246 0 68 1 246 0 76 1 246 0 83 1 246 0 86 1 246 0 87 1 246 0 89 1 246 0 96 1 246 0 107 1 246 0 111 1 246 0 112 16 157 0 213 5 97 0 230] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 16 161 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 16 165 0 69] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 16 169 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 1 0 100 16 173 0 103 16 177 0 222] 
#[1 0 7 0 3 0 10 0 5 0 10 0 30 0 10 0 52 0 10 0 53 0 10 0 58 0 10 0 60 0 10 0 64 0 10 0 65 0 10 0 68 0 10 0 71 0 10 0 76 0 10 0 78 0 10 0 83 0 10 0 86 0 10 0 87 0 10 0 88 0 10 0 89 0 10 0 90 0 10 0 93 0 10 0 95 0 10 0 96 0 10 0 98 0 10 0 107 0 10 0 111 0 10 0 112 16 181 0 130 5 97 0 230] 
#[1 3 1 0 100 1 126 0 103 16 185 0 207 4 85 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 16 189 0 159] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 2 82 0 100 2 82 0 103 0 133 0 111 0 137 0 112 1 153 0 123 16 193 0 206 3 125 0 228 6 197 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 16 197 0 103] 
#[1 12 57 0 19 3 134 0 107 12 61 0 165 16 201 0 167] 
#[1 0 49 0 5 2 89 0 15 2 93 0 30 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 2 97 0 103 6 170 0 107 0 133 0 111 0 137 0 112 16 205 0 164 2 105 1 103 0 245 1 106 0 253 1 139] 
#[0 6 174 0 19 0 107] 
#[0 16 209 0 107] 
#[0 6 178 0 19 0 31 0 107] 
#[1 2 106 0 19 2 106 0 107 16 213 0 166] 
#[1 16 217 0 22 16 221 0 31 3 1 0 100 6 33 0 103 16 225 0 181 16 229 0 222 16 233 0 242] 
#[0 16 237 0 14] 
#[1 6 182 0 14 16 241 0 19] 
#[1 3 53 0 1 0 45 0 3 0 49 0 5 13 77 0 9 1 97 0 11 1 101 0 12 16 245 0 13 1 109 0 15 13 85 0 20 13 89 0 24 16 249 0 25 16 253 0 30 1 117 0 42 1 121 0 44 17 1 0 45 17 5 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 13 101 0 66 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 17 9 0 80 13 109 0 84 17 13 0 86 0 109 0 89 13 113 0 91 1 149 0 96 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 1 153 0 123 3 65 0 124 17 17 0 126 17 21 0 131 1 169 0 132 1 173 0 134 17 25 0 177 17 29 0 178 17 33 0 180 1 181 0 228 9 117 0 231 17 37 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 17 41 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 17 45 1 111 13 229 1 127 17 49 1 129 2 21 1 130 3 117 1 133 2 29 1 135 13 233 1 139 13 237 1 144] 
#[1 6 186 0 14 6 186 0 19 17 53 0 174] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 11 1 234 0 12 1 234 0 13 17 57 0 14 1 234 0 15 1 234 0 20 1 234 0 24 1 234 0 25 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 66 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 1 234 0 96 1 234 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 123 1 234 0 124 1 234 0 126 17 61 0 172 12 85 0 175 12 89 0 176 12 93 0 179 1 234 1 144] 
#[0 6 190 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 6 194 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 6 198 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 100 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144 1 145] 
#[0 17 65 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 17 69 0 208 5 97 0 230] 
#[1 3 1 0 100 1 126 0 103 17 73 0 207 4 85 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 17 77 0 159] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 17 81 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 17 85 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 6 202 0 1 0 5 0 11 0 12 0 13 0 15 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 103 0 111 0 112 0 123 0 124 0 126] 
#[0 17 89 0 29] 
#[0 17 93 0 68] 
#[1 0 227 0 17 0 231 0 29] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 6 206 0 19 3 41 0 30 6 206 0 31 6 206 0 35 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 6 206 0 103 0 133 0 111 0 137 0 112 1 153 0 123 3 125 0 228 17 97 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[1 6 210 0 11 6 210 0 12 6 210 0 19 6 210 0 31 6 210 0 35 6 210 0 103 6 210 0 123 17 101 1 99 17 105 1 101] 
#[1 12 165 0 13 6 214 0 19 12 169 0 35 12 173 0 103 6 214 0 107 17 109 0 199 17 113 0 200 17 117 0 201] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 11 1 234 0 12 1 234 0 13 17 121 0 14 1 234 0 15 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 96 1 234 0 111 1 234 0 112 1 234 0 123 1 234 0 124 1 234 0 126 6 141 0 176 17 125 0 190 6 149 0 193] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 17 129 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 17 133 0 107 1 234 0 111 1 234 0 112 6 157 0 176 17 137 0 186 6 165 0 189] 
#[0 6 218 0 19 0 107] 
#[0 6 222 0 19 0 107] 
#[0 6 226 0 19 0 107] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 6 230 0 107 1 234 0 111 1 234 0 112 5 57 0 176 17 141 0 198] 
#[0 6 234 0 19 0 107] 
#[0 6 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 6 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 17 145 0 107] 
#[0 6 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 45 0 52 1 49 0 65 0 46 0 68 1 53 0 96] 
#[1 0 58 0 68 1 73 0 116 1 77 0 118 1 81 0 170 2 221 0 171 1 89 1 144] 
#[1 17 149 0 65 0 82 0 68] 
#[0 6 250 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 87 0 89 0 96 0 107 0 111 0 112] 
#[0 6 254 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 87 0 89 0 96 0 107 0 111 0 112] 
#[0 7 2 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 87 0 89 0 96 0 107 0 111 0 112] 
#[1 0 57 0 52 12 213 0 58 12 217 0 65 0 30 0 68 0 101 0 87 12 221 0 96 17 153 0 168 0 181 0 169 17 157 0 204] 
#[0 7 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 17 161 0 159] 
#[0 17 165 0 103] 
#[0 7 10 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 7 14 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 7 14 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 7 14 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 7 14 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 7 14 0 46 14 173 0 47 14 177 0 48 14 181 0 51 7 14 0 103 14 185 0 105 14 189 0 106 7 14 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 17 169 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 7 18 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 7 18 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 7 18 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 7 18 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 7 18 0 46 14 173 0 47 14 177 0 48 14 181 0 51 7 18 0 103 14 185 0 105 14 189 0 106 7 18 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 17 173 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 65 0 2 14 69 0 6 7 22 0 7 7 22 0 9 7 22 0 10 7 22 0 14 14 85 0 15 7 22 0 16 14 93 0 17 7 22 0 18 7 22 0 19 14 101 0 20 7 22 0 21 14 109 0 23 7 22 0 24 7 22 0 26 14 121 0 27 7 22 0 28 7 22 0 31 14 129 0 32 7 22 0 33 14 137 0 34 7 22 0 35 14 145 0 36 7 22 0 37 14 149 0 38 14 153 0 39 7 22 0 40 14 161 0 41 14 165 0 42 7 22 0 46 14 173 0 47 7 22 0 48 14 181 0 51 7 22 0 103 7 22 0 105 7 22 0 106 7 22 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 205 0 1 15 129 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 17 177 0 14 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 5 97 0 230 10 53 0 231 17 181 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 17 185 0 250 17 189 0 251 17 193 0 252 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 7 26 0 2 7 26 0 6 7 26 0 7 7 26 0 9 7 26 0 10 7 26 0 14 7 26 0 15 7 26 0 16 7 26 0 17 7 26 0 18 7 26 0 19 7 26 0 20 7 26 0 21 14 109 0 23 7 26 0 24 7 26 0 26 7 26 0 27 7 26 0 28 7 26 0 31 7 26 0 32 7 26 0 33 7 26 0 34 7 26 0 35 7 26 0 36 7 26 0 37 7 26 0 38 7 26 0 39 7 26 0 40 7 26 0 41 14 165 0 42 7 26 0 46 7 26 0 47 7 26 0 48 14 181 0 51 7 26 0 103 7 26 0 105 7 26 0 106 7 26 0 107 7 26 0 108 14 197 0 109 14 201 0 110 7 26 0 124 7 26 0 125 7 26 0 126] 
#[1 7 30 0 2 14 69 0 6 7 30 0 7 7 30 0 9 7 30 0 10 7 30 0 14 14 85 0 15 7 30 0 16 7 30 0 17 7 30 0 18 7 30 0 19 7 30 0 20 7 30 0 21 14 109 0 23 7 30 0 24 7 30 0 26 14 121 0 27 7 30 0 28 7 30 0 31 7 30 0 32 7 30 0 33 7 30 0 34 7 30 0 35 7 30 0 36 7 30 0 37 7 30 0 38 7 30 0 39 7 30 0 40 7 30 0 41 14 165 0 42 7 30 0 46 7 30 0 47 7 30 0 48 14 181 0 51 7 30 0 103 7 30 0 105 7 30 0 106 7 30 0 107 7 30 0 108 14 197 0 109 14 201 0 110 7 30 0 124 7 30 0 125 7 30 0 126] 
#[1 14 65 0 2 14 69 0 6 7 34 0 7 14 77 0 9 7 34 0 10 7 34 0 14 14 85 0 15 7 34 0 16 14 93 0 17 7 34 0 18 7 34 0 19 14 101 0 20 7 34 0 21 14 109 0 23 14 121 0 27 7 34 0 28 7 34 0 31 14 129 0 32 7 34 0 33 14 137 0 34 7 34 0 35 14 145 0 36 7 34 0 37 14 149 0 38 14 153 0 39 7 34 0 40 14 161 0 41 14 165 0 42 7 34 0 46 14 173 0 47 7 34 0 48 14 181 0 51 7 34 0 103 7 34 0 105 14 189 0 106 7 34 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 7 38 0 7 14 77 0 9 7 38 0 10 7 38 0 14 14 85 0 15 7 38 0 16 14 93 0 17 7 38 0 18 7 38 0 19 14 101 0 20 7 38 0 21 14 109 0 23 14 121 0 27 7 38 0 28 7 38 0 31 14 129 0 32 7 38 0 33 14 137 0 34 7 38 0 35 14 145 0 36 7 38 0 37 14 149 0 38 14 153 0 39 7 38 0 40 14 161 0 41 14 165 0 42 7 38 0 46 14 173 0 47 7 38 0 48 14 181 0 51 7 38 0 103 7 38 0 105 14 189 0 106 7 38 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 6 30 0 2 6 30 0 6 6 30 0 7 6 30 0 9 6 30 0 10 6 30 0 13 6 30 0 14 6 30 0 15 6 30 0 16 6 30 0 17 6 30 0 18 6 30 0 19 6 30 0 20 6 30 0 21 6 30 0 23 6 30 0 24 6 30 0 25 6 30 0 26 6 30 0 27 6 30 0 28 6 30 0 29 6 30 0 30 6 30 0 31 6 30 0 32 6 30 0 33 6 30 0 34 6 30 0 35 6 30 0 36 6 30 0 37 6 30 0 38 6 30 0 39 6 30 0 40 6 30 0 41 6 30 0 42 6 30 0 46 6 30 0 47 6 30 0 48 6 30 0 51 6 30 0 70 6 30 0 72 6 30 0 103 6 30 0 104 6 30 0 105 6 30 0 106 6 30 0 107 6 30 0 108 6 30 0 109 6 30 0 110 6 30 0 124 6 30 0 125 6 30 0 126 17 197 1 109] 
#[1 9 205 0 1 15 129 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 17 201 0 46 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 5 97 0 230 10 53 0 231 17 205 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 17 209 0 247 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 6 33 0 103 17 213 0 242] 
#[0 7 42 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 7 46 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 7 46 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 7 46 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 7 46 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 7 46 0 46 14 173 0 47 14 177 0 48 14 181 0 51 7 46 0 103 14 185 0 105 14 189 0 106 7 46 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 205 0 1 7 50 0 2 0 45 0 3 0 49 0 5 7 50 0 6 7 50 0 7 9 209 0 8 9 213 0 9 7 50 0 10 9 217 0 13 7 50 0 14 9 221 0 15 7 50 0 16 7 50 0 17 7 50 0 18 7 50 0 19 9 225 0 20 7 50 0 21 7 50 0 23 9 229 0 24 9 233 0 26 7 50 0 27 7 50 0 28 14 49 0 29 9 237 0 30 7 50 0 31 7 50 0 32 7 50 0 33 7 50 0 34 7 50 0 35 7 50 0 36 7 50 0 37 7 50 0 38 7 50 0 39 7 50 0 40 7 50 0 41 7 50 0 42 1 121 0 44 9 241 0 45 7 50 0 46 7 50 0 47 7 50 0 48 7 50 0 51 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 0 235 0 103 10 37 0 104 7 50 0 105 10 41 0 106 7 50 0 107 7 50 0 108 7 50 0 109 7 50 0 110 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 7 50 0 125 7 50 0 126 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 17 217 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 7 54 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 7 54 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 7 54 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 7 54 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 7 54 0 46 14 173 0 47 14 177 0 48 14 181 0 51 7 54 0 103 14 185 0 105 14 189 0 106 7 54 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 205 0 1 7 58 0 2 0 45 0 3 0 49 0 5 7 58 0 6 7 58 0 7 9 209 0 8 9 213 0 9 7 58 0 10 9 217 0 13 7 58 0 14 9 221 0 15 7 58 0 16 7 58 0 17 7 58 0 18 7 58 0 19 9 225 0 20 7 58 0 21 7 58 0 23 9 229 0 24 9 233 0 26 7 58 0 27 7 58 0 28 14 49 0 29 9 237 0 30 7 58 0 31 7 58 0 32 7 58 0 33 7 58 0 34 7 58 0 35 7 58 0 36 7 58 0 37 7 58 0 38 7 58 0 39 7 58 0 40 7 58 0 41 7 58 0 42 1 121 0 44 9 241 0 45 7 58 0 46 7 58 0 47 7 58 0 48 7 58 0 51 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 0 239 0 103 10 37 0 104 7 58 0 105 10 41 0 106 7 58 0 107 7 58 0 108 7 58 0 109 7 58 0 110 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 7 58 0 125 7 58 0 126 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 17 221 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 7 62 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 7 62 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 7 62 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 7 62 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 7 62 0 46 14 173 0 47 14 177 0 48 14 181 0 51 7 62 0 103 14 185 0 105 14 189 0 106 7 62 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 17 225 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 17 229 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 189 1 48 17 233 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 17 237 0 14 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 17 241 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 17 245 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 17 249 1 63 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 17 253 0 121 18 1 0 122] 
#[0 7 66 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 18 5 0 46 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 18 9 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 18 13 1 67 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 7 70 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 74 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 18 17 1 139] 
#[1 1 1 0 53 1 9 0 76 18 21 0 80 0 133 0 111 0 137 0 112 18 25 1 139] 
#[0 7 78 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 18 29 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 7 82 0 14 7 82 0 19 7 86 0 25 7 86 0 26 7 82 0 29 7 82 0 31 7 82 0 35 7 82 0 37 7 82 0 46 7 82 0 70 7 82 0 72 7 82 0 104 7 82 0 107] 
#[0 7 90 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 94 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 7 98 0 14 7 98 0 19 7 102 0 25 7 102 0 26 7 98 0 29 7 98 0 31 7 98 0 35 7 98 0 37 7 98 0 46 7 98 0 70 7 98 0 72 7 98 0 104 7 98 0 107] 
#[0 7 106 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 7 110 0 14 7 110 0 19 7 114 0 25 7 114 0 26 7 110 0 29 7 110 0 31 7 110 0 35 7 110 0 37 7 110 0 46 7 110 0 70 7 110 0 72 7 110 0 104 7 110 0 107] 
#[1 7 118 0 14 7 118 0 19 7 122 0 25 7 122 0 26 7 118 0 29 7 118 0 31 7 118 0 35 7 118 0 37 7 118 0 46 7 118 0 70 7 118 0 72 7 118 0 104 7 118 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 18 33 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 18 37 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 189 1 48 17 233 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 7 126 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 18 41 0 72] 
#[1 7 130 0 14 7 130 0 19 7 130 0 29 7 130 0 31 7 130 0 35 7 130 0 37 7 130 0 46 7 130 0 70 7 130 0 72 7 130 0 104 7 130 0 107 18 45 1 40] 
#[0 7 134 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 138 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 142 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 146 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 150 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 154 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 158 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 18 49 0 25 18 53 0 26] 
#[0 7 162 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 166 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 170 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 174 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 178 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 182 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 186 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 18 57 0 13 7 190 0 14 7 190 0 19 7 194 0 25 7 194 0 26 7 190 0 29 7 190 0 31 7 190 0 35 7 190 0 37 7 190 0 46 7 190 0 70 7 190 0 72 18 61 0 103 7 190 0 104 7 190 0 107] 
#[1 7 198 0 14 7 198 0 19 7 202 0 25 7 202 0 26 7 198 0 29 7 198 0 31 7 198 0 35 7 198 0 37 7 198 0 46 7 198 0 70 7 198 0 72 7 198 0 104 7 198 0 107] 
#[1 0 190 0 1 0 190 0 13 0 243 0 14 0 190 0 17 0 243 0 19 0 190 0 25 0 190 0 26 0 243 0 29 0 190 0 30 0 243 0 31 0 243 0 35 0 243 0 37 18 65 0 43 0 243 0 46 0 243 0 70 0 243 0 72 0 190 0 103 0 243 0 104 0 243 0 107 0 190 0 124] 
#[0 7 210 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 18 69 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 18 73 1 34 18 77 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 6 33 0 103 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126 18 81 0 242] 
#[0 7 214 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 18 85 0 103 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 13 1 234 0 20 1 234 0 24 1 234 0 30 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 66 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 0 247 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 124 1 234 0 126 14 29 0 176 18 93 1 16 14 37 1 19 1 234 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 18 97 0 22 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 101 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 7 218 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 7 218 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 7 218 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 7 218 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 7 218 0 46 14 173 0 47 14 177 0 48 14 181 0 51 7 218 0 103 14 185 0 105 14 189 0 106 7 218 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 7 222 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 18 69 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 18 105 1 34 18 77 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 6 33 0 103 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126 18 109 0 242] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 18 113 0 22 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 117 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 0 45 0 3 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 9 117 0 231 18 121 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 18 125 0 104] 
#[1 7 226 0 19 7 226 0 104 18 129 1 18] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 18 133 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 14 65 0 2 14 69 0 6 7 230 0 7 14 77 0 9 7 230 0 10 7 230 0 14 14 85 0 15 7 230 0 16 14 93 0 17 7 230 0 18 7 230 0 19 14 101 0 20 7 230 0 21 14 109 0 23 7 230 0 24 7 230 0 26 14 121 0 27 7 230 0 28 7 230 0 31 14 129 0 32 7 230 0 33 14 137 0 34 7 230 0 35 14 145 0 36 7 230 0 37 14 149 0 38 14 153 0 39 7 230 0 40 14 161 0 41 14 165 0 42 7 230 0 46 14 173 0 47 7 230 0 48 14 181 0 51 7 230 0 103 7 230 0 105 7 230 0 106 7 230 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 7 234 0 69 0 74 0 101] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 0 251 0 2 0 251 0 6 0 251 0 7 0 251 0 9 0 251 0 10 7 238 0 14 0 251 0 15 0 251 0 16 0 251 0 17 0 251 0 18 7 238 0 19 0 251 0 20 0 251 0 21 0 251 0 23 0 251 0 24 0 251 0 26 0 251 0 27 0 251 0 28 7 238 0 31 0 251 0 32 0 251 0 33 0 251 0 34 0 251 0 35 0 251 0 36 7 238 0 37 0 251 0 38 0 251 0 39 0 251 0 40 0 251 0 41 0 251 0 42 7 238 0 46 0 251 0 47 0 251 0 48 0 251 0 51 7 238 0 103 0 251 0 105 0 251 0 106 7 238 0 107 0 251 0 108 0 251 0 109 0 251 0 110 0 251 0 124 0 251 0 125 0 251 0 126] 
#[1 7 242 0 1 0 255 0 2 7 242 0 3 7 242 0 5 0 255 0 6 0 255 0 7 7 242 0 8 0 255 0 9 0 255 0 10 7 242 0 13 7 242 0 14 0 255 0 15 0 255 0 16 0 255 0 17 0 255 0 18 7 242 0 19 0 255 0 20 0 255 0 21 0 255 0 23 0 255 0 24 0 255 0 26 0 255 0 27 0 255 0 28 7 242 0 30 7 242 0 31 0 255 0 32 0 255 0 33 0 255 0 34 0 255 0 35 0 255 0 36 7 242 0 37 0 255 0 38 0 255 0 39 0 255 0 40 0 255 0 41 0 255 0 42 7 242 0 44 7 242 0 45 7 242 0 46 0 255 0 47 0 255 0 48 7 242 0 49 0 255 0 51 7 242 0 52 7 242 0 53 7 242 0 56 7 242 0 57 7 242 0 58 7 242 0 59 7 242 0 60 7 242 0 64 7 242 0 65 7 242 0 66 7 242 0 68 7 242 0 69 7 242 0 70 7 242 0 71 7 242 0 73 7 242 0 74 7 242 0 76 7 242 0 77 7 242 0 78 7 242 0 79 7 242 0 80 7 242 0 83 7 242 0 84 7 242 0 85 7 242 0 86 7 242 0 87 7 242 0 88 7 242 0 89 7 242 0 90 7 242 0 91 7 242 0 93 7 242 0 95 7 242 0 96 7 242 0 98 7 242 0 101 7 242 0 103 7 242 0 104 0 255 0 105 0 255 0 106 7 242 0 107 0 255 0 108 0 255 0 109 0 255 0 110 7 242 0 111 7 242 0 112 7 242 0 115 7 242 0 116 7 242 0 118 7 242 0 119 7 242 0 120 7 242 0 121 7 242 0 122 7 242 0 123 0 255 0 124 0 255 0 125 0 255 0 126 7 242 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 137 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 141 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 145 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 149 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 153 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 157 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 161 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 165 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 169 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 173 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 177 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 18 181 0 54 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 18 185 0 121 18 189 0 253 3 45 1 106 18 193 1 110 10 157 1 111 18 197 1 139] 
#[1 9 205 0 1 7 246 0 2 0 45 0 3 0 49 0 5 7 246 0 6 7 246 0 7 9 209 0 8 9 213 0 9 7 246 0 10 9 217 0 13 7 246 0 14 9 221 0 15 7 246 0 16 7 246 0 17 7 246 0 18 7 246 0 19 9 225 0 20 7 246 0 21 7 246 0 23 7 246 0 27 7 246 0 28 9 237 0 30 7 246 0 31 7 246 0 32 7 246 0 33 7 246 0 34 7 246 0 35 7 246 0 36 7 246 0 37 7 246 0 38 7 246 0 39 7 246 0 40 7 246 0 41 7 246 0 42 1 121 0 44 9 241 0 45 7 246 0 46 7 246 0 47 7 246 0 48 7 246 0 51 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 1 3 0 103 10 37 0 104 7 246 0 105 10 41 0 106 7 246 0 107 7 246 0 108 7 246 0 109 7 246 0 110 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 7 246 0 125 7 246 0 126 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 201 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 205 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 209 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 213 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 217 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 221 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 225 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 229 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 233 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 237 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 241 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 245 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 249 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 7 250 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 7 254 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 18 253 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 1 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 19 5 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 9 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 13 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 17 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 19 21 0 14 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 25 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 19 29 1 14 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 33 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 37 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 41 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 45 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 8 2 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 8 6 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 8 10 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 8 14 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 19 49 0 14 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 53 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 0 210 0 3 0 210 0 24 1 7 0 53 1 11 0 76 1 15 0 107 1 19 0 111 1 23 0 112 1 27 0 121 19 61 0 159 19 65 0 253 19 69 1 9 19 73 1 12 19 77 1 139] 
#[1 8 18 0 2 8 18 0 6 8 18 0 7 8 18 0 9 8 18 0 10 8 18 0 13 8 18 0 14 8 18 0 15 8 18 0 16 8 18 0 17 8 18 0 18 8 18 0 19 8 18 0 20 8 18 0 21 8 18 0 23 8 18 0 24 8 18 0 25 8 18 0 26 8 18 0 27 8 18 0 28 8 18 0 29 14 249 0 30 8 18 0 31 8 18 0 32 8 18 0 33 8 18 0 34 8 18 0 35 8 18 0 36 8 18 0 37 8 18 0 38 8 18 0 39 8 18 0 40 8 18 0 41 8 18 0 42 8 18 0 46 8 18 0 47 8 18 0 48 8 18 0 51 8 18 0 70 8 18 0 72 8 18 0 103 8 18 0 104 8 18 0 105 8 18 0 106 8 18 0 107 8 18 0 108 8 18 0 109 8 18 0 110 8 18 0 124 8 18 0 125 8 18 0 126 19 81 1 108] 
#[1 3 241 0 124 19 85 1 112] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 19 89 1 110 10 157 1 111 0 253 1 139] 
#[0 8 22 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 72 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 8 26 0 2 8 26 0 6 8 26 0 7 8 26 0 9 8 26 0 10 8 26 0 14 8 26 0 15 8 26 0 16 8 26 0 17 8 26 0 18 8 26 0 19 8 26 0 20 8 26 0 21 8 26 0 23 8 26 0 24 8 26 0 25 8 26 0 26 8 26 0 27 8 26 0 28 8 26 0 29 14 249 0 30 8 26 0 31 8 26 0 32 8 26 0 33 8 26 0 34 8 26 0 35 8 26 0 36 8 26 0 37 8 26 0 38 8 26 0 39 8 26 0 40 8 26 0 41 8 26 0 42 8 26 0 46 8 26 0 47 8 26 0 48 8 26 0 51 8 26 0 70 8 26 0 72 8 26 0 103 8 26 0 104 8 26 0 105 8 26 0 106 8 26 0 107 8 26 0 108 8 26 0 109 8 26 0 110 8 26 0 124 8 26 0 125 8 26 0 126 19 93 1 108] 
#[0 12 253 0 14] 
#[0 19 97 0 29] 
#[1 6 210 0 11 6 210 0 12 6 210 0 19 6 210 0 123 6 210 0 125 19 101 1 99 17 105 1 101] 
#[1 8 30 0 19 19 105 0 29 8 30 0 125] 
#[1 8 34 0 19 19 109 0 29 19 113 0 35 8 34 0 125] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 8 38 0 19 3 41 0 30 19 117 0 35 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 1 153 0 123 8 38 0 125 3 125 0 228 19 121 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 19 125 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 8 42 0 1 0 5 0 11 0 12 0 13 0 15 0 29 0 30 0 31 0 35 0 42 0 44 0 45 0 49 0 53 0 60 0 62 0 65 0 68 0 69 0 71 0 76 0 86 0 89 0 96 0 100 0 103 0 111 0 112 0 123 0 124 0 126] 
#[0 8 46 0 30] 
#[1 3 1 0 100 19 129 0 103 19 133 0 222] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 19 137 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 19 141 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 19 145 0 159] 
#[0 19 149 0 103] 
#[1 8 50 0 2 8 50 0 6 8 50 0 7 8 50 0 9 8 50 0 10 8 50 0 14 8 50 0 15 8 50 0 16 8 50 0 17 8 50 0 18 8 50 0 19 8 50 0 20 8 50 0 21 15 85 0 22 8 50 0 23 8 50 0 24 8 50 0 26 8 50 0 27 8 50 0 28 8 50 0 29 8 50 0 30 8 50 0 31 8 50 0 32 8 50 0 33 8 50 0 34 8 50 0 35 8 50 0 36 8 50 0 37 8 50 0 38 8 50 0 39 8 50 0 40 8 50 0 41 8 50 0 42 8 50 0 46 8 50 0 47 8 50 0 48 8 50 0 51 8 50 0 69 8 50 0 100 8 50 0 103 8 50 0 104 8 50 0 105 8 50 0 106 8 50 0 107 8 50 0 108 8 50 0 109 8 50 0 110 8 50 0 124 8 50 0 125 8 50 0 126 19 153 1 82] 
#[0 19 157 0 14] 
#[0 8 54 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 45 0 3 0 49 0 5 0 53 0 30 0 57 0 52 1 1 0 53 0 65 0 58 0 69 0 60 12 217 0 65 0 30 0 68 1 9 0 76 0 93 0 83 0 97 0 86 0 109 0 89 0 117 0 93 12 221 0 96 0 133 0 111 0 137 0 112 0 141 0 132 0 145 0 134 19 161 0 138 19 165 0 168 0 181 0 169 19 169 0 182 19 173 0 203 9 117 0 231 0 241 1 103 0 245 1 106 19 177 1 138 0 253 1 139] 
#[0 8 58 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 89 0 93 0 96 0 107 0 111 0 112] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 19 181 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 19 185 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 8 62 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 250 0 14 0 250 0 19 19 189 0 29] 
#[0 8 66 0 14 0 19] 
#[1 0 190 0 1 0 190 0 13 0 190 0 14 0 190 0 17 0 190 0 19 19 193 0 29 0 190 0 30 0 190 0 124] 
#[1 8 70 0 2 8 70 0 6 8 70 0 7 8 70 0 9 8 70 0 10 8 70 0 14 8 70 0 15 8 70 0 16 8 70 0 17 8 70 0 18 8 70 0 19 8 70 0 20 8 70 0 21 15 85 0 22 8 70 0 23 8 70 0 24 8 70 0 26 8 70 0 27 8 70 0 28 8 70 0 29 8 70 0 30 8 70 0 31 8 70 0 32 8 70 0 33 8 70 0 34 8 70 0 35 8 70 0 36 8 70 0 37 8 70 0 38 8 70 0 39 8 70 0 40 8 70 0 41 8 70 0 42 8 70 0 46 8 70 0 47 8 70 0 48 8 70 0 51 8 70 0 69 8 70 0 100 8 70 0 103 8 70 0 104 8 70 0 105 8 70 0 106 8 70 0 107 8 70 0 108 8 70 0 109 8 70 0 110 8 70 0 124 8 70 0 125 8 70 0 126 19 197 1 82] 
#[1 8 74 0 14 19 201 0 19 19 205 1 85] 
#[0 8 78 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 8 82 0 14 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 19 209 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 8 86 0 14 0 19] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 19 213 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 29 0 1 1 21 0 45] 
#[0 8 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[0 8 94 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144 1 145] 
#[1 0 94 0 1 1 18 0 2 0 94 0 3 0 94 0 5 1 18 0 6 1 18 0 7 0 94 0 8 1 31 0 9 1 18 0 10 0 94 0 13 1 31 0 15 1 18 0 16 1 18 0 17 1 18 0 18 1 31 0 20 1 18 0 21 1 18 0 23 1 31 0 24 1 31 0 26 1 18 0 27 1 18 0 28 0 94 0 30 1 31 0 31 1 18 0 32 1 18 0 33 1 18 0 34 1 18 0 35 1 18 0 36 1 18 0 38 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 42 0 94 0 44 0 94 0 45 1 18 0 47 1 18 0 48 1 18 0 51 0 94 0 52 0 94 0 53 0 94 0 56 0 94 0 57 0 94 0 58 0 94 0 59 0 94 0 60 0 94 0 64 0 94 0 65 0 94 0 66 0 94 0 68 0 94 0 69 0 94 0 70 0 94 0 71 0 94 0 73 0 94 0 74 0 94 0 76 0 94 0 77 0 94 0 78 0 94 0 79 0 94 0 83 0 94 0 85 0 94 0 86 0 94 0 87 0 94 0 88 0 94 0 89 0 94 0 90 0 94 0 91 0 94 0 93 0 94 0 95 0 94 0 96 0 94 0 98 0 94 0 101 0 94 0 103 0 94 0 104 1 18 0 105 1 31 0 106 1 31 0 107 1 18 0 108 1 18 0 109 1 18 0 110 0 94 0 111 0 94 0 112 0 94 0 115 0 94 0 116 0 94 0 118 0 94 0 119 0 94 0 120 0 94 0 121 0 94 0 122 0 94 0 123 1 31 0 124 1 18 0 125 1 18 0 126 0 94 1 144] 
#[1 1 22 0 2 1 22 0 6 1 22 0 7 1 22 0 9 1 22 0 10 1 22 0 15 1 22 0 16 1 22 0 17 1 22 0 18 1 22 0 20 1 22 0 21 1 22 0 23 1 22 0 24 1 22 0 26 1 22 0 27 1 22 0 28 1 35 0 31 1 22 0 32 1 22 0 33 1 22 0 34 1 22 0 35 1 22 0 36 1 22 0 38 1 22 0 39 1 22 0 40 1 22 0 41 1 22 0 42 1 22 0 47 1 22 0 48 1 22 0 51 1 22 0 105 1 22 0 106 1 22 0 107 1 22 0 108 1 22 0 109 1 22 0 110 1 22 0 124 1 22 0 125 1 22 0 126] 
#[0 8 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[0 8 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[1 0 45 0 3 19 217 0 73 9 117 0 231] 
#[0 8 106 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[0 8 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[0 8 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[1 5 198 0 2 5 198 0 6 5 198 0 7 5 198 0 9 5 198 0 10 5 198 0 15 5 198 0 16 5 198 0 17 5 198 0 18 5 198 0 20 5 198 0 21 5 198 0 23 5 198 0 24 5 198 0 26 5 198 0 27 5 198 0 28 19 221 0 31 5 198 0 32 5 198 0 33 5 198 0 34 5 198 0 35 5 198 0 36 5 198 0 38 5 198 0 39 5 198 0 40 5 198 0 41 5 198 0 42 5 198 0 47 5 198 0 48 5 198 0 51 5 198 0 105 5 198 0 106 8 118 0 107 5 198 0 108 5 198 0 109 5 198 0 110 5 198 0 124 5 198 0 125 5 198 0 126] 
#[1 8 122 0 1 5 202 0 2 8 122 0 3 8 122 0 5 5 202 0 6 5 202 0 7 8 122 0 8 1 39 0 9 5 202 0 10 8 122 0 13 1 39 0 15 5 202 0 16 5 202 0 17 5 202 0 18 1 39 0 20 5 202 0 21 5 202 0 23 1 39 0 24 1 39 0 26 5 202 0 27 5 202 0 28 8 122 0 30 1 43 0 31 5 202 0 32 5 202 0 33 5 202 0 34 5 202 0 35 5 202 0 36 5 202 0 38 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 42 8 122 0 44 8 122 0 45 5 202 0 47 5 202 0 48 5 202 0 51 8 122 0 52 8 122 0 53 8 122 0 56 8 122 0 57 8 122 0 58 8 122 0 59 8 122 0 60 8 122 0 64 8 122 0 65 8 122 0 66 8 122 0 68 8 122 0 69 8 122 0 70 8 122 0 71 8 122 0 73 8 122 0 74 8 122 0 76 8 122 0 77 8 122 0 78 8 122 0 79 8 122 0 83 8 122 0 85 8 122 0 86 8 122 0 87 8 122 0 88 8 122 0 89 8 122 0 90 8 122 0 91 8 122 0 93 8 122 0 95 8 122 0 96 8 122 0 98 8 122 0 101 8 122 0 103 8 122 0 104 5 202 0 105 1 39 0 106 8 122 0 107 5 202 0 108 5 202 0 109 5 202 0 110 8 122 0 111 8 122 0 112 8 122 0 115 8 122 0 116 8 122 0 118 8 122 0 119 8 122 0 120 8 122 0 121 8 122 0 122 8 122 0 123 1 39 0 124 5 202 0 125 5 202 0 126 8 122 1 144] 
#[0 19 229 0 107] 
#[1 9 205 0 1 1 47 0 3 0 183 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 0 187 0 30 15 133 0 31 1 121 0 44 9 241 0 45 0 191 0 52 0 195 0 53 9 249 0 56 9 253 0 57 0 14 0 58 10 1 0 59 0 199 0 60 0 14 0 64 0 14 0 65 4 213 0 66 0 14 0 68 10 5 0 69 10 9 0 70 0 14 0 71 1 234 0 73 10 13 0 74 0 203 0 76 10 17 0 77 0 14 0 78 10 21 0 79 0 14 0 83 10 25 0 85 0 207 0 86 0 14 0 87 0 14 0 88 0 211 0 89 0 14 0 90 4 217 0 91 0 14 0 93 0 14 0 95 0 215 0 96 0 14 0 98 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 8 126 0 107 0 219 0 111 0 223 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 15 141 0 132 15 145 0 134 15 149 0 138 15 153 0 154 0 37 0 155 15 157 0 176 10 53 0 231 19 233 0 234 15 165 0 235 15 169 0 236 14 53 0 237 19 237 0 238 15 177 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 6 29 0 20 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 4 213 0 66 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 4 217 0 91 1 149 0 96 6 33 0 103 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 1 153 0 123 3 65 0 124 19 241 0 125 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 6 41 0 240 6 45 0 242 6 49 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 6 53 1 102 0 241 1 103 6 57 1 106 2 13 1 111 19 245 1 115 6 65 1 116 6 69 1 126 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 6 73 1 139 4 253 1 144] 
#[0 8 130 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 8 134 0 19 0 125] 
#[0 8 138 0 19 0 125] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 19 249 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 19 253 0 159] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 20 1 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 11 61 0 13 20 5 0 14 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 11 65 0 45 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 11 69 0 103 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 20 9 0 145 20 13 0 147 20 17 0 149 20 21 0 152 9 17 0 240 9 21 1 139 9 25 1 140 20 25 1 141 20 29 1 142 20 33 1 143 4 253 1 144] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 20 1 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 11 61 0 13 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 11 65 0 45 20 37 0 46 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 11 69 0 103 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 20 9 0 145 20 13 0 147 20 17 0 149 20 21 0 152 9 17 0 240 9 21 1 139 9 25 1 140 20 25 1 141 20 29 1 142 20 33 1 143 4 253 1 144] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 20 1 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 11 61 0 13 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 11 65 0 45 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 11 69 0 103 8 229 0 104 8 233 0 105 8 237 0 106 20 41 0 107 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 20 9 0 145 20 13 0 147 20 17 0 149 20 21 0 152 9 17 0 240 9 21 1 139 9 25 1 140 20 25 1 141 20 29 1 142 20 33 1 143 4 253 1 144] 
#[0 20 45 0 31] 
#[1 8 142 0 14 20 49 0 31 8 142 0 46 8 142 0 107 20 53 0 142] 
#[1 2 185 0 13 2 193 0 45 2 197 0 103 20 57 0 135 20 61 0 153] 
#[0 20 65 0 31] 
#[0 8 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 8 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 8 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 20 69 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 20 73 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 8 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 8 162 0 14 0 19] 
#[0 8 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 20 77 0 31] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 11 1 234 0 12 1 234 0 13 8 170 0 14 1 234 0 15 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 96 1 234 0 111 1 234 0 112 1 234 0 123 1 234 0 124 1 234 0 126 6 141 0 176 20 81 0 193] 
#[0 8 174 0 14 0 19] 
#[0 20 85 0 29] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 20 89 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 1 234 0 3 1 234 0 53 1 234 0 60 1 234 0 76 1 234 0 83 8 178 0 107 1 234 0 111 1 234 0 112 6 157 0 176 20 93 0 189] 
#[0 8 182 0 19 0 107] 
#[0 8 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 20 97 0 31] 
#[1 20 101 0 31 3 1 0 100 20 105 0 222] 
#[0 8 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 8 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 20 109 0 107] 
#[0 8 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 20 113 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 20 117 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 20 121 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 20 125 0 208 5 97 0 230] 
#[0 20 129 0 31] 
#[0 8 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 20 133 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 8 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 20 137 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 20 141 0 31 20 145 0 35] 
#[0 8 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 20 149 0 31] 
#[0 8 214 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 8 218 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 20 153 0 107] 
#[0 8 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 1 0 100 1 126 0 103 20 157 0 207 4 85 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 20 161 0 159] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 3 41 0 30 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 2 82 0 100 2 82 0 103 0 133 0 111 0 137 0 112 1 153 0 123 20 165 0 206 3 125 0 228 6 197 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 20 169 0 103] 
#[0 8 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 87 1 234 0 89 1 234 0 96 20 173 0 107 1 234 0 111 1 234 0 112 9 173 0 176 9 177 0 214] 
#[1 3 1 0 100 20 177 0 103 20 181 0 222] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 20 185 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 1 0 100 20 189 0 103 20 193 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 20 197 0 159] 
#[0 20 201 0 103] 
#[1 0 14 0 3 0 14 0 5 0 14 0 30 0 14 0 52 0 14 0 53 0 14 0 58 0 14 0 60 0 14 0 64 0 14 0 65 0 14 0 68 0 14 0 71 0 14 0 76 0 14 0 78 0 14 0 83 0 14 0 86 0 14 0 87 0 14 0 88 0 14 0 89 0 14 0 90 0 14 0 93 0 14 0 95 0 14 0 96 0 14 0 98 20 205 0 107 0 14 0 111 0 14 0 112 0 33 0 154 0 37 0 155] 
#[0 20 209 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 20 213 0 208 5 97 0 230] 
#[1 3 1 0 100 1 126 0 103 20 217 0 207 4 85 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 20 221 0 159] 
#[0 20 225 0 107] 
#[0 8 230 0 19 0 107] 
#[0 8 234 0 19 0 31 0 107] 
#[1 12 57 0 19 3 134 0 107 12 61 0 165 20 229 0 167] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 20 233 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 8 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 20 237 0 31 3 1 0 100 6 33 0 103 20 241 0 222 20 245 0 242] 
#[1 20 249 0 31 6 33 0 103 20 253 0 242] 
#[0 8 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 16 217 0 22 21 1 0 31 3 1 0 100 6 33 0 103 21 5 0 181 21 9 0 222 21 13 0 242] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 11 1 234 0 12 1 234 0 13 8 246 0 14 1 234 0 15 1 234 0 20 1 234 0 24 1 234 0 25 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 66 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 1 234 0 96 1 234 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 123 1 234 0 124 1 234 0 126 21 17 0 176 21 21 0 179 1 234 1 144] 
#[1 3 53 0 1 0 49 0 5 13 77 0 9 1 97 0 11 1 101 0 12 16 245 0 13 21 25 0 14 1 109 0 15 13 85 0 20 13 89 0 24 16 253 0 30 3 61 0 42 1 121 0 44 17 1 0 45 17 5 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 13 101 0 66 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 1 149 0 96 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 1 153 0 123 3 65 0 124 21 29 0 126 17 21 0 131 1 169 0 132 1 173 0 134 3 69 0 228 17 241 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 17 245 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 17 249 1 63 13 213 1 65 13 217 1 66 13 221 1 68 3 73 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 3 77 1 74 3 81 1 75 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 17 45 1 111 13 229 1 127 17 49 1 129 2 21 1 130 3 85 1 133 2 29 1 135 13 233 1 139 13 237 1 144] 
#[0 8 250 0 14 0 19] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 97 1 106 13 41 1 110 17 45 1 111 3 101 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 13 77 0 9 1 97 0 11 1 101 0 12 16 245 0 13 1 109 0 15 13 85 0 20 13 89 0 24 16 253 0 30 1 117 0 42 1 121 0 44 17 1 0 45 18 5 0 46 17 5 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 13 101 0 66 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 1 149 0 96 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 1 153 0 123 3 65 0 124 21 29 0 126 17 21 0 131 1 169 0 132 1 173 0 134 1 181 0 228 18 9 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 18 13 1 67 13 221 1 68 3 113 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 17 45 1 111 13 229 1 127 17 49 1 129 2 21 1 130 3 117 1 133 2 29 1 135 13 233 1 139 13 237 1 144] 
#[1 1 51 0 14 1 51 0 19 7 70 0 29 0 250 0 31 1 51 0 46 7 70 0 104] 
#[1 1 1 0 53 1 9 0 76 21 33 0 86 0 133 0 111 0 137 0 112 18 17 1 139] 
#[1 0 74 0 1 0 74 0 13 1 55 0 14 0 74 0 17 1 55 0 19 0 74 0 25 0 74 0 26 1 59 0 29 0 74 0 30 0 74 0 103 0 74 0 104 0 74 0 124] 
#[1 3 53 0 1 0 49 0 5 13 77 0 9 1 97 0 11 1 101 0 12 16 245 0 13 1 109 0 15 13 85 0 20 13 89 0 24 16 253 0 30 1 117 0 42 1 121 0 44 17 1 0 45 17 5 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 13 101 0 66 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 21 41 0 80 13 109 0 84 21 45 0 86 0 109 0 89 13 113 0 91 1 149 0 96 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 1 153 0 123 3 65 0 124 21 29 0 126 17 21 0 131 1 169 0 132 1 173 0 134 1 181 0 228 18 37 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 189 1 48 17 233 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 3 185 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 21 49 1 102 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 17 45 1 111 13 229 1 127 17 49 1 129 2 21 1 130 3 117 1 133 2 29 1 135 13 233 1 139 13 237 1 144] 
#[1 1 63 0 14 1 63 0 19 7 126 0 29 1 14 0 31 1 63 0 46 7 126 0 104] 
#[0 9 2 0 14 0 19] 
#[0 9 6 0 14 0 19] 
#[0 9 10 0 14 0 19] 
#[0 21 53 0 29] 
#[0 9 14 0 14 0 19] 
#[1 1 67 0 13 1 71 0 14 1 106 0 17 1 71 0 19 6 34 0 25 6 34 0 26 6 34 0 29 1 75 0 30 1 106 0 31 1 71 0 46 6 34 0 103 6 34 0 104 3 241 0 124 3 245 1 112 3 249 1 136] 
#[1 21 61 0 30 14 253 1 108 15 1 1 128 4 1 1 131 4 5 1 132] 
#[1 9 18 0 14 21 65 0 19 21 69 0 173] 
#[1 16 217 0 22 21 73 0 31 3 1 0 100 6 33 0 103 21 77 0 181 21 81 0 222 21 85 0 242] 
#[0 21 89 0 14] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 21 93 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 21 97 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 21 101 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 21 105 0 208 5 97 0 230] 
#[0 9 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 9 26 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 9 30 0 19 3 41 0 30 9 30 0 31 9 30 0 35 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 9 30 0 103 0 133 0 111 0 137 0 112 1 153 0 123 3 125 0 228 21 109 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[0 21 113 0 13] 
#[0 9 34 0 19 0 31 0 35 0 103] 
#[0 9 38 0 19 0 31 0 35 0 103] 
#[1 1 97 0 11 1 101 0 12 9 42 0 19 9 42 0 31 9 42 0 35 9 42 0 103 1 153 0 123 9 42 0 125 21 117 1 100 21 121 1 102] 
#[0 9 46 0 19 0 107] 
#[0 9 50 0 19 0 107] 
#[0 9 54 0 19 0 107] 
#[0 9 58 0 19 0 107] 
#[0 21 125 0 14] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 62 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 9 62 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 9 66 0 19 0 107] 
#[0 21 129 0 107] 
#[0 9 70 0 19 0 107] 
#[0 9 74 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 58 0 68 1 73 0 116 1 77 0 118 4 129 0 170 2 221 0 171 1 89 1 144] 
#[0 9 78 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 87 0 89 0 96 0 107 0 111 0 112] 
#[0 9 82 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 87 0 89 0 96 0 107 0 111 0 112] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 21 133 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 21 137 0 159] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 86 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 86 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 86 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 86 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 86 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 86 0 103 14 185 0 105 14 189 0 106 9 86 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 9 90 0 7 9 90 0 9 9 90 0 10 9 90 0 14 14 85 0 15 9 90 0 16 14 93 0 17 9 90 0 18 9 90 0 19 14 101 0 20 9 90 0 21 14 109 0 23 9 90 0 24 9 90 0 26 14 121 0 27 9 90 0 28 9 90 0 31 14 129 0 32 9 90 0 33 14 137 0 34 9 90 0 35 14 145 0 36 9 90 0 37 14 149 0 38 14 153 0 39 9 90 0 40 14 161 0 41 14 165 0 42 9 90 0 46 14 173 0 47 9 90 0 48 14 181 0 51 9 90 0 103 9 90 0 105 9 90 0 106 9 90 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 9 94 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 21 141 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 21 145 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 21 149 0 14] 
#[0 9 98 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 66 0 69 0 70 0 74 0 76 0 77 0 79 0 85 0 86 0 89 0 91 0 96 0 101 0 103 0 104 0 106 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 102 0 14 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 21 153 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 21 157 0 251 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 106 0 2 9 106 0 6 9 106 0 7 9 106 0 9 9 106 0 10 9 106 0 13 9 106 0 14 9 106 0 15 9 106 0 16 9 106 0 17 9 106 0 18 9 106 0 19 9 106 0 20 9 106 0 21 9 106 0 23 9 106 0 24 9 106 0 25 9 106 0 26 9 106 0 27 9 106 0 28 9 106 0 29 14 249 0 30 9 106 0 31 9 106 0 32 9 106 0 33 9 106 0 34 9 106 0 35 9 106 0 36 9 106 0 37 9 106 0 38 9 106 0 39 9 106 0 40 9 106 0 41 9 106 0 42 9 106 0 46 9 106 0 47 9 106 0 48 9 106 0 51 9 106 0 70 9 106 0 72 9 106 0 103 9 106 0 104 9 106 0 105 9 106 0 106 9 106 0 107 9 106 0 108 9 106 0 109 9 106 0 110 9 106 0 124 9 106 0 125 9 106 0 126 19 81 1 108] 
#[0 9 110 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 114 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 21 161 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 114 0 46 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126 21 165 0 249] 
#[0 21 169 0 46] 
#[0 9 118 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 122 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 122 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 122 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 122 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 122 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 122 0 103 14 185 0 105 14 189 0 106 9 122 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 126 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 126 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 126 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 126 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 126 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 126 0 103 14 185 0 105 14 189 0 106 9 126 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 21 173 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 189 1 48 17 233 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 21 177 1 139 13 237 1 144] 
#[0 9 130 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 18 49 0 25] 
#[0 9 134 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 21 181 0 14 21 185 0 19 21 189 1 60 21 193 1 64] 
#[1 1 79 0 14 7 150 0 19 7 150 0 104] 
#[0 21 197 0 14] 
#[1 9 142 0 14 9 142 0 19 9 146 0 25 9 146 0 26 9 142 0 29 9 142 0 31 9 142 0 35 9 142 0 37 9 142 0 46 9 142 0 70 9 142 0 72 9 142 0 104 9 142 0 107] 
#[1 9 150 0 14 9 150 0 19 9 154 0 25 9 154 0 26 9 150 0 29 9 150 0 31 9 150 0 35 9 150 0 37 9 150 0 46 9 150 0 70 9 150 0 72 9 150 0 104 9 150 0 107] 
#[0 9 158 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 9 162 0 19 9 162 0 46 21 201 1 61] 
#[0 21 205 0 46] 
#[1 9 166 0 14 9 166 0 19 9 166 0 29 9 166 0 31 9 166 0 35 9 166 0 37 21 209 0 43 9 166 0 46 9 166 0 70 9 166 0 72 9 166 0 104 9 166 0 107] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 21 213 1 139] 
#[1 9 170 0 14 9 170 0 19 9 170 0 29 9 170 0 31 9 170 0 35 9 170 0 37 21 217 0 43 9 170 0 46 9 170 0 70 9 170 0 72 9 170 0 104 9 170 0 107] 
#[1 7 130 0 14 7 130 0 19 7 130 0 29 7 130 0 31 7 130 0 35 7 130 0 37 7 130 0 46 7 130 0 70 7 130 0 72 7 130 0 104 7 130 0 107 21 221 1 40] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 21 225 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 189 1 48 17 233 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 21 177 1 139 13 237 1 144] 
#[0 9 174 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 21 229 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 178 0 14 9 178 0 19 9 178 0 29 9 178 0 31 9 178 0 35 9 178 0 37 9 178 0 46 9 178 0 70 9 178 0 72 1 83 0 104 9 178 0 107 21 237 1 39] 
#[1 0 49 0 5 21 241 0 20 21 245 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 21 249 0 115 21 253 0 119 22 1 0 121 22 5 0 122 3 65 0 124 22 9 1 49 3 45 1 106 22 13 1 107 10 153 1 110 10 157 1 111 22 17 1 127 10 165 1 129 0 253 1 139] 
#[1 0 49 0 5 21 241 0 20 21 245 0 30 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 21 249 0 115 21 253 0 119 22 1 0 121 22 5 0 122 3 65 0 124 22 21 1 49 3 45 1 106 22 13 1 107 10 153 1 110 10 157 1 111 22 17 1 127 10 165 1 129 0 253 1 139] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 22 25 0 14 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 22 29 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 22 33 1 59 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 1 234 0 3 1 234 0 24 1 234 0 53 1 234 0 76 1 234 0 80 1 234 0 84 22 37 0 107 1 234 0 111 1 234 0 112 1 234 0 121 22 41 0 176 22 45 1 52 22 49 1 53 22 53 1 56 22 57 1 57] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 22 61 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 22 65 1 38 22 69 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 22 73 0 35] 
#[1 9 182 0 35 9 182 0 37 9 182 0 70 9 182 0 104 22 77 1 36] 
#[1 9 186 0 1 9 186 0 2 9 186 0 3 9 186 0 5 9 186 0 6 9 186 0 7 9 186 0 8 9 186 0 9 9 186 0 10 9 186 0 13 9 186 0 14 9 186 0 15 9 186 0 16 9 186 0 17 9 186 0 18 9 186 0 19 9 186 0 20 9 186 0 21 9 186 0 23 9 186 0 24 9 186 0 26 9 186 0 27 9 186 0 28 9 186 0 30 9 186 0 31 9 186 0 32 9 186 0 33 9 186 0 34 9 186 0 35 9 186 0 36 9 186 0 37 9 186 0 38 9 186 0 39 9 186 0 40 9 186 0 41 9 186 0 42 9 186 0 44 9 186 0 45 9 186 0 46 9 186 0 47 9 186 0 48 9 186 0 49 9 186 0 51 9 186 0 52 9 186 0 53 9 186 0 56 9 186 0 57 9 186 0 58 9 186 0 59 9 186 0 60 22 81 0 63 9 186 0 64 9 186 0 65 9 186 0 66 9 186 0 68 9 186 0 69 9 186 0 70 9 186 0 71 9 186 0 73 9 186 0 74 9 186 0 76 9 186 0 77 9 186 0 78 9 186 0 79 9 186 0 80 9 186 0 83 9 186 0 84 9 186 0 85 9 186 0 86 9 186 0 87 9 186 0 88 9 186 0 89 9 186 0 90 9 186 0 91 9 186 0 93 9 186 0 95 9 186 0 96 9 186 0 98 9 186 0 101 9 186 0 103 9 186 0 104 9 186 0 105 9 186 0 106 9 186 0 107 9 186 0 108 9 186 0 109 9 186 0 110 9 186 0 111 9 186 0 112 9 186 0 115 9 186 0 116 9 186 0 118 9 186 0 119 9 186 0 120 9 186 0 121 9 186 0 122 9 186 0 123 9 186 0 124 9 186 0 125 9 186 0 126 9 186 1 144] 
#[1 0 210 0 3 0 210 0 5 0 210 0 9 0 210 0 13 0 210 0 20 0 210 0 24 0 210 0 30 0 210 0 44 0 210 0 45 0 210 0 49 0 210 0 53 0 210 0 60 0 210 0 66 0 210 0 76 0 210 0 80 0 210 0 84 0 210 0 86 0 210 0 89 0 210 0 91 0 210 0 104 0 210 0 107 0 210 0 111 0 210 0 112 0 210 0 115 0 210 0 116 0 210 0 118 0 210 0 119 0 210 0 120 0 210 0 121 0 210 0 122 0 210 0 124 0 210 0 126 22 85 0 159 0 210 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 22 89 0 22 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 22 93 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 22 97 0 104] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 22 101 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 14 65 0 2 14 69 0 6 9 190 0 7 14 77 0 9 9 190 0 10 9 190 0 14 14 85 0 15 9 190 0 16 14 93 0 17 9 190 0 18 9 190 0 19 14 101 0 20 9 190 0 21 14 109 0 23 9 190 0 24 9 190 0 26 14 121 0 27 9 190 0 28 9 190 0 31 14 129 0 32 9 190 0 33 14 137 0 34 9 190 0 35 14 145 0 36 9 190 0 37 14 149 0 38 14 153 0 39 9 190 0 40 14 161 0 41 14 165 0 42 9 190 0 46 14 173 0 47 9 190 0 48 14 181 0 51 9 190 0 103 9 190 0 105 9 190 0 106 9 190 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 22 105 0 35] 
#[0 9 194 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 22 109 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 198 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 198 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 198 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 198 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 198 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 198 0 103 14 185 0 105 14 189 0 106 9 198 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 202 0 19 22 113 0 29 9 202 0 104] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 22 117 0 22 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 22 121 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 22 125 0 19 9 206 0 104 22 129 1 17] 
#[1 6 33 0 103 22 133 0 242] 
#[1 14 69 0 6 9 210 0 7 9 210 0 9 9 210 0 10 9 210 0 14 14 85 0 15 9 210 0 16 14 93 0 17 9 210 0 18 9 210 0 19 14 101 0 20 9 210 0 21 14 109 0 23 9 210 0 24 9 210 0 26 14 121 0 27 9 210 0 28 9 210 0 31 14 129 0 32 9 210 0 33 9 210 0 35 9 210 0 37 14 153 0 39 9 210 0 40 14 161 0 41 14 165 0 42 9 210 0 46 14 173 0 47 9 210 0 48 14 181 0 51 9 210 0 103 9 210 0 105 9 210 0 106 9 210 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 213 0 126] 
#[1 9 214 0 2 9 214 0 6 9 214 0 7 9 214 0 9 9 214 0 10 9 214 0 14 9 214 0 15 9 214 0 16 9 214 0 17 9 214 0 18 9 214 0 19 9 214 0 20 9 214 0 21 14 109 0 23 9 214 0 24 9 214 0 26 9 214 0 27 9 214 0 28 9 214 0 31 9 214 0 32 9 214 0 33 9 214 0 34 9 214 0 35 9 214 0 36 9 214 0 37 9 214 0 38 9 214 0 39 9 214 0 40 9 214 0 41 14 165 0 42 9 214 0 46 9 214 0 47 9 214 0 48 14 181 0 51 9 214 0 103 9 214 0 105 9 214 0 106 9 214 0 107 9 214 0 108 14 197 0 109 14 201 0 110 9 214 0 124 9 214 0 125 9 214 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 218 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 218 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 218 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 218 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 218 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 218 0 103 14 185 0 105 14 189 0 106 9 218 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 9 222 0 7 9 222 0 9 9 222 0 10 9 222 0 14 14 85 0 15 9 222 0 16 14 93 0 17 9 222 0 18 9 222 0 19 14 101 0 20 9 222 0 21 14 109 0 23 9 222 0 24 9 222 0 26 14 121 0 27 9 222 0 28 9 222 0 31 14 129 0 32 9 222 0 33 14 137 0 34 9 222 0 35 14 145 0 36 9 222 0 37 14 149 0 38 14 153 0 39 9 222 0 40 14 161 0 41 14 165 0 42 9 222 0 46 14 173 0 47 9 222 0 48 14 181 0 51 9 222 0 103 9 222 0 105 9 222 0 106 9 222 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 226 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 226 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 226 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 226 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 226 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 226 0 103 14 185 0 105 14 189 0 106 9 226 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 230 0 2 9 230 0 6 9 230 0 7 9 230 0 9 9 230 0 10 9 230 0 14 9 230 0 15 9 230 0 16 9 230 0 17 9 230 0 18 9 230 0 19 9 230 0 20 9 230 0 21 14 109 0 23 9 230 0 24 9 230 0 26 9 230 0 27 9 230 0 28 9 230 0 31 9 230 0 32 9 230 0 33 9 230 0 34 9 230 0 35 9 230 0 36 9 230 0 37 9 230 0 38 9 230 0 39 9 230 0 40 9 230 0 41 14 165 0 42 9 230 0 46 9 230 0 47 9 230 0 48 14 181 0 51 9 230 0 103 9 230 0 105 9 230 0 106 9 230 0 107 9 230 0 108 14 197 0 109 14 201 0 110 9 230 0 124 9 230 0 125 9 230 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 234 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 234 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 234 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 234 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 234 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 234 0 103 14 185 0 105 14 189 0 106 9 234 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 238 0 2 14 69 0 6 9 238 0 7 9 238 0 9 9 238 0 10 9 238 0 14 14 85 0 15 9 238 0 16 9 238 0 17 9 238 0 18 9 238 0 19 9 238 0 20 9 238 0 21 14 109 0 23 9 238 0 24 9 238 0 26 14 121 0 27 9 238 0 28 9 238 0 31 9 238 0 32 9 238 0 33 9 238 0 34 9 238 0 35 9 238 0 36 9 238 0 37 9 238 0 38 9 238 0 39 9 238 0 40 9 238 0 41 14 165 0 42 9 238 0 46 9 238 0 47 9 238 0 48 14 181 0 51 9 238 0 103 9 238 0 105 9 238 0 106 9 238 0 107 9 238 0 108 14 197 0 109 14 201 0 110 9 238 0 124 9 238 0 125 9 238 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 242 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 242 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 242 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 242 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 242 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 242 0 103 14 185 0 105 14 189 0 106 9 242 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 246 0 2 14 69 0 6 9 246 0 7 9 246 0 9 9 246 0 10 9 246 0 14 14 85 0 15 9 246 0 16 9 246 0 17 9 246 0 18 9 246 0 19 9 246 0 20 9 246 0 21 14 109 0 23 9 246 0 24 9 246 0 26 14 121 0 27 9 246 0 28 9 246 0 31 9 246 0 32 9 246 0 33 9 246 0 34 9 246 0 35 9 246 0 36 9 246 0 37 9 246 0 38 9 246 0 39 9 246 0 40 9 246 0 41 14 165 0 42 9 246 0 46 9 246 0 47 9 246 0 48 14 181 0 51 9 246 0 103 9 246 0 105 9 246 0 106 9 246 0 107 9 246 0 108 14 197 0 109 14 201 0 110 9 246 0 124 9 246 0 125 9 246 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 250 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 250 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 9 250 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 9 250 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 9 250 0 46 14 173 0 47 14 177 0 48 14 181 0 51 9 250 0 103 14 185 0 105 14 189 0 106 9 250 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 9 254 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 10 2 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 10 6 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 22 137 0 109] 
#[1 10 10 0 2 10 10 0 6 10 10 0 7 10 10 0 9 10 10 0 10 10 10 0 14 10 10 0 15 10 10 0 16 10 10 0 17 10 10 0 18 10 10 0 19 10 10 0 20 10 10 0 21 10 10 0 23 10 10 0 24 10 10 0 26 10 10 0 27 10 10 0 28 0 190 0 30 10 10 0 31 10 10 0 32 10 10 0 33 10 10 0 34 10 10 0 35 10 10 0 36 10 10 0 37 10 10 0 38 10 10 0 39 10 10 0 40 10 10 0 41 10 10 0 42 10 10 0 46 10 10 0 47 10 10 0 48 10 10 0 51 10 10 0 103 10 10 0 105 10 10 0 106 10 10 0 107 10 10 0 108 1 87 0 109 10 10 0 110 10 10 0 124 10 10 0 125 10 10 0 126] 
#[1 14 65 0 2 14 69 0 6 10 14 0 7 14 77 0 9 10 14 0 10 10 14 0 14 14 85 0 15 10 14 0 16 14 93 0 17 10 14 0 18 10 14 0 19 14 101 0 20 10 14 0 21 14 109 0 23 14 121 0 27 10 14 0 28 10 14 0 31 14 129 0 32 10 14 0 33 14 137 0 34 10 14 0 35 14 145 0 36 10 14 0 37 14 149 0 38 14 153 0 39 10 14 0 40 14 161 0 41 14 165 0 42 10 14 0 46 14 173 0 47 10 14 0 48 14 181 0 51 10 14 0 103 10 14 0 105 14 189 0 106 10 14 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 10 18 0 7 14 77 0 9 10 18 0 10 10 18 0 14 14 85 0 15 10 18 0 16 14 93 0 17 10 18 0 18 10 18 0 19 14 101 0 20 10 18 0 21 14 109 0 23 14 121 0 27 10 18 0 28 10 18 0 31 14 129 0 32 10 18 0 33 14 137 0 34 10 18 0 35 14 145 0 36 10 18 0 37 14 149 0 38 14 153 0 39 10 18 0 40 14 161 0 41 14 165 0 42 10 18 0 46 14 173 0 47 10 18 0 48 14 181 0 51 10 18 0 103 10 18 0 105 14 189 0 106 10 18 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 10 22 0 2 10 22 0 6 10 22 0 7 10 22 0 9 10 22 0 10 10 22 0 14 10 22 0 15 10 22 0 16 10 22 0 17 10 22 0 18 10 22 0 19 10 22 0 20 10 22 0 21 14 109 0 23 10 22 0 24 10 22 0 26 10 22 0 27 10 22 0 28 10 22 0 31 10 22 0 32 10 22 0 33 10 22 0 34 10 22 0 35 10 22 0 36 10 22 0 37 10 22 0 38 10 22 0 39 10 22 0 40 10 22 0 41 14 165 0 42 10 22 0 46 10 22 0 47 10 22 0 48 14 181 0 51 10 22 0 103 10 22 0 105 10 22 0 106 10 22 0 107 10 22 0 108 14 197 0 109 14 201 0 110 10 22 0 124 10 22 0 125 10 22 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 10 26 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 10 26 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 10 26 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 10 26 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 10 26 0 46 14 173 0 47 14 177 0 48 14 181 0 51 10 26 0 103 14 185 0 105 14 189 0 106 10 26 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 10 30 0 2 14 69 0 6 10 30 0 7 10 30 0 9 10 30 0 10 10 30 0 14 14 85 0 15 10 30 0 16 14 93 0 17 10 30 0 18 10 30 0 19 14 101 0 20 10 30 0 21 14 109 0 23 10 30 0 24 10 30 0 26 14 121 0 27 10 30 0 28 10 30 0 31 10 30 0 32 10 30 0 33 10 30 0 34 10 30 0 35 10 30 0 36 10 30 0 37 10 30 0 38 10 30 0 39 10 30 0 40 10 30 0 41 14 165 0 42 10 30 0 46 10 30 0 47 10 30 0 48 14 181 0 51 10 30 0 103 10 30 0 105 10 30 0 106 10 30 0 107 10 30 0 108 14 197 0 109 14 201 0 110 10 30 0 124 10 30 0 125 10 30 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 10 34 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 10 34 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 10 34 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 10 34 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 10 34 0 46 14 173 0 47 14 177 0 48 14 181 0 51 10 34 0 103 14 185 0 105 14 189 0 106 10 34 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 69 0 6 10 38 0 7 10 38 0 9 10 38 0 10 10 38 0 14 14 85 0 15 10 38 0 16 14 93 0 17 10 38 0 18 10 38 0 19 14 101 0 20 10 38 0 21 14 109 0 23 10 38 0 24 10 38 0 26 14 121 0 27 10 38 0 28 10 38 0 31 14 129 0 32 10 38 0 33 10 38 0 35 10 38 0 37 14 153 0 39 10 38 0 40 14 161 0 41 14 165 0 42 10 38 0 46 14 173 0 47 10 38 0 48 14 181 0 51 10 38 0 103 10 38 0 105 10 38 0 106 10 38 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 10 42 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 10 42 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 10 42 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 10 42 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 10 42 0 46 14 173 0 47 14 177 0 48 14 181 0 51 10 42 0 103 14 185 0 105 14 189 0 106 10 42 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 69 0 6 10 46 0 7 10 46 0 9 10 46 0 10 10 46 0 14 14 85 0 15 10 46 0 16 14 93 0 17 10 46 0 18 10 46 0 19 14 101 0 20 10 46 0 21 14 109 0 23 10 46 0 24 10 46 0 26 14 121 0 27 10 46 0 28 10 46 0 31 14 129 0 32 10 46 0 33 10 46 0 35 10 46 0 37 14 153 0 39 10 46 0 40 14 161 0 41 14 165 0 42 10 46 0 46 14 173 0 47 10 46 0 48 14 181 0 51 10 46 0 103 10 46 0 105 10 46 0 106 10 46 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 213 0 126] 
#[1 14 69 0 6 10 50 0 7 10 50 0 9 10 50 0 10 10 50 0 14 14 85 0 15 10 50 0 16 14 93 0 17 10 50 0 18 10 50 0 19 14 101 0 20 10 50 0 21 14 109 0 23 10 50 0 24 10 50 0 26 14 121 0 27 10 50 0 28 10 50 0 31 14 129 0 32 10 50 0 33 10 50 0 35 10 50 0 37 14 153 0 39 10 50 0 40 14 161 0 41 14 165 0 42 10 50 0 46 14 173 0 47 10 50 0 48 14 181 0 51 10 50 0 103 10 50 0 105 10 50 0 106 10 50 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 213 0 126] 
#[1 10 54 0 2 14 69 0 6 10 54 0 7 10 54 0 9 10 54 0 10 10 54 0 14 14 85 0 15 10 54 0 16 14 93 0 17 10 54 0 18 10 54 0 19 14 101 0 20 10 54 0 21 14 109 0 23 10 54 0 24 10 54 0 26 14 121 0 27 10 54 0 28 10 54 0 31 10 54 0 32 10 54 0 33 10 54 0 34 10 54 0 35 10 54 0 36 10 54 0 37 10 54 0 38 10 54 0 39 10 54 0 40 10 54 0 41 14 165 0 42 10 54 0 46 10 54 0 47 10 54 0 48 14 181 0 51 10 54 0 103 10 54 0 105 10 54 0 106 10 54 0 107 10 54 0 108 14 197 0 109 14 201 0 110 10 54 0 124 10 54 0 125 10 54 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 10 58 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 10 58 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 10 58 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 10 58 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 10 58 0 46 14 173 0 47 14 177 0 48 14 181 0 51 10 58 0 103 14 185 0 105 14 189 0 106 10 58 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 10 62 0 2 14 69 0 6 10 62 0 7 10 62 0 9 10 62 0 10 10 62 0 14 14 85 0 15 10 62 0 16 14 93 0 17 10 62 0 18 10 62 0 19 14 101 0 20 10 62 0 21 14 109 0 23 10 62 0 24 10 62 0 26 14 121 0 27 10 62 0 28 10 62 0 31 10 62 0 32 10 62 0 33 10 62 0 34 10 62 0 35 10 62 0 36 10 62 0 37 10 62 0 38 10 62 0 39 10 62 0 40 10 62 0 41 14 165 0 42 10 62 0 46 10 62 0 47 10 62 0 48 14 181 0 51 10 62 0 103 10 62 0 105 10 62 0 106 10 62 0 107 10 62 0 108 14 197 0 109 14 201 0 110 10 62 0 124 10 62 0 125 10 62 0 126] 
#[1 10 66 0 2 14 69 0 6 10 66 0 7 10 66 0 9 10 66 0 10 10 66 0 14 14 85 0 15 10 66 0 16 14 93 0 17 10 66 0 18 10 66 0 19 14 101 0 20 10 66 0 21 14 109 0 23 10 66 0 24 10 66 0 26 14 121 0 27 10 66 0 28 10 66 0 31 14 129 0 32 10 66 0 33 10 66 0 34 10 66 0 35 10 66 0 36 10 66 0 37 10 66 0 38 14 153 0 39 10 66 0 40 14 161 0 41 14 165 0 42 10 66 0 46 10 66 0 47 10 66 0 48 14 181 0 51 10 66 0 103 10 66 0 105 10 66 0 106 10 66 0 107 10 66 0 108 14 197 0 109 14 201 0 110 10 66 0 124 10 66 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 10 70 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 10 70 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 10 70 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 10 70 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 10 70 0 46 14 173 0 47 14 177 0 48 14 181 0 51 10 70 0 103 14 185 0 105 14 189 0 106 10 70 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 10 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 10 78 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 10 78 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 10 78 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 10 78 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 10 78 0 46 14 173 0 47 14 177 0 48 14 181 0 51 10 78 0 103 14 185 0 105 14 189 0 106 10 78 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 10 82 0 7 14 77 0 9 10 82 0 10 10 82 0 14 14 85 0 15 10 82 0 16 14 93 0 17 10 82 0 18 10 82 0 19 14 101 0 20 10 82 0 21 14 109 0 23 10 82 0 24 10 82 0 26 14 121 0 27 10 82 0 28 10 82 0 31 14 129 0 32 10 82 0 33 14 137 0 34 10 82 0 35 14 145 0 36 10 82 0 37 14 149 0 38 14 153 0 39 10 82 0 40 14 161 0 41 14 165 0 42 10 82 0 46 14 173 0 47 10 82 0 48 14 181 0 51 10 82 0 103 10 82 0 105 10 82 0 106 10 82 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 10 86 0 2 14 69 0 6 10 86 0 7 10 86 0 9 10 86 0 10 10 86 0 14 14 85 0 15 10 86 0 16 14 93 0 17 10 86 0 18 10 86 0 19 14 101 0 20 10 86 0 21 14 109 0 23 10 86 0 24 10 86 0 26 14 121 0 27 10 86 0 28 10 86 0 31 14 129 0 32 10 86 0 33 10 86 0 34 10 86 0 35 10 86 0 36 10 86 0 37 10 86 0 38 14 153 0 39 10 86 0 40 14 161 0 41 14 165 0 42 10 86 0 46 14 173 0 47 10 86 0 48 14 181 0 51 10 86 0 103 10 86 0 105 10 86 0 106 10 86 0 107 10 86 0 108 14 197 0 109 14 201 0 110 10 86 0 124 10 86 0 125 14 213 0 126] 
#[0 10 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 114 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 114 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126 22 141 0 249] 
#[0 22 145 0 14] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 22 149 0 46 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 69 0 6 10 94 0 7 10 94 0 9 10 94 0 10 10 94 0 14 14 85 0 15 10 94 0 16 14 93 0 17 10 94 0 18 10 94 0 19 14 101 0 20 10 94 0 21 14 109 0 23 10 94 0 24 10 94 0 26 14 121 0 27 10 94 0 28 10 94 0 31 14 129 0 32 10 94 0 33 10 94 0 35 10 94 0 37 14 153 0 39 10 94 0 40 14 161 0 41 14 165 0 42 10 94 0 46 14 173 0 47 10 94 0 48 14 181 0 51 10 94 0 103 10 94 0 105 10 94 0 106 10 94 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 213 0 126] 
#[1 14 69 0 6 10 98 0 7 10 98 0 9 10 98 0 10 10 98 0 14 14 85 0 15 10 98 0 16 14 93 0 17 10 98 0 18 10 98 0 19 14 101 0 20 10 98 0 21 14 109 0 23 10 98 0 24 10 98 0 26 14 121 0 27 10 98 0 28 10 98 0 31 14 129 0 32 10 98 0 33 10 98 0 35 10 98 0 37 14 153 0 39 10 98 0 40 14 161 0 41 14 165 0 42 10 98 0 46 14 173 0 47 10 98 0 48 14 181 0 51 10 98 0 103 10 98 0 105 10 98 0 106 10 98 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 213 0 126] 
#[1 10 102 0 2 14 69 0 6 10 102 0 7 10 102 0 9 10 102 0 10 10 102 0 14 14 85 0 15 10 102 0 16 14 93 0 17 10 102 0 18 10 102 0 19 14 101 0 20 10 102 0 21 14 109 0 23 10 102 0 24 10 102 0 26 14 121 0 27 10 102 0 28 10 102 0 31 14 129 0 32 10 102 0 33 10 102 0 34 10 102 0 35 10 102 0 36 10 102 0 37 10 102 0 38 14 153 0 39 10 102 0 40 14 161 0 41 14 165 0 42 10 102 0 46 10 102 0 47 10 102 0 48 14 181 0 51 10 102 0 103 10 102 0 105 10 102 0 106 10 102 0 107 10 102 0 108 14 197 0 109 14 201 0 110 10 102 0 124 10 102 0 125 10 102 0 126] 
#[0 10 106 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 9 114 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 9 114 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126 22 153 0 249] 
#[0 10 110 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 1 91 0 3 22 157 0 24 1 234 0 53 1 234 0 76 22 161 0 107 1 234 0 111 1 234 0 112 1 234 0 121 22 165 0 176 5 97 0 230 22 169 1 0 22 173 1 3 22 177 1 4] 
#[0 22 181 0 29] 
#[0 22 185 0 107] 
#[1 10 114 0 19 10 114 0 107 22 189 1 11] 
#[1 10 118 0 19 22 193 0 29 10 118 0 107] 
#[0 10 122 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 72 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 10 126 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 72 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 10 130 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 72 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 10 134 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 70 0 72 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 22 197 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 10 138 0 19 0 125] 
#[1 6 210 0 11 6 210 0 12 6 210 0 19 6 210 0 123 6 210 0 125 22 201 1 99 17 105 1 101] 
#[1 0 49 0 5 1 97 0 11 1 101 0 12 3 121 0 13 10 142 0 19 3 41 0 30 22 205 0 35 1 117 0 42 1 121 0 44 1 1 0 53 1 5 0 60 1 141 0 69 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 1 153 0 123 10 142 0 125 3 125 0 228 22 209 1 94 1 253 1 97 6 201 1 98 2 5 1 102 3 45 1 106 2 13 1 111 3 137 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 22 213 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 22 217 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 10 146 0 19 22 221 0 35 10 146 0 125] 
#[0 10 150 0 19 0 125] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 22 225 0 159] 
#[0 22 229 0 103] 
#[0 10 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 22 233 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 22 237 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 22 241 0 159] 
#[0 10 158 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 10 162 0 2 10 162 0 6 10 162 0 7 10 162 0 9 10 162 0 10 10 162 0 14 10 162 0 15 10 162 0 16 10 162 0 17 10 162 0 18 10 162 0 19 10 162 0 20 10 162 0 21 15 85 0 22 10 162 0 23 10 162 0 24 10 162 0 26 10 162 0 27 10 162 0 28 10 162 0 29 10 162 0 30 10 162 0 31 10 162 0 32 10 162 0 33 10 162 0 34 10 162 0 35 10 162 0 36 10 162 0 37 10 162 0 38 10 162 0 39 10 162 0 40 10 162 0 41 10 162 0 42 10 162 0 46 10 162 0 47 10 162 0 48 10 162 0 51 10 162 0 69 10 162 0 100 10 162 0 103 10 162 0 104 10 162 0 105 10 162 0 106 10 162 0 107 10 162 0 108 10 162 0 109 10 162 0 110 10 162 0 124 10 162 0 125 10 162 0 126 22 245 1 82] 
#[0 10 166 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 89 0 93 0 96 0 107 0 111 0 112] 
#[0 10 170 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 89 0 93 0 96 0 107 0 111 0 112] 
#[0 10 174 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 89 0 93 0 96 0 107 0 111 0 112] 
#[0 10 178 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 89 0 93 0 96 0 107 0 111 0 112] 
#[1 0 57 0 52 0 65 0 58 12 217 0 65 0 30 0 68 0 117 0 93 12 221 0 96 22 249 0 168 0 181 0 169 22 253 0 182 23 1 0 203] 
#[0 10 182 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 10 186 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 23 5 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 23 9 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 10 190 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 11 1 234 0 12 1 234 0 13 10 194 0 14 1 234 0 15 1 234 0 25 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 86 1 234 0 89 1 234 0 96 1 234 0 111 1 234 0 112 1 234 0 123 1 234 0 124 1 234 0 126 23 13 0 176 23 17 1 87] 
#[0 10 198 0 14 0 19] 
#[0 10 202 0 14 0 19] 
#[0 10 206 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 23 21 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 10 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[0 10 214 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[0 10 218 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 63 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144 1 145] 
#[0 10 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[1 5 198 0 2 5 198 0 6 5 198 0 7 5 198 0 9 5 198 0 10 5 198 0 15 5 198 0 16 5 198 0 17 5 198 0 18 5 198 0 20 5 198 0 21 5 198 0 23 5 198 0 24 5 198 0 26 5 198 0 27 5 198 0 28 19 221 0 31 5 198 0 32 5 198 0 33 5 198 0 34 5 198 0 35 5 198 0 36 5 198 0 38 5 198 0 39 5 198 0 40 5 198 0 41 5 198 0 42 5 198 0 47 5 198 0 48 5 198 0 51 5 198 0 105 5 198 0 106 10 226 0 107 5 198 0 108 5 198 0 109 5 198 0 110 5 198 0 124 5 198 0 125 5 198 0 126] 
#[0 10 230 0 2 0 6 0 7 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 70 0 72 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 10 234 0 19 0 125] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 23 25 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 23 29 0 208 5 97 0 230] 
#[1 23 33 0 13 1 1 0 53 1 9 0 76 23 37 0 86 0 133 0 111 0 137 0 112 23 41 1 139] 
#[0 10 238 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 10 242 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 10 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 10 250 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 10 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 11 2 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 11 6 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 11 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 11 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 11 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 11 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 11 61 0 13 11 26 0 14 11 65 0 45 11 26 0 46 11 69 0 103 11 26 0 107 23 45 0 144 11 81 0 145] 
#[0 11 30 0 14 0 31 0 46 0 107] 
#[0 11 34 0 14 0 31 0 46 0 107] 
#[0 11 38 0 14 0 31 0 46 0 107] 
#[0 11 42 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 23 49 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 11 46 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 11 50 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 11 54 0 14 0 19] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 23 53 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 11 58 0 19 0 107] 
#[0 11 62 0 19 0 107] 
#[0 11 66 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 11 70 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 23 57 0 31] 
#[0 11 74 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 23 61 0 208 5 97 0 230] 
#[0 11 78 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 23 65 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 23 69 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 11 82 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 23 73 0 31] 
#[0 23 77 0 31] 
#[0 11 86 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 23 81 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 11 90 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 11 94 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 23 85 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 23 89 0 208 5 97 0 230] 
#[1 3 1 0 100 1 126 0 103 23 93 0 207 4 85 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 23 97 0 159] 
#[0 11 98 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 23 101 0 159] 
#[0 23 105 0 103] 
#[1 3 1 0 100 23 109 0 103 23 113 0 222] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 23 117 0 159] 
#[0 23 121 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 23 125 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 23 129 0 159] 
#[0 11 102 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 23 133 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 23 137 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 23 141 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 23 145 0 208 5 97 0 230] 
#[0 11 106 0 19 0 31 0 107] 
#[0 23 149 0 107] 
#[0 11 110 0 31 0 100 0 103] 
#[0 11 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 23 153 0 31 6 33 0 103 23 157 0 242] 
#[0 11 118 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 11 122 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 11 126 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 11 130 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 23 161 0 31 3 1 0 100 6 33 0 103 23 165 0 222 23 169 0 242] 
#[1 23 173 0 31 6 33 0 103 23 177 0 242] 
#[0 11 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 3 53 0 1 0 45 0 3 0 49 0 5 13 77 0 9 1 97 0 11 1 101 0 12 16 245 0 13 1 109 0 15 13 85 0 20 13 89 0 24 16 249 0 25 16 253 0 30 1 117 0 42 1 121 0 44 17 1 0 45 17 5 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 13 101 0 66 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 1 149 0 96 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 1 153 0 123 3 65 0 124 21 29 0 126 17 21 0 131 1 169 0 132 1 173 0 134 17 33 0 180 1 181 0 228 9 117 0 231 17 37 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 17 41 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 17 45 1 111 13 229 1 127 17 49 1 129 2 21 1 130 3 117 1 133 2 29 1 135 13 233 1 139 13 237 1 144] 
#[1 6 186 0 14 6 186 0 19 23 181 0 174] 
#[1 1 95 0 14 1 95 0 19 9 134 0 29 1 250 0 31 1 95 0 46 9 134 0 104] 
#[1 3 53 0 1 0 49 0 5 13 77 0 9 1 97 0 11 1 101 0 12 16 245 0 13 1 109 0 15 13 85 0 20 13 89 0 24 16 253 0 30 1 117 0 42 1 121 0 44 17 1 0 45 17 5 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 13 101 0 66 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 23 185 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 1 149 0 96 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 1 153 0 123 3 65 0 124 21 29 0 126 17 21 0 131 1 169 0 132 1 173 0 134 1 181 0 228 18 37 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 189 1 48 17 233 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 3 185 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 3 193 1 102 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 17 45 1 111 13 229 1 127 17 49 1 129 2 21 1 130 3 117 1 133 2 29 1 135 13 233 1 139 13 237 1 144] 
#[1 11 138 0 14 11 138 0 19 23 189 0 29] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 23 193 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 13 77 0 9 16 245 0 13 1 109 0 15 13 85 0 20 13 89 0 24 16 253 0 30 1 117 0 42 1 121 0 44 17 1 0 45 17 5 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 13 101 0 66 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 13 105 0 80 13 109 0 84 23 197 0 86 0 109 0 89 13 113 0 91 1 149 0 96 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 21 29 0 126 17 21 0 131 1 169 0 132 1 173 0 134 1 181 0 228 21 225 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 189 1 48 17 233 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 5 213 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 17 45 1 111 13 229 1 127 17 49 1 129 2 21 1 130 3 117 1 133 2 29 1 135 21 177 1 139 13 237 1 144] 
#[1 0 74 0 1 0 74 0 13 1 99 0 14 1 99 0 19 0 74 0 25 0 74 0 29 0 74 0 30 0 74 0 103 0 74 0 104 0 74 0 124] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 23 201 0 80 23 205 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 5 221 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 23 209 0 25 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 23 213 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 233 0 13 2 50 0 14 2 50 0 17 2 50 0 19 2 50 0 30 2 50 0 31 2 50 0 46 3 241 0 124 23 217 1 112 6 25 1 136] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 19 89 1 110 17 45 1 111 6 77 1 135 0 253 1 139] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 11 1 234 0 12 1 234 0 13 11 146 0 14 1 234 0 15 1 234 0 20 1 234 0 24 1 234 0 25 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 66 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 1 234 0 96 1 234 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 123 1 234 0 124 1 234 0 126 21 17 0 176 23 221 0 179 1 234 1 144] 
#[0 11 150 0 14 0 19] 
#[0 11 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 23 225 0 31 3 1 0 100 6 33 0 103 23 229 0 222 23 233 0 242] 
#[1 23 237 0 31 6 33 0 103 23 241 0 242] 
#[0 11 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 16 217 0 22 23 245 0 31 3 1 0 100 6 33 0 103 23 249 0 181 23 253 0 222 24 1 0 242] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 24 5 0 208 5 97 0 230] 
#[0 11 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 24 9 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 24 13 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 11 166 0 19 0 31 0 35 0 103] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 11 1 234 0 12 1 234 0 13 24 17 0 14 1 234 0 15 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 86 1 234 0 89 1 234 0 96 1 234 0 111 1 234 0 112 1 234 0 123 1 234 0 124 1 234 0 126 11 1 0 176 24 21 1 83 11 9 1 84 11 13 1 87 11 17 1 88] 
#[0 11 170 0 11 0 12 0 19 0 31 0 35 0 103 0 123 0 125] 
#[1 24 25 0 17 11 174 0 19 11 174 0 31 11 174 0 35 11 174 0 103 11 174 0 125] 
#[0 11 178 0 19 0 107] 
#[0 11 182 0 19 0 107] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 24 29 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 24 33 0 208 5 97 0 230] 
#[0 11 186 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 11 190 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 66 0 69 0 70 0 74 0 76 0 77 0 79 0 85 0 86 0 89 0 91 0 96 0 101 0 103 0 104 0 106 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[0 11 194 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 11 198 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 21 145 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 11 202 0 1 0 3 0 5 0 8 0 9 0 13 0 14 0 15 0 20 0 24 0 26 0 30 0 44 0 45 0 52 0 53 0 56 0 57 0 59 0 60 0 66 0 69 0 70 0 74 0 76 0 77 0 79 0 85 0 86 0 89 0 91 0 96 0 101 0 103 0 104 0 106 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 24 37 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 24 41 0 19 11 206 0 46 24 45 0 248] 
#[0 11 210 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 11 214 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 190 0 1 0 190 0 13 1 103 0 14 1 103 0 19 0 190 0 25 1 103 0 29 0 190 0 30 1 103 0 31 1 103 0 35 1 103 0 37 24 49 0 43 1 103 0 46 1 103 0 70 1 103 0 72 0 190 0 103 1 103 0 104 1 103 0 107 0 190 0 124] 
#[0 11 218 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 11 222 0 14 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 24 53 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 11 226 0 14 0 19] 
#[1 11 230 0 14 24 57 0 19 24 61 1 60] 
#[0 11 234 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 24 65 0 19 11 238 0 46 24 69 1 60] 
#[0 11 242 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 24 73 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 11 246 0 14 11 246 0 19 11 246 0 29 11 246 0 31 11 246 0 35 11 246 0 37 24 77 0 43 11 246 0 46 11 246 0 70 11 246 0 72 11 246 0 104 11 246 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 24 81 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 11 250 0 14 11 250 0 19 11 250 0 29 11 250 0 31 11 250 0 35 11 250 0 37 11 250 0 46 11 250 0 70 11 250 0 72 1 107 0 104 11 250 0 107 21 237 1 39] 
#[0 11 254 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 6 33 0 103 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126 24 85 0 242] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 24 89 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 12 2 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 24 93 0 121 24 97 0 122] 
#[1 0 49 0 5 1 121 0 44 1 1 0 53 1 5 0 60 1 9 0 76 0 97 0 86 0 109 0 89 0 133 0 111 0 137 0 112 3 45 1 106 13 41 1 110 10 157 1 111 0 253 1 139] 
#[0 7 86 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 102 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 114 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 122 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 12 6 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 194 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 7 202 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 12 10 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 12 14 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 9 162 0 14 9 162 0 19 24 101 1 61] 
#[0 24 105 0 14] 
#[0 12 18 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 45 0 3 24 109 0 24 1 1 0 53 1 9 0 76 24 113 0 80 24 117 0 84 0 133 0 111 0 137 0 112 18 185 0 121 9 117 0 231 24 121 0 253 24 125 1 139] 
#[0 24 129 0 107] 
#[1 24 133 0 19 12 22 0 107] 
#[1 12 26 0 19 12 26 0 107 24 137 1 55] 
#[0 12 30 0 107] 
#[0 12 34 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 9 182 0 35 9 182 0 37 9 182 0 70 9 182 0 104 24 141 1 36] 
#[1 7 130 0 35 7 130 0 37 7 130 0 70 7 130 0 104 24 145 1 40] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 24 149 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 12 38 0 35 12 38 0 37 12 38 0 70 24 153 0 104 24 157 1 35] 
#[1 10 9 0 70 6 33 0 103 24 161 0 242 24 165 1 26 24 169 1 27] 
#[1 1 111 0 3 12 42 0 5 12 42 0 9 12 42 0 13 12 42 0 20 12 42 0 24 12 42 0 30 12 42 0 44 12 42 0 45 12 42 0 49 12 42 0 53 12 42 0 60 12 42 0 66 12 42 0 76 12 42 0 80 12 42 0 84 12 42 0 86 12 42 0 89 12 42 0 91 12 42 0 104 24 173 0 107 12 42 0 111 12 42 0 112 12 42 0 115 12 42 0 116 12 42 0 118 12 42 0 119 12 42 0 120 12 42 0 121 12 42 0 122 12 42 0 124 12 42 0 126 5 97 0 230 24 177 1 29 24 181 1 31 12 42 1 144] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 24 185 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 12 46 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 12 46 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 12 46 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 12 46 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 12 46 0 46 14 173 0 47 14 177 0 48 14 181 0 51 12 46 0 103 14 185 0 105 14 189 0 106 12 46 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 24 189 0 22 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 24 193 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 6 33 0 103 24 197 0 242] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 24 201 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 6 33 0 103 24 205 0 242] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 24 209 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 24 213 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 12 50 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 12 50 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 12 50 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 12 50 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 12 50 0 46 14 173 0 47 14 177 0 48 14 181 0 51 12 50 0 103 14 185 0 105 14 189 0 106 12 50 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 13 1 234 0 20 1 234 0 24 1 234 0 30 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 66 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 1 115 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 124 1 234 0 126 14 29 0 176 24 217 1 19 1 234 1 144] 
#[0 12 58 0 19 0 104] 
#[0 12 62 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 24 221 0 14 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 19 25 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 24 225 1 14 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 12 66 0 14 24 229 0 19 24 45 0 248] 
#[0 12 70 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 12 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 24 233 0 14 24 237 0 19 24 45 0 248] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 24 241 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 12 78 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 0 45 0 3 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 18 185 0 121 9 117 0 231 24 245 0 253 24 249 1 139] 
#[0 24 253 0 107] 
#[1 12 82 0 19 12 82 0 107 25 1 1 2] 
#[0 25 5 0 107] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 25 9 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 12 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 25 13 0 19 12 90 0 107 25 17 1 10] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 25 21 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 12 94 0 19 0 125] 
#[0 12 98 0 19 0 125] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 25 25 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 12 102 0 19 25 29 0 35 12 102 0 125] 
#[0 12 106 0 19 0 125] 
#[0 12 110 0 19 0 125] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 25 33 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 37 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 25 41 0 159] 
#[0 12 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 25 45 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 49 0 208 5 97 0 230] 
#[0 12 118 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 69 0 100 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 12 122 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 89 0 93 0 96 0 107 0 111 0 112] 
#[0 12 126 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 89 0 93 0 96 0 107 0 111 0 112] 
#[0 12 130 0 3 0 5 0 30 0 52 0 53 0 58 0 60 0 65 0 68 0 76 0 83 0 86 0 89 0 93 0 96 0 107 0 111 0 112] 
#[0 12 134 0 14 0 19] 
#[0 12 138 0 14 0 19] 
#[1 3 53 0 1 0 45 0 3 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 25 53 0 25 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 15 93 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 9 117 0 231 15 97 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 15 101 1 139] 
#[0 12 142 0 14 0 19] 
#[1 25 57 0 29 25 61 0 31 25 65 0 35] 
#[0 12 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 25 69 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 20 1 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 11 61 0 13 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 11 65 0 45 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 11 69 0 103 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 20 9 0 145 25 73 0 147 25 77 0 148 20 17 0 149 20 21 0 152 9 17 0 240 9 21 1 139 9 25 1 140 20 25 1 141 20 29 1 142 20 33 1 143 4 253 1 144] 
#[0 25 81 0 29] 
#[0 25 85 0 29] 
#[0 12 150 0 14 0 31 0 46 0 107] 
#[0 12 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 158 0 19 0 107] 
#[0 12 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 25 89 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 93 0 208 5 97 0 230] 
#[0 12 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 170 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 174 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 25 97 0 31] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 25 101 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 25 105 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 25 109 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 113 0 208 5 97 0 230] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 117 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 25 121 0 159] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 25 125 0 159] 
#[0 25 129 0 103] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 133 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 25 137 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 25 141 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 145 0 208 5 97 0 230] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 149 0 208 5 97 0 230] 
#[0 12 178 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 25 153 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 25 157 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 12 182 0 19 0 31 0 107] 
#[0 12 186 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 190 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 25 161 0 31 6 33 0 103 25 165 0 242] 
#[0 12 198 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 12 210 0 14 25 169 0 19 21 69 0 173] 
#[1 3 53 0 1 0 49 0 5 13 77 0 9 16 245 0 13 1 109 0 15 13 85 0 20 13 89 0 24 16 253 0 30 1 117 0 42 1 121 0 44 17 1 0 45 17 5 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 13 101 0 66 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 1 149 0 96 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 21 29 0 126 17 21 0 131 1 169 0 132 1 173 0 134 1 181 0 228 21 225 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 189 1 48 17 233 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 5 213 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 17 45 1 111 13 229 1 127 17 49 1 129 2 21 1 130 3 117 1 133 2 29 1 135 21 177 1 139 13 237 1 144] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 25 173 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 12 214 0 14 0 19] 
#[1 0 74 0 1 0 74 0 13 1 119 0 14 1 119 0 19 0 74 0 25 0 74 0 29 0 74 0 30 0 74 0 103 0 74 0 104 0 74 0 124] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 25 177 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 10 221 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 0 74 0 1 0 74 0 13 1 123 0 14 1 123 0 19 0 74 0 30 0 74 0 124] 
#[0 12 226 0 14 0 19] 
#[0 12 230 0 14 0 19] 
#[1 10 126 0 13 1 127 0 14 3 22 0 17 1 127 0 19 10 126 0 25 10 126 0 26 10 126 0 29 1 127 0 30 3 22 0 31 1 127 0 46 10 126 0 103 10 126 0 104] 
#[0 12 234 0 14 0 19] 
#[0 12 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 25 181 0 31 6 33 0 103 25 185 0 242] 
#[0 12 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 12 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 25 189 0 31 3 1 0 100 6 33 0 103 25 193 0 222 25 197 0 242] 
#[1 25 201 0 31 6 33 0 103 25 205 0 242] 
#[0 13 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 25 209 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 25 213 0 208 5 97 0 230] 
#[0 13 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 15 85 0 22 1 131 0 29 25 217 1 82] 
#[0 25 221 0 14] 
#[0 13 10 0 11 0 12 0 19 0 31 0 35 0 103 0 123 0 125] 
#[0 13 14 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 25 225 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 13 18 0 46 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 13 22 0 46 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 25 229 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 13 26 0 14 0 19 0 46] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 25 233 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 13 30 0 14 0 19 0 46] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 34 0 14 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 24 53 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 13 38 0 14 0 19] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 42 0 46 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 24 53 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 13 46 0 14 0 19 0 46] 
#[0 13 50 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 25 237 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 13 54 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 13 58 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 13 62 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 9 146 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 9 154 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 13 66 0 14 25 241 0 19 24 69 1 60] 
#[0 13 70 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 13 74 0 107] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 25 245 1 139] 
#[1 1 1 0 53 1 9 0 76 25 249 0 80 0 133 0 111 0 137 0 112 25 253 1 139] 
#[0 26 1 0 29] 
#[1 13 78 0 19 26 5 0 29 13 78 0 107] 
#[0 13 82 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 1 234 0 3 1 234 0 24 13 86 0 107 26 9 0 176 26 13 1 57] 
#[1 1 135 0 19 13 90 0 107 26 21 1 54] 
#[1 13 94 0 35 13 94 0 37 13 94 0 70 24 153 0 104 24 157 1 35] 
#[1 1 139 0 35 1 139 0 37 1 139 0 70 1 143 0 104 21 237 1 39] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 6 33 0 103 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126 26 25 0 242] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 26 29 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 13 98 0 35 0 37 0 70 0 104] 
#[0 13 102 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 13 106 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 13 110 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 13 114 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 26 33 0 107] 
#[1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 13 1 234 0 20 1 234 0 24 1 234 0 30 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 66 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 1 234 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 124 1 234 0 126 26 37 0 176 26 41 1 30 26 45 1 33 1 234 1 144] 
#[1 6 33 0 103 26 49 0 242] 
#[1 3 53 0 1 0 49 0 5 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 3 173 0 62 1 137 0 65 0 62 0 68 1 141 0 69 3 177 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 26 53 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 233 1 90 1 241 1 92 1 245 1 93 3 189 1 98 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 13 118 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 13 118 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 13 118 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 13 118 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 13 118 0 46 14 173 0 47 14 177 0 48 14 181 0 51 13 118 0 103 14 185 0 105 14 189 0 106 13 118 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 13 122 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 6 33 0 103 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126 26 57 0 242] 
#[0 13 126 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 13 130 0 19 0 104] 
#[1 6 33 0 103 26 61 0 242] 
#[0 13 134 0 19 0 104] 
#[0 13 138 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 26 65 0 14] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 13 142 0 14 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 25 229 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 13 146 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 26 69 0 14 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 25 229 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 13 150 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 26 73 0 29] 
#[1 13 154 0 19 26 77 0 29 13 154 0 107] 
#[0 13 158 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 26 81 0 19 13 162 0 107 26 85 1 1] 
#[0 13 166 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 13 170 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 13 170 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 1 1 0 53 1 9 0 76 13 174 0 107 0 133 0 111 0 137 0 112 18 185 0 121 19 65 0 253 26 89 1 12 19 77 1 139] 
#[0 13 178 0 19 0 107] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 13 182 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 13 182 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 13 186 0 19 0 125] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 26 93 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 13 190 0 19 0 125] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 97 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 26 101 0 208 5 97 0 230] 
#[0 13 194 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 105 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 13 198 0 14] 
#[1 3 53 0 1 0 49 0 5 1 97 0 11 1 101 0 12 1 105 0 13 1 109 0 15 1 113 0 30 1 117 0 42 1 121 0 44 1 125 0 45 1 129 0 49 1 1 0 53 1 5 0 60 1 133 0 62 1 137 0 65 0 62 0 68 1 141 0 69 1 145 0 71 1 9 0 76 0 97 0 86 0 109 0 89 1 149 0 96 0 133 0 111 0 137 0 112 1 153 0 123 3 65 0 124 1 161 0 126 1 165 0 131 1 169 0 132 1 173 0 134 1 181 0 228 26 109 1 69 1 189 1 70 1 193 1 71 1 197 1 72 1 201 1 73 1 205 1 76 1 209 1 77 1 213 1 78 1 217 1 79 1 221 1 80 1 225 1 81 1 229 1 89 1 233 1 90 1 237 1 91 1 241 1 92 1 245 1 93 1 249 1 94 1 253 1 97 2 1 1 98 2 5 1 102 0 241 1 103 2 9 1 106 2 13 1 111 2 17 1 129 2 21 1 130 3 117 1 133 2 29 1 135 0 253 1 139] 
#[0 13 202 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 26 113 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 13 206 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 13 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 20 1 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 11 61 0 13 26 117 0 14 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 11 65 0 45 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 11 69 0 103 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 20 9 0 145 26 121 0 147 20 17 0 149 20 21 0 152 9 17 0 240 9 21 1 139 9 25 1 140 20 25 1 141 20 29 1 142 20 33 1 143 4 253 1 144] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 26 125 0 150 26 129 1 139] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 26 133 0 150 26 129 1 139] 
#[0 13 214 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 137 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 13 218 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 26 141 0 208 5 97 0 230] 
#[0 13 222 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 26 145 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 149 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 153 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 26 157 0 208 5 97 0 230] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 26 161 0 208 5 97 0 230] 
#[1 0 210 0 3 0 210 0 5 0 210 0 30 0 210 0 52 0 210 0 53 0 210 0 58 0 210 0 60 0 210 0 65 0 210 0 68 0 210 0 76 0 210 0 83 0 210 0 86 0 210 0 89 0 210 0 93 0 210 0 96 0 210 0 107 0 210 0 111 0 210 0 112 26 165 0 159] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 169 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 26 173 0 208 5 97 0 230] 
#[0 13 226 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 177 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 181 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 26 185 0 208 5 97 0 230] 
#[0 13 230 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 13 234 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 13 238 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 1 1 234 0 3 1 234 0 5 1 234 0 9 1 234 0 11 1 234 0 12 1 234 0 13 13 242 0 14 1 234 0 15 1 234 0 20 1 234 0 24 1 234 0 25 1 234 0 30 1 234 0 42 1 234 0 44 1 234 0 45 1 234 0 49 1 234 0 53 1 234 0 60 1 234 0 62 1 234 0 65 1 234 0 66 1 234 0 68 1 234 0 69 1 234 0 71 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 86 1 234 0 89 1 234 0 91 1 234 0 96 1 234 0 104 1 234 0 111 1 234 0 112 1 234 0 115 1 234 0 116 1 234 0 118 1 234 0 119 1 234 0 120 1 234 0 121 1 234 0 122 1 234 0 123 1 234 0 124 1 234 0 126 21 17 0 176 23 221 0 179 1 234 1 144] 
#[0 13 246 0 14 0 19] 
#[1 0 74 0 1 0 74 0 13 1 147 0 14 1 147 0 19 0 74 0 30 0 74 0 124] 
#[0 13 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 6 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 26 189 0 31 6 33 0 103 26 193 0 242] 
#[0 14 10 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 14 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 18 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 22 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 26 197 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 1 151 0 29] 
#[1 15 85 0 22 1 155 0 29 26 201 1 82] 
#[0 14 26 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 30 0 14 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 30 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 30 0 46 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 1 159 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[0 14 34 0 14 0 19 0 29 0 31 0 35 0 37 0 46 0 70 0 72 0 104 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 14 38 0 14 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 24 53 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 14 42 0 19 0 107] 
#[1 1 1 0 53 1 9 0 76 0 133 0 111 0 137 0 112 26 205 1 139] 
#[0 14 46 0 19 0 107] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 26 209 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 13 117 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 26 213 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[1 0 45 0 3 24 109 0 24 9 117 0 231] 
#[0 14 50 0 107] 
#[1 1 234 0 3 1 234 0 53 1 234 0 76 1 234 0 80 1 234 0 84 1 234 0 111 1 234 0 112 1 234 0 121 26 217 0 176 26 221 1 56] 
#[0 14 54 0 19 0 107] 
#[1 14 58 0 1 14 58 0 2 14 58 0 3 14 58 0 5 14 58 0 6 14 58 0 7 14 58 0 8 14 58 0 9 14 58 0 10 14 58 0 13 14 58 0 14 14 58 0 15 14 58 0 16 14 58 0 17 14 58 0 18 14 58 0 19 14 58 0 20 14 58 0 21 14 58 0 23 14 58 0 24 14 58 0 26 14 58 0 27 14 58 0 28 14 58 0 30 14 58 0 31 14 58 0 32 14 58 0 33 14 58 0 34 14 58 0 35 14 58 0 36 14 58 0 37 14 58 0 38 14 58 0 39 14 58 0 40 14 58 0 41 14 58 0 42 14 58 0 44 14 58 0 45 14 58 0 46 14 58 0 47 14 58 0 48 14 58 0 49 14 58 0 51 14 58 0 52 14 58 0 53 14 58 0 56 14 58 0 57 14 58 0 58 14 58 0 59 14 58 0 60 26 225 0 63 14 58 0 64 14 58 0 65 14 58 0 66 14 58 0 68 14 58 0 69 14 58 0 70 14 58 0 71 14 58 0 73 14 58 0 74 14 58 0 76 14 58 0 77 14 58 0 78 14 58 0 79 14 58 0 80 14 58 0 83 14 58 0 84 14 58 0 85 14 58 0 86 14 58 0 87 14 58 0 88 14 58 0 89 14 58 0 90 14 58 0 91 14 58 0 93 14 58 0 95 14 58 0 96 14 58 0 98 14 58 0 101 14 58 0 103 14 58 0 104 14 58 0 105 14 58 0 106 14 58 0 107 14 58 0 108 14 58 0 109 14 58 0 110 14 58 0 111 14 58 0 112 14 58 0 115 14 58 0 116 14 58 0 118 14 58 0 119 14 58 0 120 14 58 0 121 14 58 0 122 14 58 0 123 14 58 0 124 14 58 0 125 14 58 0 126 14 58 1 144] 
#[0 14 62 0 35 0 37 0 70 0 104] 
#[0 14 66 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 0 45 0 3 0 49 0 5 13 77 0 9 13 81 0 13 13 85 0 20 13 89 0 24 9 237 0 30 1 121 0 44 13 93 0 45 13 97 0 49 1 1 0 53 1 5 0 60 13 101 0 66 1 9 0 76 13 105 0 80 13 109 0 84 0 97 0 86 0 109 0 89 13 113 0 91 18 69 0 104 0 133 0 111 0 137 0 112 13 121 0 115 13 125 0 116 13 129 0 118 13 133 0 119 13 137 0 120 13 141 0 121 13 145 0 122 3 65 0 124 13 149 0 126 13 153 0 131 1 169 0 132 1 173 0 134 9 117 0 231 26 229 1 34 18 77 1 38 13 161 1 41 13 165 1 42 13 169 1 43 13 173 1 44 13 177 1 45 13 181 1 46 13 185 1 47 13 189 1 48 13 193 1 49 13 197 1 50 13 201 1 51 13 205 1 58 13 209 1 62 13 213 1 65 13 217 1 66 13 221 1 68 0 241 1 103 2 9 1 106 13 225 1 107 10 153 1 110 10 157 1 111 13 229 1 127 10 165 1 129 13 233 1 139 13 237 1 144] 
#[0 14 70 0 3 0 5 0 9 0 13 0 20 0 24 0 30 0 44 0 45 0 49 0 53 0 60 0 66 0 76 0 80 0 84 0 86 0 89 0 91 0 104 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 124 0 126 1 144] 
#[0 26 233 0 37] 
#[0 14 74 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 6 33 0 103 26 237 0 242] 
#[0 14 78 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 14 82 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 14 86 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[0 14 90 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 26 241 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 26 245 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[1 1 234 0 3 22 157 0 24 1 234 0 53 1 234 0 76 14 94 0 107 1 234 0 111 1 234 0 112 1 234 0 121 22 165 0 176 26 249 1 3 26 253 1 4] 
#[0 14 98 0 19 0 107] 
#[0 14 102 0 19 0 107] 
#[0 14 106 0 19 0 125] 
#[0 14 110 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 27 1 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 14 114 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 27 5 0 31 27 9 0 35] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 27 13 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 7 109 0 1 7 113 0 2 7 117 0 3 27 17 0 4 7 125 0 5 7 129 0 6 7 133 0 7 7 137 0 9 7 141 0 10 7 145 0 11 7 149 0 12 7 157 0 15 7 161 0 16 7 165 0 17 7 169 0 18 7 173 0 19 7 177 0 20 7 181 0 21 7 185 0 22 7 189 0 23 7 193 0 24 7 197 0 25 7 201 0 26 7 205 0 27 7 209 0 28 7 213 0 29 7 217 0 30 7 221 0 31 7 225 0 32 7 229 0 33 7 233 0 34 7 237 0 35 7 241 0 36 7 245 0 37 7 249 0 38 7 253 0 39 8 1 0 40 8 5 0 41 8 9 0 42 8 13 0 43 8 17 0 44 8 21 0 47 8 25 0 48 8 29 0 49 8 33 0 50 8 37 0 51 8 41 0 52 1 1 0 53 8 45 0 54 8 49 0 55 8 53 0 56 8 57 0 57 8 61 0 58 8 65 0 59 8 69 0 60 8 73 0 61 8 77 0 62 8 81 0 63 8 85 0 64 8 89 0 65 4 213 0 66 8 93 0 67 8 97 0 68 8 101 0 69 8 105 0 70 8 109 0 71 8 113 0 72 8 117 0 73 8 121 0 74 8 125 0 75 1 9 0 76 8 129 0 77 8 133 0 78 8 137 0 79 8 141 0 80 8 145 0 81 8 149 0 82 8 153 0 83 8 157 0 84 8 161 0 85 8 165 0 86 8 169 0 87 8 173 0 88 8 177 0 89 8 181 0 90 4 217 0 91 8 185 0 92 8 189 0 93 8 193 0 94 8 197 0 95 8 201 0 96 8 205 0 97 8 209 0 98 8 213 0 99 8 217 0 100 8 221 0 101 8 225 0 102 8 229 0 104 8 233 0 105 8 237 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 8 241 0 123 8 245 0 124 8 249 0 125 8 253 0 126 27 21 0 151 27 25 0 152 9 17 0 240 9 21 1 139 9 25 1 140 27 29 1 141 27 33 1 142 27 37 1 143 4 253 1 144] 
#[0 14 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 14 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 14 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 14 130 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 14 134 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 27 41 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 27 45 0 208 5 97 0 230] 
#[0 14 138 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 142 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 27 49 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 27 53 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[1 0 103 0 3 3 2 0 5 3 2 0 30 3 2 0 52 3 2 0 53 3 2 0 58 3 2 0 60 3 2 0 65 3 2 0 68 3 2 0 76 3 2 0 83 3 2 0 86 3 2 0 89 3 2 0 93 3 2 0 96 3 2 0 107 3 2 0 111 3 2 0 112 27 57 0 208 5 97 0 230] 
#[0 14 146 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 27 61 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 14 150 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 154 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 27 65 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 14 158 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 162 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 166 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 1 163 0 29] 
#[0 14 170 0 19 0 107] 
#[0 14 174 0 19 0 107] 
#[0 14 178 0 19 0 107] 
#[1 0 45 0 3 1 1 0 53 1 9 0 76 24 113 0 80 24 117 0 84 0 133 0 111 0 137 0 112 18 185 0 121 9 117 0 231 24 121 0 253 24 125 1 139] 
#[0 14 182 0 19 0 107] 
#[1 10 9 0 70 6 33 0 103 27 69 0 242 27 73 1 26 27 77 1 27] 
#[1 14 186 0 37 27 81 0 70 27 85 1 37] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 14 53 0 237 27 89 0 238 27 93 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 27 97 1 32 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 14 190 0 2 0 6 0 7 0 9 0 10 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 46 0 47 0 48 0 51 0 103 0 105 0 106 0 107 0 108 0 109 0 110 0 124 0 125 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 194 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 194 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 198 0 19 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 198 0 107 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 14 202 0 19 0 107] 
#[0 14 206 0 107] 
#[0 14 210 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 214 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 27 101 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 14 218 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144] 
#[0 14 222 0 15 0 17 0 42] 
#[1 7 157 0 15 7 165 0 17 8 9 0 42 27 105 0 152] 
#[0 14 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 14 230 0 15 0 17 0 42] 
#[0 14 234 0 15 0 17 0 42] 
#[0 14 238 0 15 0 17 0 42] 
#[0 14 242 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 27 109 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 14 246 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 14 250 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 1 234 0 3 1 234 0 5 1 234 0 30 1 234 0 52 1 234 0 53 1 234 0 58 1 234 0 60 1 234 0 65 1 234 0 68 1 234 0 76 1 234 0 83 1 234 0 86 1 234 0 89 1 234 0 93 1 234 0 96 27 113 0 107 1 234 0 111 1 234 0 112 15 73 0 176 15 77 0 229] 
#[0 14 254 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 15 2 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 15 6 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 15 10 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 15 14 0 1 0 2 0 3 0 5 0 6 0 7 0 8 0 9 0 10 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 23 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 45 0 46 0 47 0 48 0 49 0 51 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[1 9 205 0 1 0 45 0 3 0 49 0 5 9 209 0 8 9 213 0 9 9 217 0 13 9 221 0 15 9 225 0 20 9 229 0 24 9 233 0 26 9 237 0 30 1 121 0 44 9 241 0 45 9 245 0 52 1 1 0 53 9 249 0 56 9 253 0 57 10 1 0 59 1 5 0 60 4 213 0 66 10 5 0 69 10 9 0 70 10 13 0 74 1 9 0 76 10 17 0 77 10 21 0 79 10 25 0 85 0 97 0 86 0 109 0 89 4 217 0 91 10 29 0 96 10 33 0 101 6 33 0 103 10 37 0 104 10 41 0 106 0 133 0 111 0 137 0 112 4 221 0 115 4 225 0 116 4 229 0 118 4 233 0 119 4 237 0 120 4 241 0 121 4 245 0 122 10 45 0 123 3 65 0 124 10 49 0 131 1 169 0 132 1 173 0 134 10 53 0 231 27 117 0 237 10 61 0 238 10 65 0 239 10 69 0 240 10 73 0 241 10 77 0 242 10 81 0 245 10 85 0 246 10 89 0 254 10 93 0 255 10 97 1 5 10 101 1 7 10 105 1 8 10 109 1 15 10 113 1 20 10 117 1 21 10 121 1 22 10 125 1 23 10 129 1 24 10 133 1 25 10 137 1 26 10 141 1 27 10 145 1 28 0 241 1 103 2 9 1 106 10 149 1 107 10 153 1 110 10 157 1 111 10 161 1 127 10 165 1 129 0 253 1 139 4 253 1 144] 
#[0 15 18 0 37] 
#[1 5 198 0 2 5 198 0 6 5 198 0 7 5 198 0 9 5 198 0 10 5 198 0 15 5 198 0 16 5 198 0 17 5 198 0 18 27 121 0 19 5 198 0 20 5 198 0 21 5 198 0 23 5 198 0 24 5 198 0 26 5 198 0 27 5 198 0 28 5 198 0 32 5 198 0 33 5 198 0 34 5 198 0 35 5 198 0 36 5 198 0 38 5 198 0 39 5 198 0 40 5 198 0 41 5 198 0 42 5 198 0 47 5 198 0 48 5 198 0 51 5 198 0 105 5 198 0 106 15 22 0 107 5 198 0 108 5 198 0 109 5 198 0 110 5 198 0 124 5 198 0 125 5 198 0 126] 
#[1 5 202 0 2 15 26 0 3 15 26 0 5 5 202 0 6 5 202 0 7 1 167 0 9 5 202 0 10 15 26 0 13 5 202 0 15 5 202 0 16 5 202 0 17 5 202 0 18 27 125 0 19 1 167 0 20 5 202 0 21 5 202 0 23 1 167 0 24 5 202 0 26 5 202 0 27 5 202 0 28 15 26 0 30 5 202 0 32 5 202 0 33 5 202 0 34 5 202 0 35 5 202 0 36 5 202 0 38 5 202 0 39 5 202 0 40 5 202 0 41 5 202 0 42 15 26 0 44 15 26 0 45 5 202 0 47 5 202 0 48 15 26 0 49 5 202 0 51 15 26 0 53 15 26 0 60 15 26 0 66 15 26 0 76 15 26 0 80 15 26 0 84 15 26 0 86 15 26 0 89 15 26 0 91 15 26 0 104 5 202 0 105 5 202 0 106 15 30 0 107 5 202 0 108 5 202 0 109 5 202 0 110 15 26 0 111 15 26 0 112 15 26 0 115 15 26 0 116 15 26 0 118 15 26 0 119 15 26 0 120 15 26 0 121 15 26 0 122 1 167 0 124 5 202 0 125 1 167 0 126 15 26 1 144] 
#[0 15 34 0 3 0 5 0 9 0 13 0 20 0 24 0 30 0 44 0 45 0 49 0 53 0 60 0 66 0 76 0 80 0 84 0 86 0 89 0 91 0 104 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 124 0 126 1 144] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 27 129 0 31 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[0 15 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 1 144] 
#[0 15 42 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[0 15 46 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144 1 145] 
#[1 14 65 0 2 14 69 0 6 14 73 0 7 14 77 0 9 14 81 0 10 14 85 0 15 14 89 0 16 14 93 0 17 14 97 0 18 14 101 0 20 14 105 0 21 14 109 0 23 14 113 0 24 14 117 0 26 14 121 0 27 14 125 0 28 14 129 0 32 14 133 0 33 14 137 0 34 14 141 0 35 14 145 0 36 15 50 0 37 14 149 0 38 14 153 0 39 14 157 0 40 14 161 0 41 14 165 0 42 14 173 0 47 14 177 0 48 14 181 0 51 14 185 0 105 14 189 0 106 14 193 0 108 14 197 0 109 14 201 0 110 14 205 0 124 14 209 0 125 14 213 0 126] 
#[1 15 54 0 3 15 54 0 5 15 54 0 9 15 54 0 13 15 54 0 20 15 54 0 24 15 54 0 30 15 54 0 44 15 54 0 45 15 54 0 49 15 54 0 53 15 54 0 60 15 54 0 66 15 54 0 76 15 54 0 80 15 54 0 84 15 54 0 86 15 54 0 89 15 54 0 91 15 54 0 104 15 58 0 107 15 54 0 111 15 54 0 112 15 54 0 115 15 54 0 116 15 54 0 118 15 54 0 119 15 54 0 120 15 54 0 121 15 54 0 122 15 54 0 124 15 54 0 126 15 54 1 144] 
#[1 15 62 0 3 15 62 0 5 15 62 0 9 15 62 0 13 15 62 0 20 15 62 0 24 15 62 0 30 15 62 0 44 15 62 0 45 15 62 0 49 15 62 0 53 15 62 0 60 15 62 0 66 15 62 0 76 15 62 0 80 15 62 0 84 15 62 0 86 15 62 0 89 15 62 0 91 15 62 0 104 15 66 0 107 15 62 0 111 15 62 0 112 15 62 0 115 15 62 0 116 15 62 0 118 15 62 0 119 15 62 0 120 15 62 0 121 15 62 0 122 15 62 0 124 15 62 0 126 15 62 1 144] 
#[0 15 70 0 1 0 3 0 5 0 8 0 9 0 13 0 15 0 20 0 24 0 26 0 30 0 31 0 44 0 45 0 52 0 53 0 56 0 57 0 58 0 59 0 60 0 64 0 65 0 66 0 68 0 69 0 70 0 71 0 73 0 74 0 76 0 77 0 78 0 79 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 95 0 96 0 98 0 101 0 103 0 104 0 106 0 107 0 111 0 112 0 115 0 116 0 118 0 119 0 120 0 121 0 122 0 123 0 124 1 144]
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
