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
#[ 0 126 0 249] 
#[ 0 130 1 1] 
#[ 0 6 1 37] 
#[ 0 162 0 217] 
#[ 0 158 0 162] 
#[ 0 41 0 170] 
#[ 0 170 1 89] 
#[ 0 202 1 185] 
#[ 0 185 0 202] 
#[ 0 250 2 53] 
#[ 1 130 2 161]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2023-03-23T14:30:24.951416-05:00'
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
        flowlist 'value'
        ) {{ListItem}}
 | <MINUS> 'minus' <ALIAS> 'alias' {{ListItem}}
 | <MINUS> 'minus' <NEWLINE>  {{ListItem}} #null value
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
 ;

/*
 * flow rules
 */

flowlist
 : PushFlow <OPEN_BRACK> 'leftBracket' value 'item' (<COMMA> 'comma' value  'item')* PopFlow <CLOSE_BRACK> 'rightBracket' {{FlowList}}
 ;
PopFlow
	: [scanner opened: scanner opened - 1. self popScope. nil]
	;
PushFlow
	: [scanner opened: scanner opened + 1. self pushScope: #FLOW. nil]
	;

flowmappinglist
 : PushFlow <OPEN_BRACE> 'leftBrace' mapping 'mapping' (<COMMA> 'comma' mapping 'mapping')* PopFlow <CLOSE_BRACE> 'rightBrace' {{FlowMappingList}}
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

{ #category : #generated }
YAMLParser class >> reduceTable [
^#(
	#(35 0 #nil 6884353 false) 
	#(72 0 #reduceActionForPushFlow1: 9361409 true) 
	#(59 0 #reduceActionForPushLiteralString1: 8316929 true) 
	#(65 0 #reduceActionForPushDoubleQuoteScope1: 8723457 true) 
	#(77 1 #liftFirstValue: 9817089 false) 
	#(77 1 #liftFirstValue: 9817090 false) 
	#(77 1 #liftFirstValue: 9817091 false) 
	#(77 1 #liftFirstValue: 9817092 false) 
	#(76 1 #reduceActionFornumber2: 9639938 false) 
	#(76 1 #reduceActionFornumber2: 9639939 false) 
	#(49 1 #reduceActionForvalue_scalar2: 7917570 false) 
	#(37 0 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE______1: 7011329 false) 
	#(38 1 #liftFirstValue: 7159809 false) 
	#(41 1 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____1: 7241729 false) 
	#(39 1 #reduceActionForlist1: 7233537 false) 
	#(38 1 #liftFirstValue: 7159810 false) 
	#(46 1 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____1: 7655425 false) 
	#(44 1 #reduceActionFormappinglist1: 7640065 false) 
	#(38 1 #liftFirstValue: 7159813 false) 
	#(48 1 #liftFirstValue: 7743489 false) 
	#(48 1 #liftFirstValue: 7743491 false) 
	#(48 1 #liftFirstValue: 7743492 false) 
	#(48 1 #liftFirstValue: 7743493 false) 
	#(48 1 #liftFirstValue: 7743494 false) 
	#(38 1 #liftFirstValue: 7159811 false) 
	#(38 1 #liftFirstValue: 7159812 false) 
	#(49 1 #liftFirstValue: 7917569 false) 
	#(76 1 #reduceActionFornumber2: 9639937 false) 
	#(35 2 #liftFirstValue: 6884354 false) 
	#(47 1 #liftFirstValue: 7719937 false) 
	#(40 2 #liftSecondValue: 7241729 false) 
	#(45 2 #liftSecondValue: 7655425 false) 
	#(41 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 7241730 false) 
	#(46 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 7655426 false) 
	#(57 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8228865 false) 
	#(42 2 #reduceActionForlistitem9: 7292937 false) 
	#(42 2 #reduceActionForlistitem1: 7292929 false) 
	#(42 2 #reduceActionForlistitem1: 7292932 false) 
	#(42 2 #reduceActionForlistitem10: 7292938 false) 
	#(43 1 #liftFirstValue: 7375873 false) 
	#(40 3 #liftSecondValue: 7241730 false) 
	#(67 2 #reduceActionFormapping4: 8830980 false) 
	#(45 3 #liftSecondValue: 7655426 false) 
	#(34 4 #reduceActionForfile1: 6876161 false) 
	#(37 2 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE______2: 7011330 false) 
	#(66 0 #reduceActionForPopScope1: 8793089 true) 
	#(63 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8626177 false) 
	#(70 0 #reduceActionFor__COMMA___comma__value___item___1: 9200641 false) 
	#(75 0 #reduceActionFor__COMMA___comma__value___item___1: 9517057 false) 
	#(54 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8065025 false) 
	#(51 1 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8041474 false) 
	#(52 1 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string__1: 8041473 false) 
	#(42 3 #reduceActionForlistitem5: 7292933 false) 
	#(42 3 #reduceActionForlistitem5: 7292936 false) 
	#(43 2 #liftFirstValue: 7375874 false) 
	#(67 3 #reduceActionFormapping5: 8830981 false) 
	#(67 3 #reduceActionFormapping5: 8830979 false) 
	#(57 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8228866 false) 
	#(58 1 #liftFirstValue: 8229889 false) 
	#(71 0 #reduceActionForPopFlow1: 9288705 true) 
	#(34 5 #reduceActionForfile3: 6876163 false) 
	#(51 2 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string_1: 8041473 false) 
	#(52 2 #reduceActionFor__value_scalar__value____NEWLINE__value_scalar__value______multiline_string__2: 8041474 false) 
	#(50 4 #reduceActionFormultiline_string1: 7979009 false) 
	#(34 6 #reduceActionForfile2: 6876162 false) 
	#(50 5 #reduceActionFormultiline_string3: 7979011 false) 
	#(56 2 #liftSecondValue: 8228865 false) 
	#(58 2 #liftFirstValue: 8229890 false) 
	#(55 5 #reduceActionForstring_literal1: 8166401 false) 
	#(60 5 #reduceActionForstring_literal1: 8377345 false) 
	#(64 1 #liftFirstValue: 8627201 false) 
	#(63 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8626178 false) 
	#(70 2 #reduceActionFor__COMMA___comma__value___item___2: 9200642 false) 
	#(75 2 #reduceActionFor__COMMA___comma__value___item___2: 9517058 false) 
	#(34 6 #reduceActionForfile5: 6876165 false) 
	#(54 2 #reduceActionFor__NEWLINE___listitem__item___NEWLINE____2: 8065026 false) 
	#(48 5 #reduceActionForvalue2: 7743490 false) 
	#(50 5 #reduceActionFormultiline_string1: 7979010 false) 
	#(42 5 #reduceActionForlistitem2: 7292930 false) 
	#(42 5 #reduceActionForlistitem2: 7292931 false) 
	#(36 4 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE_____1: 7011329 false) 
	#(50 6 #reduceActionFormultiline_string3: 7979012 false) 
	#(62 2 #liftSecondValue: 8626177 false) 
	#(64 2 #liftFirstValue: 8627202 false) 
	#(61 6 #reduceActionForstring_double_quoted1: 8538113 false) 
	#(69 2 #reduceActionFor__COMMA___comma__value___item__1: 9200641 false) 
	#(68 6 #reduceActionForflowlist1: 9138177 false) 
	#(74 2 #reduceActionFor__COMMA___comma__value___item__1: 9517057 false) 
	#(73 6 #reduceActionForflowmappinglist1: 9444353 false) 
	#(34 7 #reduceActionForfile4: 6876164 false) 
	#(53 2 #liftSecondValue: 8065025 false) 
	#(42 6 #reduceActionForlistitem6: 7292934 false) 
	#(42 6 #reduceActionForlistitem6: 7292935 false) 
	#(67 6 #reduceActionFormapping2: 8830978 false) 
	#(67 6 #reduceActionFormapping2: 8830977 false) 
	#(36 5 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE_____2: 7011330 false) 
	#(34 8 #reduceActionForfile6: 6876166 false) 
	#(36 6 #reduceActionFor__NEWLINE_____DOCUMENTSTART___documentStart___NEWLINE___document__document____DOCUMENTEND___documentEnd___NEWLINE_____2: 7011331 false)
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
	^ #('<newline>' '<DECIMAL_INTEGER>' '<OCT_INTEGER>' '<HEX_INTEGER>' '<BIN_INTEGER>' '<FLOAT_NUMBER>' '<IMAG_NUMBER>' '<MINUS>' '<DOCUMENTSTART1>' '<DOCUMENTEND1>' '<COMMA>' '<COLON>' '<OPEN_BRACK>' '<CLOSE_BRACK>' '<OPEN_BRACE>' '<CLOSE_BRACE>' '<LITERAL_STR_IND>' '<FOLD_STR_IND>' '<DOUBLE_QUOTE>' '<ANCHOR>' '<ALIAS>' '<STRING_MY>' '<SKIP1>' '<SPACES>' '<comment>' '<STRING_MY_2>' '<SKIP2>' '<newline_str_literal>' '<STRING_MY_3>' '<STRING_MY_4>' '<NEWLINE_STR_QUOTE>' '<DOUBLE_QUOTE2>' 'B e g i n' 'file' '<NEWLINE>*' '(<NEWLINE>* (<DOCUMENTSTART> ''documentStart'' <NEWLINE>) document ''document'' (<DOCUMENTEND> ''documentEnd'' <NEWLINE>?)?)' '(<NEWLINE>* (<DOCUMENTSTART> ''documentStart'' <NEWLINE>) document ''document'' (<DOCUMENTEND> ''documentEnd'' <NEWLINE>?)?)*' 'document' 'list' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)+' 'listitem' '<NEWLINE>+' 'mappinglist' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)' '(<NEWLINE>* mapping ''mapping'' <NEWLINE>?)+' 'key' 'value' 'value_scalar' 'multiline_string' '( value_scalar ''value'' (<NEWLINE> value_scalar ''value'')* | multiline_string)' '( value_scalar ''value'' (<NEWLINE> value_scalar ''value'')* | multiline_string)+' '(<NEWLINE> value_scalar ''value'')' '(<NEWLINE> value_scalar ''value'')*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' 'PushLiteralString' 'string_folded' 'string_double_quoted' '(<NEWLINE_STR_QUOTE>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_QUOTE>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_QUOTE>+' 'PushDoubleQuoteScope' 'PopScope' 'mapping' 'flowlist' '(<COMMA> ''comma'' value  ''item'')' '(<COMMA> ''comma'' value  ''item'')*' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' mapping ''mapping'')' '(<COMMA> ''comma'' mapping ''mapping'')*' 'number' 'integer' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
]

{ #category : #generated }
YAMLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #YAMLFileNode #YAMLFileNode nil #OrderedCollection #OrderedCollection #YAMLParseNode #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLListItemNode #SmaCCToken #YAMLMappingListNode #YAMLMappingNode #OrderedCollection #SmaCCToken #YAMLParseNode #YAMLParseNode #YAMLMultilineStringNode #OrderedCollection #OrderedCollection #YAMLParseNode #OrderedCollection #YAMLStringLiteralNode #SmaCCToken #OrderedCollection #SmaCCToken #Object #YAMLStringLiteralNode #YAMLStringLiteralNode #SmaCCToken #OrderedCollection #SmaCCToken nil nil #YAMLMappingNode #YAMLFlowListNode #OrderedCollection #OrderedCollection nil nil #YAMLFlowMappingListNode #OrderedCollection #OrderedCollection #YAMLNumberNode #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
YAMLParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 22 0 9 0 34 0 13 0 35 0 6 0 80 0 6 0 83] 
#[0 0 0 0 85] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 6 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 7 0 22 0 45 0 35 0 49 0 38 0 49 0 39 0 57 0 40 0 61 0 41 0 49 0 44 0 69 0 45 0 73 0 46 0 49 0 48 0 81 0 49 0 49 0 50 0 49 0 55 0 93 0 59 0 49 0 60 0 49 0 61 0 105 0 65 0 49 0 68 0 113 0 72 0 49 0 73 0 81 0 76 0 125 0 77 0 129 0 80 0 11 0 83] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 0 137 0 8 0 149 0 22 0 145 0 42 0 149 0 47 0 153 0 67 0 157 0 83] 
#[1 0 161 0 37 0 165 0 79 0 50 0 80 0 50 0 83 0 50 0 85] 
#[0 0 54 0 79 0 80 0 83 0 85] 
#[0 0 58 0 8 0 78 0 79 0 80 0 83 0 85] 
#[1 0 6 0 8 0 169 0 35 0 173 0 40 0 62 0 78 0 62 0 79 0 62 0 80 0 15 0 83 0 62 0 85] 
#[0 0 66 0 79 0 80 0 83 0 85] 
#[0 0 70 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 0 6 0 22 0 177 0 35 0 181 0 45 0 74 0 78 0 74 0 79 0 74 0 80 0 19 0 83 0 74 0 85] 
#[0 0 78 0 79 0 80 0 83 0 85] 
#[1 0 82 0 8 0 82 0 11 0 82 0 14 0 82 0 16 0 82 0 22 0 82 0 78 0 82 0 79 0 82 0 80 0 23 0 83 0 82 0 85] 
#[0 0 86 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 90 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 0 189 0 17 0 193 0 18] 
#[0 0 94 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 98 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 197 0 19] 
#[0 0 102 0 79 0 80 0 83 0 85] 
#[1 0 201 0 13 0 205 0 15] 
#[0 0 106 0 79 0 80 0 83 0 85] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 6 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 7 0 22 0 45 0 35 0 209 0 38 0 209 0 39 0 57 0 40 0 61 0 41 0 209 0 44 0 69 0 45 0 73 0 46 0 209 0 48 0 81 0 49 0 209 0 50 0 209 0 55 0 93 0 59 0 209 0 60 0 209 0 61 0 105 0 65 0 209 0 68 0 113 0 72 0 209 0 73 0 81 0 76 0 125 0 77 0 27 0 83] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 5 0 118 0 6 0 118 0 7 0 118 0 8 0 118 0 13 0 118 0 15 0 118 0 17 0 118 0 18 0 118 0 19 0 118 0 22 0 118 0 80 0 217 0 82 0 118 0 83] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 10 0 13 0 14 0 17 0 14 0 18 0 18 0 19 0 221 0 20 0 225 0 21 0 41 0 22 0 229 0 43 0 233 0 48 0 81 0 49 0 233 0 50 0 233 0 55 0 93 0 59 0 233 0 60 0 233 0 61 0 105 0 65 0 237 0 68 0 241 0 72 0 81 0 76 0 125 0 77 0 245 0 83] 
#[0 0 122 0 12] 
#[1 0 126 0 8 0 126 0 78 0 126 0 79 0 126 0 80 0 31 0 83 0 126 0 85] 
#[0 0 253 0 12] 
#[1 0 130 0 22 0 130 0 78 0 130 0 79 0 130 0 80 0 35 0 83 0 130 0 85] 
#[0 0 118 0 8 0 22 0 80 0 83 0 85] 
#[1 1 5 0 35 1 9 0 36 0 6 0 80 0 6 0 83 0 6 0 85] 
#[0 1 13 0 83] 
#[1 0 137 0 8 0 145 0 42 0 157 0 83] 
#[0 0 134 0 8 0 78 0 79 0 80 0 83 0 85] 
#[1 0 149 0 22 0 149 0 47 0 153 0 67 0 157 0 83] 
#[0 0 138 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 1 17 0 82] 
#[1 1 21 0 57 0 142 0 81 0 142 0 84] 
#[1 1 25 0 57 0 142 0 81 0 142 0 84] 
#[0 1 29 0 22] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 14 0 17 0 14 0 18 0 18 0 19 0 41 0 22 1 33 0 48 0 81 0 49 1 33 0 50 1 33 0 55 0 93 0 59 1 33 0 60 1 33 0 61 0 105 0 65 0 81 0 76 0 125 0 77 1 37 0 83] 
#[1 0 149 0 22 0 149 0 47 1 41 0 67] 
#[1 1 45 0 37 1 49 0 79 0 50 0 80 0 50 0 83 0 50 0 85] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 6 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 7 0 22 0 45 0 35 1 53 0 38 1 53 0 39 0 57 0 40 0 61 0 41 1 53 0 44 0 69 0 45 0 73 0 46 1 53 0 48 0 81 0 49 1 53 0 50 1 53 0 55 0 93 0 59 1 53 0 60 1 53 0 61 0 105 0 65 1 53 0 68 0 113 0 72 1 53 0 73 0 81 0 76 0 125 0 77 0 217 0 82 0 39 0 83] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 57 0 49 1 61 0 50 1 65 0 51 1 69 0 52 1 57 0 76 0 125 0 77 1 73 0 83] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 10 0 13 0 14 0 17 0 14 0 18 0 18 0 19 0 41 0 22 1 77 0 43 1 81 0 48 0 81 0 49 1 81 0 50 1 81 0 55 0 93 0 59 1 81 0 60 1 81 0 61 0 105 0 65 1 85 0 68 0 241 0 72 0 81 0 76 0 125 0 77 1 89 0 83] 
#[0 0 146 0 8 0 78 0 79 0 80 0 83 0 85] 
#[1 1 93 0 82 1 97 0 83] 
#[0 0 150 0 8 0 78 0 79 0 80 0 83 0 85] 
#[0 0 154 0 8 0 78 0 79 0 80 0 83 0 85] 
#[0 0 201 0 13] 
#[1 0 158 0 8 0 158 0 78 0 158 0 79 0 158 0 80 0 43 0 82 0 47 0 83 0 158 0 85] 
#[0 0 166 0 8 0 78 0 79 0 80 0 83 0 85] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 170 0 11 0 10 0 15 0 170 0 16 0 14 0 17 0 14 0 18 0 18 0 19 0 51 0 22 1 101 0 43 1 105 0 48 0 81 0 49 1 105 0 50 1 105 0 55 0 93 0 59 1 105 0 60 1 105 0 61 0 105 0 65 1 109 0 72 1 113 0 73 0 81 0 76 0 125 0 77 0 170 0 78 0 170 0 79 0 170 0 80 0 55 0 83 0 170 0 85] 
#[0 0 174 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 1 117 0 80 0 157 0 83 0 178 0 85] 
#[0 0 182 0 80 0 83 0 85] 
#[1 1 121 0 37 0 50 0 80 0 50 0 83 0 50 0 85] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 125 0 49 1 61 0 50 1 65 0 51 1 129 0 52 1 125 0 76 0 125 0 77 1 73 0 83] 
#[1 1 133 0 56 1 137 0 58 1 141 0 66 0 186 0 81 1 137 0 84] 
#[1 1 133 0 56 1 137 0 58 1 149 0 66 0 186 0 81 1 137 0 84] 
#[1 0 190 0 19 0 190 0 31 1 153 0 63] 
#[1 0 194 0 11 0 194 0 14 1 157 0 70] 
#[0 0 217 0 82] 
#[1 0 198 0 11 0 198 0 16 1 161 0 75] 
#[1 1 165 0 35 1 9 0 36 0 6 0 80 0 6 0 83 0 6 0 85] 
#[0 1 169 0 83] 
#[1 1 173 0 37 1 177 0 79 0 50 0 80 0 50 0 83 0 50 0 85] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 22 1 181 0 54 0 202 0 78 0 59 0 83] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 78 0 83] 
#[0 0 210 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 78 0 83] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 125 0 49 1 61 0 50 1 189 0 51 1 125 0 76 0 125 0 77 1 193 0 78 1 197 0 83] 
#[0 1 201 0 82] 
#[1 1 205 0 82 1 97 0 83] 
#[0 0 214 0 8 0 78 0 79 0 80 0 83 0 85] 
#[0 0 218 0 8 0 78 0 79 0 80 0 83 0 85] 
#[1 0 43 0 82 0 162 0 83] 
#[1 0 6 0 8 0 6 0 22 0 45 0 35 1 209 0 39 0 57 0 40 0 61 0 41 1 213 0 44 0 69 0 45 0 73 0 46 0 6 0 83] 
#[0 0 222 0 82 0 83] 
#[1 1 217 0 82 1 97 0 83] 
#[0 0 226 0 11 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 0 205 0 15] 
#[0 0 230 0 11 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 1 221 0 83] 
#[1 1 225 0 35 1 9 0 36 0 6 0 80 0 6 0 83 0 6 0 85] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 22 1 181 0 54 0 202 0 78 0 63 0 83] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 125 0 49 1 61 0 50 1 189 0 51 1 125 0 76 0 125 0 77 1 229 0 78 1 233 0 83] 
#[0 0 234 0 81 0 84] 
#[1 1 237 0 22 1 241 0 84] 
#[0 1 245 0 81] 
#[0 0 238 0 22 0 84] 
#[0 1 249 0 81] 
#[1 0 186 0 19 2 5 0 31 2 1 0 62 2 5 0 64 2 9 0 66] 
#[1 2 13 0 11 0 242 0 14 2 17 0 69 2 21 0 71] 
#[1 2 25 0 11 0 242 0 16 2 29 0 71 2 33 0 74] 
#[1 1 117 0 80 0 157 0 83 0 246 0 85] 
#[1 2 37 0 37 0 50 0 80 0 50 0 83 0 50 0 85] 
#[1 2 41 0 35 1 9 0 36 0 6 0 80 0 6 0 83 0 6 0 85] 
#[0 2 45 0 83] 
#[1 0 250 0 2 0 250 0 3 0 250 0 4 0 250 0 5 0 250 0 6 0 250 0 7 0 250 0 22 2 49 0 53 0 250 0 78 0 67 0 83] 
#[1 2 57 0 78 1 17 0 82] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 78 0 83] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 2 61 0 78 1 201 0 82] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 1 125 0 49 1 61 0 50 1 65 0 51 1 69 0 52 1 125 0 76 0 125 0 77 1 73 0 83] 
#[1 0 6 0 8 0 6 0 22 0 45 0 35 2 65 0 39 0 57 0 40 0 61 0 41 2 69 0 44 0 69 0 45 0 73 0 46 0 6 0 83] 
#[0 2 73 0 78] 
#[0 2 77 0 78] 
#[1 0 6 0 8 0 6 0 22 0 45 0 35 2 81 0 39 0 57 0 40 0 61 0 41 2 85 0 44 0 69 0 45 0 73 0 46 0 6 0 83] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 6 0 8 0 10 0 13 0 10 0 15 0 14 0 17 0 14 0 18 0 18 0 19 0 7 0 22 0 45 0 35 2 89 0 38 2 89 0 39 0 57 0 40 0 61 0 41 2 89 0 44 0 69 0 45 0 73 0 46 2 89 0 48 0 81 0 49 2 89 0 50 2 89 0 55 0 93 0 59 2 89 0 60 2 89 0 61 0 105 0 65 2 89 0 68 0 113 0 72 2 89 0 73 0 81 0 76 0 125 0 77 0 39 0 83] 
#[1 1 117 0 80 0 157 0 83 1 6 0 85] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 2 93 0 78 1 201 0 82] 
#[0 1 14 0 81 0 84] 
#[0 1 18 0 22 0 84] 
#[0 1 22 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 1 26 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 1 30 0 22 0 31] 
#[0 1 34 0 19 0 31] 
#[1 2 97 0 22 2 101 0 31] 
#[0 2 105 0 19] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 14 0 17 0 14 0 18 0 18 0 19 0 41 0 22 2 109 0 48 0 81 0 49 2 109 0 50 2 109 0 55 0 93 0 59 2 109 0 60 2 109 0 61 0 105 0 65 0 81 0 76 0 125 0 77 1 37 0 83] 
#[0 1 38 0 11 0 14] 
#[0 2 113 0 14] 
#[1 0 149 0 22 0 149 0 47 2 117 0 67] 
#[0 2 121 0 16] 
#[0 1 42 0 11 0 16] 
#[1 2 125 0 35 1 9 0 36 0 6 0 80 0 6 0 83 0 6 0 85] 
#[1 1 117 0 80 0 157 0 83 1 46 0 85] 
#[1 2 129 0 37 0 50 0 80 0 50 0 83 0 50 0 85] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 78 0 83] 
#[1 0 125 0 2 0 125 0 3 0 125 0 4 0 125 0 5 0 33 0 6 0 37 0 7 0 41 0 22 2 133 0 49 2 133 0 76 0 125 0 77] 
#[0 1 54 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 2 137 0 78] 
#[0 2 141 0 78] 
#[0 1 62 0 8 0 78 0 79 0 80 0 83 0 85] 
#[0 1 66 0 8 0 78 0 79 0 80 0 83 0 85] 
#[0 2 145 0 78] 
#[0 2 149 0 78] 
#[1 2 153 0 79 1 70 0 80 1 70 0 83 1 70 0 85] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 1 78 0 19 0 31] 
#[0 1 82 0 22 0 31] 
#[0 1 86 0 8 0 11 0 14 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 1 90 0 11 0 14] 
#[0 1 94 0 8 0 78 0 79 0 80 0 83 0 85] 
#[0 1 98 0 11 0 16] 
#[0 1 102 0 11 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 1 117 0 80 0 157 0 83 1 106 0 85] 
#[1 2 157 0 35 1 9 0 36 0 6 0 80 0 6 0 83 0 6 0 85] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 22 0 78 0 83] 
#[0 1 114 0 8 0 78 0 79 0 80 0 83 0 85] 
#[0 1 118 0 8 0 78 0 79 0 80 0 83 0 85] 
#[0 1 122 0 11 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[0 1 126 0 11 0 16 0 22 0 78 0 79 0 80 0 83 0 85] 
#[1 1 130 0 80 0 71 0 83 1 130 0 85] 
#[1 1 117 0 80 0 157 0 83 1 134 0 85] 
#[0 1 138 0 80 0 83 0 85]
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
YAMLParser >> reduceActionForlist1: nodes [
	| result |
	result := YAMLListNode new.
	result addNodes: (nodes at: 1) to: result items.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem10: nodes [
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
YAMLParser >> reduceActionForlistitem5: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result anchor: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem6: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result anchor: (nodes at: 2).
	result value: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem9: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result alias: (nodes at: 2).
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
