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
#[ 0 6 0 14 0 61] 
#[ 0 6 0 65] 
#[ 0 6 0 69] 
#[ 0 6 0 73] 
#[ 0 6 0 181] 
#[ 0 14 0 54] 
#[ 0 14 0 54 0 61] 
#[ 0 54 0 185] 
#[ 0 54 0 65] 
#[ 0 54 0 69] 
#[ 0 54 0 73] 
#[ 0 54 0 217] 
#[ 0 14 0 61] 
#[ 0 6 1 13] 
#[ 0 74 1 17] 
#[ 0 57 0 86] 
#[ 0 6 0 98] 
#[ 0 110 1 33] 
#[ 0 33 0 154] 
#[ 0 37 0 154] 
#[ 0 41 0 154] 
#[ 0 45 0 154] 
#[ 0 49 0 154] 
#[ 0 53 0 154] 
#[ 0 57 0 154] 
#[ 0 6 0 154] 
#[ 0 6 0 14 0 154] 
#[ 0 18 0 154] 
#[ 0 6 0 14 0 61 0 154] 
#[ 0 6 0 65 0 154] 
#[ 0 6 0 69 0 154] 
#[ 0 6 0 73 0 154] 
#[ 0 154 1 69] 
#[ 0 6 0 154 1 73] 
#[ 0 57 0 158] 
#[ 0 54 1 129] 
#[ 0 186 1 81] 
#[ 0 182 0 186] 
#[ 0 33 0 202] 
#[ 0 37 0 202] 
#[ 0 41 0 202] 
#[ 0 45 0 202] 
#[ 0 49 0 202] 
#[ 0 53 0 202] 
#[ 0 54 0 202] 
#[ 0 14 0 202] 
#[ 0 18 0 202] 
#[ 0 14 0 61 0 202] 
#[ 0 185 0 202] 
#[ 0 65 0 202] 
#[ 0 69 0 202] 
#[ 0 73 0 202] 
#[ 0 202 1 129] 
#[ 0 210 0 214] 
#[ 0 218 1 173] 
#[ 0 238 1 13] 
#[ 0 6 1 241] 
#[ 0 6 2 25] 
#[ 0 254 2 29] 
#[ 0 33 1 6] 
#[ 0 37 1 6] 
#[ 0 41 1 6] 
#[ 0 45 1 6] 
#[ 0 49 1 6] 
#[ 0 53 1 6] 
#[ 0 57 1 6] 
#[ 0 6 1 6] 
#[ 0 6 0 14 1 6] 
#[ 0 18 1 6] 
#[ 0 6 0 14 0 61 1 6] 
#[ 0 6 0 65 1 6] 
#[ 0 6 0 69 1 6] 
#[ 0 6 0 73 1 6] 
#[ 1 6 2 49] 
#[ 0 6 1 6 2 25] 
#[ 0 57 1 10] 
#[ 0 6 2 85] 
#[ 0 33 1 58] 
#[ 0 37 1 58] 
#[ 0 41 1 58] 
#[ 0 45 1 58] 
#[ 0 49 1 58] 
#[ 0 53 1 58] 
#[ 0 54 1 58] 
#[ 0 14 1 58] 
#[ 0 18 1 58] 
#[ 0 185 1 58] 
#[ 0 65 1 58] 
#[ 0 69 1 58] 
#[ 0 73 1 58] 
#[ 1 58 1 129] 
#[ 0 214 1 66] 
#[ 0 62 0 194] 
#[ 1 106 2 249] 
#[ 1 114 3 1] 
#[ 0 86 1 10] 
#[ 0 57 0 86 1 10] 
#[ 1 33 1 122] 
#[ 0 6 2 73] 
#[ 0 6 1 134] 
#[ 0 6 1 138 3 61] 
#[ 0 6 0 61] 
#[ 0 6 0 185] 
#[ 1 190 3 217] 
#[ 1 198 3 233] 
#[ 0 6 4 45] 
#[ 2 34 4 141] 
#[ 0 33 2 46] 
#[ 0 37 2 46] 
#[ 0 41 2 46] 
#[ 0 45 2 46] 
#[ 0 49 2 46] 
#[ 0 53 2 46] 
#[ 0 65 2 46] 
#[ 2 54 4 149]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2023-03-27T16:44:32.162-05:00'
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

%id  <INDENT> <DEDENT> <STRING_MY> <DOCUMENTSTART> <DOCUMENTEND> <NEWLINE> <SPACES> <NEWLINE_STR_LITERAL> <FINISH_LITERAL_STRING> <COLON>;
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
<LITERAL_STR_IND>:   \| <header>? ([\ \t]*<comment>?) ;
<FOLD_STR_IND>:       \> <header>? ([\ \t]*<comment>?) ;
default FLOW <ANCHOR>
 : <AMPERSAND> [^\s]+
 ;

default FLOW <TAG>
	: \! [^\ \r\n\t]+
	;

<ALIAS>
 : <STAR> [^\s]+
 ;

<NAME>
 : [A-Za-z0-9]+
 ;

<STRING_MY>
 : <STRING_MY_START> ([^\ \r\n\:] | (\: [^\ \r\n\t\#]) | (\ + [^\ \:\#\r\n]) )*
 ;

<STRING_MY_START>
 : [^\-\ \t\r\n\""\:\#\[\{\&\*\|\?] | (\: [^\ \r\n\t\#]) | (\- [^\ \t\r\n]) | (\? [^\ \r\n\t\#])
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
 : <STRING_MY_START_2> ([^\ \r\n\""\:\[\]\,\{\}] | (\: [^\ \r\n]) | (\ + [^\ \:\#\r\n\[\]\,\{\}]) | ([\ \r\n]+ <STRING_MY_START_2>) )*
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


<header>
	: [1-9][\-\+]?
	| [\-\+][1-9]?
	;
default FLOW <doubleQuoteString>
	: \"" ([^\""\\] | (\\ .))* \""
	;
<questionMark>
	: \?
	;
default FLOW <singleQuoteString>
	: \' ([^\'\\] | (\\ .))* \'
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
 : <NEWLINE>? (listitem 'item' <NEWLINE>*)+ {{}}
 ;

listitem
 : <MINUS> 'minus' TagOrAnchor? (
        value 'value' |
        <NEWLINE>+ <INDENT> list 'value' <DEDENT> |
        <NEWLINE>+ <INDENT> mappinglist 'value' <DEDENT> |
        flowlist 'value' |
        PushIndent listWithoutInitialNewline 'value' <NEWLINE>* <DEDENT> |	# added
        PushIndent mappingListWithoutInitialNewline 'value' <NEWLINE>* <DEDENT> |	# added
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
 | <singleQuoteString> 'name' {{}}
 | <ALIAS> 'name' {{}}
 | flowmappinglist
 | flowlist
 | ComplexKey
 ;
ComplexKey
	: <questionMark> 'questionMark' MappingValue {{}}
	;

value
 : value_scalar | <NEWLINE> <INDENT> alias 'value' <NEWLINE>+ <DEDENT> {value} /* changed to alias */| multiline_string | string_literal | string_folded | string_double_quoted | string_single_quoted
 ;
string_single_quoted
	: <singleQuoteString> 'part' {{StringLiteral}}
	;

value_scalar
 : number | <STRING_MY> 'value' {{String}}
 ;

multiline_string
 : value_scalar 'value'? <NEWLINE> <INDENT> ( value_scalar 'value' (<NEWLINE> value_scalar 'value'?)* | multiline_string)+ <NEWLINE>* <DEDENT> {{MultilineString}}
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
:	<doubleQuoteString> 'part' {{StringLiteral}}
 ;
PopScope
	: [self popScope. nil]
	;

mapping
 : TagOrAnchor? key 'key'? <NEWLINE>* <COLON> 'colon' MappingValue {{}}
 | TagOrAnchor? ComplexKey 'key' {{}}
 ;
MappingValue
	: TagOrAnchor? <NEWLINE>+ <INDENT> TagOrAnchor? mappinglist 'value' <DEDENT>
	| TagOrAnchor? <NEWLINE>+ <INDENT> TagOrAnchor? list 'value' <DEDENT>
	| TagOrAnchor? flowmappinglist 'value'
	| TagOrAnchor? (value 'value' | alias 'value')?
	| TagOrAnchor? <NEWLINE>+ listWithoutInitialNewline 'value'
	| TagOrAnchor? <NEWLINE>+ <INDENT> TagOrAnchor <NEWLINE>+ <DEDENT> listWithoutInitialNewline 'value'
	| TagOrAnchor? flowlist 'value'
	| TagOrAnchor? <NEWLINE>+ <INDENT> TagOrAnchor? (value 'value' | alias 'value') <NEWLINE>* <DEDENT>
	| TagOrAnchor?  PushIndent listWithoutInitialNewline 'value' <NEWLINE>* <DEDENT> 
	;
listWithoutInitialNewline
	: listitem 'item' (<NEWLINE>* listitem 'item' <NEWLINE>?)* {{List}}
	;

/*
 * flow rules
 */

flowlist
 : PushFlow TagOrAnchor? <OPEN_BRACK> 'leftBracket' (flowListValue 'item' (<COMMA> 'comma' flowListValue  'item')*)? <COMMA> 'comma'? PopFlow <CLOSE_BRACK> 'rightBracket' {{FlowList}}
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
 : PushFlow TagOrAnchor? <OPEN_BRACE> 'leftBrace' (flowMapping 'mapping' (<COMMA> 'comma' flowMapping 'mapping')*)? <COMMA> 'comma'? PopFlow <CLOSE_BRACE> 'rightBrace' {{FlowMappingList}}
 ;
flowMapping
	: mapping
	| TagOrAnchor? key 'key' {{Mapping}}
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
  : (<DOCUMENTSTART> 'documentStart' <NEWLINE>?)? (TagOrAnchor <NEWLINE>)? document 'document' <DOCUMENTEND> 'documentEnd'?
  | <DOCUMENTSTART> 'documentStart' <NEWLINE>? <DOCUMENTEND> 'documentEnd'?
  | <DOCUMENTEND> 'documentEnd'
  ;
TagOrAnchor
	: <ANCHOR> 'anchor'
	#| <TAG> 'tag'
	;"
]

{ #category : #accessing }
YAMLParser class >> fileExtensions [
	^ #('.yaml' '.yml')
]

{ #category : #'class initialization' }
YAMLParser class >> initialize [
	self maxParallelParses: 100
]

{ #category : #generated }
YAMLParser class >> reduceTable [
^#(
	#(36 0 #nil 7398401 false) 
	#(35 1 #reduceActionFor__NEWLINE___fileDocument__1: 7397377 false) 
	#(79 0 #reduceActionForPushFlow1: 11229185 true) 
	#(65 0 #reduceActionForPushLiteralString1: 9581569 true) 
	#(35 2 #reduceActionFor__NEWLINE___fileDocument__2: 7397378 false) 
	#(33 2 #reduceActionForfile1: 7388161 false) 
	#(85 1 #liftFirstValue: 11815937 false) 
	#(85 1 #liftFirstValue: 11815938 false) 
	#(85 1 #liftFirstValue: 11815939 false) 
	#(85 1 #liftFirstValue: 11815940 false) 
	#(84 1 #reduceActionFornumber2: 11631618 false) 
	#(84 1 #reduceActionFornumber2: 11631619 false) 
	#(47 0 #reduceActionForPushIndent1: 8312833 true) 
	#(87 1 #liftFirstValue: 12168193 false) 
	#(55 1 #reduceActionForvalue_scalar2: 9145346 false) 
	#(67 1 #reduceActionForstring_double_quoted1: 9835521 false) 
	#(54 1 #reduceActionForstring_double_quoted1: 9066497 false) 
	#(86 1 #reduceActionForfileDocument1: 11908097 false) 
	#(37 1 #liftFirstValue: 7449601 false) 
	#(40 1 #reduceActionFor_listitem__item___NEWLINE____1: 7547905 false) 
	#(38 1 #reduceActionForlist1: 7527425 false) 
	#(37 1 #liftFirstValue: 7449602 false) 
	#(50 1 #reduceActionFor_listitem__item___NEWLINE____1: 8525825 false) 
	#(48 1 #reduceActionFormappinglist1: 8509441 false) 
	#(37 1 #liftFirstValue: 7449605 false) 
	#(53 1 #liftFirstValue: 8850439 false) 
	#(53 1 #liftFirstValue: 8850433 false) 
	#(53 1 #liftFirstValue: 8850435 false) 
	#(53 1 #liftFirstValue: 8850436 false) 
	#(53 1 #liftFirstValue: 8850437 false) 
	#(53 1 #liftFirstValue: 8850438 false) 
	#(37 1 #liftFirstValue: 7449603 false) 
	#(37 1 #liftFirstValue: 7449604 false) 
	#(55 1 #liftFirstValue: 9145345 false) 
	#(84 1 #reduceActionFornumber2: 11631617 false) 
	#(34 2 #reduceActionFor__NEWLINE___fileDocument_1: 7397377 false) 
	#(86 1 #reduceActionForfileDocument17: 11908113 false) 
	#(86 1 #reduceActionForfileDocument13: 11908109 false) 
	#(36 2 #liftFirstValue: 7398402 false) 
	#(43 1 #reduceActionForalias1: 8155137 false) 
	#(41 2 #reduceActionForlistitem15: 7590927 false) 
	#(41 2 #reduceActionForlistitem15: 7590913 false) 
	#(41 2 #reduceActionForlistitem15: 7590916 false) 
	#(41 2 #reduceActionForlistitem15: 7590919 false) 
	#(41 2 #reduceActionForlistitem16: 7590928 false) 
	#(42 1 #liftFirstValue: 7670785 false) 
	#(51 1 #reduceActionForkey4: 8593412 false) 
	#(51 1 #reduceActionForkey4: 8593409 false) 
	#(51 1 #reduceActionForkey4: 8593410 false) 
	#(70 0 #reduceActionForMappingValue11: 10081291 false) 
	#(51 1 #reduceActionForkey4: 8593411 false) 
	#(69 1 #reduceActionFormapping5: 9953285 false) 
	#(51 1 #liftFirstValue: 8593415 false) 
	#(49 2 #liftSecondValue: 8525825 false) 
	#(51 1 #liftFirstValue: 8593414 false) 
	#(51 1 #liftFirstValue: 8593413 false) 
	#(86 2 #reduceActionForfileDocument2: 11908098 false) 
	#(40 2 #reduceActionFor_listitem__item___NEWLINE____2: 7547906 false) 
	#(39 2 #liftFirstValue: 7547905 false) 
	#(50 2 #reduceActionFor_listitem__item___NEWLINE____2: 8525826 false) 
	#(63 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 9466881 false) 
	#(78 0 #reduceActionForPopFlow1: 11153409 true) 
	#(86 2 #reduceActionForfileDocument5: 11908101 false) 
	#(86 2 #reduceActionForfileDocument14: 11908110 false) 
	#(86 2 #reduceActionForfileDocument13: 11908111 false) 
	#(38 2 #reduceActionForlist2: 7527426 false) 
	#(42 2 #liftFirstValue: 7670786 false) 
	#(73 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 10788865 false) 
	#(46 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8247297 false) 
	#(41 3 #reduceActionForlistitem8: 7590920 false) 
	#(41 3 #reduceActionForlistitem8: 7590923 false) 
	#(41 3 #reduceActionForlistitem8: 7590926 false) 
	#(70 1 #reduceActionForMappingValue13: 10081293 false) 
	#(70 1 #reduceActionForMappingValue13: 10081292 false) 
	#(52 2 #reduceActionForComplexKey1: 8778753 false) 
	#(70 1 #reduceActionForMappingValue13: 10081301 false) 
	#(70 1 #reduceActionForMappingValue13: 10081289 false) 
	#(70 1 #reduceActionForMappingValue14: 10081294 false) 
	#(49 3 #liftSecondValue: 8525826 false) 
	#(69 2 #reduceActionFormapping6: 9953286 false) 
	#(68 0 #reduceActionForPopScope1: 9911297 true) 
	#(77 1 #liftFirstValue: 11077633 false) 
	#(77 1 #liftFirstValue: 11077636 false) 
	#(77 1 #liftFirstValue: 11077634 false) 
	#(76 0 #reduceActionFor__COMMA___comma__flowListValue___item___1: 10959873 false) 
	#(77 1 #liftFirstValue: 11077635 false) 
	#(83 1 #reduceActionFormapping5: 11531266 false) 
	#(83 1 #liftFirstValue: 11531265 false) 
	#(82 0 #reduceActionFor__COMMA___comma__flowListValue___item___1: 11408385 false) 
	#(86 3 #reduceActionForfileDocument3: 11908099 false) 
	#(86 3 #reduceActionForfileDocument6: 11908102 false) 
	#(86 3 #reduceActionForfileDocument9: 11908105 false) 
	#(86 3 #reduceActionForfileDocument16: 11908112 false) 
	#(60 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 9297921 false) 
	#(57 1 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 9274370 false) 
	#(58 1 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value_______multiline_string__1: 9274369 false) 
	#(71 2 #reduceActionForlistWithoutInitialNewline1: 10741761 false) 
	#(44 2 #reduceActionFormappingListWithoutInitialNewline1: 8190977 false) 
	#(70 2 #reduceActionForMappingValue17: 10081297 false) 
	#(70 2 #reduceActionForMappingValue16: 10081296 false) 
	#(70 2 #reduceActionForMappingValue16: 10081295 false) 
	#(70 2 #reduceActionForMappingValue16: 10081302 false) 
	#(70 2 #reduceActionForMappingValue16: 10081290 false) 
	#(69 3 #reduceActionFormapping1: 9953281 false) 
	#(63 2 #reduceActionFor_listitem__item___NEWLINE____2: 9466882 false) 
	#(64 1 #liftFirstValue: 9467905 false) 
	#(74 4 #reduceActionForflowlist1: 10873857 false) 
	#(80 4 #reduceActionForflowmappinglist1: 11316225 false) 
	#(83 2 #reduceActionFormapping6: 11531267 false) 
	#(86 4 #reduceActionForfileDocument4: 11908100 false) 
	#(86 4 #reduceActionForfileDocument7: 11908103 false) 
	#(86 4 #reduceActionForfileDocument10: 11908106 false) 
	#(57 2 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value_______multiline_string_1: 9274369 false) 
	#(58 2 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value_______multiline_string__2: 9274370 false) 
	#(41 5 #reduceActionForlistitem2: 7590914 false) 
	#(41 5 #reduceActionForlistitem2: 7590915 false) 
	#(73 2 #reduceActionFor_listitem__item___NEWLINE____2: 10788866 false) 
	#(41 5 #reduceActionForlistitem6: 7590918 false) 
	#(46 2 #reduceActionFor_listitem__item___NEWLINE____2: 8247298 false) 
	#(44 3 #reduceActionFormappingListWithoutInitialNewline1: 8190978 false) 
	#(41 5 #reduceActionForlistitem6: 7590917 false) 
	#(70 3 #reduceActionForMappingValue18: 10081298 false) 
	#(69 4 #reduceActionFormapping2: 9953282 false) 
	#(69 4 #reduceActionFormapping3: 9953283 false) 
	#(62 2 #liftSecondValue: 9466881 false) 
	#(64 2 #liftFirstValue: 9467906 false) 
	#(61 5 #reduceActionForstring_literal1: 9403393 false) 
	#(66 5 #reduceActionForstring_literal1: 9646081 false) 
	#(74 5 #reduceActionForflowlist2: 10873858 false) 
	#(76 2 #reduceActionFor__COMMA___comma__flowListValue___item___2: 10959874 false) 
	#(80 5 #reduceActionForflowmappinglist2: 11316226 false) 
	#(82 2 #reduceActionFor__COMMA___comma__flowListValue___item___2: 11408386 false) 
	#(74 5 #reduceActionForflowlist5: 10873861 false) 
	#(80 5 #reduceActionForflowmappinglist5: 11316229 false) 
	#(86 5 #reduceActionForfileDocument8: 11908104 false) 
	#(86 5 #reduceActionForfileDocument11: 11908107 false) 
	#(53 5 #reduceActionForvalue2: 8850434 false) 
	#(60 2 #reduceActionFor_listitem__item___NEWLINE____2: 9297922 false) 
	#(59 1 #nil 9297921 false) 
	#(56 5 #reduceActionFormultiline_string1: 9210881 false) 
	#(72 2 #liftSecondValue: 10788865 false) 
	#(45 2 #liftSecondValue: 8247297 false) 
	#(41 6 #reduceActionForlistitem9: 7590921 false) 
	#(41 6 #reduceActionForlistitem9: 7590922 false) 
	#(41 6 #reduceActionForlistitem13: 7590925 false) 
	#(41 6 #reduceActionForlistitem13: 7590924 false) 
	#(70 4 #reduceActionForMappingValue5: 10081285 false) 
	#(70 4 #reduceActionForMappingValue5: 10081281 false) 
	#(70 4 #reduceActionForMappingValue17: 10081311 false) 
	#(69 5 #reduceActionFormapping4: 9953284 false) 
	#(56 6 #reduceActionFormultiline_string2: 9210882 false) 
	#(61 6 #reduceActionForstring_literal1: 9403394 false) 
	#(66 6 #reduceActionForstring_literal1: 9646082 false) 
	#(75 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 10959873 false) 
	#(74 6 #reduceActionForflowlist3: 10873859 false) 
	#(81 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 11408385 false) 
	#(80 6 #reduceActionForflowmappinglist3: 11316227 false) 
	#(74 6 #reduceActionForflowlist6: 10873862 false) 
	#(80 6 #reduceActionForflowmappinglist6: 11316230 false) 
	#(86 6 #reduceActionForfileDocument12: 11908108 false) 
	#(59 2 #liftSecondValue: 9297922 false) 
	#(72 3 #liftSecondValue: 10788866 false) 
	#(70 5 #reduceActionForMappingValue5: 10081304 false) 
	#(70 5 #reduceActionForMappingValue5: 10081303 false) 
	#(70 5 #reduceActionForMappingValue6: 10081286 false) 
	#(70 5 #reduceActionForMappingValue6: 10081282 false) 
	#(70 5 #reduceActionForMappingValue7: 10081287 false) 
	#(70 5 #reduceActionForMappingValue7: 10081283 false) 
	#(70 5 #reduceActionForMappingValue18: 10081312 false) 
	#(74 7 #reduceActionForflowlist4: 10873860 false) 
	#(80 7 #reduceActionForflowmappinglist4: 11316228 false) 
	#(74 7 #reduceActionForflowlist7: 10873863 false) 
	#(80 7 #reduceActionForflowmappinglist7: 11316231 false) 
	#(70 6 #reduceActionForMappingValue19: 10081299 false) 
	#(70 6 #reduceActionForMappingValue6: 10081306 false) 
	#(70 6 #reduceActionForMappingValue6: 10081305 false) 
	#(70 6 #reduceActionForMappingValue7: 10081308 false) 
	#(70 6 #reduceActionForMappingValue7: 10081307 false) 
	#(70 6 #reduceActionForMappingValue8: 10081288 false) 
	#(70 6 #reduceActionForMappingValue8: 10081284 false) 
	#(74 8 #reduceActionForflowlist8: 10873864 false) 
	#(80 8 #reduceActionForflowmappinglist8: 11316232 false) 
	#(70 7 #reduceActionForMappingValue20: 10081300 false) 
	#(70 7 #reduceActionForMappingValue8: 10081310 false) 
	#(70 7 #reduceActionForMappingValue8: 10081309 false)
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
	^ #('<newline>' '<DECIMAL_INTEGER>' '<OCT_INTEGER>' '<HEX_INTEGER>' '<BIN_INTEGER>' '<FLOAT_NUMBER>' '<IMAG_NUMBER>' '<MINUS>' '<DOCUMENTSTART1>' '<DOCUMENTEND1>' '<COMMA>' '<COLON>' '<OPEN_BRACK>' '<CLOSE_BRACK>' '<OPEN_BRACE>' '<CLOSE_BRACE>' '<LITERAL_STR_IND>' '<FOLD_STR_IND>' '<ANCHOR>' '<ALIAS>' '<STRING_MY>' '<SKIP1>' '<SPACES>' '<comment>' '<STRING_MY_2>' '<SKIP2>' '<newline_str_literal>' '<STRING_MY_3>' '<doubleQuoteString>' '<questionMark>' '<singleQuoteString>' 'B e g i n' 'file' '(<NEWLINE>* fileDocument)' '(<NEWLINE>* fileDocument)+' '<NEWLINE>*' 'document' 'list' '(listitem ''item'' <NEWLINE>*)' '(listitem ''item'' <NEWLINE>*)+' 'listitem' '<NEWLINE>+' 'alias' 'mappingListWithoutInitialNewline' '(<NEWLINE>* mapping ''mapping'')' '(<NEWLINE>* mapping ''mapping'')*' 'PushIndent' 'mappinglist' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)+' 'key' 'ComplexKey' 'value' 'string_single_quoted' 'value_scalar' 'multiline_string' '( value_scalar ''value'' (<NEWLINE> value_scalar ''value''?)* | multiline_string)' '( value_scalar ''value'' (<NEWLINE> value_scalar ''value''?)* | multiline_string)+' '(<NEWLINE> value_scalar ''value''?)' '(<NEWLINE> value_scalar ''value''?)*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' 'PushLiteralString' 'string_folded' 'string_double_quoted' 'PopScope' 'mapping' 'MappingValue' 'listWithoutInitialNewline' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)*' 'flowlist' '(<COMMA> ''comma'' flowListValue  ''item'')' '(<COMMA> ''comma'' flowListValue  ''item'')*' 'flowListValue' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' flowMapping ''mapping'')' '(<COMMA> ''comma'' flowMapping ''mapping'')*' 'flowMapping' 'number' 'integer' 'fileDocument' 'TagOrAnchor' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
]

{ #category : #generated }
YAMLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #YAMLFileNode #YAMLFileNode #OrderedCollection #OrderedCollection nil #YAMLParseNode #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLListItemNode #SmaCCToken #YAMLAliasNode #YAMLMappingListNode #YAMLMappingNode #OrderedCollection nil #YAMLMappingListNode #YAMLMappingNode #OrderedCollection #YAMLParseNode #YAMLComplexKeyNode #YAMLParseNode #YAMLStringLiteralNode #YAMLParseNode #YAMLMultilineStringNode #OrderedCollection #OrderedCollection #YAMLParseNode #OrderedCollection #YAMLStringLiteralNode #SmaCCToken #OrderedCollection #SmaCCToken #Object #YAMLStringLiteralNode #YAMLStringLiteralNode nil #YAMLMappingNode #OrderedCollection #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLFlowListNode #OrderedCollection #OrderedCollection #YAMLParseNode nil nil #YAMLFlowMappingListNode #OrderedCollection #OrderedCollection #YAMLMappingNode #YAMLNumberNode #SmaCCToken #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
YAMLParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 29 0 6 0 30 0 6 0 31 0 9 0 33 0 13 0 34 0 17 0 35 0 21 0 36 0 6 0 89 0 6 0 90 0 6 0 93] 
#[0 0 0 0 95] 
#[0 0 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 29 0 6 0 30 0 6 0 31 0 25 0 34 0 29 0 36 0 6 0 89 0 6 0 90 0 6 0 93 0 6 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 7 0 13 0 7 0 15 0 18 0 17 0 18 0 18 0 11 0 19 0 6 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 0 81 0 37 0 81 0 38 0 89 0 39 0 93 0 40 0 97 0 41 0 81 0 48 0 105 0 49 0 109 0 50 0 81 0 53 0 81 0 54 0 121 0 55 0 81 0 56 0 81 0 61 0 133 0 65 0 81 0 66 0 81 0 67 0 81 0 74 0 149 0 79 0 81 0 80 0 121 0 84 0 161 0 85 0 165 0 86 0 169 0 87 0 173 0 89 0 177 0 90 0 27 0 93] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 7 0 13 0 7 0 15 0 18 0 17 0 18 0 18 0 11 0 19 0 6 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 0 81 0 37 0 81 0 38 0 89 0 39 0 93 0 40 0 97 0 41 0 81 0 48 0 105 0 49 0 109 0 50 0 81 0 53 0 81 0 54 0 121 0 55 0 81 0 56 0 81 0 61 0 133 0 65 0 81 0 66 0 81 0 67 0 81 0 74 0 149 0 79 0 81 0 80 0 121 0 84 0 161 0 85 0 165 0 86 0 169 0 87 0 173 0 89 0 177 0 90 0 27 0 93 0 26 0 95] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 54 0 8 0 54 0 12 0 31 0 13 0 31 0 15 0 18 0 17 0 18 0 18 0 35 0 19 0 39 0 20 0 43 0 21 0 47 0 29 0 54 0 30 0 51 0 31 0 189 0 42 0 193 0 43 0 197 0 47 0 201 0 53 0 201 0 54 0 121 0 55 0 201 0 56 0 201 0 61 0 133 0 65 0 201 0 66 0 201 0 67 0 205 0 74 0 149 0 79 0 209 0 80 0 121 0 84 0 161 0 85 0 213 0 87 0 55 0 93] 
#[0 0 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 6 0 12 0 14 0 13 0 14 0 15 0 59 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 0 241 0 36 0 245 0 51 0 249 0 52 0 253 0 69 0 245 0 74 0 149 0 79 0 245 0 80 1 9 0 87 0 63 0 93] 
#[1 0 74 0 2 0 74 0 3 0 74 0 4 0 74 0 5 0 74 0 6 0 74 0 7 0 74 0 8 0 74 0 12 0 74 0 13 0 74 0 15 0 74 0 17 0 74 0 18 0 74 0 19 0 74 0 20 0 74 0 21 0 74 0 29 0 74 0 30 0 74 0 31 0 67 0 89 0 74 0 90 0 74 0 93 0 74 0 95] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 86 0 2 0 86 0 3 0 86 0 4 0 86 0 5 0 86 0 6 0 86 0 7 0 71 0 8 0 86 0 12 0 86 0 13 0 86 0 15 0 86 0 17 0 86 0 18 0 86 0 19 0 86 0 20 0 86 0 21 0 86 0 29 0 86 0 30 0 86 0 31 1 21 0 39 0 97 0 41 0 86 0 88 0 86 0 89 0 86 0 90 0 86 0 93 0 86 0 95] 
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 29 0 6 0 30 0 6 0 31 1 25 0 36 0 6 0 88 0 6 0 89 0 6 0 90 0 6 0 93 0 6 0 95] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 98 0 2 0 98 0 3 0 98 0 4 0 98 0 5 0 98 0 6 0 98 0 7 0 98 0 8 0 75 0 12 0 75 0 13 0 75 0 15 0 98 0 17 0 98 0 18 0 75 0 19 0 75 0 20 0 75 0 21 0 75 0 29 0 75 0 30 0 75 0 31 0 77 0 36 1 29 0 49 0 98 0 88 0 98 0 89 0 98 0 90 0 75 0 93 0 98 0 95] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 110 0 2 0 110 0 3 0 110 0 4 0 110 0 5 0 110 0 6 0 110 0 7 0 110 0 8 0 110 0 11 0 110 0 12 0 110 0 13 0 110 0 14 0 110 0 15 0 110 0 16 0 110 0 17 0 110 0 18 0 110 0 19 0 110 0 20 0 110 0 21 0 110 0 29 0 110 0 30 0 110 0 31 0 110 0 88 0 110 0 89 0 110 0 90 0 79 0 93 0 110 0 95] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 1 37 0 17 1 41 0 18] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 1 45 0 13 1 49 0 15 1 53 0 19 1 53 0 87] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[0 1 57 0 93] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 0 83 0 2 0 87 0 3 0 91 0 4 0 95 0 5 0 99 0 6 0 103 0 7 0 107 0 8 0 111 0 12 0 115 0 13 0 115 0 15 0 119 0 17 0 119 0 18 0 123 0 19 0 111 0 20 0 127 0 21 0 131 0 29 0 111 0 30 0 135 0 31 0 77 0 36 1 61 0 37 1 61 0 38 0 89 0 39 0 93 0 40 0 97 0 41 1 61 0 48 0 105 0 49 0 109 0 50 1 61 0 53 1 61 0 54 0 121 0 55 1 61 0 56 1 61 0 61 0 133 0 65 1 61 0 66 1 61 0 67 1 61 0 74 0 149 0 79 1 61 0 80 0 121 0 84 0 161 0 85 1 65 0 87 0 139 0 89 0 154 0 90 0 143 0 93 0 154 0 95] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 147 0 8 0 158 0 12 0 158 0 13 0 158 0 15 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 29 0 158 0 30 0 158 0 31 0 89 0 39 1 77 0 40 0 97 0 41 0 158 0 89 0 158 0 90 1 81 0 92 0 158 0 93 0 158 0 95] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 1 85 0 92 1 89 0 93] 
#[0 0 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 57 0 8 0 6 0 12 0 14 0 13 0 14 0 15 0 59 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 0 241 0 36 1 93 0 41 1 97 0 44 0 245 0 51 0 249 0 52 1 101 0 69 1 105 0 71 0 245 0 74 0 149 0 79 0 245 0 80 1 9 0 87 0 6 0 93] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 54 0 8 0 54 0 12 0 31 0 13 0 31 0 15 0 18 0 17 0 18 0 18 0 31 0 19 0 54 0 20 0 43 0 21 0 47 0 29 0 54 0 30 0 51 0 31 1 109 0 42 1 113 0 47 1 117 0 53 1 117 0 54 0 121 0 55 1 117 0 56 1 117 0 61 0 133 0 65 1 117 0 66 1 117 0 67 1 121 0 74 0 149 0 79 1 125 0 80 0 121 0 84 0 161 0 85 0 151 0 93] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 0 182 0 5 0 182 0 6 0 182 0 7 0 182 0 8 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 18 0 182 0 19 0 182 0 20 0 182 0 21 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 88 0 182 0 89 0 182 0 90 0 155 0 92 0 159 0 93 0 182 0 95] 
#[0 0 190 0 11 0 12 0 16 0 93] 
#[0 0 194 0 11 0 12 0 16 0 93] 
#[0 0 198 0 11 0 12 0 16 0 93] 
#[1 0 163 0 2 0 167 0 3 0 171 0 4 0 175 0 5 0 179 0 6 0 183 0 7 0 187 0 8 0 202 0 11 0 202 0 12 0 191 0 13 0 202 0 14 0 191 0 15 0 202 0 16 0 195 0 17 0 195 0 18 0 199 0 19 0 203 0 20 0 207 0 21 0 211 0 29 0 202 0 30 0 215 0 31 1 133 0 42 1 137 0 43 1 141 0 47 1 145 0 53 1 145 0 54 0 121 0 55 1 145 0 56 1 145 0 61 0 133 0 65 1 145 0 66 1 145 0 67 1 149 0 70 1 153 0 74 0 149 0 79 1 157 0 80 0 121 0 84 0 161 0 85 1 161 0 87 0 202 0 88 0 202 0 89 0 202 0 90 0 219 0 93 0 202 0 95] 
#[0 0 206 0 11 0 12 0 16 0 93] 
#[1 1 165 0 12 1 13 0 93] 
#[1 0 6 0 12 1 169 0 36 0 6 0 93] 
#[1 0 210 0 2 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 8 0 223 0 11 0 223 0 12 0 210 0 13 0 210 0 14 0 210 0 15 0 223 0 16 0 210 0 17 0 210 0 18 0 210 0 19 0 210 0 20 0 210 0 21 0 210 0 29 0 210 0 30 0 210 0 31 0 210 0 88 0 210 0 89 0 210 0 90 0 223 0 93 0 210 0 95] 
#[1 0 218 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 218 0 6 0 218 0 7 0 218 0 8 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 17 0 218 0 18 0 218 0 19 0 218 0 20 0 218 0 21 0 218 0 29 0 218 0 30 0 218 0 31 0 218 0 88 0 218 0 89 0 218 0 90 0 227 0 93 0 218 0 95] 
#[0 0 222 0 11 0 12 0 16 0 93] 
#[0 0 226 0 11 0 12 0 16 0 93] 
#[1 0 6 0 12 0 14 0 13 0 14 0 15 0 14 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 1 177 0 36 1 181 0 51 1 185 0 52 1 181 0 74 0 149 0 79 1 181 0 80 0 6 0 93] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 0 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[0 0 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 238 0 2 0 238 0 3 0 238 0 4 0 238 0 5 0 238 0 6 0 238 0 7 0 238 0 8 0 238 0 12 0 238 0 13 0 238 0 15 0 238 0 17 0 238 0 18 0 238 0 19 0 238 0 20 0 238 0 21 0 238 0 29 0 238 0 30 0 238 0 31 0 238 0 88 0 238 0 89 0 238 0 90 0 231 0 93 0 238 0 95] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 189 0 92] 
#[1 1 193 0 63 0 246 0 91 0 246 0 94] 
#[1 1 197 0 63 0 246 0 91 0 246 0 94] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 1 201 0 11 0 6 0 12 0 14 0 13 0 250 0 14 0 14 0 15 0 18 0 17 0 18 0 18 0 59 0 19 0 221 0 20 1 205 0 21 1 209 0 29 0 233 0 30 1 213 0 31 0 241 0 36 0 245 0 51 0 249 0 52 1 229 0 53 1 229 0 54 0 121 0 55 1 229 0 56 1 229 0 61 0 133 0 65 1 229 0 66 1 229 0 67 1 229 0 69 1 225 0 74 1 229 0 77 1 233 0 78 0 149 0 79 1 237 0 80 0 121 0 84 0 161 0 85 1 9 0 87 0 235 0 93] 
#[1 1 245 0 11 0 6 0 12 0 14 0 13 0 14 0 15 0 250 0 16 0 59 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 0 241 0 36 1 249 0 51 0 249 0 52 2 5 0 69 1 249 0 74 2 1 0 78 0 149 0 79 1 249 0 80 2 5 0 83 2 9 0 87 0 6 0 93] 
#[1 2 13 0 13 2 17 0 15] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 7 0 13 0 7 0 15 0 18 0 17 0 18 0 18 0 7 0 19 0 6 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 2 21 0 37 2 21 0 38 0 89 0 39 0 93 0 40 0 97 0 41 2 21 0 48 0 105 0 49 0 109 0 50 2 21 0 53 2 21 0 54 0 121 0 55 2 21 0 56 2 21 0 61 0 133 0 65 2 21 0 66 2 21 0 67 2 21 0 74 0 149 0 79 2 21 0 80 0 121 0 84 0 161 0 85 0 239 0 93] 
#[1 0 254 0 2 0 254 0 3 0 254 0 4 0 254 0 5 0 254 0 6 0 254 0 7 0 254 0 8 0 254 0 12 0 254 0 13 0 254 0 15 0 254 0 17 0 254 0 18 0 254 0 19 0 254 0 20 0 254 0 21 0 254 0 29 0 254 0 30 0 254 0 31 0 243 0 89 0 254 0 90 0 254 0 93 0 254 0 95] 
#[0 2 33 0 93] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 0 247 0 2 0 251 0 3 0 255 0 4 1 3 0 5 1 7 0 6 1 11 0 7 1 15 0 8 1 19 0 12 1 23 0 13 1 23 0 15 1 27 0 17 1 27 0 18 1 31 0 19 1 19 0 20 1 35 0 21 1 39 0 29 1 19 0 30 1 43 0 31 0 77 0 36 2 37 0 37 2 37 0 38 0 89 0 39 2 41 0 40 0 97 0 41 2 37 0 48 0 105 0 49 0 109 0 50 2 37 0 53 2 37 0 54 0 121 0 55 2 37 0 56 2 37 0 61 0 133 0 65 2 37 0 66 2 37 0 67 2 37 0 74 0 149 0 79 2 37 0 80 0 121 0 84 0 161 0 85 2 45 0 87 1 47 0 89 1 6 0 90 1 81 0 92 1 51 0 93 1 6 0 95] 
#[1 1 10 0 2 1 10 0 3 1 10 0 4 1 10 0 5 1 10 0 6 1 10 0 7 1 55 0 8 1 10 0 12 1 10 0 13 1 10 0 15 1 10 0 17 1 10 0 18 1 10 0 19 1 10 0 20 1 10 0 21 1 10 0 29 1 10 0 30 1 10 0 31 1 21 0 39 0 97 0 41 1 10 0 88 1 10 0 89 1 10 0 90 1 10 0 93 1 10 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 185 0 20 0 65 0 21 2 53 0 43 2 57 0 55 2 61 0 56 2 65 0 57 2 69 0 58 2 57 0 84 0 161 0 85 2 73 0 93] 
#[1 0 57 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 29 0 6 0 30 0 6 0 31 0 77 0 36 2 77 0 38 0 89 0 39 0 93 0 40 0 97 0 41 2 81 0 48 0 105 0 49 0 109 0 50 1 59 0 93] 
#[0 1 14 0 8 0 88 0 92 0 93] 
#[1 1 18 0 2 1 18 0 3 1 18 0 4 1 18 0 5 1 18 0 6 1 18 0 7 1 18 0 8 1 18 0 11 1 18 0 12 1 18 0 13 1 18 0 14 1 18 0 15 1 18 0 16 1 18 0 17 1 18 0 18 1 18 0 19 1 18 0 20 1 18 0 21 1 18 0 29 1 18 0 30 1 18 0 31 2 89 0 73 1 18 0 88 1 18 0 89 1 18 0 90 1 18 0 93 1 18 0 95] 
#[1 2 93 0 36 0 6 0 88 0 6 0 93] 
#[1 1 22 0 12 1 22 0 13 1 22 0 15 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 29 1 22 0 30 1 22 0 31 2 97 0 46 1 22 0 88 1 22 0 93] 
#[1 2 101 0 36 0 6 0 88 0 6 0 93] 
#[1 2 105 0 92 1 89 0 93] 
#[1 0 57 0 8 0 6 0 12 0 14 0 13 0 14 0 15 0 59 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 0 241 0 36 1 93 0 41 2 109 0 44 0 245 0 51 0 249 0 52 1 101 0 69 2 113 0 71 0 245 0 74 0 149 0 79 0 245 0 80 1 9 0 87 0 6 0 93] 
#[0 1 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 186 0 8 0 155 0 92 0 186 0 93] 
#[1 0 57 0 8 1 93 0 41 2 117 0 71 2 121 0 92 1 89 0 93] 
#[0 1 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 57 0 8 1 93 0 41 2 125 0 71] 
#[0 1 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 1 63 0 2 1 67 0 3 1 71 0 4 1 75 0 5 1 79 0 6 1 83 0 7 1 87 0 8 1 58 0 11 1 58 0 12 1 91 0 13 1 58 0 14 1 91 0 15 1 58 0 16 1 95 0 17 1 95 0 18 1 91 0 19 1 99 0 20 1 103 0 21 1 107 0 29 1 58 0 30 1 111 0 31 2 129 0 42 2 133 0 43 2 137 0 47 2 141 0 53 2 141 0 54 0 121 0 55 2 141 0 56 2 141 0 61 0 133 0 65 2 141 0 66 2 141 0 67 2 145 0 74 0 149 0 79 2 149 0 80 0 121 0 84 0 161 0 85 1 58 0 88 1 58 0 89 1 58 0 90 1 115 0 93 1 58 0 95] 
#[1 0 163 0 2 0 167 0 3 0 171 0 4 0 175 0 5 0 179 0 6 0 183 0 7 0 187 0 8 0 202 0 11 0 202 0 12 0 191 0 13 0 202 0 14 0 191 0 15 0 202 0 16 0 195 0 17 0 195 0 18 0 199 0 19 0 203 0 20 0 207 0 21 0 211 0 29 0 202 0 30 0 215 0 31 1 133 0 42 1 137 0 43 1 141 0 47 1 145 0 53 1 145 0 54 0 121 0 55 1 145 0 56 1 145 0 61 0 133 0 65 1 145 0 66 1 145 0 67 2 153 0 70 1 153 0 74 0 149 0 79 1 157 0 80 0 121 0 84 0 161 0 85 1 161 0 87 0 202 0 88 0 202 0 89 0 202 0 90 0 219 0 93 0 202 0 95] 
#[1 2 157 0 12 1 13 0 93] 
#[0 1 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 2 161 0 12 1 13 0 93] 
#[1 0 6 0 12 2 165 0 36 0 6 0 93] 
#[1 1 66 0 2 1 66 0 3 1 66 0 4 1 66 0 5 1 66 0 6 1 66 0 7 1 66 0 8 1 119 0 11 1 119 0 12 1 66 0 13 1 66 0 14 1 66 0 15 1 119 0 16 1 66 0 17 1 66 0 18 1 66 0 19 1 66 0 20 1 66 0 21 1 66 0 29 1 66 0 30 1 66 0 31 1 66 0 88 1 66 0 89 1 66 0 90 1 119 0 93 1 66 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 65 0 21 2 57 0 55 2 61 0 56 2 65 0 57 2 169 0 58 2 57 0 84 0 161 0 85 2 73 0 93] 
#[1 2 173 0 62 2 177 0 64 2 181 0 68 1 70 0 91 2 177 0 94] 
#[1 2 173 0 62 2 189 0 64 2 193 0 68 1 70 0 91 2 189 0 94] 
#[1 0 250 0 14 2 197 0 78] 
#[1 0 62 0 11 0 194 0 12 0 62 0 14 1 123 0 93] 
#[1 0 66 0 11 0 198 0 12 0 66 0 14 0 198 0 93] 
#[1 0 70 0 11 0 206 0 12 0 70 0 14 0 206 0 93] 
#[0 1 74 0 11 0 14] 
#[0 1 78 0 11 0 14] 
#[1 1 82 0 11 0 222 0 12 1 82 0 14 0 222 0 93] 
#[1 1 86 0 11 1 86 0 14 2 201 0 76] 
#[0 2 205 0 14] 
#[1 1 90 0 11 0 226 0 12 1 90 0 14 0 226 0 93] 
#[0 1 81 0 92] 
#[1 0 250 0 16 2 209 0 78] 
#[1 1 94 0 11 0 6 0 12 1 94 0 16 1 169 0 36 0 6 0 93] 
#[0 1 98 0 11 0 16] 
#[0 2 213 0 16] 
#[1 1 102 0 11 1 102 0 16 2 217 0 82] 
#[1 0 6 0 12 0 14 0 13 0 14 0 15 0 14 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 1 177 0 36 2 221 0 51 1 185 0 52 2 221 0 74 0 149 0 79 2 221 0 80 0 6 0 93] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 2 225 0 11 0 6 0 12 0 14 0 13 0 250 0 14 0 14 0 15 0 18 0 17 0 18 0 18 0 59 0 19 0 221 0 20 1 205 0 21 1 209 0 29 0 233 0 30 1 213 0 31 0 241 0 36 0 245 0 51 0 249 0 52 2 229 0 53 2 229 0 54 0 121 0 55 2 229 0 56 2 229 0 61 0 133 0 65 2 229 0 66 2 229 0 67 2 229 0 69 1 225 0 74 2 229 0 77 2 233 0 78 0 149 0 79 1 237 0 80 0 121 0 84 0 161 0 85 1 9 0 87 0 235 0 93] 
#[1 2 237 0 11 0 6 0 12 0 14 0 13 0 14 0 15 0 250 0 16 0 59 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 0 241 0 36 1 249 0 51 0 249 0 52 2 245 0 69 1 249 0 74 2 241 0 78 0 149 0 79 1 249 0 80 2 245 0 83 2 9 0 87 0 6 0 93] 
#[1 1 106 0 2 1 106 0 3 1 106 0 4 1 106 0 5 1 106 0 6 1 106 0 7 1 106 0 8 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 17 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 21 1 106 0 29 1 106 0 30 1 106 0 31 1 127 0 89 1 106 0 90 1 106 0 93 1 106 0 95] 
#[1 0 57 0 8 0 89 0 39 1 77 0 40 0 97 0 41 1 81 0 92] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 7 0 13 0 7 0 15 0 18 0 17 0 18 0 18 0 7 0 19 0 6 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 2 253 0 37 2 253 0 38 0 89 0 39 0 93 0 40 0 97 0 41 2 253 0 48 0 105 0 49 0 109 0 50 2 253 0 53 2 253 0 54 0 121 0 55 2 253 0 56 2 253 0 61 0 133 0 65 2 253 0 66 2 253 0 67 2 253 0 74 0 149 0 79 2 253 0 80 0 121 0 84 0 161 0 85 0 239 0 93] 
#[1 1 114 0 2 1 114 0 3 1 114 0 4 1 114 0 5 1 114 0 6 1 114 0 7 1 114 0 8 1 114 0 12 1 114 0 13 1 114 0 15 1 114 0 17 1 114 0 18 1 114 0 19 1 114 0 20 1 114 0 21 1 114 0 29 1 114 0 30 1 114 0 31 1 131 0 89 1 114 0 90 1 114 0 93 1 114 0 95] 
#[1 1 135 0 2 1 135 0 3 1 135 0 4 1 135 0 5 1 135 0 6 1 135 0 7 1 139 0 8 1 135 0 12 1 135 0 13 1 135 0 15 1 135 0 17 1 135 0 18 1 135 0 19 1 135 0 20 1 135 0 21 1 135 0 29 1 135 0 30 1 135 0 31 1 21 0 39 0 97 0 41 1 135 0 89 1 135 0 90 1 135 0 93 1 135 0 95] 
#[0 3 5 0 93] 
#[0 1 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[0 3 9 0 42 0 93] 
#[1 1 122 0 2 1 122 0 3 1 122 0 4 1 122 0 5 1 122 0 6 1 122 0 7 1 122 0 21 3 17 0 60 1 122 0 88 1 143 0 93] 
#[0 1 126 0 2 0 3 0 4 0 5 0 6 0 7 0 21 0 88 0 93] 
#[0 1 130 0 2 0 3 0 4 0 5 0 6 0 7 0 21 0 88 0 93] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 65 0 21 3 21 0 36 2 57 0 55 2 61 0 56 3 25 0 57 2 57 0 84 0 161 0 85 0 6 0 88 1 147 0 93] 
#[0 3 29 0 92] 
#[0 3 33 0 88] 
#[0 3 37 0 88] 
#[1 0 57 0 8 0 89 0 39 1 77 0 40 0 97 0 41] 
#[1 1 134 0 2 1 134 0 3 1 134 0 4 1 134 0 5 1 134 0 6 1 134 0 7 1 151 0 8 1 134 0 11 1 134 0 12 1 134 0 13 1 134 0 14 1 134 0 15 1 134 0 16 1 134 0 17 1 134 0 18 1 134 0 19 1 134 0 20 1 134 0 21 1 134 0 29 1 134 0 30 1 134 0 31 3 41 0 36 3 45 0 72 1 134 0 88 1 134 0 89 1 134 0 90 1 151 0 93 1 134 0 95] 
#[1 3 49 0 88 1 13 0 93] 
#[1 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 29 0 6 0 30 0 6 0 31 3 53 0 36 3 57 0 45 1 138 0 88 1 155 0 93] 
#[1 3 65 0 88 1 13 0 93] 
#[1 0 57 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 29 0 6 0 30 0 6 0 31 0 77 0 36 3 69 0 38 0 89 0 39 0 93 0 40 0 97 0 41 3 73 0 48 0 105 0 49 0 109 0 50 1 59 0 93] 
#[1 3 77 0 36 0 6 0 88 0 6 0 93] 
#[1 3 81 0 36 0 6 0 88 0 6 0 93] 
#[0 1 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 18 0 17 0 18 0 18 1 159 0 19 1 163 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 3 85 0 38 0 89 0 39 0 93 0 40 0 97 0 41 3 89 0 43 3 93 0 48 0 105 0 49 0 109 0 50 3 97 0 53 3 97 0 54 0 121 0 55 3 97 0 56 3 97 0 61 0 133 0 65 3 97 0 66 3 97 0 67 0 121 0 84 0 161 0 85 3 101 0 87 0 239 0 93] 
#[1 3 105 0 36 0 6 0 88 0 6 0 93] 
#[1 0 57 0 8 1 93 0 41 3 109 0 71 3 113 0 92 1 89 0 93] 
#[0 1 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 57 0 8 1 93 0 41 3 117 0 71] 
#[0 1 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 163 0 2 0 167 0 3 0 171 0 4 0 175 0 5 0 179 0 6 0 183 0 7 0 187 0 8 0 202 0 11 0 202 0 12 0 191 0 13 0 202 0 14 0 191 0 15 0 202 0 16 0 195 0 17 0 195 0 18 0 199 0 19 0 203 0 20 0 207 0 21 0 211 0 29 0 202 0 30 0 215 0 31 1 133 0 42 1 137 0 43 1 141 0 47 1 145 0 53 1 145 0 54 0 121 0 55 1 145 0 56 1 145 0 61 0 133 0 65 1 145 0 66 1 145 0 67 3 121 0 70 1 153 0 74 0 149 0 79 1 157 0 80 0 121 0 84 0 161 0 85 1 161 0 87 0 202 0 88 0 202 0 89 0 202 0 90 0 219 0 93 0 202 0 95] 
#[1 0 163 0 2 0 167 0 3 0 171 0 4 0 175 0 5 0 179 0 6 0 183 0 7 0 187 0 8 0 202 0 11 0 202 0 12 0 191 0 13 0 202 0 14 0 191 0 15 0 202 0 16 0 195 0 17 0 195 0 18 0 199 0 19 0 203 0 20 0 207 0 21 0 211 0 29 0 202 0 30 0 215 0 31 1 133 0 42 1 137 0 43 1 141 0 47 1 145 0 53 1 145 0 54 0 121 0 55 1 145 0 56 1 145 0 61 0 133 0 65 1 145 0 66 1 145 0 67 3 125 0 70 1 153 0 74 0 149 0 79 1 157 0 80 0 121 0 84 0 161 0 85 1 161 0 87 0 202 0 88 0 202 0 89 0 202 0 90 0 219 0 93 0 202 0 95] 
#[1 3 129 0 12 1 13 0 93] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 65 0 21 3 133 0 36 2 57 0 55 2 61 0 56 3 25 0 57 2 57 0 84 0 161 0 85 0 6 0 88 1 147 0 93] 
#[0 1 166 0 91 0 94] 
#[1 3 137 0 21 3 141 0 68 1 70 0 91 3 145 0 94] 
#[0 3 149 0 91] 
#[0 1 170 0 21 0 91 0 94] 
#[1 3 137 0 21 3 153 0 68 1 70 0 91 3 145 0 94] 
#[0 3 157 0 91] 
#[0 3 161 0 14] 
#[1 3 165 0 11 0 250 0 14 3 169 0 75 3 173 0 78] 
#[0 1 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 3 177 0 16] 
#[0 1 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 3 181 0 11 0 250 0 16 3 185 0 78 3 189 0 81] 
#[1 1 182 0 11 0 6 0 12 1 182 0 16 2 165 0 36 0 6 0 93] 
#[1 0 250 0 14 3 193 0 78] 
#[1 1 86 0 11 1 86 0 14 3 197 0 76] 
#[0 3 201 0 14] 
#[1 0 250 0 16 3 205 0 78] 
#[0 3 209 0 16] 
#[1 1 102 0 11 1 102 0 16 3 213 0 82] 
#[0 1 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 5 1 190 0 6 1 190 0 7 1 190 0 8 1 190 0 12 1 190 0 13 1 190 0 15 1 190 0 17 1 190 0 18 1 190 0 19 1 190 0 20 1 190 0 21 1 190 0 29 1 190 0 30 1 190 0 31 1 167 0 89 1 190 0 90 1 190 0 93 1 190 0 95] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 7 0 13 0 7 0 15 0 18 0 17 0 18 0 18 0 7 0 19 0 6 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 3 221 0 37 3 221 0 38 0 89 0 39 0 93 0 40 0 97 0 41 3 221 0 48 0 105 0 49 0 109 0 50 3 221 0 53 3 221 0 54 0 121 0 55 3 221 0 56 3 221 0 61 0 133 0 65 3 221 0 66 3 221 0 67 3 221 0 74 0 149 0 79 3 221 0 80 0 121 0 84 0 161 0 85 0 239 0 93] 
#[1 3 225 0 88 1 89 0 93] 
#[0 0 186 0 88 0 93] 
#[1 1 198 0 2 1 198 0 3 1 198 0 4 1 198 0 5 1 198 0 6 1 198 0 7 1 198 0 21 3 229 0 59 1 198 0 88 1 171 0 93] 
#[1 3 237 0 88 1 13 0 93] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 21 0 88 0 93] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 65 0 21 2 57 0 55 2 61 0 56 2 65 0 57 2 69 0 58 2 57 0 84 0 161 0 85 2 73 0 93] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 57 0 8 3 241 0 41 1 13 0 93] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 6 0 12 0 14 0 13 0 14 0 15 0 59 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 0 241 0 36 0 245 0 51 0 249 0 52 3 245 0 69 0 245 0 74 0 149 0 79 0 245 0 80 1 9 0 87 0 63 0 93] 
#[0 1 222 0 12 0 13 0 15 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 93] 
#[0 1 226 0 88 0 93] 
#[0 1 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 3 249 0 88] 
#[0 3 253 0 88] 
#[1 4 1 0 88 1 13 0 93] 
#[1 4 5 0 88 1 13 0 93] 
#[0 4 9 0 88] 
#[1 4 13 0 36 0 6 0 88 0 6 0 93] 
#[0 4 17 0 88] 
#[1 4 21 0 36 0 6 0 88 0 6 0 93] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 18 0 17 0 18 0 18 0 6 0 19 1 163 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 4 25 0 38 0 89 0 39 0 93 0 40 0 97 0 41 4 29 0 42 4 33 0 43 4 37 0 48 0 105 0 49 0 109 0 50 4 41 0 53 4 41 0 54 0 121 0 55 4 41 0 56 4 41 0 61 0 133 0 65 4 41 0 66 4 41 0 67 0 121 0 84 0 161 0 85 1 175 0 93] 
#[1 4 49 0 88 1 13 0 93] 
#[0 1 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 18 0 17 0 18 0 18 1 159 0 19 1 163 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 4 53 0 38 0 89 0 39 0 93 0 40 0 97 0 41 4 57 0 43 4 61 0 48 0 105 0 49 0 109 0 50 4 65 0 53 4 65 0 54 0 121 0 55 4 65 0 56 4 65 0 61 0 133 0 65 4 65 0 66 4 65 0 67 0 121 0 84 0 161 0 85 4 69 0 87 0 239 0 93] 
#[1 4 73 0 36 0 6 0 88 0 6 0 93] 
#[0 1 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 1 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 163 0 2 0 167 0 3 0 171 0 4 0 175 0 5 0 179 0 6 0 183 0 7 0 187 0 8 0 202 0 11 0 202 0 12 0 191 0 13 0 202 0 14 0 191 0 15 0 202 0 16 0 195 0 17 0 195 0 18 0 199 0 19 0 203 0 20 0 207 0 21 0 211 0 29 0 202 0 30 0 215 0 31 1 133 0 42 1 137 0 43 1 141 0 47 1 145 0 53 1 145 0 54 0 121 0 55 1 145 0 56 1 145 0 61 0 133 0 65 1 145 0 66 1 145 0 67 4 77 0 70 1 153 0 74 0 149 0 79 1 157 0 80 0 121 0 84 0 161 0 85 1 161 0 87 0 202 0 88 0 202 0 89 0 202 0 90 0 219 0 93 0 202 0 95] 
#[1 4 81 0 88 1 13 0 93] 
#[0 1 246 0 91 0 94] 
#[0 4 85 0 91] 
#[0 1 250 0 21 0 91 0 94] 
#[0 1 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 4 89 0 91] 
#[0 2 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 6 0 12 0 14 0 13 0 250 0 14 0 14 0 15 0 18 0 17 0 18 0 18 0 59 0 19 0 221 0 20 1 205 0 21 1 209 0 29 0 233 0 30 1 213 0 31 0 241 0 36 0 245 0 51 0 249 0 52 4 93 0 53 4 93 0 54 0 121 0 55 4 93 0 56 4 93 0 61 0 133 0 65 4 93 0 66 4 93 0 67 4 93 0 69 1 225 0 74 4 93 0 77 4 97 0 78 0 149 0 79 1 237 0 80 0 121 0 84 0 161 0 85 1 9 0 87 0 235 0 93] 
#[0 2 10 0 11 0 14] 
#[0 4 101 0 14] 
#[0 2 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 6 0 12 0 14 0 13 0 14 0 15 0 250 0 16 0 59 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 0 241 0 36 1 249 0 51 0 249 0 52 4 109 0 69 1 249 0 74 4 105 0 78 0 149 0 79 1 249 0 80 4 109 0 83 2 9 0 87 0 6 0 93] 
#[0 4 113 0 16] 
#[0 2 18 0 11 0 16] 
#[0 4 117 0 14] 
#[1 4 121 0 11 0 250 0 14 3 169 0 75 4 125 0 78] 
#[0 2 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 4 129 0 16] 
#[0 2 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 4 133 0 11 0 250 0 16 4 137 0 78 3 189 0 81] 
#[0 2 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[1 2 34 0 2 2 34 0 3 2 34 0 4 2 34 0 5 2 34 0 6 2 34 0 7 2 34 0 8 2 34 0 12 2 34 0 13 2 34 0 15 2 34 0 17 2 34 0 18 2 34 0 19 2 34 0 20 2 34 0 21 2 34 0 29 2 34 0 30 2 34 0 31 1 179 0 89 2 34 0 90 2 34 0 93 2 34 0 95] 
#[0 2 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 42 0 2 0 3 0 4 0 5 0 6 0 7 0 21 0 88 0 93] 
#[1 1 183 0 2 1 187 0 3 1 191 0 4 1 195 0 5 1 199 0 6 1 203 0 7 1 207 0 21 4 145 0 55 4 145 0 84 0 161 0 85 2 46 0 88 2 46 0 93] 
#[0 2 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 2 54 0 2 2 54 0 3 2 54 0 4 2 54 0 5 2 54 0 6 2 54 0 7 2 54 0 8 2 54 0 11 2 54 0 12 2 54 0 13 2 54 0 14 2 54 0 15 2 54 0 16 2 54 0 17 2 54 0 18 2 54 0 19 2 54 0 20 2 54 0 21 2 54 0 29 2 54 0 30 2 54 0 31 2 54 0 88 2 54 0 89 2 54 0 90 1 211 0 93 2 54 0 95] 
#[0 2 58 0 12 0 13 0 15 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 93] 
#[0 2 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 4 153 0 88 1 13 0 93] 
#[0 2 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 4 157 0 88 1 13 0 93] 
#[0 4 161 0 88] 
#[1 4 165 0 88 1 89 0 93] 
#[1 4 169 0 36 0 6 0 88 0 6 0 93] 
#[0 4 173 0 88] 
#[1 4 177 0 36 0 6 0 88 0 6 0 93] 
#[1 0 57 0 8 0 89 0 39 1 77 0 40 0 97 0 41 0 186 0 88 1 81 0 92 0 186 0 93] 
#[0 2 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 4 181 0 88] 
#[1 4 185 0 36 0 6 0 88 0 6 0 93] 
#[0 4 189 0 88] 
#[1 4 193 0 36 0 6 0 88 0 6 0 93] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 57 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 18 0 17 0 18 0 18 0 6 0 19 1 163 0 20 0 15 0 21 0 19 0 29 0 6 0 30 0 23 0 31 0 77 0 36 4 197 0 38 0 89 0 39 0 93 0 40 0 97 0 41 4 201 0 42 4 205 0 43 4 209 0 48 0 105 0 49 0 109 0 50 4 213 0 53 4 213 0 54 0 121 0 55 4 213 0 56 4 213 0 61 0 133 0 65 4 213 0 66 4 213 0 67 0 121 0 84 0 161 0 85 1 175 0 93] 
#[1 4 217 0 88 1 13 0 93] 
#[0 2 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 106 0 11 0 14] 
#[0 4 221 0 14] 
#[0 2 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 4 225 0 16] 
#[0 2 114 0 11 0 16] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 161 0 2 0 161 0 3 0 161 0 4 0 161 0 5 0 49 0 6 0 53 0 7 0 6 0 12 0 14 0 13 0 250 0 14 0 14 0 15 0 18 0 17 0 18 0 18 0 59 0 19 0 221 0 20 1 205 0 21 1 209 0 29 0 233 0 30 1 213 0 31 0 241 0 36 0 245 0 51 0 249 0 52 4 93 0 53 4 93 0 54 0 121 0 55 4 93 0 56 4 93 0 61 0 133 0 65 4 93 0 66 4 93 0 67 4 93 0 69 1 225 0 74 4 93 0 77 4 229 0 78 0 149 0 79 1 237 0 80 0 121 0 84 0 161 0 85 1 9 0 87 0 235 0 93] 
#[0 4 233 0 14] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 6 0 12 0 14 0 13 0 14 0 15 0 250 0 16 0 59 0 19 0 221 0 20 0 225 0 21 0 229 0 29 0 233 0 30 0 237 0 31 0 241 0 36 1 249 0 51 0 249 0 52 4 109 0 69 1 249 0 74 4 237 0 78 0 149 0 79 1 249 0 80 4 109 0 83 2 9 0 87 0 6 0 93] 
#[0 4 241 0 16] 
#[0 2 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 89 0 90 0 93 0 95] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 21 0 88 0 93] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 57 0 8 1 93 0 41 4 245 0 71] 
#[1 4 249 0 88 1 13 0 93] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 4 253 0 88 1 13 0 93] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 5 1 0 88 1 13 0 93] 
#[0 2 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 5 5 0 88 1 13 0 93] 
#[0 5 9 0 88] 
#[1 5 13 0 88 1 89 0 93] 
#[1 5 17 0 36 0 6 0 88 0 6 0 93] 
#[0 5 21 0 88] 
#[1 5 25 0 36 0 6 0 88 0 6 0 93] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 5 29 0 14] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 5 33 0 16] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 0 57 0 8 1 93 0 41 5 37 0 71] 
#[1 5 41 0 88 1 13 0 93] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[1 5 45 0 88 1 13 0 93] 
#[0 2 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95] 
#[0 2 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 29 0 30 0 31 0 88 0 89 0 90 0 93 0 95]
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
	actions isEmpty
		ifTrue: [ currentToken ids first = scanner emptySymbolTokenId
				ifTrue: [ #(DEDENTId STRING_MYId FINISH_LITERAL_STRINGId)
						do: [ :each | 
							self addActionsFor: (scanner perform: each) to: actions.
							actions notEmpty
								ifTrue: [ currentToken := SmaCCToken
											value: ''
											start: currentToken startPosition
											ids: {scanner perform: each}.
									^ actions ] ] ].
			((currentToken ids includes: scanner STRING_MYId)
				and: [ currentToken value beginsWith: ':' ])
				ifTrue: [ self addActionsFor: scanner COLONId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := SmaCCToken
									value: ':'
									start: currentToken startPosition
									ids: {scanner COLONId}.
							self position: currentToken stopPosition.
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
YAMLParser >> reduceActionForComplexKey1: nodes [
	| result |
	result := YAMLComplexKeyNode new.
	result questionMark: (nodes at: 1).
	result value: ((nodes at: 2) at: 1).
	result addTokens: ((nodes at: 2) at: 2) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue11: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue13: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue14: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue16: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue17: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue18: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue19: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 3) to: (result at: 2).
	result at: 1 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue20: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 2).
	result at: 1 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue5: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue6: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 3) to: (result at: 2).
	result at: 1 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue7: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	result at: 1 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue8: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 2).
	result at: 1 put: (nodes at: 5).
	^ result
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
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE___fileDocument__2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value_______multiline_string_1: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value_______multiline_string__1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value_______multiline_string__2: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_listitem__item___NEWLINE____1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_listitem__item___NEWLINE____2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
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
	result addTokens: ((nodes at: 1) at: 3) to: result anchors.
	result addTokens: ((nodes at: 1) at: 4) to: result documentStarts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument10: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument11: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 3 put: (nodes at: 3).
	result at: 1 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument12: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 3 put: (nodes at: 3).
	result at: 1 put: (nodes at: 5).
	result at: 2 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument13: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument14: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument16: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument17: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument4: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (nodes at: 1).
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument5: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument6: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument7: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 1 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument8: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	result at: 1 put: (nodes at: 4).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument9: nodes [
	| result |
	result := Array new: 4.
	result at: 4 put: (nodes at: 1).
	result at: 1 put: (nodes at: 3).
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
YAMLParser >> reduceActionForflowlist5: nodes [
	| result |
	result := YAMLFlowListNode new.
	result anchor: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist6: nodes [
	| result |
	result := YAMLFlowListNode new.
	result anchor: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result addToken: (nodes at: 4) to: result commas.
	result rightBracket: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist7: nodes [
	| result |
	result := YAMLFlowListNode new.
	result anchor: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result addNode: (nodes at: 4) to: result items.
	result addTokens: ((nodes at: 5) at: 1) to: result commas.
	result addNodes: ((nodes at: 5) at: 2) to: result items.
	result rightBracket: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist8: nodes [
	| result |
	result := YAMLFlowListNode new.
	result anchor: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result addNode: (nodes at: 4) to: result items.
	result addTokens: ((nodes at: 5) at: 1) to: result commas.
	result addNodes: ((nodes at: 5) at: 2) to: result items.
	result addToken: (nodes at: 6) to: result commas.
	result rightBracket: (nodes at: 8).
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
YAMLParser >> reduceActionForflowmappinglist5: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result anchor: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist6: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result anchor: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addToken: (nodes at: 4) to: result commas.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist7: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result anchor: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNode: (nodes at: 4) to: result mappings.
	result addTokens: ((nodes at: 5) at: 1) to: result commas.
	result addNodes: ((nodes at: 5) at: 2) to: result mappings.
	result rightBrace: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist8: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result anchor: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNode: (nodes at: 4) to: result mappings.
	result addTokens: ((nodes at: 5) at: 1) to: result commas.
	result addNodes: ((nodes at: 5) at: 2) to: result mappings.
	result addToken: (nodes at: 6) to: result commas.
	result rightBrace: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForkey4: nodes [
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
YAMLParser >> reduceActionForlist2: nodes [
	| result |
	result := YAMLListNode new.
	result addNodes: (nodes at: 2) to: result items.
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
YAMLParser >> reduceActionFormapping1: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 2).
	result value: ((nodes at: 3) at: 1).
	result addTokens: ((nodes at: 3) at: 2) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping2: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 3).
	result value: ((nodes at: 4) at: 1).
	result addTokens: ((nodes at: 4) at: 2) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping3: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result colon: (nodes at: 3).
	result value: ((nodes at: 4) at: 1).
	result addTokens: ((nodes at: 4) at: 2) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping4: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
	result colon: (nodes at: 4).
	result value: ((nodes at: 5) at: 1).
	result addTokens: ((nodes at: 5) at: 2) to: result anchors.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping5: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping6: nodes [
	| result |
	result := YAMLMappingNode new.
	result addToken: (nodes at: 1) to: result anchors.
	result key: (nodes at: 2).
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
