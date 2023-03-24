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
#[ 0 6 0 41] 
#[ 0 6 0 133] 
#[ 0 6 0 62] 
#[ 0 6 0 74] 
#[ 0 82 0 185] 
#[ 0 6 0 213] 
#[ 0 41 0 122] 
#[ 0 130 0 253] 
#[ 0 134 1 5] 
#[ 0 6 1 41] 
#[ 0 170 0 217] 
#[ 0 166 0 170] 
#[ 0 41 0 178] 
#[ 0 178 1 101] 
#[ 0 210 1 213] 
#[ 0 185 0 210] 
#[ 1 18 2 109] 
#[ 0 6 1 30] 
#[ 1 190 2 249]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2023-03-24T07:19:18.687253-05:00'
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
<OPEN_BRACK> :        \[ ;
default FLOW <CLOSE_BRACK> :       \] ;
<OPEN_BRACE> :        \{ ;
default FLOW <CLOSE_BRACE> :       \};
<LITERAL_STR_IND>:   \| ;
<FOLD_STR_IND>:       \> ;
<DOUBLE_QUOTE>:       \"" ;

<ANCHOR>
 : <AMPERSAND> <NAME>
 ;

<ALIAS>
 : <STAR> <NAME>
 ;

<NAME>
 : [A-Za-z0-9]+
 ;

<STRING_MY>
 : <STRING_MY_START> ([^\ \r\n\:] | (\: [^\ \r\n]) | (\ + [^\ \:\#\r\n]) )*
 ;

<STRING_MY_START>
 : [^\-\ \r\n\""\:\#\[\{\&\*\|] | (\: [^\ \r\n]) | (\- [^\ \r\n])
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

<comment>
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
 : [^\-\ \r\n\""\:\#\[\]\,\{\}] | (\: [^\ \r\n]) | (\- [^\ \r\n])
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

# The Yaml Language Reference: http://www.yaml.org/spec/1.2/spec.html

/*
 * my parser rules
 */

file
 : <NEWLINE>*
 (
   (<DOCUMENTSTART> 'documentStart' <NEWLINE>?)? document 'document' (<DOCUMENTEND> 'documentEnd' <NEWLINE>)? (<NEWLINE>* (<DOCUMENTSTART> 'documentStart' <NEWLINE>) document 'document' (<DOCUMENTEND> 'documentEnd' <NEWLINE>?)?)*
 )
 <NEWLINE>*  {{}}
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
 | <MINUS> 'minus' <ALIAS> 'alias' {{ListItem}}
 | <MINUS> 'minus' <NEWLINE>  {{ListItem}} #null value
 ;
mappingListWithoutInitialNewline
	: mapping 'mapping' (<NEWLINE>* mapping 'mapping' <NEWLINE>?)* {{MappingList}}
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
 : <STRING_MY>
 ;

value
 : value_scalar | <NEWLINE> <INDENT> value_scalar 'value' <NEWLINE> <DEDENT> {value} | multiline_string | string_literal | string_folded | string_double_quoted
 ;

value_scalar
 : number | <STRING_MY> 'value' {{String}}
 ;

multiline_string
 : value_scalar 'value'? <NEWLINE> <INDENT> ( value_scalar 'value' (<NEWLINE> value_scalar 'value')* | multiline_string)+ <NEWLINE>? <DEDENT> {{MultilineString}}
 ;

string_literal
 : PushLiteralString <LITERAL_STR_IND> 'part' (<NEWLINE_STR_LITERAL>+ <STRING_MY> 'part')* PopScope <FINISH_LITERAL_STRING> {{}}
 ;
PushLiteralString
	: [self pushScope: #LITERAL_STRING]
	;

string_folded
 : PushLiteralString <FOLD_STR_IND> 'part' (<NEWLINE_STR_LITERAL>+ <STRING_MY> 'part')* PopScope <FINISH_LITERAL_STRING> {{StringLiteral}}
 ;

string_double_quoted
 : PushDoubleQuoteScope <DOUBLE_QUOTE> 'part' <STRING_MY> 'part' (<NEWLINE_STR_QUOTE>+ <STRING_MY> 'part')* PopScope <DOUBLE_QUOTE> 'part' {{StringLiteral}}
 ;
PushDoubleQuoteScope
	: [self pushScope: #DOUBLE_QUOTE_STR. nil]
	;
PopScope
	: [self popScope. nil]
	;

mapping
 : key 'key' <COLON> 'colon' <NEWLINE>+ <INDENT> mappinglist 'value' <DEDENT> {{}}
 | key 'key' <COLON> 'colon' <NEWLINE>+ <INDENT> list 'value' <DEDENT> {{}}
 | key 'key' <COLON> 'colon' flowmappinglist 'value' {{}}
 | key 'key' <COLON> 'colon' value 'value'? {{}}
 | key 'key' <COLON> 'colon' <NEWLINE>+ listWithoutInitialNewline 'value' {{}}	# added
 | key 'key' <COLON> 'colon' flowlist 'value' {{}}	# added
 ;
listWithoutInitialNewline
	: listitem 'item' (<NEWLINE>* listitem 'item' <NEWLINE>?)* {{List}}
	;

/*
 * flow rules
 */

flowlist
 : PushFlow <OPEN_BRACK> 'leftBracket' value 'item' (<COMMA> 'comma' value  'item')* <COMMA> 'comma'? PopFlow <CLOSE_BRACK> 'rightBracket' {{FlowList}}
 ;
PopFlow
	: [scanner opened: scanner opened - 1. self popScope. nil]
	;
PushFlow
	: [scanner opened: scanner opened + 1. self pushScope: #FLOW. nil]
	;

flowmappinglist
 : PushFlow <OPEN_BRACE> 'leftBrace' mapping 'mapping' (<COMMA> 'comma' mapping 'mapping')* <COMMA> 'comma'? PopFlow <CLOSE_BRACE> 'rightBrace' {{FlowMappingList}}
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
 ;"
]

{ #category : #accessing }
YAMLParser class >> fileExtensions [
	^ #('.yaml' '.yml')
]

{ #category : #generated }
YAMLParser class >> reduceTable [
^#(
	#(35 0 #nil 6858753 false) 
	#(77 0 #reduceActionForPushFlow1: 10099713 true) 
	#(62 0 #reduceActionForPushLiteralString1: 8787969 true) 
	#(68 0 #reduceActionForPushDoubleQuoteScope1: 9194497 true) 
	#(82 1 #liftFirstValue: 10572801 false) 
	#(82 1 #liftFirstValue: 10572802 false) 
	#(82 1 #liftFirstValue: 10572803 false) 
	#(82 1 #liftFirstValue: 10572804 false) 
	#(81 1 #reduceActionFornumber2: 10395650 false) 
	#(81 1 #reduceActionFornumber2: 10395651 false) 
	#(52 1 #reduceActionForvalue_scalar2: 8388610 false) 
	#(37 0 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE______1: 6985729 false) 
	#(38 1 #liftFirstValue: 7134209 false) 
	#(41 1 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____1: 7216129 false) 
	#(39 1 #reduceActionForlist1: 7207937 false) 
	#(49 1 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____1: 8126465 false) 
	#(38 1 #liftFirstValue: 7134210 false) 
	#(48 1 #reduceActionFormappinglist1: 8111105 false) 
	#(38 1 #liftFirstValue: 7134213 false) 
	#(51 1 #liftFirstValue: 8214529 false) 
	#(51 1 #liftFirstValue: 8214531 false) 
	#(51 1 #liftFirstValue: 8214532 false) 
	#(51 1 #liftFirstValue: 8214533 false) 
	#(51 1 #liftFirstValue: 8214534 false) 
	#(38 1 #liftFirstValue: 7134211 false) 
	#(38 1 #liftFirstValue: 7134212 false) 
	#(52 1 #liftFirstValue: 8388609 false) 
	#(81 1 #reduceActionFornumber2: 10395649 false) 
	#(35 2 #liftFirstValue: 6858754 false) 
	#(47 0 #reduceActionForPushIndent1: 7922689 true) 
	#(50 1 #liftFirstValue: 8190977 false) 
	#(40 2 #liftSecondValue: 7216129 false) 
	#(45 2 #liftSecondValue: 7859201 false) 
	#(41 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 7216130 false) 
	#(49 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8126466 false) 
	#(60 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8699905 false) 
	#(42 2 #reduceActionForlistitem15: 7267343 false) 
	#(42 2 #reduceActionForlistitem1: 7267329 false) 
	#(42 2 #reduceActionForlistitem1: 7267332 false) 
	#(42 2 #reduceActionForlistitem1: 7267335 false) 
	#(42 2 #reduceActionForlistitem16: 7267344 false) 
	#(43 1 #liftFirstValue: 7350273 false) 
	#(40 3 #liftSecondValue: 7216130 false) 
	#(70 2 #reduceActionFormapping4: 9302020 false) 
	#(45 3 #liftSecondValue: 7859202 false) 
	#(34 4 #reduceActionForfile1: 6850561 false) 
	#(37 2 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE______2: 6985730 false) 
	#(69 0 #reduceActionForPopScope1: 9264129 true) 
	#(66 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 9097217 false) 
	#(75 0 #reduceActionFor__COMMA___comma__value___item___1: 9921537 false) 
	#(80 0 #reduceActionFor__COMMA___comma__value___item___1: 10255361 false) 
	#(57 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8536065 false) 
	#(54 1 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8512514 false) 
	#(55 1 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string__1: 8512513 false) 
	#(42 3 #reduceActionForlistitem8: 7267336 false) 
	#(42 3 #reduceActionForlistitem8: 7267339 false) 
	#(42 3 #reduceActionForlistitem8: 7267342 false) 
	#(43 2 #liftFirstValue: 7350274 false) 
	#(72 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 9781249 false) 
	#(46 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 7859201 false) 
	#(70 3 #reduceActionFormapping5: 9302021 false) 
	#(70 3 #reduceActionFormapping5: 9302023 false) 
	#(70 3 #reduceActionFormapping5: 9302019 false) 
	#(60 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8699906 false) 
	#(61 1 #liftFirstValue: 8700929 false) 
	#(76 0 #reduceActionForPopFlow1: 10027009 true) 
	#(34 5 #reduceActionForfile3: 6850563 false) 
	#(54 2 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string_1: 8512513 false) 
	#(55 2 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string__2: 8512514 false) 
	#(53 4 #reduceActionFormultiline_string1: 8450049 false) 
	#(71 2 #reduceActionForlistWithoutInitialNewline1: 9735169 false) 
	#(42 4 #reduceActionForlistitem6: 7267334 false) 
	#(44 2 #reduceActionFormappingListWithoutInitialNewline1: 7803905 false) 
	#(42 4 #reduceActionForlistitem6: 7267333 false) 
	#(70 4 #reduceActionFormapping6: 9302022 false) 
	#(34 6 #reduceActionForfile2: 6850562 false) 
	#(53 5 #reduceActionFormultiline_string3: 8450051 false) 
	#(59 2 #liftSecondValue: 8699905 false) 
	#(61 2 #liftFirstValue: 8700930 false) 
	#(58 5 #reduceActionForstring_literal1: 8637441 false) 
	#(63 5 #reduceActionForstring_literal1: 8848385 false) 
	#(67 1 #liftFirstValue: 9098241 false) 
	#(66 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 9097218 false) 
	#(75 2 #reduceActionFor__COMMA___comma__value___item___2: 9921538 false) 
	#(80 2 #reduceActionFor__COMMA___comma__value___item___2: 10255362 false) 
	#(34 6 #reduceActionForfile5: 6850565 false) 
	#(57 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8536066 false) 
	#(51 5 #reduceActionForvalue2: 8214530 false) 
	#(53 5 #reduceActionFormultiline_string1: 8450050 false) 
	#(42 5 #reduceActionForlistitem13: 7267341 false) 
	#(42 5 #reduceActionForlistitem13: 7267340 false) 
	#(42 5 #reduceActionForlistitem2: 7267330 false) 
	#(42 5 #reduceActionForlistitem2: 7267331 false) 
	#(72 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 9781250 false) 
	#(46 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 7859202 false) 
	#(36 4 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE_____1: 6985729 false) 
	#(53 6 #reduceActionFormultiline_string3: 8450052 false) 
	#(65 2 #liftSecondValue: 9097217 false) 
	#(67 2 #liftFirstValue: 9098242 false) 
	#(64 6 #reduceActionForstring_double_quoted1: 9009153 false) 
	#(74 2 #reduceActionFor__COMMA___comma__value___item__1: 9921537 false) 
	#(73 6 #reduceActionForflowlist1: 9859073 false) 
	#(79 2 #reduceActionFor__COMMA___comma__value___item__1: 10255361 false) 
	#(78 6 #reduceActionForflowmappinglist1: 10182657 false) 
	#(34 7 #reduceActionForfile4: 6850564 false) 
	#(56 2 #liftSecondValue: 8536065 false) 
	#(42 6 #reduceActionForlistitem9: 7267337 false) 
	#(42 6 #reduceActionForlistitem9: 7267338 false) 
	#(70 6 #reduceActionFormapping2: 9302018 false) 
	#(70 6 #reduceActionFormapping2: 9302017 false) 
	#(36 5 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE_____2: 6985730 false) 
	#(73 7 #reduceActionForflowlist2: 9859074 false) 
	#(78 7 #reduceActionForflowmappinglist2: 10182658 false) 
	#(34 8 #reduceActionForfile6: 6850566 false) 
	#(36 6 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE_____2: 6985731 false)
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
	^ #('<newline>' '<DECIMAL_INTEGER>' '<OCT_INTEGER>' '<HEX_INTEGER>' '<BIN_INTEGER>' '<FLOAT_NUMBER>' '<IMAG_NUMBER>' '<MINUS>' '<DOCUMENTSTART1>' '<DOCUMENTEND1>' '<COMMA>' '<COLON>' '<OPEN_BRACK>' '<CLOSE_BRACK>' '<OPEN_BRACE>' '<CLOSE_BRACE>' '<LITERAL_STR_IND>' '<FOLD_STR_IND>' '<DOUBLE_QUOTE>' '<ANCHOR>' '<ALIAS>' '<STRING_MY>' '<SKIP1>' '<SPACES>' '<comment>' '<STRING_MY_2>' '<SKIP2>' '<newline_str_literal>' '<STRING_MY_3>' '<STRING_MY_4>' '<NEWLINE_STR_QUOTE>' '<DOUBLE_QUOTE2>' 'B e g i n' 'file' '<NEWLINE>*' '(<NEWLINE>* (<DOCUMENTSTART> ''documentStart'' <NEWLINE>) document ''document'' (<DOCUMENTEND> ''documentEnd'' <NEWLINE>?)?)' '(<NEWLINE>* (<DOCUMENTSTART> ''documentStart'' <NEWLINE>) document ''document'' (<DOCUMENTEND> ''documentEnd'' <NEWLINE>?)?)*' 'document' 'list' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)+' 'listitem' '<NEWLINE>+' 'mappingListWithoutInitialNewline' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)*' 'PushIndent' 'mappinglist' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)+' 'key' 'value' 'value_scalar' 'multiline_string' '( value_scalar ''value'' (<NEWLINE> value_scalar ''value'')* | multiline_string)' '( value_scalar ''value'' (<NEWLINE> value_scalar ''value'')* | multiline_string)+' '(<NEWLINE> value_scalar ''value'')' '(<NEWLINE> value_scalar ''value'')*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' 'PushLiteralString' 'string_folded' 'string_double_quoted' '(<NEWLINE_STR_QUOTE>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_QUOTE>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_QUOTE>+' 'PushDoubleQuoteScope' 'PopScope' 'mapping' 'listWithoutInitialNewline' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)*' 'flowlist' '(<COMMA> ''comma'' value  ''item'')' '(<COMMA> ''comma'' value  ''item'')*' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' mapping ''mapping'')' '(<COMMA> ''comma'' mapping ''mapping'')*' 'number' 'integer' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
]

{ #category : #generated }
YAMLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #YAMLFileNode #YAMLFileNode nil #OrderedCollection #OrderedCollection #YAMLParseNode #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLListItemNode #SmaCCToken #YAMLMappingListNode #YAMLMappingNode #OrderedCollection nil #YAMLMappingListNode #OrderedCollection #SmaCCToken #YAMLParseNode #YAMLParseNode #YAMLMultilineStringNode #OrderedCollection #OrderedCollection #YAMLParseNode #OrderedCollection #YAMLStringLiteralNode #SmaCCToken #OrderedCollection #SmaCCToken #Object #YAMLStringLiteralNode #YAMLStringLiteralNode #SmaCCToken #OrderedCollection #SmaCCToken nil nil #YAMLMappingNode #YAMLListNode #OrderedCollection #YAMLFlowListNode #OrderedCollection #OrderedCollection nil nil #YAMLFlowMappingListNode #OrderedCollection #OrderedCollection #YAMLNumberNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
YAMLParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 22 0 9 0 34 0 13 0 35 0 6 0 85 0 6 0 88] 
#[0 0 0 0 90] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 6 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 7 0 22 0 45 0 35 0 49 0 38 0 49 0 39 0 57 0 40 0 61 0 41 0 65 0 45 0 49 0 48 0 73 0 49 0 49 0 51 0 81 0 52 0 49 0 53 0 49 0 58 0 93 0 62 0 49 0 63 0 49 0 64 0 105 0 68 0 49 0 73 0 113 0 77 0 49 0 78 0 81 0 81 0 125 0 82 0 129 0 85 0 11 0 88] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 0 137 0 8 0 149 0 22 0 145 0 42 0 149 0 50 0 153 0 70 0 157 0 88] 
#[1 0 161 0 37 0 165 0 84 0 50 0 85 0 50 0 88 0 50 0 90] 
#[0 0 54 0 84 0 85 0 88 0 90] 
#[0 0 58 0 8 0 83 0 84 0 85 0 88 0 90] 
#[1 0 6 0 8 0 169 0 35 0 173 0 40 0 62 0 83 0 62 0 84 0 62 0 85 0 15 0 88 0 62 0 90] 
#[0 0 66 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 70 0 84 0 85 0 88 0 90] 
#[1 0 6 0 22 0 177 0 35 0 181 0 45 0 74 0 83 0 74 0 84 0 74 0 85 0 19 0 88 0 74 0 90] 
#[0 0 78 0 84 0 85 0 88 0 90] 
#[1 0 82 0 8 0 82 0 11 0 82 0 14 0 82 0 16 0 82 0 22 0 82 0 83 0 82 0 84 0 82 0 85 0 23 0 88 0 82 0 90] 
#[0 0 86 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 90 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 0 189 0 17 0 193 0 18] 
#[0 0 94 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 98 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 197 0 19] 
#[0 0 102 0 84 0 85 0 88 0 90] 
#[1 0 201 0 13 0 205 0 15] 
#[0 0 106 0 84 0 85 0 88 0 90] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 6 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 7 0 22 0 45 0 35 0 209 0 38 0 209 0 39 0 57 0 40 0 61 0 41 0 65 0 45 0 209 0 48 0 73 0 49 0 209 0 51 0 81 0 52 0 209 0 53 0 209 0 58 0 93 0 62 0 209 0 63 0 209 0 64 0 105 0 68 0 209 0 73 0 113 0 77 0 209 0 78 0 81 0 81 0 125 0 82 0 27 0 88] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 5 0 118 0 6 0 118 0 7 0 118 0 8 0 118 0 13 0 118 0 15 0 118 0 17 0 118 0 18 0 118 0 19 0 118 0 22 0 118 0 85 0 217 0 87 0 118 0 88] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 122 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 221 0 20 0 225 0 21 0 31 0 22 0 229 0 43 0 233 0 47 0 237 0 51 0 81 0 52 0 237 0 53 0 237 0 58 0 93 0 62 0 237 0 63 0 237 0 64 0 105 0 68 0 241 0 73 0 113 0 77 0 245 0 78 0 81 0 81 0 125 0 82 0 249 0 88] 
#[0 0 126 0 12] 
#[1 0 130 0 8 0 130 0 11 0 130 0 16 0 130 0 22 0 130 0 83 0 130 0 84 0 130 0 85 0 35 0 88 0 130 0 90] 
#[0 1 1 0 12] 
#[1 0 134 0 22 0 134 0 83 0 134 0 84 0 134 0 85 0 39 0 88 0 134 0 90] 
#[0 0 118 0 8 0 22 0 85 0 88 0 90] 
#[1 1 9 0 35 1 13 0 36 0 6 0 85 0 6 0 88 0 6 0 90] 
#[0 1 17 0 88] 
#[1 0 137 0 8 0 145 0 42 0 157 0 88] 
#[0 0 138 0 8 0 83 0 84 0 85 0 88 0 90] 
#[1 0 149 0 22 0 149 0 50 0 153 0 70 0 157 0 88] 
#[0 0 142 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 21 0 87] 
#[1 1 25 0 60 0 146 0 86 0 146 0 89] 
#[1 1 29 0 60 0 146 0 86 0 146 0 89] 
#[0 1 33 0 22] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 14 0 17 0 14 0 18 0 18 0 19 0 41 0 22 1 37 0 51 0 81 0 52 1 37 0 53 1 37 0 58 0 93 0 62 1 37 0 63 1 37 0 64 0 105 0 68 0 81 0 81 0 125 0 82 1 41 0 88] 
#[1 0 149 0 22 0 149 0 50 1 45 0 70] 
#[1 1 49 0 37 1 53 0 84 0 50 0 85 0 50 0 88 0 50 0 90] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 6 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 7 0 22 0 45 0 35 1 57 0 38 1 57 0 39 0 57 0 40 0 61 0 41 0 65 0 45 1 57 0 48 0 73 0 49 1 57 0 51 0 81 0 52 1 57 0 53 1 57 0 58 0 93 0 62 1 57 0 63 1 57 0 64 0 105 0 68 1 57 0 73 0 113 0 77 1 57 0 78 0 81 0 81 0 125 0 82 0 217 0 87 0 43 0 88] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 61 0 52 1 65 0 53 1 69 0 54 1 73 0 55 1 61 0 81 0 125 0 82 1 77 0 88] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 122 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 31 0 22 1 81 0 43 1 85 0 47 1 89 0 51 0 81 0 52 1 89 0 53 1 89 0 58 0 93 0 62 1 89 0 63 1 89 0 64 0 105 0 68 1 93 0 73 0 113 0 77 1 97 0 78 0 81 0 81 0 125 0 82 1 101 0 88] 
#[0 0 150 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 1 105 0 87 1 109 0 88] 
#[1 0 137 0 8 0 149 0 22 1 113 0 42 1 117 0 44 0 149 0 50 1 121 0 70 1 125 0 71] 
#[0 0 154 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 158 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 162 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 0 166 0 8 0 166 0 11 0 166 0 16 0 166 0 22 0 166 0 83 0 166 0 84 0 166 0 85 0 47 0 87 0 51 0 88 0 166 0 90] 
#[0 0 174 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 178 0 11 0 10 0 13 0 10 0 15 0 178 0 16 0 14 0 17 0 14 0 18 0 18 0 19 0 55 0 22 1 129 0 43 1 133 0 51 0 81 0 52 1 133 0 53 1 133 0 58 0 93 0 62 1 133 0 63 1 133 0 64 0 105 0 68 1 137 0 73 0 113 0 77 1 141 0 78 0 81 0 81 0 125 0 82 0 178 0 83 0 178 0 84 0 178 0 85 0 59 0 88 0 178 0 90] 
#[0 0 182 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 1 145 0 85 0 157 0 88 0 186 0 90] 
#[0 0 190 0 85 0 88 0 90] 
#[1 1 149 0 37 0 50 0 85 0 50 0 88 0 50 0 90] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 153 0 52 1 65 0 53 1 69 0 54 1 157 0 55 1 153 0 81 0 125 0 82 1 77 0 88] 
#[1 1 161 0 59 1 165 0 61 1 169 0 69 0 194 0 86 1 165 0 89] 
#[1 1 161 0 59 1 165 0 61 1 177 0 69 0 194 0 86 1 165 0 89] 
#[1 0 198 0 19 0 198 0 31 1 181 0 66] 
#[1 0 202 0 11 0 202 0 14 1 185 0 75] 
#[0 0 217 0 87] 
#[1 0 206 0 11 0 206 0 16 1 189 0 80] 
#[1 1 193 0 35 1 13 0 36 0 6 0 85 0 6 0 88 0 6 0 90] 
#[0 1 197 0 88] 
#[1 1 201 0 37 1 205 0 84 0 50 0 85 0 50 0 88 0 50 0 90] 
#[1 0 210 0 2 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 22 1 209 0 57 0 210 0 83 0 63 0 88] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 83 0 88] 
#[0 0 218 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 83 0 88] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 153 0 52 1 65 0 53 1 217 0 54 1 153 0 81 0 125 0 82 1 221 0 83 1 225 0 88] 
#[0 1 229 0 87] 
#[1 1 233 0 87 1 109 0 88] 
#[1 0 137 0 8 0 149 0 22 1 113 0 42 1 237 0 44 0 149 0 50 1 121 0 70 1 241 0 71] 
#[0 0 222 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 226 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 230 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 0 170 0 8 0 47 0 87 0 170 0 88] 
#[1 0 6 0 8 0 6 0 22 0 45 0 35 1 245 0 39 0 57 0 40 0 61 0 41 0 65 0 45 1 249 0 48 0 73 0 49 0 6 0 88] 
#[0 0 234 0 8 0 87 0 88] 
#[1 0 238 0 8 0 238 0 11 0 238 0 16 0 238 0 22 1 253 0 72 0 238 0 83 0 238 0 84 0 238 0 85 0 238 0 88 0 238 0 90] 
#[0 2 1 0 83] 
#[1 0 242 0 22 2 5 0 46 0 242 0 83 0 242 0 88] 
#[0 2 9 0 83] 
#[1 0 137 0 8 1 113 0 42 2 13 0 71 2 17 0 87 1 109 0 88] 
#[0 0 246 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 250 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 0 254 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 2 21 0 88] 
#[1 2 25 0 35 1 13 0 36 0 6 0 85 0 6 0 88 0 6 0 90] 
#[1 0 210 0 2 0 210 0 3 0 210 0 4 0 210 0 5 0 210 0 6 0 210 0 7 0 210 0 22 1 209 0 57 0 210 0 83 0 67 0 88] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 153 0 52 1 65 0 53 1 217 0 54 1 153 0 81 0 125 0 82 2 29 0 83 2 33 0 88] 
#[0 1 2 0 86 0 89] 
#[1 2 37 0 22 2 41 0 89] 
#[0 2 45 0 86] 
#[0 1 6 0 22 0 89] 
#[0 2 49 0 86] 
#[1 0 194 0 19 2 61 0 31 2 57 0 65 2 61 0 67 2 65 0 69] 
#[1 2 69 0 11 1 10 0 14 2 73 0 74 2 77 0 76] 
#[1 2 81 0 11 1 10 0 16 2 85 0 76 2 89 0 79] 
#[1 1 145 0 85 0 157 0 88 1 14 0 90] 
#[1 2 93 0 37 0 50 0 85 0 50 0 88 0 50 0 90] 
#[1 2 97 0 35 1 13 0 36 0 6 0 85 0 6 0 88 0 6 0 90] 
#[0 2 101 0 88] 
#[1 1 18 0 2 1 18 0 3 1 18 0 4 1 18 0 5 1 18 0 6 1 18 0 7 1 18 0 22 2 105 0 56 1 18 0 83 0 71 0 88] 
#[1 2 113 0 83 1 21 0 87] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 83 0 88] 
#[0 1 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 2 117 0 83 1 229 0 87] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 153 0 52 1 65 0 53 1 69 0 54 1 73 0 55 1 153 0 81 0 125 0 82 1 77 0 88] 
#[1 0 6 0 8 0 6 0 22 0 45 0 35 2 121 0 39 0 57 0 40 0 61 0 41 0 65 0 45 2 125 0 48 0 73 0 49 0 6 0 88] 
#[0 2 129 0 83] 
#[0 2 133 0 83] 
#[0 2 137 0 83] 
#[0 2 141 0 83] 
#[1 0 6 0 8 1 30 0 11 1 30 0 16 1 30 0 22 0 169 0 35 2 145 0 40 1 30 0 83 1 30 0 84 1 30 0 85 0 75 0 88 1 30 0 90] 
#[0 1 34 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 0 6 0 22 0 177 0 35 2 149 0 45 1 38 0 83 0 6 0 88] 
#[0 1 42 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 46 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 0 6 0 8 0 6 0 22 0 45 0 35 2 153 0 39 0 57 0 40 0 61 0 41 0 65 0 45 2 157 0 48 0 73 0 49 0 6 0 88] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 6 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 7 0 22 0 45 0 35 2 161 0 38 2 161 0 39 0 57 0 40 0 61 0 41 0 65 0 45 2 161 0 48 0 73 0 49 2 161 0 51 0 81 0 52 2 161 0 53 2 161 0 58 0 93 0 62 2 161 0 63 2 161 0 64 0 105 0 68 2 161 0 73 0 113 0 77 2 161 0 78 0 81 0 81 0 125 0 82 0 43 0 88] 
#[1 1 145 0 85 0 157 0 88 1 50 0 90] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 2 165 0 83 1 229 0 87] 
#[0 1 58 0 86 0 89] 
#[0 1 62 0 22 0 89] 
#[0 1 66 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 70 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 74 0 22 0 31] 
#[0 1 78 0 19 0 31] 
#[1 2 169 0 22 2 173 0 31] 
#[0 2 177 0 19] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 1 10 0 14 0 14 0 17 0 14 0 18 0 18 0 19 0 41 0 22 2 181 0 51 0 81 0 52 2 181 0 53 2 181 0 58 0 93 0 62 2 181 0 63 2 181 0 64 0 105 0 68 2 185 0 76 0 81 0 81 0 125 0 82 1 41 0 88] 
#[0 1 82 0 11 0 14] 
#[0 2 189 0 14] 
#[1 1 10 0 16 0 149 0 22 0 149 0 50 2 193 0 70 2 197 0 76] 
#[0 2 201 0 16] 
#[0 1 86 0 11 0 16] 
#[1 2 205 0 35 1 13 0 36 0 6 0 85 0 6 0 88 0 6 0 90] 
#[1 1 145 0 85 0 157 0 88 1 90 0 90] 
#[1 2 209 0 37 0 50 0 85 0 50 0 88 0 50 0 90] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 83 0 88] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 2 213 0 52 2 213 0 81 0 125 0 82] 
#[0 1 98 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 2 217 0 83] 
#[0 2 221 0 83] 
#[0 1 106 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 110 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 114 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 118 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 122 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 126 0 22 0 83 0 88] 
#[0 2 225 0 83] 
#[0 2 229 0 83] 
#[1 2 233 0 84 1 130 0 85 1 130 0 88 1 130 0 90] 
#[0 1 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 138 0 19 0 31] 
#[0 1 142 0 22 0 31] 
#[0 1 146 0 8 0 11 0 14 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 150 0 11 0 14] 
#[0 2 237 0 14] 
#[0 1 154 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 158 0 11 0 16] 
#[0 2 241 0 16] 
#[0 1 162 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 1 145 0 85 0 157 0 88 1 166 0 90] 
#[1 2 245 0 35 1 13 0 36 0 6 0 85 0 6 0 88 0 6 0 90] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 83 0 88] 
#[0 1 174 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 178 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 182 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 186 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 1 190 0 85 0 79 0 88 1 190 0 90] 
#[0 1 194 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[0 1 198 0 8 0 11 0 16 0 22 0 83 0 84 0 85 0 88 0 90] 
#[1 1 145 0 85 0 157 0 88 1 202 0 90] 
#[0 1 206 0 85 0 88 0 90]
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
YAMLParser >> reduceActionForPushDoubleQuoteScope1: nodes [
	self pushScope: #DOUBLE_QUOTE_STR.
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
YAMLParser >> reduceActionFor__COMMA___comma__value___item__1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__COMMA___comma__value___item___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__COMMA___comma__value___item___2: nodes [
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
YAMLParser >> reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE_____1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE_____2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 4).
	result at: 3 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE______1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE______2: nodes [
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
YAMLParser >> reduceActionForfile1: nodes [
	| result |
	result := YAMLFileNode new.
	result addNode: (nodes at: 2) to: result documents.
	result addTokens: ((nodes at: 3) at: 1) to: result documentStarts.
	result addNodes: ((nodes at: 3) at: 2) to: result documents.
	result addTokens: ((nodes at: 3) at: 3) to: result documentEnds.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfile2: nodes [
	| result |
	result := YAMLFileNode new.
	result addNode: (nodes at: 2) to: result documents.
	result addToken: (nodes at: 3) to: result documentEnds.
	result addTokens: ((nodes at: 5) at: 1) to: result documentStarts.
	result addNodes: ((nodes at: 5) at: 2) to: result documents.
	result addTokens: ((nodes at: 5) at: 3) to: result documentEnds.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfile3: nodes [
	| result |
	result := YAMLFileNode new.
	result addToken: (nodes at: 2) to: result documentStarts.
	result addNode: (nodes at: 3) to: result documents.
	result addTokens: ((nodes at: 4) at: 1) to: result documentStarts.
	result addNodes: ((nodes at: 4) at: 2) to: result documents.
	result addTokens: ((nodes at: 4) at: 3) to: result documentEnds.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfile4: nodes [
	| result |
	result := YAMLFileNode new.
	result addToken: (nodes at: 2) to: result documentStarts.
	result addNode: (nodes at: 3) to: result documents.
	result addToken: (nodes at: 4) to: result documentEnds.
	result addTokens: ((nodes at: 6) at: 1) to: result documentStarts.
	result addNodes: ((nodes at: 6) at: 2) to: result documents.
	result addTokens: ((nodes at: 6) at: 3) to: result documentEnds.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfile5: nodes [
	| result |
	result := YAMLFileNode new.
	result addToken: (nodes at: 2) to: result documentStarts.
	result addNode: (nodes at: 4) to: result documents.
	result addTokens: ((nodes at: 5) at: 1) to: result documentStarts.
	result addNodes: ((nodes at: 5) at: 2) to: result documents.
	result addTokens: ((nodes at: 5) at: 3) to: result documentEnds.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfile6: nodes [
	| result |
	result := YAMLFileNode new.
	result addToken: (nodes at: 2) to: result documentStarts.
	result addNode: (nodes at: 4) to: result documents.
	result addToken: (nodes at: 5) to: result documentEnds.
	result addTokens: ((nodes at: 7) at: 1) to: result documentStarts.
	result addNodes: ((nodes at: 7) at: 2) to: result documents.
	result addTokens: ((nodes at: 7) at: 3) to: result documentEnds.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist1: nodes [
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
YAMLParser >> reduceActionForflowlist2: nodes [
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
	result addNode: (nodes at: 3) to: result mappings.
	result addTokens: ((nodes at: 4) at: 1) to: result commas.
	result addNodes: ((nodes at: 4) at: 2) to: result mappings.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist2: nodes [
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
	result alias: (nodes at: 2).
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
YAMLParser >> reduceActionForlistitem1: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result value: (nodes at: 2).
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
YAMLParser >> reduceActionFormapping2: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping4: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping5: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping6: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
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
YAMLParser >> reduceActionFormultiline_string3: nodes [
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
	result addToken: (nodes at: 2) to: result parts.
	result addToken: (nodes at: 3) to: result parts.
	result addTokens: (nodes at: 4) to: result parts.
	result addToken: (nodes at: 6) to: result parts.
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
