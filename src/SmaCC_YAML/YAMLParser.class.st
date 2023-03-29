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
#[ 0 14 0 57] 
#[ 0 6 0 30] 
#[ 0 6 0 93] 
#[ 0 6 0 97] 
#[ 0 6 0 101] 
#[ 0 6 0 105] 
#[ 0 6 0 109] 
#[ 0 6 0 217] 
#[ 0 14 0 42] 
#[ 0 42 0 225] 
#[ 0 14 0 42 0 229] 
#[ 0 30 0 78] 
#[ 0 78 0 93] 
#[ 0 78 0 97] 
#[ 0 78 0 233] 
#[ 0 78 0 101] 
#[ 0 78 0 105] 
#[ 0 78 0 109] 
#[ 0 78 1 21] 
#[ 0 90 1 25] 
#[ 0 6 0 57] 
#[ 0 102 1 77] 
#[ 0 89 0 114] 
#[ 0 166 1 113] 
#[ 0 6 1 153] 
#[ 0 14 0 186] 
#[ 0 186 1 173] 
#[ 0 178 1 201] 
#[ 0 6 0 78 0 93] 
#[ 0 6 0 78 0 97] 
#[ 0 6 0 78 1 217] 
#[ 0 78 1 225] 
#[ 0 218 1 161] 
#[ 0 214 0 218] 
#[ 0 65 0 230] 
#[ 0 69 0 230] 
#[ 0 73 0 230] 
#[ 0 77 0 230] 
#[ 0 81 0 230] 
#[ 0 85 0 230] 
#[ 0 78 0 230] 
#[ 0 30 0 230] 
#[ 0 34 0 230] 
#[ 0 93 0 230] 
#[ 0 97 0 230] 
#[ 0 230 0 233] 
#[ 0 101 0 230] 
#[ 0 105 0 230] 
#[ 0 109 0 230] 
#[ 0 230 2 17] 
#[ 0 242 0 246] 
#[ 0 57 1 14] 
#[ 0 6 1 18] 
#[ 0 30 1 18] 
#[ 0 93 1 18] 
#[ 0 97 1 18] 
#[ 0 233 1 18] 
#[ 1 18 1 29] 
#[ 1 18 1 33] 
#[ 1 18 1 37] 
#[ 1 18 1 41] 
#[ 0 6 0 57 1 18] 
#[ 0 6 2 93] 
#[ 1 34 1 181] 
#[ 0 218 2 137] 
#[ 0 89 1 62] 
#[ 1 66 2 169] 
#[ 0 218 1 90] 
#[ 0 6 0 93 0 230] 
#[ 0 6 0 97 0 230] 
#[ 0 6 0 230 1 153] 
#[ 0 246 1 118] 
#[ 0 222 1 25] 
#[ 0 6 2 165] 
#[ 1 25 1 162] 
#[ 1 113 1 162] 
#[ 1 178 3 109] 
#[ 0 6 1 182] 
#[ 0 6 1 186 3 141] 
#[ 0 6 0 233] 
#[ 1 226 4 53] 
#[ 1 234 4 53] 
#[ 0 6 4 165] 
#[ 0 65 2 74] 
#[ 0 69 2 74] 
#[ 0 73 2 74] 
#[ 0 77 2 74] 
#[ 0 81 2 74] 
#[ 0 85 2 74] 
#[ 2 74 4 237] 
#[ 2 90 4 245] 
#[ 1 214 2 62] 
#[ 1 218 2 66] 
#[ 0 130 1 38] 
#[ 0 134 1 42] 
#[ 0 138 1 46] 
#[ 0 142 1 50] 
#[ 0 146 1 54] 
#[ 0 150 1 58] 
#[ 2 46 2 142] 
#[ 2 54 2 146] 
#[ 0 178 1 158] 
#[ 2 126 2 186] 
#[ 2 134 2 190] 
#[ 2 178 2 206] 
#[ 2 182 2 210]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2023-03-28T10:55:35.613-05:00'
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

%id  <INDENT> <DEDENT> <STRING_MY> <DOCUMENTSTART> <DOCUMENTEND> <NEWLINE> <SPACES> <NEWLINE_STR_LITERAL> <FINISH_LITERAL_STRING> <COLON> <MINUS> <TAG>;
%prefix YAML;
%suffix Node;
%root Parse;
%hierarchy List (FlowList);
%hierarchy MappingList (FlowMappingList);
%hierarchy Value (List MappingList Number Alias String);


/*
 * lexer rules
 */

<newline>
 : ( \r? \n | \r ) <SPACES>?
 ;

#/ bytesliteral   ::=  bytesprefix(shortbytes | longbytes)
#/ bytesprefix    ::=  ""b"" | ""B"" | ""br"" | ""Br"" | ""bR"" | ""BR""
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
<GLOBAL_TAG>
	: \%TAG [^\r\n]*
	;

default FLOW <TAG>
	: \! [^\ \r\n\t\,]*
	;

<ALIAS>
 : <STAR> [^\s]+
 ;

<STRING_MY>
 : <STRING_MY_START> ([^\ \r\n\:] | (\: [^\ \r\n\t\#]) | (\ + [^\ \:\#\r\n]) )*
 ;

<STRING_MY_START>
 : [^\-\ \t\r\n\""\:\#\[\{\&\*\|\?\!] | (\: [^\ \r\n\t\#]) | (\- [^\ \t\r\n]) | (\? [^\ \r\n\t\#])
 ;

<SKIP1>
 : ( <SPACES> | <LINE_JOINING> )
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
#/ longbytes      ::=  ""'''"" longbytesitem* ""'''"" | '""""""' longbytesitem* '""""""'
#/ longbytesitem  ::=  longbyteschar | bytesescapeseq
#/ shortbyteschar ::=  <any ASCII character except ""\"" or newline or the quote>
#/ longbyteschar  ::=  <any ASCII character except ""\"">
#/ bytesescapeseq ::=  ""\"" <any ASCII character>
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
 : <GLOBAL_TAG> 'globalTag'? (<NEWLINE>* fileDocument)+ <NEWLINE>*  {{}}
 ;

document
 : list
 | mappinglist 
 | flowlist 
 | flowmappinglist 
 | value
 ;

list
 : <NEWLINE>? (listitem 'item' <NEWLINE>*)+ {{}}
 ;

listitem
 : <MINUS> 'minus' value 'value' {{ListItem}}
 | <MINUS> 'minus' TagsOrAnchors? ListItemValue {{ListItem}}
 | <MINUS> 'minus' TagAndAnchorWithIndent ListItemValue <DEDENT> {{ListItem}}
 | <MINUS> 'minus' alias 'value' {{ListItem}}
 | <MINUS> 'minus' TagsOrAnchors? <NEWLINE>  {{ListItem}} #null value
 ;
ListItemValue
	: <NEWLINE>+ <INDENT> value 'value' <NEWLINE>* <DEDENT> 
	| <NEWLINE>+ <INDENT> list 'value' <DEDENT> 
	| <NEWLINE>+ <INDENT> mappinglist 'value' <DEDENT> 
	| flowlist 'value' 
	| PushIndent listWithoutInitialNewline 'value' <NEWLINE>* <DEDENT> 
	| PushIndent mappingListWithoutInitialNewline 'value' <NEWLINE>* <DEDENT> 
	| flowmappinglist 'value'
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
 : (<NEWLINE>* mapping 'mapping')+ <NEWLINE>* {{MappingList}}
 ;

key
 : <STRING_MY> 'part' {{String}}
 | <doubleQuoteString> 'part' {{String}}
 | <singleQuoteString> 'part' {{String}}
 | alias
 | flowmappinglist
 | flowlist
 | ComplexKey
 ;
ComplexKey
	: <questionMark> 'questionMark' MappingValueWithTags {{}}
	;

value
 : TagsOrAnchors? value_scalar {{}}
 | <NEWLINE> <INDENT> alias 'value' <NEWLINE>+ <DEDENT> {value} /* changed to alias */
 | TagsOrAnchors? multiline_string {{}}
 | TagsOrAnchors? string_literal {{}}
 | TagsOrAnchors? string_folded {{}}
 | TagsOrAnchors? string_double_quoted {{}} 
 | TagsOrAnchors? string_single_quoted {{}}
 ;
string_single_quoted
	: <singleQuoteString> 'part' {{String}}
	;

value_scalar
 : number | <STRING_MY> 'part' {{String}}
 ;

multiline_string
 : (numberToken 'part' | <STRING_MY> 'part')? <NEWLINE> <INDENT> ( (numberToken 'part' | <STRING_MY> 'part') (<NEWLINE> (numberToken 'part' | <STRING_MY> 'part')?)* | multiline_string)+ <NEWLINE>* <DEDENT> {{String}}
 ;

string_literal
 : PushLiteralString <LITERAL_STR_IND> 'part' (<NEWLINE_STR_LITERAL>+ <STRING_MY> 'part')* <NEWLINE_STR_LITERAL>+? PopScope <FINISH_LITERAL_STRING> {{String}}
 ;
PushLiteralString
	: [self pushScope: #LITERAL_STRING]
	;

string_folded
 : PushLiteralString <FOLD_STR_IND> 'part' (<NEWLINE_STR_LITERAL>+ <STRING_MY> 'part')* <NEWLINE_STR_LITERAL>+? PopScope <FINISH_LITERAL_STRING> {{String}}
 ;

string_double_quoted
:	<doubleQuoteString> 'part' {{String}}
 ;
PopScope
	: [self popScope. nil]
	;

mapping
 : TagsOrAnchors? key 'key'? <NEWLINE>* <COLON> 'colon' MappingValueWithTags {{}}
 | TagsOrAnchors? ComplexKey 'key' {{}}
 ;
MappingValueWithTags
	: TagsOrAnchors? MappingValue
	| TagAndAnchorWithIndent MappingValue <DEDENT>
	| value 'value' 
	;
MappingValue
	: <NEWLINE>+ <INDENT> TagsOrAnchors? mappinglist 'value' <DEDENT>
	| <NEWLINE>+ <INDENT> TagsOrAnchors? list 'value' <DEDENT>
	| flowmappinglist 'value'
	| alias 'value'?
	| <NEWLINE>+ listWithoutInitialNewline 'value'
	| <NEWLINE>+ <INDENT> TagsOrAnchors <NEWLINE>+ <DEDENT> listWithoutInitialNewline 'value'
	| flowlist 'value'
	| <NEWLINE>+ <INDENT> TagsOrAnchors? (value 'value' | alias 'value') <NEWLINE>* <DEDENT>
	| PushIndent listWithoutInitialNewline 'value' <NEWLINE>* <DEDENT> 
	;
listWithoutInitialNewline
	: listitem 'item' (<NEWLINE>* listitem 'item' <NEWLINE>?)* {{List}}
	;

/*
 * flow rules
 */

flowlist
 : TagsOrAnchors? PushFlow <OPEN_BRACK> 'leftBracket' (flowListValue 'item' (<COMMA> 'comma' flowListValue  'item')*)? <COMMA> 'comma'? PopFlow <CLOSE_BRACK> 'rightBracket' {{FlowList}}
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
 : TagsOrAnchors? PushFlow <OPEN_BRACE> 'leftBrace' (flowMapping 'mapping' (<COMMA> 'comma' flowMapping 'mapping')*)? <COMMA> 'comma'? PopFlow <CLOSE_BRACE> 'rightBrace' {{FlowMappingList}}
 ;
flowMapping
	: mapping
	| TagsOrAnchors? key 'key' {{Mapping}}
	;

/*
 * parser rules
 */

number
 : numberToken 'value' {{}}
 ;
numberToken
	: integer
	| <FLOAT_NUMBER>
	| <IMAG_NUMBER>
	;

#/ integer        ::=  decimalinteger | octinteger | hexinteger | bininteger
integer
 : <DECIMAL_INTEGER>
 | <OCT_INTEGER>
 | <HEX_INTEGER>
 | <BIN_INTEGER>
 ;
 fileDocument
  : (<DOCUMENTSTART> 'documentStart' <NEWLINE>?)? (TagsOrAnchors <NEWLINE>+)* document 'document' <DOCUMENTEND> 'documentEnd'?
  | <DOCUMENTSTART> 'documentStart' <NEWLINE>? <DOCUMENTEND> 'documentEnd'?
  | <DOCUMENTEND> 'documentEnd'
  ;
TagOrAnchor
	: <ANCHOR> 'anchor'
	| <TAG> 'tag'
	;
TagsOrAnchors
	: TagOrAnchor
	| TagsOrAnchors <NEWLINE>* TagOrAnchor
	;
TagAndAnchorWithIndent
	: TagOrAnchor <NEWLINE> <INDENT> TagOrAnchor
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
	#(38 0 #nil 6138881 false) 
	#(37 1 #reduceActionFor__NEWLINE___fileDocument__1: 6137857 false) 
	#(92 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 10941441 false) 
	#(37 2 #reduceActionFor__NEWLINE___fileDocument__2: 6137858 false) 
	#(35 2 #reduceActionForfile1: 6103041 false) 
	#(36 2 #reduceActionFor__NEWLINE___fileDocument_1: 6137857 false) 
	#(82 0 #reduceActionForPushFlow1: 10216449 true) 
	#(67 0 #reduceActionForPushLiteralString1: 8614913 true) 
	#(90 1 #reduceActionForfileDocument11: 10876939 false) 
	#(90 1 #reduceActionForfileDocument7: 10876935 false) 
	#(38 2 #liftFirstValue: 6138882 false) 
	#(35 3 #reduceActionForfile2: 6103042 false) 
	#(89 1 #liftFirstValue: 10790913 false) 
	#(89 1 #liftFirstValue: 10790914 false) 
	#(89 1 #liftFirstValue: 10790915 false) 
	#(89 1 #liftFirstValue: 10790916 false) 
	#(88 1 #liftFirstValue: 10645506 false) 
	#(88 1 #liftFirstValue: 10645507 false) 
	#(50 0 #reduceActionForPushIndent1: 7187457 true) 
	#(93 1 #reduceActionForTagOrAnchor1: 11134977 false) 
	#(93 1 #reduceActionForTagOrAnchor2: 11134978 false) 
	#(57 1 #reduceActionForvalue_scalar2: 8129538 false) 
	#(69 1 #reduceActionForvalue_scalar2: 8853505 false) 
	#(56 1 #reduceActionForvalue_scalar2: 8061953 false) 
	#(90 2 #reduceActionForfileDocument1: 10876929 false) 
	#(39 1 #liftFirstValue: 6187009 false) 
	#(42 1 #reduceActionFor_listitem__item___NEWLINE____1: 6291457 false) 
	#(40 1 #reduceActionForlist1: 6272001 false) 
	#(52 1 #reduceActionFor_listitem__item___NEWLINE____1: 7391233 false) 
	#(39 1 #liftFirstValue: 6187010 false) 
	#(39 1 #liftFirstValue: 6187013 false) 
	#(55 1 #reduceActionForvalue12: 7711756 false) 
	#(55 1 #reduceActionForvalue12: 7711745 false) 
	#(55 1 #reduceActionForvalue12: 7711748 false) 
	#(55 1 #reduceActionForvalue12: 7711750 false) 
	#(55 1 #reduceActionForvalue12: 7711752 false) 
	#(55 1 #reduceActionForvalue12: 7711754 false) 
	#(39 1 #liftFirstValue: 6187011 false) 
	#(39 1 #liftFirstValue: 6187012 false) 
	#(57 1 #liftFirstValue: 8129537 false) 
	#(87 1 #reduceActionFornumber1: 10606593 false) 
	#(88 1 #liftFirstValue: 10645505 false) 
	#(92 2 #reduceActionFor_TagsOrAnchors__NEWLINE____2: 10941442 false) 
	#(94 1 #reduceActionForTagsOrAnchors1: 11187201 false) 
	#(90 2 #reduceActionForfileDocument8: 10876936 false) 
	#(90 2 #reduceActionForfileDocument7: 10876937 false) 
	#(46 1 #reduceActionForalias1: 7035905 false) 
	#(43 2 #reduceActionForlistitem2: 6331394 false) 
	#(43 2 #reduceActionForlistitem2: 6331397 false) 
	#(43 2 #reduceActionForlistitem2: 6331393 false) 
	#(44 1 #liftFirstValue: 6653956 false) 
	#(44 1 #liftFirstValue: 6653959 false) 
	#(43 2 #reduceActionForlistitem6: 6331398 false) 
	#(45 1 #liftFirstValue: 6671361 false) 
	#(53 1 #reduceActionForvalue_scalar2: 7455745 false) 
	#(53 1 #reduceActionForvalue_scalar2: 7455746 false) 
	#(73 0 #reduceActionForMappingValue6: 9221126 false) 
	#(53 1 #reduceActionForvalue_scalar2: 7455747 false) 
	#(53 1 #liftFirstValue: 7455748 false) 
	#(71 1 #reduceActionFormapping5: 8956933 false) 
	#(53 1 #liftFirstValue: 7455751 false) 
	#(48 2 #liftSecondValue: 7123969 false) 
	#(53 1 #liftFirstValue: 7455750 false) 
	#(53 1 #liftFirstValue: 7455749 false) 
	#(90 3 #reduceActionForfileDocument2: 10876930 false) 
	#(42 2 #reduceActionFor_listitem__item___NEWLINE____2: 6291458 false) 
	#(41 2 #liftFirstValue: 6291457 false) 
	#(51 2 #reduceActionFormappinglist1: 7375873 false) 
	#(52 2 #reduceActionFor_listitem__item___NEWLINE____2: 7391234 false) 
	#(65 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8496129 false) 
	#(81 0 #reduceActionForPopFlow1: 10143745 true) 
	#(91 2 #reduceActionForvalue12: 10941441 false) 
	#(55 2 #reduceActionForvalue13: 7711757 false) 
	#(55 2 #reduceActionForvalue13: 7711746 false) 
	#(55 2 #reduceActionForvalue13: 7711749 false) 
	#(55 2 #reduceActionForvalue13: 7711751 false) 
	#(55 2 #reduceActionForvalue13: 7711753 false) 
	#(55 2 #reduceActionForvalue13: 7711755 false) 
	#(40 2 #reduceActionForlist2: 6272002 false) 
	#(90 3 #reduceActionForfileDocument3: 10876931 false) 
	#(90 3 #reduceActionForfileDocument10: 10876938 false) 
	#(45 2 #liftFirstValue: 6671362 false) 
	#(76 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 9793537 false) 
	#(49 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 7123969 false) 
	#(43 3 #reduceActionForlistitem3: 6331395 false) 
	#(43 3 #reduceActionForlistitem7: 6331399 false) 
	#(73 1 #reduceActionForMappingValue7: 9221127 false) 
	#(72 1 #reduceActionForMappingValue7: 9093124 false) 
	#(54 2 #reduceActionForComplexKey1: 7635969 false) 
	#(72 1 #reduceActionForvalue12: 9093121 false) 
	#(73 1 #reduceActionForMappingValue7: 9221130 false) 
	#(73 1 #reduceActionForMappingValue7: 9221125 false) 
	#(71 2 #reduceActionFormapping6: 8956934 false) 
	#(70 0 #reduceActionForPopScope1: 8919041 true) 
	#(80 1 #liftFirstValue: 10074113 false) 
	#(80 1 #liftFirstValue: 10074116 false) 
	#(80 1 #liftFirstValue: 10074114 false) 
	#(79 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 9958401 false) 
	#(80 1 #liftFirstValue: 10074115 false) 
	#(86 1 #reduceActionFormapping5: 10513410 false) 
	#(86 1 #liftFirstValue: 10513409 false) 
	#(85 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 10392577 false) 
	#(94 3 #reduceActionForTagsOrAnchors2: 11187202 false) 
	#(62 0 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8318977 false) 
	#(59 1 #reduceActionFor__NEWLINE_STR_LITERAL____STRING_MY___part___1: 8273923 false) 
	#(60 1 #reduceActionForvalue12: 8273921 false) 
	#(90 4 #reduceActionForfileDocument4: 10876932 false) 
	#(90 4 #reduceActionForfileDocument5: 10876933 false) 
	#(74 2 #reduceActionForlistWithoutInitialNewline1: 9747457 false) 
	#(47 2 #reduceActionFormappingListWithoutInitialNewline1: 7068673 false) 
	#(43 4 #reduceActionForlistitem3: 6331396 false) 
	#(73 2 #reduceActionForMappingValue8: 9221128 false) 
	#(72 2 #reduceActionForMappingValueWithTags2: 9093122 false) 
	#(71 3 #reduceActionFormapping1: 8956929 false) 
	#(65 2 #reduceActionFor_listitem__item___NEWLINE____2: 8496130 false) 
	#(66 1 #liftFirstValue: 8497153 false) 
	#(77 4 #reduceActionForflowlist1: 9871361 false) 
	#(83 4 #reduceActionForflowmappinglist1: 10299393 false) 
	#(86 2 #reduceActionFormapping6: 10513411 false) 
	#(59 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE___numberToken__part_____STRING_MY___part________multiline_string_2: 8273922 false) 
	#(60 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE___numberToken__part_____STRING_MY___part________multiline_string__2: 8273922 false) 
	#(59 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE___numberToken__part_____STRING_MY___part________multiline_string_2: 8273921 false) 
	#(90 5 #reduceActionForfileDocument6: 10876934 false) 
	#(44 4 #reduceActionForListItemValue2: 6653954 false) 
	#(44 4 #reduceActionForListItemValue2: 6653955 false) 
	#(76 2 #reduceActionFor_listitem__item___NEWLINE____2: 9793538 false) 
	#(44 4 #liftSecondValue: 6653958 false) 
	#(49 2 #reduceActionFor_listitem__item___NEWLINE____2: 7123970 false) 
	#(47 3 #reduceActionFormappingListWithoutInitialNewline1: 7068674 false) 
	#(44 4 #liftSecondValue: 6653957 false) 
	#(95 4 #reduceActionForTagAndAnchorWithIndent1: 11261953 false) 
	#(72 3 #reduceActionForMappingValueWithTags2: 9093123 false) 
	#(71 4 #reduceActionFormapping2: 8956930 false) 
	#(71 4 #reduceActionFormapping3: 8956931 false) 
	#(64 2 #liftSecondValue: 8496129 false) 
	#(66 2 #liftFirstValue: 8497154 false) 
	#(63 5 #reduceActionForstring_literal1: 8433665 false) 
	#(68 5 #reduceActionForstring_literal1: 8675329 false) 
	#(77 5 #reduceActionForflowlist2: 9871362 false) 
	#(79 2 #reduceActionFor__COMMA___comma__flowListValue___item___2: 9958402 false) 
	#(83 5 #reduceActionForflowmappinglist2: 10299394 false) 
	#(85 2 #reduceActionFor__COMMA___comma__flowListValue___item___2: 10392578 false) 
	#(77 5 #reduceActionForflowlist5: 9871365 false) 
	#(83 5 #reduceActionForflowmappinglist5: 10299397 false) 
	#(62 2 #reduceActionFor_listitem__item___NEWLINE____2: 8318978 false) 
	#(61 1 #nil 8318977 false) 
	#(55 5 #reduceActionForListItemValue2: 7711747 false) 
	#(58 5 #reduceActionFormultiline_string1: 8189953 false) 
	#(44 5 #reduceActionForListItemValue2: 6653953 false) 
	#(75 2 #liftSecondValue: 9793537 false) 
	#(58 6 #reduceActionFormultiline_string3: 8189955 false) 
	#(73 4 #reduceActionForMappingValue3: 9221123 false) 
	#(73 4 #reduceActionForMappingValue3: 9221121 false) 
	#(73 4 #reduceActionForMappingValue8: 9221135 false) 
	#(71 5 #reduceActionFormapping4: 8956932 false) 
	#(63 6 #reduceActionForstring_literal1: 8433666 false) 
	#(68 6 #reduceActionForstring_literal1: 8675330 false) 
	#(78 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 9958401 false) 
	#(77 6 #reduceActionForflowlist3: 9871363 false) 
	#(84 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 10392577 false) 
	#(83 6 #reduceActionForflowmappinglist3: 10299395 false) 
	#(58 6 #reduceActionFormultiline_string3: 8189954 false) 
	#(77 6 #reduceActionForflowlist6: 9871366 false) 
	#(83 6 #reduceActionForflowmappinglist6: 10299398 false) 
	#(61 2 #liftSecondValue: 8318979 false) 
	#(61 2 #liftSecondValue: 8318978 false) 
	#(75 3 #liftSecondValue: 9793538 false) 
	#(73 5 #reduceActionForMappingValue3: 9221132 false) 
	#(73 5 #reduceActionForMappingValue3: 9221131 false) 
	#(73 5 #reduceActionForMappingValue4: 9221124 false) 
	#(73 5 #reduceActionForMappingValue4: 9221122 false) 
	#(77 7 #reduceActionForflowlist4: 9871364 false) 
	#(83 7 #reduceActionForflowmappinglist4: 10299396 false) 
	#(77 7 #reduceActionForflowlist7: 9871367 false) 
	#(83 7 #reduceActionForflowmappinglist7: 10299399 false) 
	#(73 6 #reduceActionForMappingValue9: 9221129 false) 
	#(73 6 #reduceActionForMappingValue4: 9221134 false) 
	#(73 6 #reduceActionForMappingValue4: 9221133 false) 
	#(77 8 #reduceActionForflowlist8: 9871368 false) 
	#(83 8 #reduceActionForflowmappinglist8: 10299400 false)
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
	^ #('<newline>' '<DECIMAL_INTEGER>' '<OCT_INTEGER>' '<HEX_INTEGER>' '<BIN_INTEGER>' '<FLOAT_NUMBER>' '<IMAG_NUMBER>' '<MINUS>' '<DOCUMENTSTART1>' '<DOCUMENTEND1>' '<COMMA>' '<COLON>' '<OPEN_BRACK>' '<CLOSE_BRACK>' '<OPEN_BRACE>' '<CLOSE_BRACE>' '<LITERAL_STR_IND>' '<FOLD_STR_IND>' '<ANCHOR>' '<GLOBAL_TAG>' '<TAG>' '<ALIAS>' '<STRING_MY>' '<SKIP1>' '<SPACES>' '<comment>' '<STRING_MY_2>' '<SKIP2>' '<newline_str_literal>' '<STRING_MY_3>' '<doubleQuoteString>' '<questionMark>' '<singleQuoteString>' 'B e g i n' 'file' '(<NEWLINE>* fileDocument)' '(<NEWLINE>* fileDocument)+' '<NEWLINE>*' 'document' 'list' '(listitem ''item'' <NEWLINE>*)' '(listitem ''item'' <NEWLINE>*)+' 'listitem' 'ListItemValue' '<NEWLINE>+' 'alias' 'mappingListWithoutInitialNewline' '(<NEWLINE>* mapping ''mapping'')' '(<NEWLINE>* mapping ''mapping'')*' 'PushIndent' 'mappinglist' '(<NEWLINE>* mapping ''mapping'')+' 'key' 'ComplexKey' 'value' 'string_single_quoted' 'value_scalar' 'multiline_string' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE> (numberToken ''part'' | <STRING_MY> ''part'')?)* | multiline_string)' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE> (numberToken ''part'' | <STRING_MY> ''part'')?)* | multiline_string)+' '(<NEWLINE> (numberToken ''part'' | <STRING_MY> ''part'')?)' '(<NEWLINE> (numberToken ''part'' | <STRING_MY> ''part'')?)*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' 'PushLiteralString' 'string_folded' 'string_double_quoted' 'PopScope' 'mapping' 'MappingValueWithTags' 'MappingValue' 'listWithoutInitialNewline' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)' '(<NEWLINE>* listitem ''item'' <NEWLINE>?)*' 'flowlist' '(<COMMA> ''comma'' flowListValue  ''item'')' '(<COMMA> ''comma'' flowListValue  ''item'')*' 'flowListValue' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' flowMapping ''mapping'')' '(<COMMA> ''comma'' flowMapping ''mapping'')*' 'flowMapping' 'number' 'numberToken' 'integer' 'fileDocument' '(TagsOrAnchors <NEWLINE>+)' '(TagsOrAnchors <NEWLINE>+)*' 'TagOrAnchor' 'TagsOrAnchors' 'TagAndAnchorWithIndent' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
]

{ #category : #generated }
YAMLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #YAMLFileNode #YAMLFileNode #OrderedCollection #OrderedCollection nil #YAMLValueNode #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLListItemNode #YAMLValueNode #SmaCCToken #YAMLAliasNode #YAMLMappingListNode #YAMLMappingNode #OrderedCollection nil #YAMLMappingListNode #OrderedCollection #YAMLParseNode #YAMLComplexKeyNode #YAMLValueNode #YAMLStringNode #YAMLValueNode #YAMLStringNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #YAMLStringNode #SmaCCToken #OrderedCollection #SmaCCToken #Object #YAMLStringNode #YAMLStringNode nil #YAMLMappingNode #OrderedCollection #OrderedCollection #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLFlowListNode #OrderedCollection #OrderedCollection #YAMLParseNode nil nil #YAMLFlowMappingListNode #OrderedCollection #OrderedCollection #YAMLMappingNode #YAMLNumberNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
YAMLParser class >> transitionTable [
^#(
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 9 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 31 0 6 0 32 0 6 0 33 0 13 0 35 0 17 0 36 0 21 0 37 0 25 0 38 0 6 0 97 0 6 0 98 0 6 0 101] 
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 31 0 6 0 32 0 6 0 33 0 17 0 36 0 29 0 37 0 25 0 38 0 6 0 97 0 6 0 98 0 6 0 101] 
#[0 0 0 0 103] 
#[0 0 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 31 0 6 0 32 0 6 0 33 0 33 0 36 0 37 0 38 0 6 0 97 0 6 0 98 0 6 0 101 0 6 0 103] 
#[1 0 14 0 2 0 14 0 3 0 14 0 4 0 14 0 5 0 14 0 6 0 14 0 7 0 14 0 8 0 14 0 12 0 14 0 13 0 14 0 15 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 21 0 14 0 22 0 14 0 23 0 14 0 31 0 14 0 32 0 14 0 33 0 41 0 90 0 45 0 92 0 49 0 97 0 53 0 98 0 7 0 101] 
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 31 0 6 0 32 0 6 0 33 0 33 0 36 0 61 0 38 0 6 0 97 0 6 0 98 0 6 0 101 0 6 0 103] 
#[0 0 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 0 14 0 2 0 14 0 3 0 14 0 4 0 14 0 5 0 14 0 6 0 14 0 7 0 14 0 8 0 14 0 12 0 14 0 13 0 14 0 15 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 21 0 14 0 22 0 14 0 23 0 14 0 31 0 14 0 32 0 14 0 33 0 41 0 90 0 45 0 92 0 49 0 97 0 53 0 98 0 7 0 101 0 22 0 103] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 89 0 8 0 6 0 12 0 11 0 13 0 11 0 15 0 34 0 17 0 34 0 18 0 15 0 19 0 19 0 21 0 6 0 22 0 23 0 23 0 27 0 31 0 6 0 32 0 31 0 33 0 113 0 38 0 117 0 39 0 117 0 40 0 125 0 41 0 129 0 42 0 133 0 43 0 137 0 48 0 117 0 51 0 145 0 52 0 117 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 0 117 0 77 0 185 0 82 0 117 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 205 0 91 0 209 0 93 0 213 0 94 0 35 0 101] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 0 39 0 2 0 39 0 3 0 39 0 4 0 39 0 5 0 39 0 6 0 39 0 7 0 39 0 8 0 39 0 12 0 39 0 13 0 39 0 15 0 39 0 17 0 39 0 18 0 39 0 19 0 39 0 21 0 39 0 22 0 39 0 23 0 39 0 31 0 39 0 32 0 39 0 33 0 221 0 92 0 43 0 97 0 42 0 98 0 47 0 101 0 42 0 103] 
#[0 0 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 14 0 2 0 14 0 3 0 14 0 4 0 14 0 5 0 14 0 6 0 14 0 7 0 14 0 8 0 14 0 12 0 14 0 13 0 14 0 15 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 21 0 14 0 22 0 14 0 23 0 14 0 31 0 14 0 32 0 14 0 33 0 41 0 90 0 45 0 92 0 49 0 97 0 53 0 98 0 7 0 101 0 50 0 103] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 78 0 8 0 78 0 12 0 51 0 13 0 51 0 15 0 34 0 17 0 34 0 18 0 55 0 19 0 59 0 21 0 63 0 22 0 67 0 23 0 71 0 31 0 78 0 32 0 75 0 33 0 237 0 44 0 241 0 45 0 245 0 46 0 249 0 50 0 253 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 0 237 0 77 0 185 0 82 0 237 0 83 0 157 0 87 0 197 0 88 0 197 0 89 1 9 0 93 1 13 0 94 1 17 0 95 0 79 0 101] 
#[0 0 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 90 0 2 0 90 0 3 0 90 0 4 0 90 0 5 0 90 0 6 0 90 0 7 0 90 0 8 0 90 0 11 0 90 0 12 0 90 0 13 0 90 0 14 0 90 0 15 0 90 0 16 0 90 0 17 0 90 0 18 0 90 0 19 0 90 0 21 0 90 0 22 0 90 0 23 0 90 0 31 0 90 0 32 0 90 0 33 0 90 0 96 0 90 0 97 0 90 0 98 0 83 0 101 0 90 0 103] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 6 0 12 0 30 0 13 0 30 0 15 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 1 61 0 71 1 53 0 77 0 185 0 82 1 53 0 83 0 209 0 93 1 73 0 94 0 87 0 101] 
#[1 0 102 0 2 0 102 0 3 0 102 0 4 0 102 0 5 0 102 0 6 0 102 0 7 0 102 0 8 0 102 0 12 0 102 0 13 0 102 0 15 0 102 0 17 0 102 0 18 0 102 0 19 0 102 0 21 0 102 0 22 0 102 0 23 0 102 0 31 0 102 0 32 0 102 0 33 0 91 0 97 0 102 0 98 0 102 0 101 0 102 0 103] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 114 0 2 0 114 0 3 0 114 0 4 0 114 0 5 0 114 0 6 0 114 0 7 0 95 0 8 0 114 0 12 0 114 0 13 0 114 0 15 0 114 0 17 0 114 0 18 0 114 0 19 0 114 0 21 0 114 0 22 0 114 0 23 0 114 0 31 0 114 0 32 0 114 0 33 1 81 0 41 0 133 0 43 0 114 0 96 0 114 0 97 0 114 0 98 0 114 0 101 0 114 0 103] 
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 31 0 6 0 32 0 6 0 33 1 85 0 38 0 6 0 96 0 6 0 97 0 6 0 98 0 6 0 101 0 6 0 103] 
#[0 0 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 0 6 0 2 0 6 0 3 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 31 0 6 0 32 0 6 0 33 1 89 0 38 1 93 0 48 0 6 0 96 0 6 0 97 0 6 0 98 0 6 0 101 0 6 0 103] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[0 0 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 1 97 0 17 1 101 0 18] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 1 105 0 13 1 109 0 15] 
#[0 0 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 18 0 166 0 19 0 166 0 21 0 166 0 22 0 166 0 23 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 96 0 166 0 97 0 166 0 98 0 99 0 101 0 166 0 103] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 101] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 101] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 30 0 13 0 30 0 15 0 34 0 17 0 34 0 18 0 6 0 19 0 6 0 21 0 101 0 23 0 105 0 31 0 109 0 33 1 117 0 38 1 121 0 45 1 125 0 56 1 129 0 57 1 133 0 58 1 137 0 63 0 169 0 67 1 141 0 68 1 145 0 69 1 149 0 82 1 129 0 87 0 197 0 88 0 197 0 89 0 103 0 101] 
#[1 0 89 0 8 0 125 0 41 1 157 0 42 0 133 0 43 1 161 0 100] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 89 0 8 0 6 0 12 0 11 0 13 0 11 0 15 0 34 0 17 0 34 0 18 0 15 0 19 0 19 0 21 0 6 0 22 0 23 0 23 0 27 0 31 0 6 0 32 0 31 0 33 0 113 0 38 1 165 0 39 1 165 0 40 0 125 0 41 0 129 0 42 0 133 0 43 0 137 0 48 1 165 0 51 0 145 0 52 1 165 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 1 165 0 77 0 185 0 82 1 165 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 205 0 91 0 209 0 93 0 213 0 94 0 35 0 101] 
#[0 0 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 0 107 0 2 0 107 0 3 0 107 0 4 0 107 0 5 0 107 0 6 0 107 0 7 0 107 0 8 0 107 0 12 0 107 0 13 0 107 0 15 0 107 0 17 0 107 0 18 0 107 0 19 0 107 0 21 0 107 0 22 0 107 0 23 0 107 0 31 0 107 0 32 0 107 0 33 1 169 0 92 0 111 0 97 0 186 0 98 0 107 0 101 0 186 0 103] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 1 177 0 100 1 181 0 101] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 89 0 8 0 6 0 12 0 30 0 13 0 30 0 15 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 1 185 0 43 1 53 0 46 1 189 0 47 1 53 0 53 1 57 0 54 1 193 0 71 1 197 0 74 1 53 0 77 0 185 0 82 1 53 0 83 0 209 0 93 1 73 0 94 0 6 0 101] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 178 0 2 0 178 0 3 0 178 0 4 0 178 0 5 0 178 0 6 0 178 0 7 0 178 0 8 0 178 0 11 0 178 0 12 0 178 0 13 0 178 0 14 0 178 0 15 0 178 0 16 0 178 0 17 0 178 0 18 0 178 0 19 0 178 0 21 0 178 0 22 0 178 0 23 0 178 0 31 0 178 0 32 0 178 0 33 0 178 0 96 0 178 0 97 0 178 0 98 0 115 0 101 0 178 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 78 0 8 0 78 0 12 0 51 0 13 0 51 0 15 0 34 0 17 0 34 0 18 0 119 0 19 0 123 0 21 0 78 0 22 0 67 0 23 0 71 0 31 0 78 0 32 0 75 0 33 1 117 0 38 1 205 0 44 0 241 0 45 0 249 0 50 1 125 0 56 1 129 0 57 1 133 0 58 1 137 0 63 0 169 0 67 1 141 0 68 1 145 0 69 1 205 0 77 1 209 0 82 1 205 0 83 1 129 0 87 0 197 0 88 0 197 0 89 0 209 0 93 1 213 0 94 0 127 0 101] 
#[1 0 78 0 8 0 78 0 12 0 51 0 13 0 51 0 15 0 55 0 19 0 59 0 21 0 78 0 22 0 78 0 23 0 78 0 31 0 78 0 32 0 78 0 33 1 221 0 44 0 241 0 45 0 249 0 50 1 221 0 77 0 185 0 82 1 221 0 83 0 209 0 93 1 213 0 94 0 131 0 101] 
#[1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 21 0 214 0 22 0 214 0 23 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 96 0 214 0 97 0 214 0 98 0 135 0 100 0 139 0 101 0 214 0 103] 
#[0 1 229 0 100] 
#[0 0 222 0 11 0 12 0 16 0 101] 
#[0 0 226 0 11 0 12 0 16 0 101] 
#[1 0 143 0 2 0 147 0 3 0 151 0 4 0 155 0 5 0 159 0 6 0 163 0 7 0 167 0 8 0 230 0 11 0 230 0 12 0 171 0 13 0 230 0 14 0 171 0 15 0 230 0 16 0 175 0 17 0 175 0 18 0 179 0 19 0 183 0 21 0 187 0 22 0 191 0 23 0 195 0 31 0 230 0 32 0 199 0 33 1 233 0 45 1 237 0 46 1 241 0 50 1 245 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 1 249 0 72 1 253 0 73 2 1 0 77 0 185 0 82 2 5 0 83 0 157 0 87 0 197 0 88 0 197 0 89 1 9 0 93 2 9 0 94 2 13 0 95 0 230 0 96 0 230 0 97 0 230 0 98 0 203 0 101 0 230 0 103] 
#[0 0 234 0 11 0 12 0 16 0 101] 
#[1 2 21 0 12 0 57 0 101] 
#[0 0 238 0 11 0 12 0 16 0 101] 
#[1 0 6 0 12 2 25 0 38 0 6 0 101] 
#[1 0 242 0 2 0 242 0 3 0 242 0 4 0 242 0 5 0 242 0 6 0 242 0 7 0 242 0 8 0 207 0 11 0 207 0 12 0 242 0 13 0 242 0 14 0 242 0 15 0 207 0 16 0 242 0 17 0 242 0 18 0 242 0 19 0 242 0 21 0 242 0 22 0 242 0 23 0 242 0 31 0 242 0 32 0 242 0 33 0 242 0 96 0 242 0 97 0 242 0 98 0 207 0 101 0 242 0 103] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 0 254 0 11 0 12 0 16 0 101] 
#[0 1 2 0 11 0 12 0 16 0 101] 
#[1 0 6 0 12 0 30 0 13 0 30 0 15 0 15 0 19 0 19 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 2 29 0 38 2 33 0 46 2 33 0 53 2 37 0 54 2 33 0 77 1 209 0 82 2 33 0 83 0 209 0 93 1 213 0 94 0 6 0 101] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 1 14 0 2 1 14 0 3 1 14 0 4 1 14 0 5 1 14 0 6 1 14 0 7 1 14 0 8 1 14 0 12 1 14 0 13 1 14 0 15 1 14 0 17 1 14 0 18 1 14 0 19 1 14 0 21 1 14 0 22 1 14 0 23 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 96 1 14 0 97 1 14 0 98 0 211 0 101 1 14 0 103] 
#[1 1 18 0 2 1 18 0 3 1 18 0 4 1 18 0 5 1 18 0 6 1 18 0 7 1 18 0 8 0 215 0 12 0 219 0 13 0 219 0 15 1 18 0 17 1 18 0 18 0 223 0 19 0 227 0 21 0 231 0 22 0 235 0 23 0 239 0 31 0 243 0 32 0 247 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 1 61 0 71 1 53 0 77 0 185 0 82 1 53 0 83 0 209 0 93 1 73 0 94 1 18 0 96 1 18 0 97 1 18 0 98 0 251 0 101 1 18 0 103] 
#[0 1 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 2 41 0 65 1 26 0 99 1 26 0 102] 
#[1 2 45 0 65 1 26 0 99 1 26 0 102] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 2 49 0 11 0 6 0 12 0 30 0 13 1 30 0 14 0 30 0 15 0 34 0 17 0 34 0 18 0 93 0 19 0 97 0 21 0 233 0 22 2 53 0 23 2 57 0 31 1 37 0 32 2 61 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 2 77 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 2 77 0 71 2 73 0 77 2 77 0 80 2 81 0 81 0 185 0 82 2 85 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 209 0 93 2 89 0 94 0 255 0 101] 
#[1 2 97 0 11 0 6 0 12 0 30 0 13 0 30 0 15 1 30 0 16 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 2 101 0 46 2 101 0 53 1 57 0 54 2 113 0 71 2 101 0 77 2 109 0 81 0 185 0 82 2 101 0 83 2 113 0 86 0 209 0 93 2 117 0 94 0 6 0 101] 
#[0 2 121 0 100] 
#[1 0 93 0 19 0 97 0 21 2 125 0 93 0 57 0 101] 
#[1 1 34 0 2 1 34 0 3 1 34 0 4 1 34 0 5 1 34 0 6 1 34 0 7 1 34 0 8 1 34 0 12 1 34 0 13 1 34 0 15 1 34 0 17 1 34 0 18 1 34 0 19 1 34 0 21 1 34 0 22 1 34 0 23 1 34 0 31 1 34 0 32 1 34 0 33 1 3 0 101] 
#[0 1 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 2 129 0 13 2 133 0 15] 
#[1 0 218 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 218 0 6 0 218 0 7 0 218 0 8 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 17 0 218 0 18 0 218 0 19 0 218 0 21 0 218 0 22 0 218 0 23 0 218 0 31 0 218 0 32 0 218 0 33 1 7 0 100 0 218 0 101] 
#[1 1 62 0 2 1 62 0 3 1 62 0 4 1 62 0 5 1 62 0 6 1 62 0 7 1 11 0 8 1 62 0 12 1 62 0 13 1 62 0 15 1 62 0 17 1 62 0 18 1 62 0 19 1 62 0 21 1 62 0 22 1 62 0 23 1 62 0 31 1 62 0 32 1 62 0 33 1 81 0 41 0 133 0 43 1 62 0 96 1 62 0 97 1 62 0 98 1 62 0 101 1 62 0 103] 
#[1 2 161 0 2 2 161 0 3 2 161 0 4 2 161 0 5 2 161 0 6 2 161 0 7 0 233 0 22 2 141 0 23 2 145 0 46 2 149 0 58 2 153 0 59 2 157 0 60 2 161 0 88 2 161 0 89 2 165 0 101] 
#[1 1 66 0 2 1 66 0 3 1 66 0 4 1 66 0 5 1 66 0 6 1 66 0 7 1 66 0 8 1 66 0 12 1 66 0 13 1 66 0 15 1 66 0 17 1 66 0 18 1 66 0 19 1 66 0 21 1 66 0 22 1 66 0 23 1 66 0 31 1 66 0 32 1 66 0 33 1 15 0 97 1 66 0 98 1 66 0 101 1 66 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 89 0 8 0 6 0 12 0 11 0 13 0 11 0 15 0 34 0 17 0 34 0 18 0 15 0 19 0 19 0 21 0 6 0 22 0 23 0 23 0 27 0 31 0 6 0 32 0 31 0 33 0 113 0 38 2 173 0 39 2 173 0 40 0 125 0 41 0 129 0 42 0 133 0 43 0 137 0 48 2 173 0 51 0 145 0 52 2 173 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 2 173 0 77 0 185 0 82 2 173 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 205 0 91 0 209 0 93 0 213 0 94 0 35 0 101] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 89 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 34 0 17 0 34 0 18 0 15 0 19 0 19 0 21 0 6 0 22 0 23 0 23 0 27 0 31 0 6 0 32 0 31 0 33 0 113 0 38 2 177 0 40 0 125 0 41 0 129 0 42 0 133 0 43 0 137 0 48 2 181 0 51 0 145 0 52 2 185 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 0 157 0 87 0 197 0 88 0 197 0 89 0 209 0 93 2 189 0 94 0 35 0 101] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 100 0 101] 
#[1 1 78 0 2 1 78 0 3 1 78 0 4 1 78 0 5 1 78 0 6 1 78 0 7 1 78 0 8 1 78 0 11 1 78 0 12 1 78 0 13 1 78 0 14 1 78 0 15 1 78 0 16 1 78 0 17 1 78 0 18 1 78 0 19 1 78 0 21 1 78 0 22 1 78 0 23 1 78 0 31 1 78 0 32 1 78 0 33 2 193 0 76 1 78 0 96 1 78 0 97 1 78 0 98 1 78 0 101 1 78 0 103] 
#[1 2 197 0 38 0 6 0 96 0 6 0 101] 
#[1 1 82 0 12 1 82 0 13 1 82 0 15 1 82 0 19 1 82 0 21 1 82 0 22 1 82 0 23 1 82 0 31 1 82 0 32 1 82 0 33 2 201 0 49 1 82 0 96 1 82 0 101] 
#[1 2 205 0 38 0 6 0 96 0 6 0 101] 
#[0 2 209 0 100] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 2 213 0 13 2 217 0 15] 
#[1 0 30 0 13 0 30 0 15 0 6 0 19 0 6 0 21 1 117 0 38 1 149 0 82 0 6 0 101] 
#[1 1 90 0 2 1 90 0 3 1 90 0 4 1 90 0 5 1 90 0 6 1 90 0 7 1 90 0 8 1 90 0 11 1 90 0 12 1 90 0 13 1 90 0 14 1 90 0 15 1 90 0 16 1 90 0 17 1 90 0 18 1 90 0 19 1 90 0 21 1 90 0 22 1 90 0 23 1 90 0 31 1 90 0 32 1 90 0 33 1 90 0 96 1 90 0 97 1 90 0 98 1 7 0 100 1 19 0 101 1 90 0 103] 
#[0 2 221 0 96] 
#[0 0 218 0 8 0 96 0 100 0 101] 
#[1 2 161 0 2 2 161 0 3 2 161 0 4 2 161 0 5 2 161 0 6 2 161 0 7 2 141 0 23 2 149 0 58 2 153 0 59 2 225 0 60 2 161 0 88 2 161 0 89 2 165 0 101] 
#[1 0 89 0 8 1 185 0 43 2 229 0 74 2 233 0 100 1 181 0 101] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 89 0 8 1 185 0 43 2 237 0 74] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 143 0 2 0 147 0 3 0 151 0 4 0 155 0 5 0 159 0 6 0 163 0 7 0 167 0 8 0 230 0 11 0 230 0 12 0 171 0 13 0 230 0 14 0 171 0 15 0 230 0 16 0 175 0 17 0 175 0 18 1 23 0 19 1 27 0 21 0 187 0 22 0 191 0 23 0 195 0 31 0 230 0 32 0 199 0 33 1 117 0 38 1 233 0 45 1 237 0 46 1 241 0 50 1 125 0 56 1 129 0 57 1 133 0 58 1 137 0 63 0 169 0 67 1 141 0 68 1 145 0 69 2 241 0 73 2 1 0 77 1 209 0 82 2 5 0 83 1 129 0 87 0 197 0 88 0 197 0 89 0 209 0 93 1 213 0 94 0 230 0 96 0 230 0 97 0 230 0 98 1 31 0 101 0 230 0 103] 
#[1 0 78 0 8 0 30 0 13 0 30 0 15 0 93 0 19 0 97 0 21 0 233 0 22 1 233 0 45 1 237 0 46 1 241 0 50 2 245 0 73 2 1 0 77 0 185 0 82 2 5 0 83 0 209 0 93 1 213 0 94 0 230 0 96 1 233 0 101] 
#[1 0 218 0 8 0 135 0 100 0 218 0 101] 
#[1 0 143 0 2 0 147 0 3 0 151 0 4 0 155 0 5 0 159 0 6 0 163 0 7 0 167 0 8 0 230 0 11 0 230 0 12 0 171 0 13 0 230 0 14 0 171 0 15 0 230 0 16 0 175 0 17 0 175 0 18 0 179 0 19 0 183 0 21 0 187 0 22 0 191 0 23 0 195 0 31 0 230 0 32 0 199 0 33 1 233 0 45 1 237 0 46 1 241 0 50 1 245 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 2 249 0 72 1 253 0 73 2 1 0 77 0 185 0 82 2 5 0 83 0 157 0 87 0 197 0 88 0 197 0 89 1 9 0 93 2 9 0 94 2 13 0 95 0 230 0 96 0 230 0 97 0 230 0 98 0 203 0 101 0 230 0 103] 
#[1 2 253 0 12 0 57 0 101] 
#[1 3 1 0 12 0 93 0 19 0 97 0 21 2 125 0 93 0 57 0 101] 
#[1 0 6 0 12 3 5 0 38 0 6 0 101] 
#[1 1 118 0 2 1 118 0 3 1 118 0 4 1 118 0 5 1 118 0 6 1 118 0 7 1 118 0 8 1 35 0 11 1 35 0 12 1 118 0 13 1 118 0 14 1 118 0 15 1 35 0 16 1 118 0 17 1 118 0 18 1 118 0 19 1 118 0 21 1 118 0 22 1 118 0 23 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 96 1 118 0 97 1 118 0 98 1 35 0 101 1 118 0 103] 
#[1 3 9 0 64 3 13 0 66 3 17 0 70 1 122 0 99 3 13 0 102] 
#[1 3 9 0 64 3 25 0 66 3 29 0 70 1 122 0 99 3 25 0 102] 
#[1 1 30 0 14 3 33 0 81] 
#[1 0 90 0 11 0 222 0 12 0 90 0 14 1 39 0 101] 
#[1 0 94 0 11 0 226 0 12 0 94 0 14 0 226 0 101] 
#[1 0 98 0 11 0 234 0 12 0 98 0 14 0 234 0 101] 
#[0 1 126 0 11 0 14] 
#[0 1 130 0 11 0 14] 
#[1 1 134 0 11 0 254 0 12 1 134 0 14 0 254 0 101] 
#[1 1 138 0 11 1 138 0 14 3 37 0 79] 
#[0 3 41 0 14] 
#[1 1 142 0 11 1 2 0 12 1 142 0 14 1 2 0 101] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 6 0 12 0 30 0 13 0 30 0 15 0 34 0 17 0 34 0 18 0 15 0 19 0 19 0 21 0 233 0 22 2 53 0 23 2 57 0 31 1 37 0 32 2 61 0 33 2 29 0 38 2 33 0 46 2 33 0 53 2 37 0 54 1 125 0 56 1 129 0 57 1 133 0 58 1 137 0 63 0 169 0 67 1 141 0 68 1 145 0 69 2 33 0 77 1 209 0 82 2 33 0 83 1 129 0 87 0 197 0 88 0 197 0 89 0 209 0 93 1 213 0 94 1 43 0 101] 
#[0 1 161 0 100] 
#[1 1 30 0 16 3 45 0 81] 
#[1 1 146 0 11 0 6 0 12 1 146 0 16 2 25 0 38 0 6 0 101] 
#[0 1 150 0 11 0 16] 
#[0 3 49 0 16] 
#[1 1 154 0 11 1 154 0 16 3 53 0 85] 
#[1 0 6 0 12 0 30 0 13 0 30 0 15 0 15 0 19 0 19 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 2 29 0 38 3 57 0 46 3 57 0 53 2 37 0 54 3 57 0 77 1 209 0 82 3 57 0 83 0 209 0 93 1 213 0 94 0 6 0 101] 
#[1 2 161 0 2 2 161 0 3 2 161 0 4 2 161 0 5 2 161 0 6 2 161 0 7 2 141 0 23 2 149 0 58 2 153 0 59 3 61 0 60 2 161 0 88 2 161 0 89 2 165 0 101] 
#[0 1 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 3 65 0 11 0 6 0 12 0 30 0 13 1 30 0 14 0 30 0 15 0 34 0 17 0 34 0 18 0 93 0 19 0 97 0 21 0 233 0 22 2 53 0 23 2 57 0 31 1 37 0 32 2 61 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 3 69 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 3 69 0 71 2 73 0 77 3 69 0 80 3 73 0 81 0 185 0 82 2 85 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 209 0 93 2 89 0 94 0 255 0 101] 
#[1 3 77 0 11 0 6 0 12 0 30 0 13 0 30 0 15 1 30 0 16 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 2 101 0 46 2 101 0 53 1 57 0 54 3 85 0 71 2 101 0 77 3 81 0 81 0 185 0 82 2 101 0 83 3 85 0 86 0 209 0 93 2 117 0 94 0 6 0 101] 
#[1 2 161 0 2 2 161 0 3 2 161 0 4 2 161 0 5 2 161 0 6 2 161 0 7 2 141 0 23 2 149 0 58 2 153 0 59 2 157 0 60 2 161 0 88 2 161 0 89 2 165 0 101] 
#[1 1 162 0 2 1 162 0 3 1 162 0 4 1 162 0 5 1 162 0 6 1 162 0 7 1 162 0 23 3 89 0 62 1 162 0 96 1 47 0 101] 
#[0 3 93 0 45 0 101] 
#[0 1 166 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 96 0 101] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 96 0 101] 
#[1 2 161 0 2 2 161 0 3 2 161 0 4 2 161 0 5 2 161 0 6 2 161 0 7 2 141 0 23 3 97 0 38 2 149 0 58 3 101 0 59 2 161 0 88 2 161 0 89 0 6 0 96 1 43 0 101] 
#[1 1 162 0 2 1 162 0 3 1 162 0 4 1 162 0 5 1 162 0 6 1 162 0 7 1 162 0 23 3 105 0 62 1 162 0 96 1 51 0 101] 
#[0 2 137 0 100] 
#[0 1 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[1 1 178 0 2 1 178 0 3 1 178 0 4 1 178 0 5 1 178 0 6 1 178 0 7 1 178 0 8 1 178 0 12 1 178 0 13 1 178 0 15 1 178 0 17 1 178 0 18 1 178 0 19 1 178 0 21 1 178 0 22 1 178 0 23 1 178 0 31 1 178 0 32 1 178 0 33 1 55 0 97 1 178 0 98 1 178 0 101 1 178 0 103] 
#[0 3 113 0 96] 
#[0 3 117 0 96] 
#[1 3 121 0 38 0 6 0 96 0 6 0 101] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 34 0 17 0 34 0 18 0 6 0 19 0 6 0 21 0 101 0 23 0 105 0 31 0 109 0 33 1 117 0 38 1 125 0 56 1 129 0 57 1 133 0 58 1 137 0 63 0 169 0 67 1 141 0 68 1 145 0 69 1 129 0 87 0 197 0 88 0 197 0 89 1 43 0 101] 
#[1 1 182 0 2 1 182 0 3 1 182 0 4 1 182 0 5 1 182 0 6 1 182 0 7 1 59 0 8 1 182 0 11 1 182 0 12 1 182 0 13 1 182 0 14 1 182 0 15 1 182 0 16 1 182 0 17 1 182 0 18 1 182 0 19 1 182 0 21 1 182 0 22 1 182 0 23 1 182 0 31 1 182 0 32 1 182 0 33 3 125 0 38 3 129 0 75 1 182 0 96 1 182 0 97 1 182 0 98 1 59 0 101 1 182 0 103] 
#[1 3 133 0 96 0 57 0 101] 
#[1 0 6 0 12 0 6 0 13 0 6 0 15 0 6 0 19 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 31 0 6 0 32 0 6 0 33 0 113 0 38 3 137 0 48 1 186 0 96 1 63 0 101] 
#[1 3 145 0 96 0 57 0 101] 
#[1 0 93 0 19 0 97 0 21 3 149 0 93] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 3 153 0 11 0 6 0 12 0 30 0 13 1 30 0 14 0 30 0 15 0 34 0 17 0 34 0 18 0 93 0 19 0 97 0 21 0 233 0 22 2 53 0 23 2 57 0 31 1 37 0 32 2 61 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 3 157 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 3 157 0 71 2 73 0 77 3 157 0 80 3 161 0 81 0 185 0 82 2 85 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 209 0 93 2 89 0 94 0 255 0 101] 
#[1 3 165 0 11 0 6 0 12 0 30 0 13 0 30 0 15 1 30 0 16 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 2 101 0 46 2 101 0 53 1 57 0 54 3 173 0 71 2 101 0 77 3 169 0 81 0 185 0 82 2 101 0 83 3 173 0 86 0 209 0 93 2 117 0 94 0 6 0 101] 
#[0 1 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 2 161 0 2 2 161 0 3 2 161 0 4 2 161 0 5 2 161 0 6 2 161 0 7 2 141 0 23 3 177 0 38 2 149 0 58 3 101 0 59 2 161 0 88 2 161 0 89 0 6 0 96 1 43 0 101] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 89 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 34 0 17 0 34 0 18 0 15 0 19 0 19 0 21 1 67 0 22 0 23 0 23 0 27 0 31 0 6 0 32 0 31 0 33 0 113 0 38 3 181 0 40 0 125 0 41 0 129 0 42 0 133 0 43 3 185 0 46 0 137 0 48 3 189 0 51 0 145 0 52 3 193 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 0 157 0 87 0 197 0 88 0 197 0 89 0 209 0 93 3 197 0 94 0 35 0 101] 
#[1 3 201 0 38 0 6 0 96 0 6 0 101] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 3 205 0 96] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 143 0 2 0 147 0 3 0 151 0 4 0 155 0 5 0 159 0 6 0 163 0 7 0 167 0 8 0 230 0 11 0 230 0 12 0 171 0 13 0 230 0 14 0 171 0 15 0 230 0 16 0 175 0 17 0 175 0 18 0 179 0 19 0 183 0 21 0 187 0 22 0 191 0 23 0 195 0 31 0 230 0 32 0 199 0 33 1 233 0 45 1 237 0 46 1 241 0 50 1 245 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 3 209 0 72 1 253 0 73 2 1 0 77 0 185 0 82 2 5 0 83 0 157 0 87 0 197 0 88 0 197 0 89 1 9 0 93 2 9 0 94 2 13 0 95 0 230 0 96 0 230 0 97 0 230 0 98 0 203 0 101 0 230 0 103] 
#[1 0 143 0 2 0 147 0 3 0 151 0 4 0 155 0 5 0 159 0 6 0 163 0 7 0 167 0 8 0 230 0 11 0 230 0 12 0 171 0 13 0 230 0 14 0 171 0 15 0 230 0 16 0 175 0 17 0 175 0 18 0 179 0 19 0 183 0 21 0 187 0 22 0 191 0 23 0 195 0 31 0 230 0 32 0 199 0 33 1 233 0 45 1 237 0 46 1 241 0 50 1 245 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 3 213 0 72 1 253 0 73 2 1 0 77 0 185 0 82 2 5 0 83 0 157 0 87 0 197 0 88 0 197 0 89 1 9 0 93 2 9 0 94 2 13 0 95 0 230 0 96 0 230 0 97 0 230 0 98 0 203 0 101 0 230 0 103] 
#[1 3 217 0 12 0 57 0 101] 
#[0 1 206 0 99 0 102] 
#[1 3 221 0 23 3 225 0 70 1 122 0 99 3 229 0 102] 
#[0 3 233 0 99] 
#[0 1 210 0 23 0 99 0 102] 
#[1 3 221 0 23 3 237 0 70 1 122 0 99 3 229 0 102] 
#[0 3 241 0 99] 
#[0 3 245 0 14] 
#[1 3 249 0 11 1 30 0 14 3 253 0 78 4 1 0 81] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 4 5 0 16] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 4 9 0 11 1 30 0 16 4 13 0 81 4 17 0 84] 
#[1 1 222 0 11 0 6 0 12 1 222 0 16 3 5 0 38 0 6 0 101] 
#[1 2 161 0 2 2 161 0 3 2 161 0 4 2 161 0 5 2 161 0 6 2 161 0 7 2 141 0 23 4 21 0 38 2 149 0 58 3 101 0 59 2 161 0 88 2 161 0 89 0 6 0 96 1 43 0 101] 
#[1 1 30 0 14 4 25 0 81] 
#[1 1 138 0 11 1 138 0 14 4 29 0 79] 
#[0 4 33 0 14] 
#[1 1 30 0 16 4 37 0 81] 
#[0 4 41 0 16] 
#[1 1 154 0 11 1 154 0 16 4 45 0 85] 
#[1 1 226 0 2 1 226 0 3 1 226 0 4 1 226 0 5 1 226 0 6 1 226 0 7 1 226 0 23 4 49 0 61 1 226 0 96 1 71 0 101] 
#[1 4 57 0 96 1 181 0 101] 
#[1 4 61 0 96 0 57 0 101] 
#[0 1 230 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 96 0 101] 
#[1 1 234 0 2 1 234 0 3 1 234 0 4 1 234 0 5 1 234 0 6 1 234 0 7 1 234 0 23 4 49 0 61 1 234 0 96 1 75 0 101] 
#[0 1 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 97 0 98 0 101 0 103] 
#[0 1 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 4 65 0 96 0 57 0 101] 
#[1 0 89 0 8 4 69 0 43 0 57 0 101] 
#[0 1 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 2 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 101] 
#[0 2 6 0 96 0 101] 
#[0 2 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 14 0 8 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 101] 
#[1 1 30 0 14 4 73 0 81] 
#[1 1 138 0 11 1 138 0 14 4 77 0 79] 
#[0 4 81 0 14] 
#[1 1 30 0 16 4 85 0 81] 
#[0 4 89 0 16] 
#[1 1 154 0 11 1 154 0 16 4 93 0 85] 
#[1 4 97 0 96 0 57 0 101] 
#[0 4 101 0 96] 
#[1 4 105 0 38 0 6 0 96 0 6 0 101] 
#[0 4 109 0 96] 
#[1 4 113 0 38 0 6 0 96 0 6 0 101] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 89 0 8 0 6 0 12 0 6 0 13 0 6 0 15 0 34 0 17 0 34 0 18 0 15 0 19 0 19 0 21 1 67 0 22 0 23 0 23 0 27 0 31 0 6 0 32 0 31 0 33 4 117 0 38 4 121 0 40 0 125 0 41 0 129 0 42 0 133 0 43 4 125 0 45 4 129 0 46 0 137 0 48 4 133 0 51 0 145 0 52 4 137 0 55 4 141 0 56 4 145 0 57 4 149 0 58 4 153 0 63 0 169 0 67 4 157 0 68 4 161 0 69 4 145 0 87 0 197 0 88 0 197 0 89 0 209 0 93 2 189 0 94 1 79 0 101] 
#[1 4 169 0 96 0 57 0 101] 
#[0 2 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 143 0 2 0 147 0 3 0 151 0 4 0 155 0 5 0 159 0 6 0 163 0 7 0 167 0 8 0 230 0 11 0 230 0 12 0 171 0 13 0 230 0 14 0 171 0 15 0 230 0 16 0 175 0 17 0 175 0 18 0 179 0 19 0 183 0 21 0 187 0 22 0 191 0 23 0 195 0 31 0 230 0 32 0 199 0 33 1 233 0 45 1 237 0 46 1 241 0 50 1 245 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 4 173 0 72 1 253 0 73 2 1 0 77 0 185 0 82 2 5 0 83 0 157 0 87 0 197 0 88 0 197 0 89 1 9 0 93 2 9 0 94 2 13 0 95 0 230 0 96 0 230 0 97 0 230 0 98 0 203 0 101 0 230 0 103] 
#[0 2 30 0 99 0 102] 
#[0 4 177 0 99] 
#[0 2 34 0 23 0 99 0 102] 
#[0 2 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 4 181 0 99] 
#[0 2 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 6 0 12 0 30 0 13 1 30 0 14 0 30 0 15 0 34 0 17 0 34 0 18 0 93 0 19 0 97 0 21 0 233 0 22 2 53 0 23 2 57 0 31 1 37 0 32 2 61 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 4 185 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 4 185 0 71 2 73 0 77 4 185 0 80 4 189 0 81 0 185 0 82 2 85 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 209 0 93 2 89 0 94 0 255 0 101] 
#[0 2 50 0 11 0 14] 
#[0 4 193 0 14] 
#[0 2 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 6 0 12 0 30 0 13 0 30 0 15 1 30 0 16 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 2 101 0 46 2 101 0 53 1 57 0 54 4 201 0 71 2 101 0 77 4 197 0 81 0 185 0 82 2 101 0 83 4 201 0 86 0 209 0 93 2 117 0 94 0 6 0 101] 
#[0 4 205 0 16] 
#[0 2 58 0 11 0 16] 
#[1 4 209 0 96 0 57 0 101] 
#[0 4 213 0 14] 
#[1 4 217 0 11 1 30 0 14 3 253 0 78 4 221 0 81] 
#[0 2 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 4 225 0 16] 
#[0 2 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 4 229 0 11 1 30 0 16 4 233 0 81 4 17 0 84] 
#[0 2 70 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 96 0 101] 
#[1 1 83 0 2 1 87 0 3 1 91 0 4 1 95 0 5 1 99 0 6 1 103 0 7 1 107 0 23 4 241 0 88 4 241 0 89 2 74 0 96 2 74 0 101] 
#[0 2 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 2 90 0 2 2 90 0 3 2 90 0 4 2 90 0 5 2 90 0 6 2 90 0 7 2 90 0 8 2 90 0 11 2 90 0 12 2 90 0 13 2 90 0 14 2 90 0 15 2 90 0 16 2 90 0 17 2 90 0 18 2 90 0 19 2 90 0 21 2 90 0 22 2 90 0 23 2 90 0 31 2 90 0 32 2 90 0 33 2 90 0 96 2 90 0 97 2 90 0 98 1 111 0 101 2 90 0 103] 
#[0 4 249 0 14] 
#[1 4 253 0 11 1 30 0 14 3 253 0 78 5 1 0 81] 
#[0 1 115 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 5 5 0 16] 
#[0 1 119 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 5 9 0 11 1 30 0 16 5 13 0 81 4 17 0 84] 
#[0 2 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 5 17 0 96 0 57 0 101] 
#[0 2 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 5 21 0 96 0 57 0 101] 
#[1 0 6 0 12 0 30 0 13 0 30 0 15 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 1 61 0 71 1 53 0 77 0 185 0 82 1 53 0 83 5 25 0 93 1 73 0 94 0 87 0 101] 
#[0 5 29 0 96] 
#[1 5 33 0 96 1 181 0 101] 
#[1 5 37 0 38 0 6 0 96 0 6 0 101] 
#[0 5 41 0 96] 
#[1 5 45 0 38 0 6 0 96 0 6 0 101] 
#[0 1 123 0 96 0 101] 
#[0 1 127 0 96 0 101] 
#[0 1 131 0 96 0 101] 
#[0 1 135 0 96 0 101] 
#[0 1 139 0 96 0 101] 
#[0 1 143 0 96 0 101] 
#[1 0 89 0 8 0 125 0 41 1 157 0 42 0 133 0 43 0 218 0 96 1 161 0 100 0 218 0 101] 
#[0 2 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 122 0 11 0 14] 
#[0 5 49 0 14] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 5 53 0 16] 
#[0 2 130 0 11 0 16] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 6 0 12 0 30 0 13 1 30 0 14 0 30 0 15 0 34 0 17 0 34 0 18 0 93 0 19 0 97 0 21 0 233 0 22 2 53 0 23 2 57 0 31 1 37 0 32 2 61 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 4 185 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 4 185 0 71 2 73 0 77 4 185 0 80 5 57 0 81 0 185 0 82 2 85 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 209 0 93 2 89 0 94 0 255 0 101] 
#[0 5 61 0 14] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 6 0 12 0 30 0 13 0 30 0 15 1 30 0 16 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 2 101 0 46 2 101 0 53 1 57 0 54 4 201 0 71 2 101 0 77 5 65 0 81 0 185 0 82 2 101 0 83 4 201 0 86 0 209 0 93 2 117 0 94 0 6 0 101] 
#[0 5 69 0 16] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 96 0 101] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 96 0 101] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 147 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 197 0 2 0 197 0 3 0 197 0 4 0 197 0 5 0 197 0 6 0 197 0 7 0 6 0 12 0 30 0 13 1 30 0 14 0 30 0 15 0 34 0 17 0 34 0 18 0 93 0 19 0 97 0 21 0 233 0 22 2 53 0 23 2 57 0 31 1 37 0 32 2 61 0 33 1 45 0 38 1 53 0 46 1 53 0 53 1 57 0 54 4 185 0 55 0 153 0 56 0 157 0 57 0 161 0 58 0 165 0 63 0 169 0 67 0 173 0 68 0 177 0 69 4 185 0 71 2 73 0 77 4 185 0 80 5 73 0 81 0 185 0 82 2 85 0 83 0 157 0 87 0 197 0 88 0 197 0 89 0 209 0 93 2 89 0 94 0 255 0 101] 
#[0 5 77 0 14] 
#[0 1 151 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 6 0 12 0 30 0 13 0 30 0 15 1 30 0 16 0 93 0 19 0 97 0 21 0 233 0 22 1 29 0 23 1 33 0 31 1 37 0 32 1 41 0 33 1 45 0 38 2 101 0 46 2 101 0 53 1 57 0 54 4 201 0 71 2 101 0 77 5 81 0 81 0 185 0 82 2 101 0 83 4 201 0 86 0 209 0 93 2 117 0 94 0 6 0 101] 
#[0 5 85 0 16] 
#[0 2 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 1 158 0 2 1 158 0 3 1 158 0 4 1 158 0 5 1 158 0 6 1 158 0 7 1 158 0 8 1 155 0 12 1 155 0 13 1 155 0 15 1 158 0 17 1 158 0 18 1 155 0 19 1 155 0 21 1 155 0 22 1 155 0 23 1 155 0 31 1 155 0 32 1 155 0 33 1 155 0 101] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 0 89 0 8 1 185 0 43 5 89 0 74] 
#[1 5 93 0 96 0 57 0 101] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[1 5 97 0 96 0 57 0 101] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 5 101 0 14] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 5 105 0 16] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 5 109 0 14] 
#[0 1 159 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 5 113 0 16] 
#[0 1 163 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 167 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103] 
#[0 1 171 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 96 0 97 0 98 0 101 0 103]
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
			(currentToken ids includes: scanner MINUSId)
				ifTrue: [ self addActionsFor: scanner STRING_MYId to: actions.
					actions notEmpty
						ifTrue: [ scanner position: currentToken startPosition - 1.
							currentToken := scanner scanString.
							self position: scanner position.
							^ actions ] ].
			(currentToken ids includes: scanner TAGId)
				ifTrue: [ self addActionsFor: scanner STRING_MYId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := SmaCCToken
									value: currentToken value
									start: currentToken startPosition
									ids: {scanner STRING_MYId}.
							^ actions ] ].
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
	result addTokens: ((nodes at: 2) at: 3) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForListItemValue2: nodes [
	^ nodes at: 3
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue3: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue4: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	result at: 1 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue6: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue7: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue8: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue9: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	result at: 1 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValueWithTags2: nodes [
	| result |
	result := nodes at: 2.
	self addAllFirst: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAllFirst: ((nodes at: 1) at: 2) to: (result at: 3).
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
YAMLParser >> reduceActionForTagAndAnchorWithIndent1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 4) at: 1) to: (result at: 1).
	self add: ((nodes at: 4) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForTagOrAnchor1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForTagOrAnchor2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForTagsOrAnchors1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForTagsOrAnchors2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_TagsOrAnchors__NEWLINE____1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_TagsOrAnchors__NEWLINE____2: nodes [
	| result |
	result := nodes at: 2.
	self addAllFirst: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAllFirst: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
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
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self add: ((nodes at: 1) at: 3) to: (result at: 3).
	self add: ((nodes at: 1) at: 4) to: (result at: 4).
	self add: ((nodes at: 1) at: 5) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE___fileDocument__2: nodes [
	| result |
	result := nodes at: 1.
	self addAll: ((nodes at: 2) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	self add: ((nodes at: 2) at: 5) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE___numberToken__part_____STRING_MY___part________multiline_string_2: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE___numberToken__part_____STRING_MY___part________multiline_string__2: nodes [
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
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result addNodes: ((nodes at: 1) at: 3) to: result documents.
	result addTokens: ((nodes at: 1) at: 4) to: result documentEnds.
	result addTokens: ((nodes at: 1) at: 5) to: result documentStarts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfile2: nodes [
	| result |
	result := YAMLFileNode new.
	result globalTag: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result anchors.
	result addTokens: ((nodes at: 2) at: 2) to: result tags.
	result addNodes: ((nodes at: 2) at: 3) to: result documents.
	result addTokens: ((nodes at: 2) at: 4) to: result documentEnds.
	result addTokens: ((nodes at: 2) at: 5) to: result documentStarts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument10: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument11: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument2: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 2).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument3: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument4: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument5: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument6: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 4).
	result at: 4 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument7: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument8: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
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
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result leftBracket: (nodes at: 3).
	result rightBracket: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist6: nodes [
	| result |
	result := YAMLFlowListNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result leftBracket: (nodes at: 3).
	result addToken: (nodes at: 4) to: result commas.
	result rightBracket: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowlist7: nodes [
	| result |
	result := YAMLFlowListNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
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
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
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
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result leftBrace: (nodes at: 3).
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist6: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result leftBrace: (nodes at: 3).
	result addToken: (nodes at: 4) to: result commas.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForflowmappinglist7: nodes [
	| result |
	result := YAMLFlowMappingListNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
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
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result leftBrace: (nodes at: 3).
	result addNode: (nodes at: 4) to: result mappings.
	result addTokens: ((nodes at: 5) at: 1) to: result commas.
	result addNodes: ((nodes at: 5) at: 2) to: result mappings.
	result addToken: (nodes at: 6) to: result commas.
	result rightBrace: (nodes at: 8).
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
YAMLParser >> reduceActionForlistitem2: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem3: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result anchors.
	result addTokens: ((nodes at: 2) at: 2) to: result tags.
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem6: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem7: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result anchors.
	result addTokens: ((nodes at: 2) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping1: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 2).
	result value: ((nodes at: 3) at: 1).
	result addTokens: ((nodes at: 3) at: 2) to: result anchors.
	result addTokens: ((nodes at: 3) at: 3) to: result tags.
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
	result addTokens: ((nodes at: 4) at: 3) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping3: nodes [
	| result |
	result := YAMLMappingNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result colon: (nodes at: 3).
	result value: ((nodes at: 4) at: 1).
	result addTokens: ((nodes at: 4) at: 2) to: result anchors.
	result addTokens: ((nodes at: 4) at: 3) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping4: nodes [
	| result |
	result := YAMLMappingNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result key: (nodes at: 2).
	result colon: (nodes at: 4).
	result value: ((nodes at: 5) at: 1).
	result addTokens: ((nodes at: 5) at: 2) to: result anchors.
	result addTokens: ((nodes at: 5) at: 3) to: result tags.
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
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
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
	result := YAMLStringNode new.
	result addTokens: (nodes at: 3) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormultiline_string3: nodes [
	| result |
	result := YAMLStringNode new.
	result addToken: (nodes at: 1) to: result parts.
	result addTokens: (nodes at: 4) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFornumber1: nodes [
	| result |
	result := YAMLNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForstring_literal1: nodes [
	| result |
	result := YAMLStringNode new.
	result addToken: (nodes at: 2) to: result parts.
	result addTokens: (nodes at: 3) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue12: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue13: nodes [
	| result |
	result := nodes at: 2.
	result addFirstTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addFirstTokens: ((nodes at: 1) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue_scalar2: nodes [
	| result |
	result := YAMLStringNode new.
	result addToken: (nodes at: 1) to: result parts.
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
