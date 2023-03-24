Class {
	#name : #YAMLParser,
	#superclass : #SmaCCGLRParser,
	#instVars : [
		'scopeStack'
	],
	#category : #'SmaCC_YAML'
}

{ #category : #generated }
YAMLParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 14] 
#[ 0 6 0 57] 
#[ 0 6 0 61] 
#[ 0 6 0 157] 
#[ 0 62 0 209] 
#[ 0 6 0 74] 
#[ 0 6 0 86] 
#[ 0 94 0 229] 
#[ 0 33 0 138] 
#[ 0 37 0 138] 
#[ 0 41 0 138] 
#[ 0 45 0 138] 
#[ 0 49 0 138] 
#[ 0 53 0 138] 
#[ 0 6 0 138] 
#[ 0 6 0 14 0 138] 
#[ 0 18 0 138] 
#[ 0 6 0 57 0 138] 
#[ 0 6 0 61 0 138] 
#[ 0 138 0 253] 
#[ 0 6 0 138 1 1] 
#[ 0 14 0 146] 
#[ 0 146 1 9] 
#[ 0 146 1 13] 
#[ 0 57 0 146] 
#[ 0 61 0 146] 
#[ 0 33 0 150] 
#[ 0 37 0 150] 
#[ 0 41 0 150] 
#[ 0 45 0 150] 
#[ 0 49 0 150] 
#[ 0 53 0 150] 
#[ 0 14 0 150] 
#[ 0 18 0 150] 
#[ 0 150 1 45] 
#[ 0 150 1 13] 
#[ 0 57 0 150] 
#[ 0 61 0 150] 
#[ 0 150 1 69] 
#[ 0 166 1 81] 
#[ 0 170 1 89] 
#[ 0 202 1 169] 
#[ 0 33 0 210] 
#[ 0 37 0 210] 
#[ 0 41 0 210] 
#[ 0 45 0 210] 
#[ 0 49 0 210] 
#[ 0 53 0 210] 
#[ 0 6 0 210] 
#[ 0 6 0 14 0 210] 
#[ 0 18 0 210] 
#[ 0 6 0 57 0 210] 
#[ 0 6 0 61 0 210] 
#[ 0 210 1 177] 
#[ 0 6 0 210 1 141] 
#[ 0 238 1 5] 
#[ 0 234 0 238] 
#[ 0 33 0 242] 
#[ 0 37 0 242] 
#[ 0 41 0 242] 
#[ 0 45 0 242] 
#[ 0 49 0 242] 
#[ 0 53 0 242] 
#[ 0 14 0 242] 
#[ 0 18 0 242] 
#[ 0 242 1 13] 
#[ 0 57 0 242] 
#[ 0 61 0 242] 
#[ 0 242 1 69] 
#[ 0 33 1 6] 
#[ 0 37 1 6] 
#[ 0 41 1 6] 
#[ 0 45 1 6] 
#[ 0 49 1 6] 
#[ 0 53 1 6] 
#[ 0 14 1 6] 
#[ 0 18 1 6] 
#[ 1 6 2 17] 
#[ 1 6 1 13] 
#[ 0 57 1 6] 
#[ 0 61 1 6] 
#[ 1 6 1 69] 
#[ 0 33 1 14] 
#[ 0 37 1 14] 
#[ 0 41 1 14] 
#[ 0 45 1 14] 
#[ 0 49 1 14] 
#[ 0 53 1 14] 
#[ 0 14 1 14] 
#[ 0 18 1 14] 
#[ 1 14 2 45] 
#[ 1 13 1 14] 
#[ 0 57 1 14] 
#[ 0 61 1 14] 
#[ 1 14 1 69] 
#[ 1 62 2 129] 
#[ 1 70 2 141] 
#[ 0 6 1 197] 
#[ 0 33 1 126] 
#[ 0 37 1 126] 
#[ 0 41 1 126] 
#[ 0 45 1 126] 
#[ 0 49 1 126] 
#[ 0 53 1 126] 
#[ 0 14 1 126] 
#[ 0 18 1 126] 
#[ 1 13 1 126] 
#[ 0 57 1 126] 
#[ 0 61 1 126] 
#[ 1 69 1 126] 
#[ 0 33 1 146] 
#[ 0 37 1 146] 
#[ 0 41 1 146] 
#[ 0 45 1 146] 
#[ 0 49 1 146] 
#[ 0 53 1 146] 
#[ 0 14 1 146] 
#[ 0 18 1 146] 
#[ 1 146 2 237] 
#[ 1 13 1 146] 
#[ 0 57 1 146] 
#[ 0 61 1 146] 
#[ 1 69 1 146] 
#[ 0 33 1 150] 
#[ 0 37 1 150] 
#[ 0 41 1 150] 
#[ 0 45 1 150] 
#[ 0 49 1 150] 
#[ 0 53 1 150] 
#[ 0 14 1 150] 
#[ 0 18 1 150] 
#[ 1 13 1 150] 
#[ 0 57 1 150] 
#[ 0 61 1 150] 
#[ 1 69 1 150] 
#[ 0 229 1 70] 
#[ 1 194 3 101] 
#[ 0 6 1 202] 
#[ 0 6 3 145] 
#[ 0 33 1 242] 
#[ 0 37 1 242] 
#[ 0 41 1 242] 
#[ 0 45 1 242] 
#[ 0 49 1 242] 
#[ 0 53 1 242] 
#[ 0 14 1 242] 
#[ 0 18 1 242] 
#[ 1 13 1 242] 
#[ 0 57 1 242] 
#[ 0 61 1 242] 
#[ 1 69 1 242]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2023-03-24T12:48:23.707-05:00'
]

{ #category : #generated }
YAMLParser class >> definitionComment [
"/*
Converted to SmaCC from ANTLR grammar found at https://github.com/umaranis/FastYaml with license:

MIT License

Copyright (c) Syed Umar Anis

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the ""Software""), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
%glr;
/*parser grammar YamlParser;*/


/*lexer grammar YamlLexer;*/

# All comments that start with ""///"" are copy-pasted from
# The Python Language Reference: https://docs.python.org/3.3/reference/grammar.html

%id  <INDENT> <DEDENT> <STRING_MY> <DOCUMENTSTART> <DOCUMENTEND> <DOUBLE_QUOTE>  <NEWLINE> <SPACES> <NEWLINE_STR_LITERAL> <FINISH_LITERAL_STRING>;
%prefix YAML;
%suffix Node;
%root Parse;
%hierarchy List (FlowList);
%hierarchy MappingList (FlowMappingList);


/*
 * lexer rules
 */

<newline>
 : ( \r? \n | \r ) <SPACES>?
 ;

#/ bytesliteral   ::=  bytesprefix(shortbytes | longbytes)
#/ bytesprefix    ::=  ""b"" | ""B"" | ""br"" | ""Br"" | ""bR"" | ""BR""
<BYTES_LITERAL>
 : [bB] [rR]? ( <SHORT_BYTES> | <LONG_BYTES> )
 ;

#/ decimalinteger ::=  nonzerodigit digit* | ""0""+
default FLOW <DECIMAL_INTEGER>
 : <NON_ZERO_DIGIT> <DIGIT>*
 | 0+
 ;

#/ octinteger     ::=  ""0"" (""o"" | ""O"") octdigit+
default FLOW <OCT_INTEGER>
 : 0 [oO] <OCT_DIGIT>+
 ;

#/ hexinteger     ::=  ""0"" (""x"" | ""X"") hexdigit+
default FLOW <HEX_INTEGER>
 : 0 [xX] <HEX_DIGIT>+
 ;

#/ bininteger     ::=  ""0"" (""b"" | ""B"") bindigit+
default FLOW <BIN_INTEGER>
 : 0 [bB] <BIN_DIGIT>+
 ;

#/ floatnumber   ::=  pointfloat | exponentfloat
default FLOW  <FLOAT_NUMBER>
 : <POINT_FLOAT>
 | <EXPONENT_FLOAT>
 ;

#/ imagnumber ::=  (floatnumber | intpart) (""j"" | ""J"")
default FLOW <IMAG_NUMBER>
 : ( <FLOAT_NUMBER> | <INT_PART> ) [jJ]
 ;

<MINUS>:              \-;
<DOCUMENTSTART1>:      \-\-\-;
<DOCUMENTEND1>:        \.\.\.;
<AMPERSAND> :         \&;
<STAR> :              \*;
<OPEN_PAREN> :        \( /* TODO: {opened++;}*/;
<CLOSE_PAREN> :       \) /* TODO: {opened--;}*/;
default FLOW <COMMA> :             \,;
default FLOW <COLON> :             \:;
default FLOW <OPEN_BRACK> :        \[ ;
default FLOW <CLOSE_BRACK> :       \] ;
default FLOW <OPEN_BRACE> :        \{ ;
default FLOW <CLOSE_BRACE> :       \};
<LITERAL_STR_IND>:   \| <header>? ;
<FOLD_STR_IND>:       \> <header>? ;
<DOUBLE_QUOTE>:       \"" ;

default FLOW <ANCHOR>
 : <AMPERSAND> [^\s]+
 ;

<ALIAS>
 : <STAR> [^\s]+
 ;

<NAME>
 : [A-Za-z0-9]+
 ;

<STRING_MY>
 : <STRING_MY_START> ([^\ \r\n\:] | (\: [^\ \r\n]) | (\ + [^\ \:\#\r\n]) )*
 ;

<STRING_MY_START>
 : [^\-\ \t\r\n\""\:\#\[\{\&\*\|] | (\: [^\ \r\n]) | (\- [^\ \r\n])
 ;

<SKIP1>
 : ( <SPACES> | <LINE_JOINING> )
 ;

<UNKNOWN_CHAR>
 : .
 ;

/*
 * fragments
 */

#/ nonzerodigit   ::=  ""1""...""9""
<NON_ZERO_DIGIT>
 : [1-9]
 ;

#/ digit          ::=  ""0""...""9""
<DIGIT>
 : [0-9]
 ;

#/ octdigit       ::=  ""0""...""7""
<OCT_DIGIT>
 : [0-7]
 ;

#/ hexdigit       ::=  digit | ""a""...""f"" | ""A""...""F""
<HEX_DIGIT>
 : [0-9a-fA-F]
 ;

#/ bindigit       ::=  ""0"" | ""1""
<BIN_DIGIT>
 : [01]
 ;

#/ pointfloat    ::=  [intpart] fraction | intpart "".""
<POINT_FLOAT>
 : <INT_PART>? <FRACTION>
 | <INT_PART> \.
 ;

#/ exponentfloat ::=  (intpart | pointfloat) exponent
<EXPONENT_FLOAT>
 : ( <INT_PART> | <POINT_FLOAT> ) <EXPONENT>
 ;

#/ intpart       ::=  digit+
<INT_PART>
 : <DIGIT>+
 ;

#/ fraction      ::=  ""."" digit+
<FRACTION>
 : \. <DIGIT>+
 ;

#/ exponent      ::=  (""e"" | ""E"") [""+"" | ""-""] digit+
<EXPONENT>
 : [eE] [\+\-]? <DIGIT>+
 ;

#/ shortbytes     ::=  ""'"" shortbytesitem* ""'"" | '""' shortbytesitem* '""'
#/ shortbytesitem ::=  shortbyteschar | bytesescapeseq
<SHORT_BYTES>
 : \' ( <SHORT_BYTES_CHAR_NO_SINGLE_QUOTE> | <BYTES_ESCAPE_SEQ> )* \'
 | \"" ( <SHORT_BYTES_CHAR_NO_DOUBLE_QUOTE> | <BYTES_ESCAPE_SEQ> )* \""
 ;

#/ longbytes      ::=  ""'''"" longbytesitem* ""'''"" | '""""""' longbytesitem* '""""""'
<LONG_BYTES>
 : \'\'\' <LONG_BYTES_ITEM>*/* TODO: ? */ \'\'\'
 | \""\""\"" <LONG_BYTES_ITEM>*/* TODO: ? */ \""\""\""
 ;

#/ longbytesitem  ::=  longbyteschar | bytesescapeseq
<LONG_BYTES_ITEM>
 : <LONG_BYTES_CHAR>
 | <BYTES_ESCAPE_SEQ>
 ;

#/ shortbyteschar ::=  <any ASCII character except ""\"" or newline or the quote>
<SHORT_BYTES_CHAR_NO_SINGLE_QUOTE>
 : [\x0000-\x0009]
 | [\x000B-\x000C]
 | [\x000E-\x0026]
 | [\x0028-\x005B]
 | [\x005D-\x007F]
 ;

<SHORT_BYTES_CHAR_NO_DOUBLE_QUOTE>
 : [\x0000-\x0009]
 | [\x000B-\x000C]
 | [\x000E-\x0021]
 | [\x0023-\x005B]
 | [\x005D-\x007F]
 ;

#/ longbyteschar  ::=  <any ASCII character except ""\"">
<LONG_BYTES_CHAR>
 : [\x0000-\x005B]
 | [\x005D-\x007F]
 ;

#/ bytesescapeseq ::=  ""\"" <any ASCII character>
<BYTES_ESCAPE_SEQ>
 : \\ [\x0000-\x007F]
 ;

<SPACES>
 : [\ \t]+
 ;

default FLOW <comment>
 : \# [^\r\n]*
 ;

<LINE_JOINING>
 : \\ <SPACES>? ( \r? \n | \r )
 ;

# MODE CHANGE


# decimalinteger ::=  nonzerodigit digit* | ""0""+
#/ octinteger     ::=  ""0"" (""o"" | ""O"") octdigit+
#/ hexinteger     ::=  ""0"" (""x"" | ""X"") hexdigit+
#/ bininteger     ::=  ""0"" (""b"" | ""B"") bindigit+
#/ floatnumber   ::=  pointfloat | exponentfloat
#/ imagnumber ::=  (floatnumber | intpart) (""j"" | ""J"")
FLOW <STRING_MY_2>
 : <STRING_MY_START_2> ([^\ \r\n\""\:\[\]\,\{\}] | (\: [^\ \r\n]) | (\ + [^\ \:\#\r\n\[\]\,\{\}]) )*
 ;

FLOW <STRING_MY_START_2>
 : [^\-\ \t\r\n\""\:\#\[\]\,\{\}] | (\: [^\ \r\n]) | (\- [^\ \r\n])
 ;

FLOW <SKIP2>
 : ( <SPACES> | <LINE_JOINING> | ( \r? \n | \r ))
 ;

# MODE CHANGE


LITERAL_STRING <newline_str_literal>: ( \r? \n | \r ) [\ \t]*
 ;
 #shouldn't do ->type(NEWLINE) to avoid NEWLINE post processing

LITERAL_STRING <STRING_MY_3>
 : [^\r\n]*
 ;
<escapedChar>
	: \\ 
	(
		[0abtnvfre\""\/\\N_LP] | (x <HEX_DIGIT>{2,2}) |  (u <HEX_DIGIT>{4,4}) | (U <HEX_DIGIT>{8,8})
	)
	;


# MODE CHANGE


DOUBLE_QUOTE_STR <STRING_MY_4>
 : ([^\""\r\n\\] | <escapedChar>)*
 ;

DOUBLE_QUOTE_STR <NEWLINE_STR_QUOTE>: ( \r? \n | \r ) [\ \t]* ;

DOUBLE_QUOTE_STR <DOUBLE_QUOTE2>: \"" ;
<header>
	: [1-9][\-\+]?
	| [\-\+][1-9]?
	;
default FLOW <doubleQuoteString>
	: \"" ([^\""\\] | (\\ .))* \""
	;

# The Yaml Language Reference: http://www.yaml.org/spec/1.2/spec.html

/*
 * my parser rules
 */

file
 : (<NEWLINE>* fileDocument)+ <NEWLINE>*  {{}}
 ;

document
 : list | mappinglist | flowlist | flowmappinglist | value
 ;

list
 : (<NEWLINE>* listitem 'item' <NEWLINE>?)+ {{}}
 ;

listitem
 : <MINUS> 'minus' <ANCHOR> 'anchor'? (
        value 'value' |
        <NEWLINE>+ <INDENT> list 'value' <DEDENT> |
        <NEWLINE>+ <INDENT> mappinglist 'value' <DEDENT> |
        flowlist 'value' |
        PushIndent listWithoutInitialNewline 'value' <DEDENT> |	# added
        PushIndent mappingListWithoutInitialNewline 'value' <DEDENT> |	# added
        flowmappinglist 'value' 
        ) {{ListItem}}
 | <MINUS> 'minus' alias 'value' {{ListItem}}
 | <MINUS> 'minus' <NEWLINE>  {{ListItem}} #null value
 ;
alias
	: <ALIAS> 'name' {{}}
	;
mappingListWithoutInitialNewline
	: mapping 'mapping' (<NEWLINE>* mapping 'mapping')* <NEWLINE>? {{MappingList}}
	;
PushIndent
	: 
	[scanner pushIndent: (scanner indentsBefore: currentToken startPosition).
	currentState notNil
		ifTrue: [ currentState scannerState: scanner currentState ].
	nil]
	;

mappinglist
 : (<NEWLINE>* mapping 'mapping' <NEWLINE>?)+ {{MappingList}}
 ;

key
 : <STRING_MY> 'name' {{}}
 | <doubleQuoteString> 'name' {{}}
 | <ALIAS> 'name' {{}}
 | flowmappinglist
 | flowlist
 ;

value
 : value_scalar | <NEWLINE> <INDENT> value_scalar 'value' <NEWLINE>+ <DEDENT> {value} | multiline_string | string_literal | string_folded | string_double_quoted
 ;

value_scalar
 : number | <STRING_MY> 'value' {{String}}
 ;

multiline_string
 : value_scalar 'value'? <NEWLINE> <INDENT> ( value_scalar 'value' (<NEWLINE> value_scalar 'value')* | multiline_string)+ <NEWLINE>* <DEDENT> {{MultilineString}}
 ;

string_literal
 : PushLiteralString <LITERAL_STR_IND> 'part' (<NEWLINE_STR_LITERAL>+ <STRING_MY> 'part')* <NEWLINE_STR_LITERAL>+? PopScope <FINISH_LITERAL_STRING> {{}}
 ;
PushLiteralString
	: [self pushScope: #LITERAL_STRING]
	;

string_folded
 : PushLiteralString <FOLD_STR_IND> 'part' (<NEWLINE_STR_LITERAL>+ <STRING_MY> 'part')* <NEWLINE_STR_LITERAL>+? PopScope <FINISH_LITERAL_STRING> {{StringLiteral}}
 ;

string_double_quoted
# : PushDoubleQuoteScope <DOUBLE_QUOTE> 'part' <STRING_MY> 'part' (<NEWLINE_STR_QUOTE>+ <STRING_MY> 'part')* PopScope <DOUBLE_QUOTE> 'part' {{StringLiteral}}
:	<doubleQuoteString> 'part' {{StringLiteral}}
 ;
PushDoubleQuoteScope
	: [self pushScope: #DOUBLE_QUOTE_STR. nil]
	;
PopScope
	: [self popScope. nil]
	;

mapping
 : <ANCHOR> 'anchor'? key 'key'? <COLON> 'colon' <ANCHOR> 'anchor'? <NEWLINE>+ <INDENT> mappinglist 'value' <DEDENT> {{}}
 | <ANCHOR> 'anchor'? key 'key'? <COLON> 'colon' <ANCHOR> 'anchor'? <NEWLINE>+ <INDENT> list 'value' <DEDENT> {{}}
 | <ANCHOR> 'anchor'? key 'key'? <COLON> 'colon' <ANCHOR> 'anchor'? flowmappinglist 'value' {{}}
 | <ANCHOR> 'anchor'? key 'key'? <COLON> 'colon' <ANCHOR> 'anchor'? (value 'value' | alias 'value')? {{}}
 | <ANCHOR> 'anchor'? key 'key'? <COLON> 'colon' <ANCHOR> 'anchor'? <NEWLINE>+ listWithoutInitialNewline 'value' {{}}	# added
 | <ANCHOR> 'anchor'? key 'key'? <COLON> 'colon' <ANCHOR> 'anchor'? flowlist 'value' {{}}	# added
 ;
listWithoutInitialNewline
	: listitem 'item' (<NEWLINE>* listitem 'item' <NEWLINE>?)* {{List}}
	;

/*
 * flow rules
 */

flowlist
 : PushFlow <OPEN_BRACK> 'leftBracket' (flowListValue 'item' (<COMMA> 'comma' flowListValue  'item')*)? <COMMA> 'comma'? PopFlow <CLOSE_BRACK> 'rightBracket' {{FlowList}}
 ;
flowListValue
	: value
	| flowlist
	| flowmappinglist
	| mapping
	;
PopFlow
	: [scanner opened: scanner opened - 1. self popScope. nil]
	;
PushFlow
	: [scanner opened: scanner opened + 1. self pushScope: #FLOW. nil]
	;

flowmappinglist
 : PushFlow <OPEN_BRACE> 'leftBrace' (flowMapping 'mapping' (<COMMA> 'comma' flowMapping 'mapping')*)? <COMMA> 'comma'? PopFlow <CLOSE_BRACE> 'rightBrace' {{FlowMappingList}}
 ;
flowMapping
	: mapping
	| <ANCHOR> 'anchor'? key 'key' {{Mapping}}
	;

/*
 * parser rules
 */

number
 : integer 'value' {{}}
 | <FLOAT_NUMBER> 'value' {{}}
 | <IMAG_NUMBER> 'value' {{}}
 ;

#/ integer        ::=  decimalinteger | octinteger | hexinteger | bininteger
integer
 : <DECIMAL_INTEGER>
 | <OCT_INTEGER>
 | <HEX_INTEGER>
 | <BIN_INTEGER>
 ;
 fileDocument
  : (<DOCUMENTSTART> 'documentStart' <NEWLINE>?)? document 'document' <DOCUMENTEND> 'documentEnd'?
  | <DOCUMENTSTART> 'documentStart' <NEWLINE>? <DOCUMENTEND> 'documentEnd'?
  | <DOCUMENTEND> 'documentEnd'
  ;"
]

{ #category : #accessing }
YAMLParser class >> fileExtensions [
	^ #('.yaml' '.yml')
]

{ #category : #generated }
YAMLParser class >> reduceTable [
^#(
	#(37 0 #nil 7050241 false) 
	#(36 1 #reduceActionFor__NEWLINE___fileDocument__1: 7049217 false) 
	#(77 0 #reduceActionForPushFlow1: 10652673 true) 
	#(64 0 #reduceActionForPushLiteralString1: 8915969 true) 
	#(36 2 #reduceActionFor__NEWLINE___fileDocument__2: 7049218 false) 
	#(34 2 #reduceActionForfile1: 7041025 false) 
	#(83 1 #liftFirstValue: 11209729 false) 
	#(83 1 #liftFirstValue: 11209730 false) 
	#(83 1 #liftFirstValue: 11209731 false) 
	#(83 1 #liftFirstValue: 11209732 false) 
	#(82 1 #reduceActionFornumber2: 11032578 false) 
	#(82 1 #reduceActionFornumber2: 11032579 false) 
	#(54 1 #reduceActionForvalue_scalar2: 8492034 false) 
	#(66 1 #reduceActionForstring_double_quoted1: 9161729 false) 
	#(84 1 #reduceActionForfileDocument1: 11295745 false) 
	#(38 1 #liftFirstValue: 7098369 false) 
	#(41 1 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____1: 7180289 false) 
	#(39 1 #reduceActionForlist1: 7172097 false) 
	#(38 1 #liftFirstValue: 7098370 false) 
	#(51 1 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____1: 8121345 false) 
	#(49 1 #reduceActionFormappinglist1: 8105985 false) 
	#(38 1 #liftFirstValue: 7098373 false) 
	#(53 1 #liftFirstValue: 8316929 false) 
	#(53 1 #liftFirstValue: 8316931 false) 
	#(53 1 #liftFirstValue: 8316932 false) 
	#(53 1 #liftFirstValue: 8316933 false) 
	#(53 1 #liftFirstValue: 8316934 false) 
	#(38 1 #liftFirstValue: 7098371 false) 
	#(38 1 #liftFirstValue: 7098372 false) 
	#(54 1 #liftFirstValue: 8492033 false) 
	#(82 1 #reduceActionFornumber2: 11032577 false) 
	#(35 2 #reduceActionFor__NEWLINE___fileDocument_1: 7049217 false) 
	#(84 1 #reduceActionForfileDocument11: 11295755 false) 
	#(84 1 #reduceActionForfileDocument7: 11295751 false) 
	#(37 2 #liftFirstValue: 7050242 false) 
	#(48 0 #reduceActionForPushIndent1: 7917569 true) 
	#(69 1 #reduceActionFormapping25: 9504793 false) 
	#(52 1 #reduceActionForkey3: 8185859 false) 
	#(52 1 #reduceActionForkey3: 8185857 false) 
	#(52 1 #reduceActionForkey3: 8185858 false) 
	#(40 2 #liftSecondValue: 7180289 false) 
	#(50 2 #liftSecondValue: 8121345 false) 
	#(52 1 #liftFirstValue: 8185861 false) 
	#(52 1 #liftFirstValue: 8185860 false) 
	#(84 2 #reduceActionForfileDocument2: 11295746 false) 
	#(41 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 7180290 false) 
	#(51 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8121346 false) 
	#(62 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8803329 false) 
	#(76 0 #reduceActionForPopFlow1: 10579969 true) 
	#(84 2 #reduceActionForfileDocument3: 11295747 false) 
	#(84 2 #reduceActionForfileDocument8: 11295752 false) 
	#(84 2 #reduceActionForfileDocument7: 11295753 false) 
	#(44 1 #reduceActionForalias1: 7766017 false) 
	#(42 2 #reduceActionForlistitem15: 7231503 false) 
	#(42 2 #reduceActionForlistitem15: 7231489 false) 
	#(42 2 #reduceActionForlistitem15: 7231492 false) 
	#(42 2 #reduceActionForlistitem15: 7231495 false) 
	#(42 2 #reduceActionForlistitem16: 7231504 false) 
	#(43 1 #liftFirstValue: 7314433 false) 
	#(69 2 #reduceActionFormapping28: 9504796 false) 
	#(69 2 #reduceActionFormapping27: 9504795 false) 
	#(69 2 #reduceActionFormapping27: 9504794 false) 
	#(69 2 #reduceActionFormapping27: 9504825 false) 
	#(69 2 #reduceActionFormapping27: 9504785 false) 
	#(69 2 #reduceActionFormapping37: 9504805 false) 
	#(40 3 #liftSecondValue: 7180290 false) 
	#(69 2 #reduceActionFormapping31: 9504799 false) 
	#(50 3 #liftSecondValue: 8121346 false) 
	#(68 0 #reduceActionForPopScope1: 9466881 true) 
	#(75 1 #liftFirstValue: 10507265 false) 
	#(75 1 #liftFirstValue: 10507268 false) 
	#(75 1 #liftFirstValue: 10507266 false) 
	#(74 0 #reduceActionFor__COMMA___comma__flowListValue___item___1: 10391553 false) 
	#(75 1 #liftFirstValue: 10507267 false) 
	#(81 1 #reduceActionForflowMapping2: 10934274 false) 
	#(81 1 #liftFirstValue: 10934273 false) 
	#(80 0 #reduceActionFor__COMMA___comma__flowListValue___item___1: 10813441 false) 
	#(84 3 #reduceActionForfileDocument4: 11295748 false) 
	#(84 3 #reduceActionForfileDocument5: 11295749 false) 
	#(84 3 #reduceActionForfileDocument10: 11295754 false) 
	#(59 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8639489 false) 
	#(56 1 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8615938 false) 
	#(57 1 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string__1: 8615937 false) 
	#(42 3 #reduceActionForlistitem8: 7231496 false) 
	#(42 3 #reduceActionForlistitem8: 7231499 false) 
	#(42 3 #reduceActionForlistitem8: 7231502 false) 
	#(43 2 #liftFirstValue: 7314434 false) 
	#(71 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 10242049 false) 
	#(47 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 7854081 false) 
	#(69 3 #reduceActionFormapping30: 9504798 false) 
	#(69 3 #reduceActionFormapping30: 9504797 false) 
	#(69 3 #reduceActionFormapping30: 9504826 false) 
	#(69 3 #reduceActionFormapping30: 9504786 false) 
	#(69 3 #reduceActionFormapping49: 9504817 false) 
	#(69 3 #reduceActionFormapping40: 9504808 false) 
	#(69 3 #reduceActionFormapping39: 9504807 false) 
	#(69 3 #reduceActionFormapping39: 9504806 false) 
	#(69 3 #reduceActionFormapping39: 9504829 false) 
	#(69 3 #reduceActionFormapping39: 9504789 false) 
	#(69 3 #reduceActionFormapping43: 9504811 false) 
	#(69 3 #reduceActionFormapping34: 9504802 false) 
	#(69 3 #reduceActionFormapping33: 9504801 false) 
	#(69 3 #reduceActionFormapping33: 9504800 false) 
	#(69 3 #reduceActionFormapping33: 9504827 false) 
	#(69 3 #reduceActionFormapping33: 9504787 false) 
	#(62 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8803330 false) 
	#(63 1 #liftFirstValue: 8804353 false) 
	#(72 4 #reduceActionForflowlist1: 10319873 false) 
	#(81 2 #reduceActionForflowMapping3: 10934275 false) 
	#(78 4 #reduceActionForflowmappinglist1: 10735617 false) 
	#(84 4 #reduceActionForfileDocument6: 11295750 false) 
	#(56 2 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string_1: 8615937 false) 
	#(57 2 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string__2: 8615938 false) 
	#(70 2 #reduceActionForlistWithoutInitialNewline1: 10195969 false) 
	#(42 4 #reduceActionForlistitem6: 7231494 false) 
	#(45 2 #reduceActionFormappingListWithoutInitialNewline1: 7798785 false) 
	#(42 4 #reduceActionForlistitem6: 7231493 false) 
	#(69 4 #reduceActionFormapping50: 9504818 false) 
	#(69 4 #reduceActionFormapping42: 9504810 false) 
	#(69 4 #reduceActionFormapping42: 9504809 false) 
	#(69 4 #reduceActionFormapping42: 9504830 false) 
	#(69 4 #reduceActionFormapping42: 9504790 false) 
	#(69 4 #reduceActionFormapping53: 9504821 false) 
	#(69 4 #reduceActionFormapping46: 9504814 false) 
	#(69 4 #reduceActionFormapping45: 9504813 false) 
	#(69 4 #reduceActionFormapping45: 9504812 false) 
	#(69 4 #reduceActionFormapping45: 9504831 false) 
	#(69 4 #reduceActionFormapping45: 9504791 false) 
	#(69 4 #reduceActionFormapping36: 9504804 false) 
	#(69 4 #reduceActionFormapping36: 9504803 false) 
	#(69 4 #reduceActionFormapping36: 9504828 false) 
	#(69 4 #reduceActionFormapping36: 9504788 false) 
	#(69 4 #reduceActionFormapping51: 9504819 false) 
	#(61 2 #liftSecondValue: 8803329 false) 
	#(63 2 #liftFirstValue: 8804354 false) 
	#(60 5 #reduceActionForstring_literal1: 8740865 false) 
	#(65 5 #reduceActionForstring_literal1: 8976385 false) 
	#(72 5 #reduceActionForflowlist2: 10319874 false) 
	#(74 2 #reduceActionFor__COMMA___comma__flowListValue___item___2: 10391554 false) 
	#(78 5 #reduceActionForflowmappinglist2: 10735618 false) 
	#(80 2 #reduceActionFor__COMMA___comma__flowListValue___item___2: 10813442 false) 
	#(53 5 #reduceActionForvalue2: 8316930 false) 
	#(59 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8639490 false) 
	#(55 5 #reduceActionFormultiline_string1: 8553473 false) 
	#(42 5 #reduceActionForlistitem13: 7231501 false) 
	#(42 5 #reduceActionForlistitem13: 7231500 false) 
	#(42 5 #reduceActionForlistitem2: 7231490 false) 
	#(42 5 #reduceActionForlistitem2: 7231491 false) 
	#(71 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 10242050 false) 
	#(47 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 7854082 false) 
	#(45 3 #reduceActionFormappingListWithoutInitialNewline1: 7798786 false) 
	#(69 5 #reduceActionFormapping9: 9504777 false) 
	#(69 5 #reduceActionFormapping9: 9504769 false) 
	#(69 5 #reduceActionFormapping54: 9504822 false) 
	#(69 5 #reduceActionFormapping48: 9504816 false) 
	#(69 5 #reduceActionFormapping48: 9504815 false) 
	#(69 5 #reduceActionFormapping48: 9504832 false) 
	#(69 5 #reduceActionFormapping48: 9504792 false) 
	#(69 5 #reduceActionFormapping55: 9504823 false) 
	#(69 5 #reduceActionFormapping52: 9504820 false) 
	#(55 6 #reduceActionFormultiline_string2: 8553474 false) 
	#(60 6 #reduceActionForstring_literal1: 8740866 false) 
	#(65 6 #reduceActionForstring_literal1: 8976386 false) 
	#(73 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 10391553 false) 
	#(72 6 #reduceActionForflowlist3: 10319875 false) 
	#(79 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 10813441 false) 
	#(78 6 #reduceActionForflowmappinglist3: 10735619 false) 
	#(58 2 #liftSecondValue: 8639489 false) 
	#(42 6 #reduceActionForlistitem9: 7231497 false) 
	#(42 6 #reduceActionForlistitem9: 7231498 false) 
	#(46 2 #liftSecondValue: 7854081 false) 
	#(69 6 #reduceActionFormapping10: 9504778 false) 
	#(69 6 #reduceActionFormapping10: 9504770 false) 
	#(69 6 #reduceActionFormapping13: 9504781 false) 
	#(69 6 #reduceActionFormapping13: 9504773 false) 
	#(69 6 #reduceActionFormapping56: 9504824 false) 
	#(69 6 #reduceActionFormapping11: 9504779 false) 
	#(69 6 #reduceActionFormapping11: 9504771 false) 
	#(72 7 #reduceActionForflowlist4: 10319876 false) 
	#(78 7 #reduceActionForflowmappinglist4: 10735620 false) 
	#(69 7 #reduceActionFormapping14: 9504782 false) 
	#(69 7 #reduceActionFormapping14: 9504774 false) 
	#(69 7 #reduceActionFormapping15: 9504783 false) 
	#(69 7 #reduceActionFormapping15: 9504775 false) 
	#(69 7 #reduceActionFormapping12: 9504780 false) 
	#(69 7 #reduceActionFormapping12: 9504772 false) 
	#(69 8 #reduceActionFormapping16: 9504784 false) 
	#(69 8 #reduceActionFormapping16: 9504776 false)
	).
]

{ #category : #generated }
YAMLParser class >> scannerClass [
	^YAMLScanner
]

{ #category : #generated }
YAMLParser class >> startingStateForfile [
	^ 1
]

{ #category : #generated }
YAMLParser class >> symbolNames [
	^ #('<newline>' '<DECIMAL_INTEGER>' '<OCT_INTEGER>' '<HEX_INTEGER>' '<BIN_INTEGER>' '<FLOAT_NUMBER>' '<IMAG_NUMBER>' '<MINUS>' '<DOCUMENTSTART1>' '<DOCUMENTEND1>' '<COMMA>' '<COLON>' '<OPEN_BRACK>' '<CLOSE_BRACK>' '<OPEN_BRACE>' '<CLOSE_BRACE>' '<LITERAL_STR_IND>' '<FOLD_STR_IND>' '<DOUBLE_QUOTE>' '<ANCHOR>' '<ALIAS>' '<STRING_MY>' '<SKIP1>' '<SPACES>' '<comment>' '<STRING_MY_2>' '<SKIP2>' '<newline_str_literal>' '<STRING_MY_3>' '<STRING_MY_4>' '<DOUBLE_QUOTE2>' '<doubleQuoteString>' 'B e g i n' 'file' '(<NEWLINE>* fileDocument)' '(<NEWLINE>* fileDocument)+' '<NEWLINE>*' 'document' 'list' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)+' 'listitem' '<NEWLINE>+' 'alias' 'mappingListWithoutInitialNewline' '(<NEWLINE>* mapping ''mapping'')' '(<NEWLINE>* mapping ''mapping'')*' 'PushIndent' 'mappinglist' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)+' 'key' 'value' 'value_scalar' 'multiline_string' '( value_scalar ''value'' (<NEWLINE> value_scalar ''value'')* | multiline_string)' '( value_scalar ''value'' (<NEWLINE> value_scalar ''value'')* | multiline_string)+' '(<NEWLINE> value_scalar ''value'')' '(<NEWLINE> value_scalar ''value'')*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' 'PushLiteralString' 'string_folded' 'string_double_quoted' 'PushDoubleQuoteScope' 'PopScope' 'mapping' 'listWithoutInitialNewline' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)*' 'flowlist' '(<COMMA> ''comma'' flowListValue  ''item'')' '(<COMMA> ''comma'' flowListValue  ''item'')*' 'flowListValue' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' flowMapping ''mapping'')' '(<COMMA> ''comma'' flowMapping ''mapping'')*' 'flowMapping' 'number' 'integer' 'fileDocument' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
]

{ #category : #generated }
YAMLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #YAMLFileNode #YAMLFileNode #OrderedCollection #OrderedCollection nil #YAMLParseNode #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLListItemNode #SmaCCToken #YAMLAliasNode #YAMLMappingListNode #YAMLMappingNode #OrderedCollection nil #YAMLMappingListNode #YAMLMappingNode #OrderedCollection #YAMLParseNode #YAMLParseNode #YAMLParseNode #YAMLMultilineStringNode #OrderedCollection #OrderedCollection #YAMLParseNode #OrderedCollection #YAMLStringLiteralNode #SmaCCToken #OrderedCollection #SmaCCToken #Object #YAMLStringLiteralNode #YAMLStringLiteralNode nil nil #YAMLMappingNode #YAMLListNode #OrderedCollection #YAMLFlowListNode #OrderedCollection #OrderedCollection #YAMLParseNode nil nil #YAMLFlowMappingListNode #OrderedCollection #OrderedCollection #YAMLMappingNode #YAMLNumberNode #SmaCCToken #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
YAMLParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 9 0 34 0 13 0 35 0 17 0 36 0 21 0 37 0 6 0 86 0 6 0 87 0 6 0 90] 
#[0 0 0 0 92] 
#[0 0 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 25 0 35 0 29 0 37 0 6 0 86 0 6 0 87 0 6 0 90 0 6 0 92] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 6 0 8 0 6 0 12 0 7 0 13 0 7 0 15 0 18 0 17 0 18 0 18 0 6 0 20 0 6 0 21 0 11 0 22 0 15 0 32 0 65 0 37 0 69 0 38 0 69 0 39 0 77 0 40 0 81 0 41 0 69 0 49 0 89 0 50 0 93 0 51 0 69 0 53 0 101 0 54 0 69 0 55 0 69 0 60 0 113 0 64 0 69 0 65 0 69 0 66 0 69 0 72 0 129 0 77 0 69 0 78 0 101 0 82 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 0 19 0 90] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 6 0 8 0 6 0 12 0 7 0 13 0 7 0 15 0 18 0 17 0 18 0 18 0 6 0 20 0 6 0 21 0 11 0 22 0 15 0 32 0 65 0 37 0 69 0 38 0 69 0 39 0 77 0 40 0 81 0 41 0 69 0 49 0 89 0 50 0 93 0 51 0 69 0 53 0 101 0 54 0 69 0 55 0 69 0 60 0 113 0 64 0 69 0 65 0 69 0 66 0 69 0 72 0 129 0 77 0 69 0 78 0 101 0 82 0 141 0 83 0 145 0 84 0 149 0 86 0 153 0 87 0 19 0 90 0 26 0 92] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 161 0 8 0 165 0 12 0 14 0 13 0 14 0 15 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 32 0 185 0 42 0 189 0 52 0 193 0 69 0 189 0 72 0 129 0 77 0 189 0 78 0 205 0 90] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 7 0 62 0 8 0 62 0 12 0 62 0 13 0 62 0 15 0 62 0 17 0 62 0 18 0 62 0 20 0 62 0 21 0 62 0 22 0 62 0 32 0 23 0 86 0 62 0 87 0 62 0 90 0 62 0 92] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 74 0 2 0 74 0 3 0 74 0 4 0 74 0 5 0 74 0 6 0 74 0 7 0 27 0 8 0 74 0 12 0 74 0 13 0 74 0 15 0 74 0 17 0 74 0 18 0 74 0 20 0 74 0 21 0 74 0 22 0 74 0 32 0 213 0 37 0 217 0 40 0 74 0 85 0 74 0 86 0 74 0 87 0 27 0 90 0 74 0 92] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 86 0 2 0 86 0 3 0 86 0 4 0 86 0 5 0 86 0 6 0 86 0 7 0 86 0 8 0 31 0 12 0 31 0 13 0 31 0 15 0 86 0 17 0 86 0 18 0 31 0 20 0 31 0 21 0 31 0 22 0 31 0 32 0 221 0 37 0 225 0 50 0 86 0 85 0 86 0 86 0 86 0 87 0 31 0 90 0 86 0 92] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 0 94 0 2 0 94 0 3 0 94 0 4 0 94 0 5 0 94 0 6 0 94 0 7 0 94 0 8 0 94 0 11 0 94 0 12 0 94 0 13 0 94 0 14 0 94 0 15 0 94 0 16 0 94 0 17 0 94 0 18 0 94 0 20 0 94 0 21 0 94 0 22 0 94 0 32 0 94 0 85 0 94 0 86 0 94 0 87 0 35 0 90 0 94 0 92] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 233 0 17 0 237 0 18] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 0 241 0 13 0 245 0 15] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 0 39 0 2 0 43 0 3 0 47 0 4 0 51 0 5 0 55 0 6 0 59 0 7 0 63 0 8 0 63 0 12 0 67 0 13 0 67 0 15 0 71 0 17 0 71 0 18 0 63 0 20 0 63 0 21 0 75 0 22 0 79 0 32 0 65 0 37 0 249 0 38 0 249 0 39 0 77 0 40 0 81 0 41 0 249 0 49 0 89 0 50 0 93 0 51 0 249 0 53 0 101 0 54 0 249 0 55 0 249 0 60 0 113 0 64 0 249 0 65 0 249 0 66 0 249 0 72 0 129 0 77 0 249 0 78 0 101 0 82 0 141 0 83 0 83 0 86 0 138 0 87 0 87 0 90 0 138 0 92] 
#[1 0 142 0 2 0 142 0 3 0 142 0 4 0 142 0 5 0 142 0 6 0 142 0 7 0 142 0 8 0 142 0 12 0 142 0 13 0 142 0 15 0 142 0 17 0 142 0 18 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 32 0 142 0 86 0 142 0 87 1 5 0 89 0 142 0 90 0 142 0 92] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 146 0 8 0 146 0 12 0 91 0 13 0 91 0 15 0 18 0 17 0 18 0 18 0 95 0 20 0 99 0 21 0 103 0 22 0 107 0 32 1 17 0 43 1 21 0 44 1 25 0 48 1 29 0 53 0 101 0 54 1 29 0 55 1 29 0 60 0 113 0 64 1 29 0 65 1 29 0 66 1 33 0 72 0 129 0 77 1 37 0 78 0 101 0 82 0 141 0 83 1 41 0 90] 
#[1 0 111 0 2 0 115 0 3 0 119 0 4 0 123 0 5 0 127 0 6 0 131 0 7 0 150 0 8 0 150 0 11 0 150 0 12 0 135 0 13 0 150 0 14 0 135 0 15 0 150 0 16 0 139 0 17 0 139 0 18 0 143 0 20 0 147 0 21 0 151 0 22 0 155 0 32 1 49 0 43 1 53 0 44 1 57 0 53 0 101 0 54 1 57 0 55 1 57 0 60 0 113 0 64 1 57 0 65 1 57 0 66 1 61 0 72 0 129 0 77 1 65 0 78 0 101 0 82 0 141 0 83 0 150 0 85 0 150 0 86 0 150 0 87 0 159 0 90 0 150 0 92] 
#[1 1 73 0 12 0 14 0 13 0 14 0 15 0 173 0 21 0 177 0 22 0 181 0 32 1 77 0 52 1 77 0 72 0 129 0 77 1 77 0 78] 
#[0 0 154 0 11 0 12 0 16] 
#[0 0 158 0 11 0 12 0 16] 
#[0 0 162 0 11 0 12 0 16] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 18 0 166 0 20 0 166 0 21 0 166 0 22 0 166 0 32 0 166 0 85 0 166 0 86 0 166 0 87 0 163 0 90 0 166 0 92] 
#[0 1 85 0 12] 
#[1 0 170 0 2 0 170 0 3 0 170 0 4 0 170 0 5 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 12 0 170 0 13 0 170 0 15 0 170 0 17 0 170 0 18 0 170 0 20 0 170 0 21 0 170 0 22 0 170 0 32 0 170 0 85 0 170 0 86 0 170 0 87 0 167 0 90 0 170 0 92] 
#[0 0 174 0 11 0 12 0 16] 
#[0 0 178 0 11 0 12 0 16] 
#[0 0 142 0 8 0 12 0 13 0 15 0 20 0 21 0 22 0 32 0 85 0 90] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 0 161 0 8 0 185 0 42 0 205 0 90] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 165 0 12 0 14 0 13 0 14 0 15 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 32 0 189 0 52 0 193 0 69 0 189 0 72 0 129 0 77 0 189 0 78 0 205 0 90] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 93 0 89] 
#[1 1 97 0 62 0 194 0 88 0 194 0 91] 
#[1 1 101 0 62 0 194 0 88 0 194 0 91] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 1 105 0 11 0 165 0 12 0 14 0 13 0 198 0 14 0 14 0 15 0 18 0 17 0 18 0 18 0 169 0 20 0 173 0 21 1 109 0 22 1 113 0 32 0 189 0 52 1 129 0 53 0 101 0 54 1 129 0 55 1 129 0 60 0 113 0 64 1 129 0 65 1 129 0 66 1 129 0 69 1 125 0 72 1 129 0 75 1 133 0 76 0 129 0 77 1 137 0 78 0 101 0 82 0 141 0 83 1 141 0 90] 
#[1 1 145 0 11 0 165 0 12 0 14 0 13 0 14 0 15 0 198 0 16 1 149 0 20 0 173 0 21 0 177 0 22 0 181 0 32 1 153 0 52 1 165 0 69 1 153 0 72 1 161 0 76 0 129 0 77 1 153 0 78 1 165 0 81] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 12 0 202 0 13 0 202 0 15 0 202 0 17 0 202 0 18 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 32 0 171 0 86 0 202 0 87 0 202 0 90 0 202 0 92] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 0 175 0 2 0 179 0 3 0 183 0 4 0 187 0 5 0 191 0 6 0 195 0 7 0 199 0 8 0 199 0 12 0 203 0 13 0 203 0 15 0 207 0 17 0 207 0 18 0 199 0 20 0 199 0 21 0 211 0 22 0 215 0 32 0 65 0 37 1 173 0 38 1 173 0 39 0 77 0 40 0 81 0 41 1 173 0 49 0 89 0 50 0 93 0 51 1 173 0 53 0 101 0 54 1 173 0 55 1 173 0 60 0 113 0 64 1 173 0 65 1 173 0 66 1 173 0 72 0 129 0 77 1 173 0 78 0 101 0 82 0 141 0 83 0 219 0 86 0 210 0 87 1 5 0 89 0 223 0 90 0 210 0 92] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 57 0 22 1 181 0 54 1 185 0 55 1 189 0 56 1 193 0 57 1 181 0 82 0 141 0 83 1 197 0 90] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 146 0 8 0 146 0 12 0 91 0 13 0 91 0 15 0 18 0 17 0 18 0 18 0 146 0 20 0 146 0 21 0 103 0 22 0 107 0 32 1 201 0 43 1 205 0 48 1 209 0 53 0 101 0 54 1 209 0 55 1 209 0 60 0 113 0 64 1 209 0 65 1 209 0 66 1 213 0 72 0 129 0 77 1 217 0 78 0 101 0 82 0 141 0 83 1 69 0 90] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 1 221 0 89 1 225 0 90] 
#[0 0 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 161 0 8 0 165 0 12 0 14 0 13 0 14 0 15 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 32 1 229 0 42 1 233 0 45 0 189 0 52 1 237 0 69 1 241 0 70 0 189 0 72 0 129 0 77 0 189 0 78] 
#[0 0 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 234 0 15 0 234 0 16 0 234 0 17 0 234 0 18 0 234 0 20 0 234 0 21 0 234 0 22 0 234 0 32 0 234 0 85 0 234 0 86 0 234 0 87 0 227 0 89 0 231 0 90 0 234 0 92] 
#[1 0 235 0 2 0 239 0 3 0 243 0 4 0 247 0 5 0 251 0 6 0 255 0 7 0 242 0 8 0 242 0 11 0 242 0 12 1 3 0 13 0 242 0 14 1 3 0 15 0 242 0 16 1 7 0 17 1 7 0 18 0 242 0 20 1 11 0 21 1 15 0 22 1 19 0 32 1 245 0 43 1 249 0 44 1 253 0 53 0 101 0 54 1 253 0 55 1 253 0 60 0 113 0 64 1 253 0 65 1 253 0 66 2 1 0 72 0 129 0 77 2 5 0 78 0 101 0 82 0 141 0 83 0 242 0 85 0 242 0 86 0 242 0 87 1 23 0 90 0 242 0 92] 
#[1 0 161 0 8 1 229 0 42 2 9 0 70 2 13 0 89 1 225 0 90] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 238 0 8 0 227 0 89 0 238 0 90] 
#[1 1 27 0 2 1 31 0 3 1 35 0 4 1 39 0 5 1 43 0 6 1 47 0 7 1 6 0 8 1 6 0 11 1 6 0 12 1 51 0 13 1 6 0 14 1 51 0 15 1 6 0 16 1 55 0 17 1 55 0 18 1 59 0 20 1 63 0 21 1 67 0 22 1 71 0 32 2 21 0 43 2 25 0 44 2 29 0 53 0 101 0 54 2 29 0 55 2 29 0 60 0 113 0 64 2 29 0 65 2 29 0 66 2 33 0 72 0 129 0 77 2 37 0 78 0 101 0 82 0 141 0 83 1 6 0 85 1 6 0 86 1 6 0 87 1 75 0 90 1 6 0 92] 
#[0 2 41 0 12] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 1 79 0 2 1 83 0 3 1 87 0 4 1 91 0 5 1 95 0 6 1 99 0 7 1 14 0 8 1 14 0 11 1 14 0 12 1 103 0 13 1 14 0 14 1 103 0 15 1 14 0 16 1 107 0 17 1 107 0 18 1 111 0 20 1 115 0 21 1 119 0 22 1 123 0 32 2 49 0 43 2 53 0 44 2 57 0 53 0 101 0 54 2 57 0 55 2 57 0 60 0 113 0 64 2 57 0 65 2 57 0 66 2 61 0 72 0 129 0 77 2 65 0 78 0 101 0 82 0 141 0 83 1 14 0 85 1 14 0 86 1 14 0 87 1 127 0 90 1 14 0 92] 
#[0 1 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 57 0 22 2 69 0 54 1 185 0 55 1 189 0 56 2 73 0 57 2 69 0 82 0 141 0 83 1 197 0 90] 
#[1 2 77 0 61 2 81 0 63 2 85 0 68 1 22 0 88 2 81 0 91] 
#[1 2 77 0 61 2 93 0 63 2 97 0 68 1 22 0 88 2 93 0 91] 
#[1 0 198 0 14 2 101 0 76] 
#[1 0 54 0 11 0 158 0 12 0 54 0 14 0 54 0 90] 
#[1 0 58 0 11 0 162 0 12 0 58 0 14] 
#[0 1 26 0 11 0 14] 
#[0 1 30 0 11 0 14] 
#[1 1 34 0 11 0 174 0 12 1 34 0 14] 
#[1 1 38 0 11 1 38 0 14 2 105 0 74] 
#[0 2 109 0 14] 
#[1 1 42 0 11 0 178 0 12 1 42 0 14] 
#[0 1 5 0 89] 
#[1 0 198 0 16 2 113 0 76] 
#[1 1 73 0 12 0 14 0 13 0 14 0 15 0 173 0 21 0 177 0 22 0 181 0 32 2 117 0 52 2 117 0 72 0 129 0 77 2 117 0 78] 
#[1 1 46 0 11 1 85 0 12 1 46 0 16] 
#[0 1 50 0 11 0 16] 
#[0 2 121 0 16] 
#[1 1 54 0 11 1 54 0 16 2 125 0 80] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 1 62 0 2 1 62 0 3 1 62 0 4 1 62 0 5 1 62 0 6 1 62 0 7 1 62 0 8 1 62 0 12 1 62 0 13 1 62 0 15 1 62 0 17 1 62 0 18 1 62 0 20 1 62 0 21 1 62 0 22 1 62 0 32 1 131 0 86 1 62 0 87 1 62 0 90 1 62 0 92] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 1 70 0 2 1 70 0 3 1 70 0 4 1 70 0 5 1 70 0 6 1 70 0 7 1 70 0 22 2 133 0 43 2 137 0 59 1 70 0 85 1 135 0 90] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 85 0 90] 
#[0 1 78 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 85 0 90] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 57 0 22 2 145 0 37 2 69 0 54 1 185 0 55 2 149 0 56 2 69 0 82 0 141 0 83 0 6 0 85 1 139 0 90] 
#[0 2 153 0 89] 
#[1 2 157 0 89 1 225 0 90] 
#[1 0 161 0 8 0 165 0 12 0 14 0 13 0 14 0 15 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 32 1 229 0 42 2 161 0 45 0 189 0 52 1 237 0 69 2 165 0 70 0 189 0 72 0 129 0 77 0 189 0 78] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 2 169 0 39 0 77 0 40 0 81 0 41 2 173 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[0 1 94 0 8 0 85 0 89 0 90] 
#[1 1 98 0 2 1 98 0 3 1 98 0 4 1 98 0 5 1 98 0 6 1 98 0 7 1 98 0 8 1 98 0 11 1 98 0 12 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 20 1 98 0 21 1 98 0 22 1 98 0 32 2 177 0 71 1 98 0 85 1 98 0 86 1 98 0 87 1 98 0 90 1 98 0 92] 
#[0 2 181 0 85] 
#[1 1 102 0 12 1 102 0 13 1 102 0 15 1 102 0 20 1 102 0 21 1 102 0 22 1 102 0 32 2 185 0 47 1 102 0 85 1 102 0 90] 
#[0 2 189 0 85] 
#[1 0 161 0 8 1 229 0 42 2 193 0 70 2 197 0 89 1 225 0 90] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 2 201 0 39 0 77 0 40 0 81 0 41 2 205 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[1 1 143 0 2 1 147 0 3 1 151 0 4 1 155 0 5 1 159 0 6 1 163 0 7 1 126 0 8 1 126 0 11 1 126 0 12 1 167 0 13 1 126 0 14 1 167 0 15 1 126 0 16 1 171 0 17 1 171 0 18 1 126 0 20 1 175 0 21 1 179 0 22 1 183 0 32 2 209 0 43 2 213 0 44 2 217 0 53 0 101 0 54 2 217 0 55 2 217 0 60 0 113 0 64 2 217 0 65 2 217 0 66 2 221 0 72 0 129 0 77 2 225 0 78 0 101 0 82 0 141 0 83 1 126 0 85 1 126 0 86 1 126 0 87 1 187 0 90 1 126 0 92] 
#[1 0 161 0 8 1 229 0 42 2 229 0 70 2 233 0 89 1 225 0 90] 
#[0 1 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 1 191 0 2 1 195 0 3 1 199 0 4 1 203 0 5 1 207 0 6 1 211 0 7 1 146 0 8 1 146 0 11 1 146 0 12 1 215 0 13 1 146 0 14 1 215 0 15 1 146 0 16 1 219 0 17 1 219 0 18 1 223 0 20 1 227 0 21 1 231 0 22 1 235 0 32 2 241 0 43 2 245 0 44 2 249 0 53 0 101 0 54 2 249 0 55 2 249 0 60 0 113 0 64 2 249 0 65 2 249 0 66 2 253 0 72 0 129 0 77 3 1 0 78 0 101 0 82 0 141 0 83 1 146 0 85 1 146 0 86 1 146 0 87 1 239 0 90 1 146 0 92] 
#[1 1 243 0 2 1 247 0 3 1 251 0 4 1 255 0 5 2 3 0 6 2 7 0 7 1 150 0 8 1 150 0 11 1 150 0 12 2 11 0 13 1 150 0 14 2 11 0 15 1 150 0 16 2 15 0 17 2 15 0 18 1 150 0 20 2 19 0 21 2 23 0 22 2 27 0 32 3 5 0 43 3 9 0 44 3 13 0 53 0 101 0 54 3 13 0 55 3 13 0 60 0 113 0 64 3 13 0 65 3 13 0 66 3 17 0 72 0 129 0 77 3 21 0 78 0 101 0 82 0 141 0 83 1 150 0 85 1 150 0 86 1 150 0 87 2 31 0 90 1 150 0 92] 
#[1 0 161 0 8 1 229 0 42 3 25 0 70 3 29 0 89 1 225 0 90] 
#[0 1 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 1 70 0 2 1 70 0 3 1 70 0 4 1 70 0 5 1 70 0 6 1 70 0 7 1 70 0 22 2 137 0 59 1 70 0 85 2 35 0 90] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 57 0 22 3 33 0 37 2 69 0 54 1 185 0 55 2 149 0 56 2 69 0 82 0 141 0 83 0 6 0 85 1 139 0 90] 
#[0 1 170 0 88 0 91] 
#[1 3 37 0 22 3 41 0 68 1 22 0 88 3 45 0 91] 
#[0 3 49 0 88] 
#[0 1 174 0 22 0 88 0 91] 
#[1 3 37 0 22 3 53 0 68 1 22 0 88 3 45 0 91] 
#[0 3 57 0 88] 
#[0 3 61 0 14] 
#[1 3 65 0 11 0 198 0 14 3 69 0 73 3 73 0 76] 
#[0 1 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 3 77 0 16] 
#[1 1 182 0 11 2 41 0 12 1 182 0 16] 
#[0 1 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 3 81 0 11 0 198 0 16 3 85 0 76 3 89 0 79] 
#[0 1 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 20 0 21 0 22 0 32 0 86 0 87 0 90 0 92] 
#[1 3 93 0 85 1 225 0 90] 
#[1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 5 1 194 0 6 1 194 0 7 1 194 0 22 3 97 0 58 1 194 0 85 2 39 0 90] 
#[1 0 238 0 85 1 93 0 89 0 238 0 90] 
#[1 3 105 0 85 0 205 0 90] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 85 0 90] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 57 0 22 2 69 0 54 1 185 0 55 1 189 0 56 1 193 0 57 2 69 0 82 0 141 0 83 1 197 0 90] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 3 109 0 39 0 77 0 40 0 81 0 41 3 113 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[0 3 117 0 85] 
#[0 3 121 0 85] 
#[0 3 125 0 85] 
#[0 3 129 0 85] 
#[1 1 202 0 2 1 202 0 3 1 202 0 4 1 202 0 5 1 202 0 6 1 202 0 7 2 43 0 8 1 202 0 11 1 202 0 12 1 202 0 13 1 202 0 14 1 202 0 15 1 202 0 16 1 202 0 17 1 202 0 18 1 202 0 20 1 202 0 21 1 202 0 22 1 202 0 32 0 213 0 37 3 133 0 40 1 202 0 85 1 202 0 86 1 202 0 87 2 43 0 90 1 202 0 92] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 3 137 0 37 3 141 0 46 1 210 0 85 2 47 0 90] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 3 149 0 39 0 77 0 40 0 81 0 41 3 153 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[0 3 157 0 85] 
#[0 3 161 0 85] 
#[1 0 161 0 8 1 229 0 42 3 165 0 70 3 169 0 89 1 225 0 90] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 3 173 0 39 0 77 0 40 0 81 0 41 3 177 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[1 2 51 0 2 2 55 0 3 2 59 0 4 2 63 0 5 2 67 0 6 2 71 0 7 1 242 0 8 1 242 0 11 1 242 0 12 2 75 0 13 1 242 0 14 2 75 0 15 1 242 0 16 2 79 0 17 2 79 0 18 1 242 0 20 2 83 0 21 2 87 0 22 2 91 0 32 3 181 0 43 3 185 0 44 3 189 0 53 0 101 0 54 3 189 0 55 3 189 0 60 0 113 0 64 3 189 0 65 3 189 0 66 3 193 0 72 0 129 0 77 3 197 0 78 0 101 0 82 0 141 0 83 1 242 0 85 1 242 0 86 1 242 0 87 2 95 0 90 1 242 0 92] 
#[1 0 161 0 8 1 229 0 42 3 201 0 70 3 205 0 89 1 225 0 90] 
#[0 1 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 1 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 161 0 8 1 229 0 42 3 209 0 70 3 213 0 89 1 225 0 90] 
#[0 2 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 3 217 0 39 0 77 0 40 0 81 0 41 3 221 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[1 3 225 0 85 0 205 0 90] 
#[0 2 26 0 88 0 91] 
#[0 3 229 0 88] 
#[0 2 30 0 22 0 88 0 91] 
#[0 2 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 3 233 0 88] 
#[0 2 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 165 0 12 0 14 0 13 0 198 0 14 0 14 0 15 0 18 0 17 0 18 0 18 0 169 0 20 0 173 0 21 1 109 0 22 1 113 0 32 0 189 0 52 3 237 0 53 0 101 0 54 3 237 0 55 3 237 0 60 0 113 0 64 3 237 0 65 3 237 0 66 3 237 0 69 1 125 0 72 3 237 0 75 3 241 0 76 0 129 0 77 1 137 0 78 0 101 0 82 0 141 0 83 1 141 0 90] 
#[0 2 46 0 11 0 14] 
#[0 3 245 0 14] 
#[0 2 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 165 0 12 0 14 0 13 0 14 0 15 0 198 0 16 1 149 0 20 0 173 0 21 0 177 0 22 0 181 0 32 1 153 0 52 3 253 0 69 1 153 0 72 3 249 0 76 0 129 0 77 1 153 0 78 3 253 0 81] 
#[0 4 1 0 16] 
#[0 2 54 0 11 0 16] 
#[0 2 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 62 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 85 0 90] 
#[1 0 141 0 2 0 141 0 3 0 141 0 4 0 141 0 5 0 49 0 6 0 53 0 7 0 57 0 22 4 5 0 54 4 5 0 82 0 141 0 83] 
#[0 2 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 4 9 0 85] 
#[0 4 13 0 85] 
#[0 2 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 165 0 12 0 14 0 13 0 14 0 15 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 32 0 189 0 52 4 17 0 69 0 189 0 72 0 129 0 77 0 189 0 78 0 205 0 90] 
#[0 2 90 0 12 0 13 0 15 0 20 0 21 0 22 0 32 0 85 0 90] 
#[0 2 94 0 85] 
#[0 4 21 0 85] 
#[0 4 25 0 85] 
#[0 2 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 4 29 0 39 0 77 0 40 0 81 0 41 4 33 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[0 4 37 0 85] 
#[0 4 41 0 85] 
#[1 0 161 0 8 1 229 0 42 4 45 0 70 4 49 0 89 1 225 0 90] 
#[0 2 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 4 53 0 39 0 77 0 40 0 81 0 41 4 57 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[0 2 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 4 61 0 39 0 77 0 40 0 81 0 41 4 65 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[0 4 69 0 85] 
#[0 4 73 0 85] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 146 0 11 0 14] 
#[0 4 77 0 14] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 4 81 0 16] 
#[0 2 154 0 11 0 16] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 162 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 85 0 90] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 174 0 12 0 13 0 15 0 20 0 21 0 22 0 32 0 85 0 90] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 4 85 0 85] 
#[0 4 89 0 85] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[1 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 32 0 65 0 37 4 93 0 39 0 77 0 40 0 81 0 41 4 97 0 49 0 89 0 50 0 93 0 51 0 6 0 90] 
#[0 4 101 0 85] 
#[0 4 105 0 85] 
#[0 4 109 0 85] 
#[0 4 113 0 85] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 4 117 0 85] 
#[0 4 121 0 85] 
#[0 2 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92] 
#[0 2 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 32 0 85 0 86 0 87 0 90 0 92]
	).
]

{ #category : #accessing }
YAMLParser >> actionsForCurrentToken [
	| actions |
	(currentToken ids first = scanner STRING_MYId
		and: [ (currentToken value beginsWith: '---')
				and: [ currentToken startPosition = 1
						or: [ String crlf includes: (scanner peekAt: currentToken startPosition - 2) ] ] ])
		ifTrue: [ currentToken := SmaCCToken
					value: '---'
					start: currentToken startPosition
					id: {scanner DOCUMENTSTARTId}.
			self position: currentToken stopPosition ].
	actions := super actionsForCurrentToken.
	(actions isEmpty and: [ currentToken ids first = scanner emptySymbolTokenId ])
		ifTrue: [ #(DEDENTId STRING_MYId FINISH_LITERAL_STRINGId)
				do: [ :each | 
					self addActionsFor: (scanner perform: each) to: actions.
					actions notEmpty
						ifTrue: [ currentToken := SmaCCToken
									value: ''
									start: currentToken startPosition
									ids: {scanner perform: each}.
							^ actions ] ] ].
	^ actions
]

{ #category : #accessing }
YAMLParser >> popScope [
	scopeStack
		ifNil: [ self scope: #default ]
		ifNotNil: [ self scope: scopeStack value.
			scopeStack := scopeStack nextLink ]
]

{ #category : #accessing }
YAMLParser >> pushScope: aSymbol [
	scopeStack := scopeStack
			ifNil: [ self scope asLink ]
			ifNotNil: [ scopeStack asLinkPrepend: self scope ].
	self scope: aSymbol
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForPopFlow1: nodes [
	scanner opened: scanner opened - 1.
	self popScope.
	^ nil
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForPopScope1: nodes [
	self popScope.
	^ nil
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForPushFlow1: nodes [
	scanner opened: scanner opened + 1.
	self pushScope: #FLOW.
	^ nil
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForPushIndent1: nodes [
	scanner pushIndent: (scanner indentsBefore: currentToken startPosition).
	currentState notNil ifTrue: [ currentState scannerState: scanner currentState ].
	^ nil
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForPushLiteralString1: nodes [
	^ self pushScope: #LITERAL_STRING
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__COMMA___comma__flowListValue___item__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__COMMA___comma__flowListValue___item___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__COMMA___comma__flowListValue___item___2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE___fileDocument_1: nodes [
	| result |
	result := nodes at: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE___fileDocument__1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE___fileDocument__2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE___listitem__item___NEWLINE____1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string_1: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string__1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string__2: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForalias1: nodes [
	| result |
	result := YAMLAliasNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfile1: nodes [
	| result |
	result := YAMLFileNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result documents.
	result addTokens: ((nodes at: 1) at: 2) to: result documentEnds.
	result addTokens: ((nodes at: 1) at: 3) to: result documentStarts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument10: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument11: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument3: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument4: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument5: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument6: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument7: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument8: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowMapping2: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowMapping3: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist1: nodes [
	| result |
	result := YAMLFlowListNode new.
	result leftBracket: (nodes at: 2).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist2: nodes [
	| result |
	result := YAMLFlowListNode new.
	result leftBracket: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commas.
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist3: nodes [
	| result |
	result := YAMLFlowListNode new.
	result leftBracket: (nodes at: 2).
	result addNode: (nodes at: 3) to: result items.
	result addTokens: ((nodes at: 4) at: 1) to: result commas.
	result addNodes: ((nodes at: 4) at: 2) to: result items.
	result rightBracket: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist4: nodes [
	| result |
	result := YAMLFlowListNode new.
	result leftBracket: (nodes at: 2).
	result addNode: (nodes at: 3) to: result items.
	result addTokens: ((nodes at: 4) at: 1) to: result commas.
	result addNodes: ((nodes at: 4) at: 2) to: result items.
	result addToken: (nodes at: 5) to: result commas.
	result rightBracket: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist1: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist2: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result leftBrace: (nodes at: 2).
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist3: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result leftBrace: (nodes at: 2).
	result addNode: (nodes at: 3) to: result mappings.
	result addTokens: ((nodes at: 4) at: 1) to: result commas.
	result addNodes: ((nodes at: 4) at: 2) to: result mappings.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist4: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result leftBrace: (nodes at: 2).
	result addNode: (nodes at: 3) to: result mappings.
	result addTokens: ((nodes at: 4) at: 1) to: result commas.
	result addNodes: ((nodes at: 4) at: 2) to: result mappings.
	result addToken: (nodes at: 5) to: result commas.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForkey3: nodes [
	| result |
	result := YAMLKeyNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlist1: nodes [
	| result |
	result := YAMLListNode new.
	result addNodes: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistWithoutInitialNewline1: nodes [
	| result |
	result := YAMLListNode new.
	result addNode: (nodes at: 1) to: result items.
	result addNodes: (nodes at: 2) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem13: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result anchor: (nodes at: 2).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem15: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem16: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem2: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem6: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem8: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result anchor: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem9: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result anchor: (nodes at: 2).
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping10: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	result addToken: (nodes at: 2) to: result anchors.
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping11: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping12: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result addToken: (nodes at: 3) to: result anchors.
	result value: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping13: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 2).
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping14: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 2).
	result addToken: (nodes at: 3) to: result anchors.
	result value: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping15: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	result value: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping16: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	result addToken: (nodes at: 4) to: result anchors.
	result value: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping25: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping27: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping28: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	result addToken: (nodes at: 2) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping30: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	result addToken: (nodes at: 2) to: result anchors.
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping31: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping33: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping34: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result addToken: (nodes at: 3) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping36: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result addToken: (nodes at: 3) to: result anchors.
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping37: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping39: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping40: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 2).
	result addToken: (nodes at: 3) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping42: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 2).
	result addToken: (nodes at: 3) to: result anchors.
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping43: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping45: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping46: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	result addToken: (nodes at: 4) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping48: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	result addToken: (nodes at: 4) to: result anchors.
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping49: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping50: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	result addToken: (nodes at: 2) to: result anchors.
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping51: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping52: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result addToken: (nodes at: 3) to: result anchors.
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping53: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 2).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping54: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 2).
	result addToken: (nodes at: 3) to: result anchors.
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping55: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping56: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	result addToken: (nodes at: 4) to: result anchors.
	result value: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping9: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	result value: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormappingListWithoutInitialNewline1: nodes [
	| result |
	result := YAMLMappingListNode new.
	result addNode: (nodes at: 1) to: result mappings.
	result addNodes: (nodes at: 2) to: result mappings.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormappinglist1: nodes [
	| result |
	result := YAMLMappingListNode new.
	result addNodes: (nodes at: 1) to: result mappings.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormultiline_string1: nodes [
	| result |
	result := YAMLMultilineStringNode new.
	result addNodes: (nodes at: 3) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormultiline_string2: nodes [
	| result |
	result := YAMLMultilineStringNode new.
	result addNode: (nodes at: 1) to: result values.
	result addNodes: (nodes at: 4) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFornumber2: nodes [
	| result |
	result := YAMLNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForstring_double_quoted1: nodes [
	| result |
	result := YAMLStringLiteralNode new.
	result addToken: (nodes at: 1) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForstring_literal1: nodes [
	| result |
	result := YAMLStringLiteralNode new.
	result addToken: (nodes at: 2) to: result parts.
	result addTokens: (nodes at: 3) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue2: nodes [
	^ nodes at: 3
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue_scalar2: nodes [
	| result |
	result := YAMLStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #testing }
YAMLParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
YAMLParser >> useAllTokenIds [
	^ false
]
