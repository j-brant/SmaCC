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
#[ 0 14 0 205] 
#[ 0 6 0 42] 
#[ 0 41 0 42] 
#[ 0 42 0 45] 
#[ 0 42 0 49] 
#[ 0 42 0 209] 
#[ 0 42 0 213] 
#[ 0 42 0 217] 
#[ 0 42 1 41] 
#[ 0 6 0 50] 
#[ 0 41 0 50] 
#[ 0 45 0 50] 
#[ 0 49 0 50] 
#[ 0 50 0 209] 
#[ 0 50 0 213] 
#[ 0 50 0 217] 
#[ 0 50 0 205] 
#[ 0 66 0 74] 
#[ 0 66 0 70 0 74 0 205] 
#[ 0 78 0 82] 
#[ 0 86 0 90] 
#[ 0 14 1 137] 
#[ 0 106 0 205] 
#[ 0 118 0 205] 
#[ 0 138 0 205] 
#[ 0 142 0 146] 
#[ 0 170 0 174] 
#[ 0 178 0 182] 
#[ 0 190 0 194] 
#[ 0 190 0 194 0 205] 
#[ 0 205 0 210] 
#[ 0 74 0 205] 
#[ 0 194 0 205] 
#[ 0 214 2 97] 
#[ 0 42 2 137] 
#[ 0 42 0 205] 
#[ 0 218 1 14] 
#[ 0 66 1 46] 
#[ 0 66 0 74 1 46] 
#[ 0 66 0 70 0 74 0 205 1 46] 
#[ 0 122 1 50] 
#[ 0 166 1 54] 
#[ 0 190 1 58] 
#[ 0 190 0 194 1 58] 
#[ 0 190 0 194 0 205 1 58] 
#[ 0 205 1 62] 
#[ 0 218 1 66] 
#[ 0 205 1 70] 
#[ 0 205 1 106] 
#[ 0 142 0 146 1 110] 
#[ 0 146 1 110] 
#[ 0 150 1 114] 
#[ 0 154 1 118] 
#[ 0 158 1 122] 
#[ 0 162 1 126] 
#[ 0 205 1 130] 
#[ 0 214 1 134] 
#[ 0 46 1 10] 
#[ 0 218 1 186] 
#[ 1 26 1 198] 
#[ 0 70 1 46] 
#[ 0 205 1 202] 
#[ 1 74 1 206] 
#[ 1 78 1 210] 
#[ 0 70 0 74 0 205] 
#[ 0 142 1 110] 
#[ 0 66 1 214] 
#[ 0 66 0 205 1 214] 
#[ 0 190 1 214] 
#[ 0 190 0 205 1 214] 
#[ 1 106 2 65] 
#[ 0 205 2 6] 
#[ 2 10 5 93] 
#[ 0 205 2 10] 
#[ 1 26 2 18] 
#[ 0 205 2 22] 
#[ 0 214 2 26] 
#[ 0 205 2 30] 
#[ 1 74 2 34] 
#[ 1 78 2 38] 
#[ 0 74 1 214] 
#[ 0 70 0 74 0 205 1 214] 
#[ 0 126 0 205] 
#[ 0 242 1 218] 
#[ 0 194 1 214] 
#[ 0 194 0 205 1 214] 
#[ 0 205 2 46] 
#[ 2 54 5 229] 
#[ 0 205 1 214] 
#[ 0 205 2 94] 
#[ 2 42 2 98] 
#[ 0 205 2 114] 
#[ 2 138 7 5] 
#[ 0 205 2 138] 
#[ 0 205 2 146] 
#[ 1 137 2 150] 
#[ 0 205 2 154] 
#[ 2 162 7 33] 
#[ 2 162 7 41] 
#[ 1 137 2 162] 
#[ 1 26 1 198 2 166] 
#[ 0 205 2 170] 
#[ 1 74 1 206 2 174] 
#[ 1 78 1 210 2 178] 
#[ 1 226 2 182] 
#[ 2 214 7 113] 
#[ 0 218 2 230] 
#[ 2 194 3 18] 
#[ 0 234 1 162] 
#[ 0 238 1 166] 
#[ 0 242 1 170] 
#[ 0 246 1 174] 
#[ 0 250 1 178] 
#[ 0 254 1 182] 
#[ 0 9 3 42] 
#[ 0 13 3 42] 
#[ 0 17 3 42] 
#[ 0 21 3 42] 
#[ 0 25 3 42] 
#[ 0 29 3 42] 
#[ 3 42 8 5] 
#[ 2 65 3 42] 
#[ 2 186 3 50] 
#[ 3 94 8 53] 
#[ 3 94 8 61] 
#[ 1 137 3 94] 
#[ 1 137 3 98] 
#[ 0 205 3 102] 
#[ 2 65 3 106] 
#[ 3 110 4 189] 
#[ 0 10 3 110] 
#[ 0 41 3 110] 
#[ 0 45 3 110] 
#[ 3 110 4 197] 
#[ 2 65 3 110] 
#[ 2 118 3 118] 
#[ 2 122 3 122] 
#[ 2 126 3 126] 
#[ 3 162 8 113] 
#[ 3 142 3 198] 
#[ 1 138 2 66] 
#[ 1 142 2 70] 
#[ 2 65 4 10] 
#[ 3 62 4 22] 
#[ 3 70 4 26] 
#[ 3 242 4 90] 
#[ 3 250 4 94] 
#[ 4 70 4 106] 
#[ 4 74 4 110]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2023-03-30T14:44:17.304-05:00'
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
	: \%[a-zA-Z] [^\r\n]*
	;

default FLOW <TAG>
	: \! ([^\ \r\n\t\,]* | (\< [^\r\n\>]* \>))
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
	: (\' ([^\'\\] | (\\ .))* \')+
	;

# The Yaml Language Reference: http://www.yaml.org/spec/1.2/spec.html

/*
 * my parser rules
 */

file
 : fileDocuments <NEWLINE>+?  {{}}
 ;

document
 : list
 | mappinglist 
 | flowlist 
 | flowmappinglist 
 | documentValue
 ;
documentValue
	: TagsOrAnchors? value_scalar {{Value}}
	| <NEWLINE>+ <INDENT> alias 'value' <NEWLINE>+? <DEDENT> {value} /* changed to alias */
	| TagsOrAnchors? multiline_string {{Value}}
	| TagsOrAnchors? <NEWLINE>+? SetDocumentIndent string_literal {{Value}}
	| TagsOrAnchors? <NEWLINE>+? SetDocumentIndent string_folded {{Value}}
	| TagsOrAnchors? string_double_quoted {{Value}} 
	| TagsOrAnchors? string_single_quoted {{Value}}
	| documentMultilineString
	;
SetDocumentIndent
	: [scanner documentStringLiteral: true. 
	self updateScannerState. 
	nil]
	;
documentMultilineString
	: (<NEWLINE>+? 
		((numberToken 'part' | <STRING_MY> 'part') | (<INDENT> documentMultilineString <NEWLINE>+? <DEDENT>)))+ {{String}}
	;

list
 : (<NEWLINE>+? listitem 'item')+ {{}}
 ;

listitem
 : <MINUS> 'minus' value 'value' {{ListItem}}
 | <MINUS> 'minus' TagsOrAnchors? ListItemValue {{ListItem}}
 | <MINUS> 'minus' TagAndAnchorWithIndent ListItemValue <NEWLINE>+? <DEDENT> {{ListItem}}
 | <MINUS> 'minus' alias 'value' {{ListItem}}
 | <MINUS> 'minus' TagsOrAnchors? <NEWLINE>  {{ListItem}} #null value
 ;
ListItemValue
	: <NEWLINE>+ <INDENT> value 'value' <NEWLINE>+? <DEDENT> 
	| <NEWLINE>+ <INDENT> list 'value' <NEWLINE>+? <DEDENT> 
	| <NEWLINE>+ <INDENT> mappinglist 'value' <NEWLINE>+? <DEDENT> 
	| flowlist 'value' 
	| PushIndent listWithoutInitialNewline 'value' <NEWLINE>+? <DEDENT> 
	| PushIndent mappingListWithoutInitialNewline 'value' <NEWLINE>+? <DEDENT> 
	| flowmappinglist 'value'
	;
alias
	: <ALIAS> 'name' {{}}
	;
mappingListWithoutInitialNewline
	: mapping 'mapping' (<NEWLINE>+? mapping 'mapping')* <NEWLINE>? {{MappingList}}
	;
PushIndent
	: 
	[scanner pushIndent: (scanner indentsBefore: currentToken startPosition).
	self updateScannerState.
	nil]
	;

mappinglist
 : (<NEWLINE>+? mapping 'mapping')+ {{MappingList}}
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
 | <NEWLINE>+ <INDENT> alias 'value' <NEWLINE>+? <DEDENT> {value} /* changed to alias */
 | TagsOrAnchors? multiline_string {{}}
 | TagsOrAnchors? <NEWLINE>+? string_literal {{}}
 | TagsOrAnchors? <NEWLINE>+? string_folded {{}}
 | <NEWLINE>+? <INDENT> TagsOrAnchors? <NEWLINE>+? PopIndent string_literal {{}}
 | <NEWLINE>+? <INDENT> TagsOrAnchors? <NEWLINE>+? PopIndent string_folded {{}}
 | TagsOrAnchors? string_double_quoted {{}} 
 | TagsOrAnchors? string_single_quoted {{}}
 ;
PopIndent
	: [scanner popIndent. 
	self updateScannerState.
	nil]
	;
string_single_quoted
	: <singleQuoteString> 'part' {{String}}
	;

value_scalar
 : number | <STRING_MY> 'part' {{String}}
 ;

multiline_string
 : (numberToken 'part' | <STRING_MY> 'part')? <NEWLINE>+ <INDENT> ( (numberToken 'part' | <STRING_MY> 'part') (<NEWLINE>+ (numberToken 'part' | <STRING_MY> 'part')?)* | multiline_string)+ <NEWLINE>+? <DEDENT> {{String}}
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
 : TagsOrAnchors? key 'key'? <NEWLINE>+? <COLON> 'colon' MappingValueWithTags {{}}
 | TagsOrAnchors? ComplexKey 'key' {{}}
 ;
MappingValueWithTags
	: TagsOrAnchors? MappingValue
	| TagAndAnchorWithIndent MappingValue <NEWLINE>+? <DEDENT>
	| value 'value' 
	;
MappingValue
	: <NEWLINE>+ <INDENT> TagsOrAnchors? mappinglist 'value' <NEWLINE>+? <DEDENT>
	| <NEWLINE>+ <INDENT> TagsOrAnchors? list 'value' <NEWLINE>+? <DEDENT>
	| flowmappinglist 'value'
	| alias 'value'?
	| <NEWLINE>+ listWithoutInitialNewline 'value'
	| <NEWLINE>+ <INDENT> TagsOrAnchors <NEWLINE>+ <NEWLINE>+? <DEDENT> listWithoutInitialNewline 'value'
	| flowlist 'value'
	| <NEWLINE>+ <INDENT> TagsOrAnchors? (value 'value' | alias 'value') <NEWLINE>+? <DEDENT>
	| PushIndent listWithoutInitialNewline 'value' <NEWLINE>+? <DEDENT> 
	;
listWithoutInitialNewline
	: listitem 'item' (<NEWLINE>+? listitem 'item' <NEWLINE>?)* {{List}}
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
	: [scanner opened: scanner opened - 1. 
	self popScope. 
	nil]
	;
PushFlow
	: [scanner opened: scanner opened + 1. 
	self pushScope: #FLOW. 
	nil]
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
fileDocuments
	: TagsOrAnchors? <NEWLINE>+? document 'document'? 
			(SplitDocument <NEWLINE>+? (TagsOrAnchors <NEWLINE>+)* document 'document'? <NEWLINE>+?)* 
	;
SplitDocument
	: <NEWLINE>+? SetZeroIndent <DOCUMENTEND> 'documentEnd' <NEWLINE>+? (<GLOBAL_TAG> 'globalTag'? <NEWLINE>+ <DOCUMENTSTART> 'documentStart')?
	| (<NEWLINE>+? <GLOBAL_TAG> 'globalTag'?)? <NEWLINE>+? SetZeroIndent <DOCUMENTSTART> 'documentStart'
	;
SetZeroIndent
	: [scanner documentStringLiteral: false. 
	scanner setIndent: 0. 
	self updateScannerState.
	nil]
	;
TagOrAnchor
	: <ANCHOR> 'anchor'
	| <TAG> 'tag'
	;
TagsOrAnchors
	: TagOrAnchor
	| TagsOrAnchors <NEWLINE>+? TagOrAnchor
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
	#(85 0 #reduceActionForPushFlow1: 11216897 true) 
	#(39 0 #reduceActionForSetDocumentIndent1: 6742017 true) 
	#(95 0 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE_____1: 11950081 false) 
	#(92 1 #liftFirstValue: 11794433 false) 
	#(92 1 #liftFirstValue: 11794434 false) 
	#(92 1 #liftFirstValue: 11794435 false) 
	#(92 1 #liftFirstValue: 11794436 false) 
	#(91 1 #liftFirstValue: 11652098 false) 
	#(91 1 #liftFirstValue: 11652099 false) 
	#(52 0 #reduceActionForPushIndent1: 7947265 true) 
	#(70 0 #reduceActionForPushLiteralString1: 9568257 true) 
	#(76 0 #reduceActionForMappingValue10: 10183690 false) 
	#(100 1 #reduceActionForTagOrAnchor1: 12434433 false) 
	#(100 1 #reduceActionForTagOrAnchor2: 12434434 false) 
	#(48 1 #reduceActionForalias1: 7794689 false) 
	#(41 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 6870018 false) 
	#(55 1 #reduceActionForkey1: 8145921 false) 
	#(60 1 #reduceActionForkey1: 9079810 false) 
	#(72 1 #reduceActionForkey1: 9806849 false) 
	#(55 1 #reduceActionForkey1: 8145922 false) 
	#(59 1 #reduceActionForkey1: 9012225 false) 
	#(55 1 #reduceActionForkey1: 8145923 false) 
	#(37 1 #liftFirstValue: 6179845 false) 
	#(38 1 #liftFirstValue: 6267923 false) 
	#(42 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6870017 false) 
	#(40 1 #reduceActionFordocumentMultilineString1: 6842369 false) 
	#(37 1 #liftFirstValue: 6179841 false) 
	#(45 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7017473 false) 
	#(43 1 #reduceActionForlist1: 7009281 false) 
	#(44 1 #liftFirstValue: 7017473 false) 
	#(55 1 #liftFirstValue: 8145924 false) 
	#(54 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 8091649 false) 
	#(37 1 #liftFirstValue: 6179842 false) 
	#(53 1 #reduceActionFormappinglist1: 8076289 false) 
	#(55 1 #liftFirstValue: 8145927 false) 
	#(74 1 #reduceActionFormapping9: 9910281 false) 
	#(38 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6267921 false) 
	#(38 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6267905 false) 
	#(38 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6267909 false) 
	#(38 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6267919 false) 
	#(50 1 #liftFirstValue: 7882753 false) 
	#(55 1 #liftFirstValue: 8145926 false) 
	#(37 1 #liftFirstValue: 6179843 false) 
	#(55 1 #liftFirstValue: 8145925 false) 
	#(37 1 #liftFirstValue: 6179844 false) 
	#(60 1 #liftFirstValue: 9079809 false) 
	#(41 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 6870017 false) 
	#(90 1 #reduceActionFornumber1: 11613185 false) 
	#(91 1 #liftFirstValue: 11652097 false) 
	#(35 1 #reduceActionForfile1: 6134785 false) 
	#(99 0 #reduceActionForSetZeroIndent1: 12312577 true) 
	#(93 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 11879425 false) 
	#(101 1 #reduceActionForTagsOrAnchors1: 12486657 false) 
	#(36 1 #liftFirstValue: 6157313 false) 
	#(46 2 #reduceActionForlistitem2: 7058434 false) 
	#(46 2 #reduceActionForlistitem2: 7058438 false) 
	#(46 2 #reduceActionForlistitem2: 7058433 false) 
	#(57 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8401953 false) 
	#(57 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8401921 false) 
	#(57 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8401925 false) 
	#(57 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8401927 false) 
	#(57 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8401931 false) 
	#(57 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8401951 false) 
	#(47 1 #liftFirstValue: 7391239 false) 
	#(47 1 #liftFirstValue: 7391244 false) 
	#(58 0 #reduceActionForPopIndent1: 8939521 true) 
	#(46 2 #reduceActionForlistitem7: 7058439 false) 
	#(76 1 #reduceActionForMappingValue11: 10183691 false) 
	#(75 1 #reduceActionForMappingValue11: 10047493 false) 
	#(74 2 #reduceActionFormapping1: 9910273 false) 
	#(75 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 10047489 false) 
	#(76 1 #reduceActionForMappingValue11: 10183695 false) 
	#(76 1 #reduceActionForMappingValue11: 10183689 false) 
	#(56 2 #reduceActionForComplexKey1: 8326145 false) 
	#(41 2 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: 6870022 false) 
	#(44 2 #liftSecondValue: 7017474 false) 
	#(50 2 #liftSecondValue: 7882754 false) 
	#(41 2 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: 6870021 false) 
	#(93 2 #reduceActionForfileDocuments3: 11879427 false) 
	#(36 2 #liftFirstValue: 6157314 false) 
	#(93 2 #reduceActionForfileDocuments2: 11879426 false) 
	#(38 2 #reduceActionForfileDocuments3: 6267911 false) 
	#(38 2 #reduceActionForfileDocuments3: 6267915 false) 
	#(42 2 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: 6870018 false) 
	#(45 2 #reduceActionFor__NEWLINE____listitem__item___2: 7017474 false) 
	#(54 2 #reduceActionFor__NEWLINE____listitem__item___2: 8091650 false) 
	#(84 0 #reduceActionForPopFlow1: 11138049 true) 
	#(35 2 #reduceActionForfile1: 6134786 false) 
	#(95 2 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE_____2: 11950082 false) 
	#(97 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 11977729 false) 
	#(74 2 #reduceActionFormapping10: 9910282 false) 
	#(38 2 #reduceActionFordocumentValue18: 6267922 false) 
	#(38 2 #reduceActionFordocumentValue18: 6267906 false) 
	#(38 2 #reduceActionFordocumentValue18: 6267910 false) 
	#(38 2 #reduceActionFordocumentValue18: 6267920 false) 
	#(93 2 #reduceActionForfileDocuments5: 11879429 false) 
	#(101 2 #reduceActionForTagsOrAnchors2: 12486658 false) 
	#(57 2 #reduceActionForfileDocuments3: 8401928 false) 
	#(57 2 #reduceActionForfileDocuments3: 8401932 false) 
	#(79 0 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 10786817 false) 
	#(51 0 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 7882753 false) 
	#(68 0 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 9449473 false) 
	#(46 3 #reduceActionForlistitem3: 7058435 false) 
	#(57 2 #reduceActionFordocumentValue18: 8401954 false) 
	#(57 2 #reduceActionFordocumentValue18: 8401922 false) 
	#(57 2 #reduceActionFordocumentValue18: 8401926 false) 
	#(57 2 #reduceActionFordocumentValue18: 8401929 false) 
	#(57 2 #reduceActionFordocumentValue18: 8401933 false) 
	#(57 2 #reduceActionFordocumentValue18: 8401952 false) 
	#(46 3 #reduceActionForlistitem8: 7058440 false) 
	#(76 2 #reduceActionForMappingValue12: 10183692 false) 
	#(75 2 #reduceActionForMappingValueWithTags2: 10047490 false) 
	#(74 3 #reduceActionFormapping2: 9910274 false) 
	#(93 3 #reduceActionForfileDocuments4: 11879428 false) 
	#(38 3 #reduceActionFordocumentValue8: 6267912 false) 
	#(38 3 #reduceActionFordocumentValue8: 6267916 false) 
	#(65 0 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 9270273 false) 
	#(62 1 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 9225219 false) 
	#(63 1 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 9225217 false) 
	#(74 3 #reduceActionFormapping3: 9910275 false) 
	#(83 1 #liftFirstValue: 11068417 false) 
	#(83 1 #liftFirstValue: 11068420 false) 
	#(83 1 #liftFirstValue: 11068418 false) 
	#(82 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 10952705 false) 
	#(83 1 #liftFirstValue: 11068419 false) 
	#(89 1 #reduceActionFormapping9: 11520002 false) 
	#(89 1 #liftFirstValue: 11520001 false) 
	#(88 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 11399169 false) 
	#(94 2 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____1: 11950081 false) 
	#(98 2 #reduceActionForSplitDocument1: 12046337 false) 
	#(98 2 #reduceActionForSplitDocument13: 12046349 false) 
	#(74 3 #reduceActionFormapping5: 9910277 false) 
	#(93 3 #reduceActionForfileDocuments7: 11879431 false) 
	#(101 3 #reduceActionForTagsOrAnchors3: 12486659 false) 
	#(93 3 #reduceActionForfileDocuments6: 11879430 false) 
	#(38 3 #reduceActionFordocumentValue9: 6267913 false) 
	#(38 3 #reduceActionFordocumentValue9: 6267917 false) 
	#(41 3 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 6870019 false) 
	#(77 2 #reduceActionForlistWithoutInitialNewline1: 10740737 false) 
	#(47 3 #liftSecondValue: 7391242 false) 
	#(49 2 #reduceActionFormappingListWithoutInitialNewline1: 7827457 false) 
	#(47 3 #liftSecondValue: 7391240 false) 
	#(73 0 #reduceActionForPopScope1: 9872385 true) 
	#(57 3 #reduceActionFordocumentValue9: 8401930 false) 
	#(57 3 #reduceActionFordocumentValue9: 8401934 false) 
	#(46 4 #reduceActionForlistitem3: 7058436 false) 
	#(57 3 #reduceActionFordocumentValue8: 8401935 false) 
	#(57 3 #reduceActionFordocumentValue8: 8401943 false) 
	#(76 3 #reduceActionForMappingValue12: 10183704 false) 
	#(75 3 #reduceActionForMappingValueWithTags2: 10047491 false) 
	#(62 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part________multiline_string_2: 9225218 false) 
	#(41 4 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 6870023 false) 
	#(38 4 #reduceActionFordocumentValue3: 6267907 false) 
	#(63 2 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: 9225218 false) 
	#(61 4 #reduceActionFormultiline_string1: 9140225 false) 
	#(62 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part________multiline_string_2: 9225217 false) 
	#(74 4 #reduceActionFormapping4: 9910276 false) 
	#(80 4 #reduceActionForflowlist1: 10865665 false) 
	#(86 4 #reduceActionForflowmappinglist1: 11305985 false) 
	#(89 2 #reduceActionFormapping10: 11520003 false) 
	#(98 3 #reduceActionForSplitDocument17: 12046353 false) 
	#(98 3 #reduceActionForSplitDocument7: 12046343 false) 
	#(98 3 #reduceActionForSplitDocument14: 12046350 false) 
	#(94 3 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____5: 11950085 false) 
	#(94 3 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____1: 11950082 false) 
	#(94 3 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____3: 11950083 false) 
	#(97 2 #reduceActionFor_TagsOrAnchors__NEWLINE____2: 11977730 false) 
	#(98 3 #reduceActionForSplitDocument1: 12046340 false) 
	#(74 4 #reduceActionFormapping6: 9910278 false) 
	#(93 4 #reduceActionForfileDocuments8: 11879432 false) 
	#(38 4 #reduceActionFordocumentValue10: 6267914 false) 
	#(38 4 #reduceActionFordocumentValue10: 6267918 false) 
	#(74 4 #reduceActionFormapping7: 9910279 false) 
	#(41 4 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 6870020 false) 
	#(47 4 #reduceActionFordocumentValue3: 7391235 false) 
	#(57 4 #reduceActionFordocumentValue3: 8401923 false) 
	#(47 4 #reduceActionFordocumentValue3: 7391237 false) 
	#(47 4 #reduceActionFordocumentValue3: 7391233 false) 
	#(57 4 #reduceActionForvalue19: 8401939 false) 
	#(57 4 #reduceActionForvalue19: 8401947 false) 
	#(78 1 #liftFirstValue: 10786817 false) 
	#(79 2 #reduceActionFor__NEWLINE____listitem__item___2: 10786818 false) 
	#(47 4 #liftSecondValue: 7391243 false) 
	#(51 2 #reduceActionFor__NEWLINE____listitem__item___2: 7882754 false) 
	#(49 3 #reduceActionFormappingListWithoutInitialNewline1: 7827458 false) 
	#(47 4 #liftSecondValue: 7391241 false) 
	#(68 2 #reduceActionFor__NEWLINE____listitem__item___2: 9449474 false) 
	#(69 1 #liftFirstValue: 9450497 false) 
	#(102 4 #reduceActionForTagAndAnchorWithIndent1: 12561409 false) 
	#(46 5 #reduceActionForlistitem3: 7058437 false) 
	#(57 4 #reduceActionForvalue19: 8401936 false) 
	#(57 4 #reduceActionForvalue19: 8401944 false) 
	#(57 4 #reduceActionForvalue17: 8401937 false) 
	#(57 4 #reduceActionForvalue17: 8401945 false) 
	#(76 4 #reduceActionForMappingValue5: 10183685 false) 
	#(76 4 #reduceActionForMappingValue5: 10183698 false) 
	#(76 4 #reduceActionForMappingValue5: 10183681 false) 
	#(76 4 #reduceActionForMappingValue5: 10183696 false) 
	#(76 4 #reduceActionForMappingValue12: 10183705 false) 
	#(75 4 #reduceActionForMappingValueWithTags2: 10047492 false) 
	#(61 5 #reduceActionFormultiline_string5: 9140229 false) 
	#(64 1 #nil 9270273 false) 
	#(65 2 #reduceActionFor__NEWLINE____listitem__item___2: 9270274 false) 
	#(41 5 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 6870024 false) 
	#(38 5 #reduceActionFordocumentValue3: 6267908 false) 
	#(61 5 #reduceActionFormultiline_string1: 9140226 false) 
	#(80 5 #reduceActionForflowlist2: 10865666 false) 
	#(82 2 #reduceActionForTagsOrAnchors2: 10952706 false) 
	#(86 5 #reduceActionForflowmappinglist2: 11305986 false) 
	#(88 2 #reduceActionForTagsOrAnchors2: 11399170 false) 
	#(61 5 #reduceActionFormultiline_string5: 9140227 false) 
	#(98 4 #reduceActionForSplitDocument18: 12046354 false) 
	#(98 4 #reduceActionForSplitDocument21: 12046357 false) 
	#(98 4 #reduceActionForSplitDocument20: 12046356 false) 
	#(98 4 #reduceActionForSplitDocument7: 12046346 false) 
	#(94 4 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____5: 11950086 false) 
	#(94 4 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____7: 11950087 false) 
	#(94 4 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____3: 11950084 false) 
	#(96 2 #reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 11977729 false) 
	#(98 4 #reduceActionForSplitDocument2: 12046338 false) 
	#(74 5 #reduceActionFormapping8: 9910280 false) 
	#(80 5 #reduceActionForflowlist5: 10865669 false) 
	#(86 5 #reduceActionForflowmappinglist5: 11305989 false) 
	#(57 5 #reduceActionForvalue20: 8401940 false) 
	#(57 5 #reduceActionForvalue20: 8401948 false) 
	#(47 5 #reduceActionFordocumentValue3: 7391236 false) 
	#(57 5 #reduceActionFordocumentValue3: 8401924 false) 
	#(47 5 #reduceActionFordocumentValue3: 7391238 false) 
	#(47 5 #reduceActionFordocumentValue3: 7391234 false) 
	#(57 5 #reduceActionForvalue21: 8401941 false) 
	#(57 5 #reduceActionForvalue21: 8401949 false) 
	#(78 2 #liftSecondValue: 10786819 false) 
	#(78 2 #liftFirstValue: 10786818 false) 
	#(67 2 #liftSecondValue: 9449473 false) 
	#(69 2 #liftFirstValue: 9450498 false) 
	#(66 5 #reduceActionForstring_literal1: 9387009 false) 
	#(71 5 #reduceActionForstring_literal1: 9628673 false) 
	#(57 5 #reduceActionForvalue18: 8401938 false) 
	#(57 5 #reduceActionForvalue18: 8401946 false) 
	#(76 5 #reduceActionForMappingValue5: 10183686 false) 
	#(76 5 #reduceActionForMappingValue5: 10183699 false) 
	#(76 5 #reduceActionForMappingValue5: 10183682 false) 
	#(76 5 #reduceActionForMappingValue5: 10183697 false) 
	#(76 5 #reduceActionForMappingValue7: 10183687 false) 
	#(76 5 #reduceActionForMappingValue7: 10183702 false) 
	#(76 5 #reduceActionForMappingValue7: 10183683 false) 
	#(76 5 #reduceActionForMappingValue7: 10183700 false) 
	#(61 6 #reduceActionFormultiline_string5: 9140230 false) 
	#(64 2 #liftSecondValue: 9270275 false) 
	#(64 2 #liftSecondValue: 9270274 false) 
	#(81 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 10952705 false) 
	#(80 6 #reduceActionForflowlist3: 10865667 false) 
	#(87 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 11399169 false) 
	#(86 6 #reduceActionForflowmappinglist3: 11305987 false) 
	#(61 6 #reduceActionFormultiline_string5: 9140228 false) 
	#(98 5 #reduceActionForSplitDocument22: 12046358 false) 
	#(98 5 #reduceActionForSplitDocument8: 12046344 false) 
	#(94 5 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____7: 11950088 false) 
	#(98 5 #reduceActionForSplitDocument3: 12046339 false) 
	#(98 5 #reduceActionForSplitDocument5: 12046341 false) 
	#(80 6 #reduceActionForflowlist6: 10865670 false) 
	#(86 6 #reduceActionForflowmappinglist6: 11305990 false) 
	#(57 6 #reduceActionForvalue22: 8401942 false) 
	#(57 6 #reduceActionForvalue22: 8401950 false) 
	#(78 3 #liftSecondValue: 10786820 false) 
	#(66 6 #reduceActionForstring_literal1: 9387010 false) 
	#(71 6 #reduceActionForstring_literal1: 9628674 false) 
	#(76 6 #reduceActionForMappingValue13: 10183693 false) 
	#(76 6 #reduceActionForMappingValue7: 10183688 false) 
	#(76 6 #reduceActionForMappingValue7: 10183703 false) 
	#(76 6 #reduceActionForMappingValue7: 10183684 false) 
	#(76 6 #reduceActionForMappingValue7: 10183701 false) 
	#(80 7 #reduceActionForflowlist4: 10865668 false) 
	#(86 7 #reduceActionForflowmappinglist4: 11305988 false) 
	#(98 6 #reduceActionForSplitDocument9: 12046345 false) 
	#(98 6 #reduceActionForSplitDocument11: 12046347 false) 
	#(98 6 #reduceActionForSplitDocument6: 12046342 false) 
	#(80 7 #reduceActionForflowlist7: 10865671 false) 
	#(86 7 #reduceActionForflowmappinglist7: 11305991 false) 
	#(76 7 #reduceActionForMappingValue14: 10183694 false) 
	#(98 7 #reduceActionForSplitDocument12: 12046348 false) 
	#(80 8 #reduceActionForflowlist8: 10865672 false) 
	#(86 8 #reduceActionForflowmappinglist8: 11305992 false)
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
	^ #('<newline>' '<DECIMAL_INTEGER>' '<OCT_INTEGER>' '<HEX_INTEGER>' '<BIN_INTEGER>' '<FLOAT_NUMBER>' '<IMAG_NUMBER>' '<MINUS>' '<DOCUMENTSTART1>' '<DOCUMENTEND1>' '<COMMA>' '<COLON>' '<OPEN_BRACK>' '<CLOSE_BRACK>' '<OPEN_BRACE>' '<CLOSE_BRACE>' '<LITERAL_STR_IND>' '<FOLD_STR_IND>' '<ANCHOR>' '<GLOBAL_TAG>' '<TAG>' '<ALIAS>' '<STRING_MY>' '<SKIP1>' '<SPACES>' '<comment>' '<STRING_MY_2>' '<SKIP2>' '<newline_str_literal>' '<STRING_MY_3>' '<doubleQuoteString>' '<questionMark>' '<singleQuoteString>' 'B e g i n' 'file' '<NEWLINE>+' 'document' 'documentValue' 'SetDocumentIndent' 'documentMultilineString' '(<NEWLINE>+? 
		((numberToken ''part'' | <STRING_MY> ''part'') | (<INDENT> documentMultilineString <NEWLINE>+? <DEDENT>)))' '(<NEWLINE>+? 
		((numberToken ''part'' | <STRING_MY> ''part'') | (<INDENT> documentMultilineString <NEWLINE>+? <DEDENT>)))+' 'list' '(<NEWLINE>+? listitem ''item'')' '(<NEWLINE>+? listitem ''item'')+' 'listitem' 'ListItemValue' 'alias' 'mappingListWithoutInitialNewline' '(<NEWLINE>+? mapping ''mapping'')' '(<NEWLINE>+? mapping ''mapping'')*' 'PushIndent' 'mappinglist' '(<NEWLINE>+? mapping ''mapping'')+' 'key' 'ComplexKey' 'value' 'PopIndent' 'string_single_quoted' 'value_scalar' 'multiline_string' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)* | multiline_string)' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)* | multiline_string)+' '(<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)' '(<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' 'PushLiteralString' 'string_folded' 'string_double_quoted' 'PopScope' 'mapping' 'MappingValueWithTags' 'MappingValue' 'listWithoutInitialNewline' '(<NEWLINE>+? listitem ''item'' <NEWLINE>?)' '(<NEWLINE>+? listitem ''item'' <NEWLINE>?)*' 'flowlist' '(<COMMA> ''comma'' flowListValue  ''item'')' '(<COMMA> ''comma'' flowListValue  ''item'')*' 'flowListValue' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' flowMapping ''mapping'')' '(<COMMA> ''comma'' flowMapping ''mapping'')*' 'flowMapping' 'number' 'numberToken' 'integer' 'fileDocuments' '(SplitDocument <NEWLINE>+? (TagsOrAnchors <NEWLINE>+)* document ''document''? <NEWLINE>+?)' '(SplitDocument <NEWLINE>+? (TagsOrAnchors <NEWLINE>+)* document ''document''? <NEWLINE>+?)*' '(TagsOrAnchors <NEWLINE>+)' '(TagsOrAnchors <NEWLINE>+)*' 'SplitDocument' 'SetZeroIndent' 'TagOrAnchor' 'TagsOrAnchors' 'TagAndAnchorWithIndent' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
]

{ #category : #generated }
YAMLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #YAMLFileNode #YAMLFileNode #SmaCCToken #YAMLValueNode #YAMLValueNode nil #YAMLStringNode #SmaCCToken #OrderedCollection #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLListItemNode #YAMLValueNode #YAMLAliasNode #YAMLMappingListNode #YAMLMappingNode #OrderedCollection nil #YAMLMappingListNode #OrderedCollection #YAMLParseNode #YAMLComplexKeyNode #YAMLValueNode nil #YAMLStringNode #YAMLValueNode #YAMLStringNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #YAMLStringNode #SmaCCToken #OrderedCollection #SmaCCToken #Object #YAMLStringNode #YAMLStringNode nil #YAMLMappingNode #OrderedCollection #OrderedCollection #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLFlowListNode #OrderedCollection #OrderedCollection #YAMLParseNode nil nil #YAMLFlowMappingListNode #OrderedCollection #OrderedCollection #YAMLMappingNode #YAMLNumberNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection nil #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
YAMLParser class >> transitionTable [
^#(
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 0 69 0 35 0 73 0 36 0 77 0 37 0 77 0 38 0 85 0 39 0 77 0 40 0 93 0 41 0 97 0 42 0 77 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 0 77 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 72 0 121 0 74 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 0 177 0 91 0 177 0 92 0 185 0 93 0 189 0 95 0 193 0 100 0 197 0 101 0 14 0 104 0 14 0 105 0 201 0 107 0 7 0 108 0 14 0 110] 
#[0 0 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 46 0 17 0 46 0 18 0 15 0 19 0 19 0 21 0 23 0 22 0 27 0 23 0 31 0 31 0 42 0 32 0 35 0 33 0 221 0 36 0 225 0 47 0 229 0 48 0 233 0 52 0 237 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 0 225 0 80 0 165 0 85 0 225 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 29 0 101 1 33 0 102 1 37 0 107 0 39 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 1 61 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 0 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 0 62 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 70 0 12 0 75 0 20 0 66 0 23 1 85 0 36 0 75 0 104 0 75 0 105 0 66 0 107 0 79 0 108 0 75 0 110] 
#[1 0 78 0 11 0 82 0 12 0 78 0 14 0 78 0 20 0 78 0 103 0 78 0 104 0 78 0 105 0 83 0 108 0 78 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 1 89 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 0 86 0 11 0 90 0 12 0 86 0 14 0 86 0 20 0 86 0 103 0 86 0 104 0 86 0 105 0 87 0 108 0 86 0 110] 
#[0 0 0 0 110] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 101 0 36 1 105 0 37 1 105 0 38 1 109 0 39 1 105 0 40 0 93 0 41 0 97 0 42 1 105 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 1 105 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 72 1 117 0 74 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 1 121 0 91 1 121 0 92 1 125 0 95 0 193 0 100 1 129 0 101 0 14 0 104 0 14 0 105 1 133 0 107 0 91 0 108 0 14 0 110] 
#[1 0 14 0 20 1 141 0 95 0 14 0 104 0 14 0 105 0 14 0 108 0 14 0 110] 
#[0 0 94 0 20 0 104 0 105 0 108 0 110] 
#[1 0 46 0 17 0 46 0 18 1 145 0 66 1 1 0 70 1 149 0 71] 
#[0 0 98 0 20 0 104 0 105 0 108 0 110] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 1 165 0 2 1 165 0 3 1 165 0 4 1 165 0 5 1 165 0 6 1 165 0 7 0 106 0 20 1 153 0 23 1 157 0 36 1 161 0 41 1 165 0 91 1 165 0 92 0 106 0 103 0 106 0 104 0 106 0 105 0 201 0 107 0 95 0 108 0 106 0 110] 
#[0 0 110 0 20 0 104 0 105 0 108 0 110] 
#[0 0 114 0 8 0 20 0 103 0 104 0 105 0 108 0 110] 
#[1 0 33 0 8 0 118 0 20 1 169 0 36 1 173 0 44 1 173 0 46 0 118 0 103 0 118 0 104 0 118 0 105 0 99 0 108 0 118 0 110] 
#[0 0 122 0 8 0 20 0 103 0 104 0 105 0 108 0 110] 
#[0 0 126 0 11 0 12 0 16 0 108] 
#[0 0 130 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 134 0 20 0 104 0 105 0 108 0 110] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 138 0 20 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 1 189 0 36 0 133 0 48 1 193 0 50 0 133 0 55 0 137 0 56 1 193 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 100 1 205 0 101 0 138 0 103 0 138 0 104 0 138 0 105 0 103 0 108 0 138 0 110] 
#[1 1 209 0 12 1 213 0 36 1 213 0 108] 
#[1 0 107 0 11 0 107 0 12 0 146 0 13 0 146 0 14 0 146 0 15 0 107 0 16 0 146 0 19 0 146 0 20 0 146 0 21 0 146 0 22 0 146 0 23 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 103 0 146 0 104 0 146 0 105 0 107 0 108 0 146 0 110] 
#[0 0 150 0 20 0 104 0 105 0 108 0 110] 
#[0 0 154 0 20 0 104 0 105 0 108 0 110] 
#[0 0 158 0 20 0 104 0 105 0 108 0 110] 
#[0 0 162 0 20 0 104 0 105 0 108 0 110] 
#[0 0 166 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 170 0 12 0 174 0 20 0 174 0 104 0 174 0 105 0 111 0 108 0 174 0 110] 
#[1 1 217 0 13 1 221 0 15] 
#[1 0 178 0 12 0 182 0 20 0 182 0 104 0 182 0 105 0 115 0 108 0 182 0 110] 
#[0 0 186 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 190 0 2 0 190 0 3 0 190 0 4 0 190 0 5 0 190 0 6 0 190 0 7 0 119 0 20 0 190 0 23 1 225 0 36 0 119 0 104 0 119 0 105 0 190 0 107 0 123 0 108 0 119 0 110] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 1 229 0 36 1 229 0 108 0 202 0 110] 
#[1 1 233 0 20 1 237 0 36 1 241 0 94 1 245 0 98 1 249 0 99 0 206 0 104 0 206 0 105 0 127 0 108 0 210 0 110] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 1 253 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 2 1 0 36 2 5 0 37 2 5 0 38 2 9 0 39 2 5 0 40 0 93 0 41 0 97 0 42 2 5 0 43 0 105 0 44 0 109 0 45 0 105 0 46 2 13 0 48 0 121 0 50 2 5 0 53 0 129 0 54 2 13 0 55 2 17 0 56 2 21 0 59 2 25 0 60 2 29 0 61 2 33 0 72 0 121 0 74 0 161 0 80 2 37 0 85 0 169 0 86 2 25 0 90 0 177 0 91 0 177 0 92 2 41 0 95 2 45 0 100 1 129 0 101 0 14 0 104 0 14 0 105 0 201 0 107 0 7 0 108 0 14 0 110] 
#[1 1 165 0 2 1 165 0 3 1 165 0 4 1 165 0 5 1 165 0 6 1 165 0 7 1 153 0 23 1 157 0 36 2 49 0 40 0 93 0 41 0 97 0 42 1 165 0 91 1 165 0 92 0 201 0 107 1 157 0 108] 
#[0 0 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 0 74 0 8 0 74 0 11 0 74 0 12 0 74 0 13 0 74 0 14 0 74 0 15 0 74 0 16 0 74 0 19 0 74 0 20 0 74 0 21 0 74 0 22 0 74 0 23 0 74 0 31 0 74 0 32 0 74 0 33 1 85 0 36 0 74 0 103 0 74 0 104 0 74 0 105 0 131 0 108 0 74 0 110] 
#[0 0 78 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 86 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 46 0 17 0 46 0 18 2 53 0 66 1 1 0 70 2 57 0 71 2 61 0 107 2 65 0 108] 
#[0 0 222 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 226 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 2 73 0 46 0 133 0 48 2 77 0 49 0 133 0 55 0 137 0 56 2 81 0 74 2 85 0 77 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 100 1 205 0 101 2 69 0 108] 
#[0 0 230 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 234 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 238 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 242 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 246 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 2 89 0 17 2 93 0 18] 
#[0 0 250 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 254 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 2 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 6 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 194 0 8 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 23 0 194 0 31 0 194 0 32 0 194 0 33 1 225 0 36 0 194 0 103 0 194 0 104 0 194 0 105 0 135 0 108 0 194 0 110] 
#[1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 23 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 103 0 214 0 104 0 214 0 105 0 139 0 108 0 214 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 46 0 17 0 46 0 18 0 15 0 19 0 19 0 21 0 42 0 22 0 27 0 23 0 31 0 31 0 42 0 32 0 35 0 33 2 101 0 36 2 105 0 47 0 233 0 52 2 109 0 59 2 113 0 60 2 117 0 61 2 121 0 66 1 1 0 70 2 125 0 71 2 129 0 72 2 105 0 80 2 37 0 85 2 105 0 86 2 113 0 90 1 21 0 91 1 21 0 92 2 45 0 100 2 133 0 101 0 143 0 108] 
#[1 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 15 0 19 0 19 0 21 0 42 0 22 0 42 0 23 0 42 0 31 0 42 0 32 0 42 0 33 2 141 0 36 2 145 0 47 0 233 0 52 2 145 0 80 0 165 0 85 2 145 0 86 0 193 0 100 2 133 0 101 0 147 0 108] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 2 149 0 36 2 153 0 58 0 193 0 100 2 157 0 101 2 149 0 108] 
#[1 1 14 0 8 1 14 0 11 1 14 0 12 1 14 0 13 1 14 0 14 1 14 0 15 1 14 0 16 0 218 0 17 0 218 0 18 1 14 0 19 1 14 0 20 1 14 0 21 1 14 0 22 1 14 0 23 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 103 1 14 0 104 1 14 0 105 0 218 0 107 0 151 0 108 1 14 0 110] 
#[1 0 33 0 8 0 46 0 17 0 46 0 18 2 73 0 46 2 53 0 66 1 1 0 70 2 57 0 71 2 161 0 77 2 165 0 107 2 65 0 108] 
#[0 1 18 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 33 0 8 2 73 0 46 2 169 0 77] 
#[0 1 22 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 26 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 30 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 34 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 38 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 2 173 0 36 1 49 0 48 1 53 0 52 2 109 0 59 2 113 0 60 2 117 0 61 2 121 0 66 1 1 0 70 2 125 0 71 2 129 0 72 2 177 0 76 1 69 0 80 2 37 0 85 1 73 0 86 2 113 0 90 1 21 0 91 1 21 0 92 2 45 0 100 2 133 0 101 0 50 0 103 0 50 0 104 0 50 0 105 0 71 0 108 0 50 0 110] 
#[1 0 42 0 8 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 181 0 36 1 49 0 48 1 53 0 52 2 185 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 193 0 100 2 133 0 101 0 50 0 103 0 71 0 108] 
#[1 2 189 0 107 2 65 0 108] 
#[0 1 42 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 2 193 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 0 155 0 2 0 155 0 3 0 155 0 4 0 155 0 5 0 155 0 6 0 155 0 7 0 70 0 12 0 159 0 20 0 155 0 23 1 85 0 36 0 159 0 104 0 159 0 105 0 155 0 107 0 163 0 108 0 159 0 110] 
#[1 2 213 0 2 2 213 0 3 2 213 0 4 2 213 0 5 2 213 0 6 2 213 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 197 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 2 201 0 39 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 209 0 74 0 133 0 80 0 165 0 85 0 133 0 86 2 213 0 91 2 213 0 92 0 193 0 100 1 205 0 101 2 217 0 107 1 137 0 108] 
#[1 0 14 0 20 2 221 0 95 0 14 0 104 0 14 0 105 0 14 0 108 0 14 0 110] 
#[1 0 46 0 17 0 46 0 18 2 225 0 66 1 1 0 70 2 229 0 71] 
#[0 0 167 0 8 0 20 0 104 0 105 0 108 0 110] 
#[0 0 171 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 108 0 110] 
#[1 0 175 0 2 0 175 0 3 0 175 0 4 0 175 0 5 0 175 0 6 0 175 0 7 0 179 0 20 0 175 0 23 1 225 0 36 0 179 0 104 0 179 0 105 0 175 0 107 0 183 0 108 0 179 0 110] 
#[1 1 233 0 20 1 237 0 36 1 241 0 94 1 245 0 98 1 249 0 99 0 206 0 104 0 206 0 105 0 187 0 108 1 62 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 233 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 2 241 0 36 2 245 0 39 2 249 0 48 2 249 0 55 2 253 0 56 3 1 0 59 3 5 0 60 3 9 0 61 3 13 0 72 2 249 0 80 2 37 0 85 2 249 0 86 3 5 0 90 1 21 0 91 1 21 0 92 2 45 0 100 2 133 0 101 2 241 0 108] 
#[1 3 45 0 2 3 45 0 3 3 45 0 4 3 45 0 5 3 45 0 6 3 45 0 7 0 49 0 22 3 17 0 23 3 21 0 36 3 25 0 40 0 93 0 41 0 97 0 42 3 29 0 48 3 33 0 61 3 37 0 62 3 41 0 63 3 45 0 91 3 45 0 92 0 201 0 107 3 21 0 108] 
#[1 0 191 0 2 0 191 0 3 0 191 0 4 0 191 0 5 0 191 0 6 0 191 0 7 0 191 0 8 0 191 0 12 0 191 0 13 0 191 0 15 0 191 0 17 0 191 0 18 0 191 0 19 1 66 0 20 0 191 0 21 0 191 0 22 0 191 0 23 0 191 0 31 0 191 0 32 0 191 0 33 0 191 0 103 1 66 0 104 0 191 0 105 0 191 0 107 0 191 0 108 1 66 0 110] 
#[1 1 233 0 20 1 237 0 36 1 241 0 94 1 245 0 98 1 249 0 99 0 206 0 104 0 206 0 105 0 195 0 108 1 70 0 110] 
#[0 1 74 0 20 0 104 0 105 0 108 0 110] 
#[0 1 78 0 20 0 104 0 105 0 108 0 110] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 2 213 0 2 2 213 0 3 2 213 0 4 2 213 0 5 2 213 0 6 2 213 0 7 3 49 0 23 2 213 0 91 2 213 0 92 3 53 0 107 2 65 0 108] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 0 33 0 8 2 205 0 46 2 65 0 108] 
#[0 1 86 0 8 0 20 0 103 0 104 0 105 0 108 0 110] 
#[0 0 70 0 11 0 12 0 16 0 108] 
#[0 0 82 0 11 0 12 0 16 0 108] 
#[0 0 90 0 11 0 12 0 16 0 108] 
#[1 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 0 133 0 48 0 133 0 55 0 137 0 56 2 209 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 100 1 205 0 101 1 137 0 108] 
#[0 1 90 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 0 170 0 11 0 12 0 16 0 108] 
#[0 0 178 0 11 0 12 0 16 0 108] 
#[1 2 233 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 3 57 0 36 2 249 0 48 2 249 0 55 2 253 0 56 2 249 0 80 2 37 0 85 2 249 0 86 2 45 0 100 2 133 0 101 3 57 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 3 61 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 3 65 0 12 2 65 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 3 69 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 73 0 36 0 133 0 48 0 133 0 55 0 137 0 56 3 89 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 3 89 0 74 3 85 0 80 3 89 0 83 3 93 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 100 3 101 0 101 1 37 0 107 3 73 0 108] 
#[1 3 105 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 3 109 0 48 3 109 0 55 0 137 0 56 3 121 0 74 3 109 0 80 3 117 0 84 0 165 0 85 3 109 0 86 3 121 0 89 0 193 0 100 3 125 0 101 2 69 0 108] 
#[1 3 129 0 107 2 65 0 108] 
#[1 2 65 0 108 1 98 0 110] 
#[1 3 133 0 36 3 137 0 99 0 206 0 105 3 133 0 108] 
#[1 3 141 0 20 3 145 0 36 3 149 0 99 0 206 0 104 0 206 0 105 1 137 0 108] 
#[0 1 102 0 20 0 104 0 105 0 108 0 110] 
#[1 1 106 0 2 1 106 0 3 1 106 0 4 1 106 0 5 1 106 0 6 1 106 0 7 1 106 0 8 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 17 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 21 1 106 0 22 1 106 0 23 1 106 0 31 1 106 0 32 1 106 0 33 3 153 0 36 3 157 0 97 1 106 0 104 1 106 0 105 1 106 0 107 0 199 0 108 1 106 0 110] 
#[1 3 161 0 104 3 165 0 105] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 3 169 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 3 173 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 101 0 36 3 177 0 37 3 177 0 38 3 181 0 39 3 177 0 40 0 93 0 41 0 97 0 42 3 177 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 3 177 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 72 1 117 0 74 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 1 121 0 91 1 121 0 92 3 185 0 95 3 189 0 100 1 129 0 101 0 14 0 104 0 14 0 105 1 133 0 107 0 91 0 108 0 14 0 110] 
#[1 0 14 0 20 3 193 0 95 0 14 0 104 0 14 0 105 0 14 0 108 0 14 0 110] 
#[1 0 46 0 17 0 46 0 18 3 197 0 66 1 1 0 70 3 201 0 71] 
#[1 3 205 0 12 3 209 0 36 3 209 0 108] 
#[1 0 203 0 12 0 207 0 13 0 207 0 15 0 207 0 19 0 207 0 20 0 207 0 21 0 207 0 22 0 207 0 23 0 207 0 31 0 207 0 32 0 207 0 33 0 207 0 103 0 207 0 104 0 207 0 105 0 203 0 108 0 207 0 110] 
#[0 0 211 0 20 0 104 0 105 0 108 0 110] 
#[0 0 215 0 20 0 104 0 105 0 108 0 110] 
#[0 0 219 0 20 0 104 0 105 0 108 0 110] 
#[0 0 223 0 20 0 104 0 105 0 108 0 110] 
#[1 3 213 0 13 3 217 0 15] 
#[1 1 233 0 20 1 237 0 36 1 241 0 94 1 245 0 98 1 249 0 99 0 206 0 104 0 206 0 105 0 227 0 108 1 130 0 110] 
#[1 0 231 0 2 0 231 0 3 0 231 0 4 0 231 0 5 0 231 0 6 0 231 0 7 1 134 0 8 1 134 0 11 0 231 0 12 0 231 0 13 1 134 0 14 0 231 0 15 1 134 0 16 0 231 0 17 0 231 0 18 0 231 0 19 1 134 0 20 0 231 0 21 0 231 0 22 0 231 0 23 0 231 0 31 0 231 0 32 0 231 0 33 1 134 0 103 1 134 0 104 1 134 0 105 1 134 0 107 0 231 0 108 1 134 0 110] 
#[1 3 221 0 36 3 225 0 103 3 221 0 108] 
#[0 1 138 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 142 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 4 5 0 2 4 5 0 3 4 5 0 4 4 5 0 5 4 5 0 6 4 5 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 235 0 17 0 235 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 229 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 233 0 36 3 237 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 241 0 48 0 121 0 50 3 245 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 249 0 57 3 253 0 58 0 241 0 59 0 245 0 60 4 1 0 61 3 37 0 62 3 41 0 63 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 0 121 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 4 5 0 91 4 5 0 92 0 193 0 100 4 9 0 101 1 37 0 107 3 233 0 108] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 4 13 0 12 2 65 0 108] 
#[1 1 146 0 8 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 31 1 146 0 32 1 146 0 33 4 17 0 79 1 146 0 103 1 146 0 104 1 146 0 105 1 146 0 108 1 146 0 110] 
#[1 4 21 0 36 4 25 0 103 4 21 0 108] 
#[1 1 150 0 12 1 150 0 13 1 150 0 15 1 150 0 19 1 150 0 21 1 150 0 22 1 150 0 23 1 150 0 31 1 150 0 32 1 150 0 33 4 29 0 51 1 150 0 103 1 150 0 108] 
#[1 4 33 0 36 4 37 0 103 4 33 0 108] 
#[1 4 41 0 68 1 154 0 106 1 154 0 109] 
#[1 4 45 0 68 1 154 0 106 1 154 0 109] 
#[0 4 49 0 107] 
#[1 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 4 53 0 66 1 1 0 70 4 57 0 71 4 61 0 100 4 65 0 107 2 65 0 108] 
#[0 1 158 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 162 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 166 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 170 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 174 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 178 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 182 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 4 69 0 36 4 73 0 85 4 77 0 100 4 69 0 108] 
#[1 1 186 0 8 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 0 218 0 17 0 218 0 18 0 239 0 19 1 186 0 20 0 239 0 21 1 186 0 22 1 186 0 23 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 103 1 186 0 104 1 186 0 105 0 218 0 107 0 239 0 108 1 186 0 110] 
#[1 4 81 0 107 2 65 0 108] 
#[1 4 85 0 36 4 89 0 103 4 85 0 108] 
#[1 1 10 0 17 1 10 0 18 4 93 0 58 2 65 0 108] 
#[1 0 46 0 17 0 46 0 18 4 97 0 66 1 1 0 70 4 101 0 71] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 4 105 0 36 4 109 0 58 4 77 0 100 4 105 0 108] 
#[0 1 190 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 4 5 0 2 4 5 0 3 4 5 0 4 4 5 0 5 4 5 0 6 4 5 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 235 0 17 0 235 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 229 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 233 0 36 4 113 0 43 0 105 0 44 0 109 0 45 0 105 0 46 4 117 0 48 0 121 0 50 4 121 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 125 0 57 3 253 0 58 0 241 0 59 0 245 0 60 4 1 0 61 3 37 0 62 3 41 0 63 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 0 121 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 4 5 0 91 4 5 0 92 0 193 0 100 4 129 0 101 1 37 0 107 3 233 0 108] 
#[1 4 133 0 36 4 137 0 103 4 133 0 108] 
#[1 0 33 0 8 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 2 73 0 46 4 53 0 66 1 1 0 70 4 57 0 71 2 161 0 77 4 61 0 100 4 141 0 107 2 65 0 108] 
#[0 1 194 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 33 0 8 2 73 0 46 2 161 0 77 4 145 0 107 2 65 0 108] 
#[1 4 149 0 36 4 153 0 103 4 149 0 108] 
#[1 4 169 0 2 4 169 0 3 4 169 0 4 4 169 0 5 4 169 0 6 4 169 0 7 4 157 0 23 4 161 0 36 3 33 0 61 3 37 0 62 4 165 0 63 4 169 0 91 4 169 0 92 4 161 0 108] 
#[0 0 243 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 46 0 2 1 46 0 3 1 46 0 4 1 46 0 5 1 46 0 6 1 46 0 7 0 70 0 12 1 46 0 20 1 46 0 23 1 46 0 104 1 46 0 105 1 46 0 107 0 247 0 108 1 46 0 110] 
#[1 0 46 0 17 0 46 0 18 4 173 0 66 1 1 0 70 4 177 0 71] 
#[0 1 50 0 8 0 20 0 103 0 104 0 105 0 108 0 110] 
#[0 1 54 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 3 45 0 2 3 45 0 3 3 45 0 4 3 45 0 5 3 45 0 6 3 45 0 7 0 49 0 22 3 17 0 23 3 21 0 36 4 181 0 40 0 93 0 41 0 97 0 42 3 29 0 48 3 33 0 61 3 37 0 62 3 41 0 63 3 45 0 91 3 45 0 92 0 201 0 107 3 21 0 108] 
#[1 1 233 0 20 1 237 0 36 1 241 0 94 1 245 0 98 1 249 0 99 0 206 0 104 0 206 0 105 0 251 0 108 1 202 0 110] 
#[0 0 255 0 20 0 104 0 105 0 108 0 110] 
#[0 1 3 0 20 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 4 185 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 0 74 0 11 0 70 0 12 0 74 0 14 0 74 0 20 1 85 0 36 0 74 0 103 0 74 0 104 0 74 0 105 1 7 0 108 0 74 0 110] 
#[1 4 189 0 12 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 4 193 0 39 4 61 0 100 4 197 0 107 2 65 0 108] 
#[1 0 46 0 17 0 46 0 18 4 201 0 66 1 1 0 70 4 205 0 71] 
#[1 4 209 0 12 4 213 0 36 4 213 0 108] 
#[1 1 11 0 11 1 11 0 12 1 110 0 13 1 110 0 14 1 110 0 15 1 11 0 16 1 110 0 19 1 110 0 20 1 110 0 21 1 110 0 22 1 110 0 23 1 110 0 31 1 110 0 32 1 110 0 33 1 110 0 103 1 110 0 104 1 110 0 105 1 11 0 108 1 110 0 110] 
#[0 1 114 0 20 0 104 0 105 0 108 0 110] 
#[0 1 118 0 20 0 104 0 105 0 108 0 110] 
#[0 1 122 0 20 0 104 0 105 0 108 0 110] 
#[0 1 126 0 20 0 104 0 105 0 108 0 110] 
#[1 1 15 0 2 1 15 0 3 1 15 0 4 1 15 0 5 1 15 0 6 1 15 0 7 1 15 0 23 1 85 0 36 4 217 0 65 1 15 0 103 0 66 0 107 1 19 0 108] 
#[1 2 213 0 2 2 213 0 3 2 213 0 4 2 213 0 5 2 213 0 6 2 213 0 7 3 49 0 23 2 213 0 91 2 213 0 92 4 221 0 107 2 65 0 108] 
#[1 4 225 0 36 4 229 0 103 4 225 0 108] 
#[1 4 233 0 36 4 237 0 103 4 233 0 108] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 103 0 108] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 103 0 108] 
#[1 4 169 0 2 4 169 0 3 4 169 0 4 4 169 0 5 4 169 0 6 4 169 0 7 4 157 0 23 4 241 0 36 3 33 0 61 4 245 0 62 4 169 0 91 4 169 0 92 4 249 0 103 4 241 0 108] 
#[1 1 23 0 2 1 23 0 3 1 23 0 4 1 23 0 5 1 23 0 6 1 23 0 7 1 23 0 23 1 225 0 36 4 253 0 65 1 23 0 103 0 190 0 107 1 27 0 108] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 1 165 0 2 1 165 0 3 1 165 0 4 1 165 0 5 1 165 0 6 1 165 0 7 1 153 0 23 1 157 0 36 4 181 0 40 0 93 0 41 0 97 0 42 1 165 0 91 1 165 0 92 0 201 0 107 1 157 0 108] 
#[1 4 189 0 12 0 41 0 19 0 45 0 21 4 61 0 100 2 65 0 108] 
#[0 1 226 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 5 1 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 1 94 0 14 5 5 0 84] 
#[1 4 13 0 12 0 46 0 17 0 46 0 18 2 53 0 66 1 1 0 70 2 57 0 71 5 9 0 107 2 65 0 108] 
#[0 1 230 0 11 0 14] 
#[0 1 234 0 11 0 14] 
#[1 1 238 0 11 0 170 0 12 1 238 0 14 0 170 0 108] 
#[1 1 242 0 11 1 242 0 14 5 13 0 82] 
#[0 5 17 0 14] 
#[1 1 246 0 11 0 178 0 12 1 246 0 14 0 178 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 233 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 21 0 36 2 249 0 48 2 249 0 55 2 253 0 56 2 109 0 59 2 113 0 60 2 117 0 61 2 121 0 66 1 1 0 70 2 125 0 71 2 129 0 72 2 249 0 80 2 37 0 85 2 249 0 86 2 113 0 90 1 21 0 91 1 21 0 92 2 45 0 100 2 133 0 101 5 21 0 108] 
#[1 1 94 0 16 5 25 0 84] 
#[1 1 250 0 11 1 209 0 12 1 250 0 16 1 213 0 36 1 213 0 108] 
#[0 1 254 0 11 0 16] 
#[0 5 29 0 16] 
#[1 2 2 0 11 2 2 0 16 5 33 0 88] 
#[1 2 233 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 3 57 0 36 5 37 0 48 5 37 0 55 2 253 0 56 5 37 0 80 2 37 0 85 5 37 0 86 2 45 0 100 2 133 0 101 3 57 0 108] 
#[1 4 169 0 2 4 169 0 3 4 169 0 4 4 169 0 5 4 169 0 6 4 169 0 7 4 157 0 23 4 161 0 36 3 33 0 61 3 37 0 62 5 41 0 63 4 169 0 91 4 169 0 92 4 161 0 108] 
#[1 5 45 0 99 0 206 0 105 2 65 0 108] 
#[0 5 49 0 105] 
#[1 5 53 0 36 5 57 0 99 0 206 0 105 5 53 0 108] 
#[1 5 61 0 99 0 206 0 105 2 65 0 108] 
#[1 5 65 0 104 5 69 0 105] 
#[1 1 106 0 2 1 106 0 3 1 106 0 4 1 106 0 5 1 106 0 6 1 106 0 7 1 106 0 8 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 17 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 21 1 106 0 22 1 106 0 23 1 106 0 31 1 106 0 32 1 106 0 33 5 73 0 97 1 106 0 104 1 106 0 105 1 106 0 107 1 31 0 108 1 106 0 110] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 2 6 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 77 0 36 5 81 0 37 5 81 0 38 0 85 0 39 5 81 0 40 0 93 0 41 0 97 0 42 5 81 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 5 81 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 72 0 121 0 74 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 0 177 0 91 0 177 0 92 5 85 0 96 0 193 0 100 5 89 0 101 2 6 0 104 2 6 0 105 0 201 0 107 1 35 0 108 2 6 0 110] 
#[1 2 10 0 2 2 10 0 3 2 10 0 4 2 10 0 5 2 10 0 6 2 10 0 7 2 10 0 8 2 10 0 12 2 10 0 13 2 10 0 15 2 10 0 17 2 10 0 18 2 10 0 19 1 39 0 20 2 10 0 21 2 10 0 22 2 10 0 23 2 10 0 31 2 10 0 32 2 10 0 33 5 97 0 36 2 10 0 104 2 10 0 105 2 10 0 107 1 43 0 108 2 10 0 110] 
#[0 2 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 1 47 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 5 101 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 0 14 0 20 5 105 0 95 0 14 0 104 0 14 0 105 0 14 0 108 0 14 0 110] 
#[1 0 46 0 17 0 46 0 18 5 109 0 66 1 1 0 70 5 113 0 71] 
#[1 1 233 0 20 1 237 0 36 1 241 0 94 1 245 0 98 1 249 0 99 0 206 0 104 0 206 0 105 1 51 0 108 2 22 0 110] 
#[1 1 55 0 2 1 55 0 3 1 55 0 4 1 55 0 5 1 55 0 6 1 55 0 7 2 26 0 8 1 55 0 12 1 55 0 13 1 55 0 15 1 55 0 17 1 55 0 18 1 55 0 19 2 26 0 20 1 55 0 21 1 55 0 22 1 55 0 23 1 55 0 31 1 55 0 32 1 55 0 33 2 26 0 104 2 26 0 105 2 26 0 107 1 55 0 108 2 26 0 110] 
#[1 1 233 0 20 1 237 0 36 1 241 0 94 1 245 0 98 1 249 0 99 0 206 0 104 0 206 0 105 1 59 0 108 2 30 0 110] 
#[0 1 63 0 20 0 104 0 105 0 108 0 110] 
#[0 1 67 0 20 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 5 117 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 5 121 0 12 2 65 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 5 125 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 73 0 36 0 133 0 48 0 133 0 55 0 137 0 56 5 129 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 5 129 0 74 3 85 0 80 5 129 0 83 5 133 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 100 3 101 0 101 1 37 0 107 3 73 0 108] 
#[1 5 137 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 3 109 0 48 3 109 0 55 0 137 0 56 5 145 0 74 3 109 0 80 5 141 0 84 0 165 0 85 3 109 0 86 5 145 0 89 0 193 0 100 3 125 0 101 2 69 0 108] 
#[1 5 149 0 103 2 65 0 108] 
#[0 2 42 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 0 70 0 12 1 214 0 23 1 85 0 36 4 217 0 65 1 71 0 103 1 75 0 108] 
#[1 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 235 0 17 0 235 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 5 153 0 58 2 53 0 66 1 1 0 70 2 57 0 71 2 209 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 100 1 205 0 101 5 9 0 107 1 137 0 108] 
#[1 5 157 0 36 5 161 0 103 5 157 0 108] 
#[1 0 126 0 12 5 165 0 36 5 169 0 103 1 79 0 108] 
#[1 5 173 0 36 5 177 0 103 5 173 0 108] 
#[1 5 181 0 36 5 185 0 103 5 181 0 108] 
#[1 0 46 0 17 0 46 0 18 5 189 0 66 1 1 0 70 5 193 0 71] 
#[1 1 218 0 2 1 218 0 3 1 218 0 4 1 218 0 5 1 218 0 6 1 218 0 7 1 218 0 23 1 83 0 103 1 83 0 108] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 225 0 36 4 253 0 65 1 87 0 103 1 91 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 233 0 12 0 6 0 13 0 6 0 15 0 235 0 17 0 235 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 197 0 36 2 249 0 48 2 249 0 55 2 253 0 56 5 201 0 58 2 109 0 59 2 113 0 60 2 117 0 61 2 121 0 66 1 1 0 70 2 125 0 71 2 129 0 72 2 249 0 80 2 37 0 85 2 249 0 86 2 113 0 90 1 21 0 91 1 21 0 92 2 45 0 100 2 133 0 101 5 197 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 5 205 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 0 33 0 8 2 46 0 11 2 46 0 12 2 46 0 13 2 46 0 14 2 46 0 15 2 46 0 16 2 46 0 19 2 46 0 20 2 46 0 21 2 46 0 22 2 46 0 23 2 46 0 31 2 46 0 32 2 46 0 33 5 209 0 36 5 213 0 46 5 217 0 78 2 46 0 103 2 46 0 104 2 46 0 105 1 95 0 108 2 46 0 110] 
#[1 5 221 0 103 2 65 0 108] 
#[0 2 50 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 1 189 0 36 0 133 0 48 5 225 0 50 0 133 0 55 0 137 0 56 5 225 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 100 1 205 0 101 2 54 0 103 1 99 0 108] 
#[1 5 233 0 103 2 65 0 108] 
#[0 2 58 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 5 237 0 67 5 241 0 69 5 245 0 73 2 62 0 106 5 241 0 109] 
#[1 5 237 0 67 5 253 0 69 6 1 0 73 2 62 0 106 5 253 0 109] 
#[1 0 41 0 19 0 45 0 21 6 5 0 100] 
#[0 2 66 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 70 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 4 5 0 2 4 5 0 3 4 5 0 4 4 5 0 5 4 5 0 6 4 5 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 229 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 9 0 36 3 237 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 3 245 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 249 0 57 0 241 0 59 0 245 0 60 4 1 0 61 3 37 0 62 3 41 0 63 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 0 121 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 4 5 0 91 4 5 0 92 0 193 0 100 3 101 0 101 1 37 0 107 6 9 0 108] 
#[1 0 41 0 19 0 45 0 21 4 61 0 100 2 65 0 108] 
#[1 6 13 0 13 6 17 0 15] 
#[0 1 134 0 13 0 15 0 17 0 18 0 19 0 21 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 9 0 36 3 237 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 3 245 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 249 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 0 121 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 100 3 101 0 101 1 37 0 107 6 9 0 108] 
#[1 6 21 0 103 2 65 0 108] 
#[0 2 74 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 46 0 17 0 46 0 18 6 25 0 66 1 1 0 70 6 29 0 71] 
#[0 2 78 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 82 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 6 33 0 58 4 61 0 100 2 65 0 108] 
#[1 0 46 0 17 0 46 0 18 6 37 0 66 1 1 0 70 6 41 0 71] 
#[1 6 45 0 36 6 49 0 103 6 45 0 108] 
#[1 0 126 0 12 6 53 0 36 6 57 0 103 1 79 0 108] 
#[1 6 61 0 36 6 65 0 103 6 61 0 108] 
#[1 6 69 0 36 6 73 0 103 6 69 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 1 253 0 12 0 6 0 13 0 6 0 15 0 235 0 17 0 235 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 77 0 36 6 81 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 85 0 48 0 121 0 50 6 89 0 53 0 129 0 54 2 13 0 55 2 17 0 56 6 93 0 57 5 201 0 58 6 97 0 59 6 101 0 60 6 105 0 61 6 109 0 66 1 1 0 70 6 113 0 71 6 117 0 72 0 121 0 74 2 13 0 80 2 37 0 85 2 13 0 86 6 101 0 90 1 21 0 91 1 21 0 92 2 45 0 100 3 101 0 101 1 37 0 107 6 77 0 108] 
#[1 6 121 0 103 2 65 0 108] 
#[0 2 86 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 4 5 0 2 4 5 0 3 4 5 0 4 4 5 0 5 4 5 0 6 4 5 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 229 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 9 0 36 4 113 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 125 0 48 0 121 0 50 4 121 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 125 0 57 0 241 0 59 0 245 0 60 4 1 0 61 3 37 0 62 3 41 0 63 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 0 121 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 4 5 0 91 4 5 0 92 0 193 0 100 6 129 0 101 1 37 0 107 6 9 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 9 0 36 4 113 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 125 0 48 0 121 0 50 4 121 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 125 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 0 121 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 100 6 129 0 101 1 37 0 107 6 9 0 108] 
#[1 6 133 0 103 2 65 0 108] 
#[0 2 90 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 85 0 36 4 217 0 65 1 214 0 103 1 103 0 108] 
#[1 4 197 0 107 2 65 0 108] 
#[1 4 169 0 2 4 169 0 3 4 169 0 4 4 169 0 5 4 169 0 6 4 169 0 7 4 157 0 23 6 137 0 36 3 33 0 61 4 245 0 62 4 169 0 91 4 169 0 92 6 141 0 103 6 137 0 108] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 225 0 36 4 253 0 65 1 214 0 103 1 103 0 108] 
#[0 1 206 0 20 0 104 0 105 0 108 0 110] 
#[0 1 210 0 20 0 104 0 105 0 108 0 110] 
#[1 6 145 0 36 6 149 0 103 6 145 0 108] 
#[0 2 18 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 6 153 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 0 46 0 17 0 46 0 18 6 157 0 66 1 1 0 70 6 161 0 71] 
#[1 4 169 0 2 4 169 0 3 4 169 0 4 4 169 0 5 4 169 0 6 4 169 0 7 4 157 0 23 4 161 0 36 3 33 0 61 3 37 0 62 3 41 0 63 4 169 0 91 4 169 0 92 4 161 0 108] 
#[0 2 34 0 20 0 104 0 105 0 108 0 110] 
#[0 2 38 0 20 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 6 165 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 6 169 0 12 2 65 0 108] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 5 2 94 0 6 2 94 0 7 2 94 0 23 6 173 0 36 6 177 0 64 2 94 0 103 1 107 0 108] 
#[1 3 45 0 2 3 45 0 3 3 45 0 4 3 45 0 5 3 45 0 6 3 45 0 7 3 17 0 23 3 21 0 36 4 181 0 40 0 93 0 41 0 97 0 42 3 33 0 61 3 37 0 62 3 41 0 63 3 45 0 91 3 45 0 92 0 201 0 107 3 21 0 108] 
#[1 6 181 0 103 2 65 0 108] 
#[0 1 111 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 107 0 108 0 110] 
#[1 6 185 0 103 2 65 0 108] 
#[0 2 102 0 20 0 104 0 105 0 108 0 110] 
#[1 6 189 0 103 4 197 0 107 2 65 0 108] 
#[0 2 106 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 103 0 108] 
#[0 2 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 2 114 0 2 2 114 0 3 2 114 0 4 2 114 0 5 2 114 0 6 2 114 0 7 2 114 0 23 6 173 0 36 6 177 0 64 2 114 0 103 1 115 0 108] 
#[0 2 118 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 6 193 0 14] 
#[1 4 169 0 2 4 169 0 3 4 169 0 4 4 169 0 5 4 169 0 6 4 169 0 7 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 4 157 0 23 6 197 0 36 6 201 0 48 3 253 0 58 3 33 0 61 3 37 0 62 3 41 0 63 4 169 0 91 4 169 0 92 0 193 0 100 6 205 0 101 6 197 0 108] 
#[1 6 209 0 11 1 94 0 14 6 213 0 81 6 217 0 84] 
#[0 2 122 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 4 189 0 12 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 4 53 0 66 1 1 0 70 4 57 0 71 4 61 0 100 4 197 0 107 2 65 0 108] 
#[0 6 221 0 16] 
#[0 2 126 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 6 225 0 11 1 94 0 16 6 229 0 84 6 233 0 87] 
#[1 2 130 0 11 4 209 0 12 2 130 0 16 4 213 0 36 4 213 0 108] 
#[1 4 169 0 2 4 169 0 3 4 169 0 4 4 169 0 5 4 169 0 6 4 169 0 7 4 157 0 23 6 237 0 36 3 33 0 61 4 245 0 62 4 169 0 91 4 169 0 92 6 241 0 103 6 237 0 108] 
#[0 6 245 0 105] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[1 6 249 0 99 0 206 0 105 2 65 0 108] 
#[0 6 253 0 105] 
#[0 7 1 0 105] 
#[1 2 138 0 2 2 138 0 3 2 138 0 4 2 138 0 5 2 138 0 6 2 138 0 7 2 138 0 8 2 138 0 12 2 138 0 13 2 138 0 15 2 138 0 17 2 138 0 18 2 138 0 19 1 119 0 20 2 138 0 21 2 138 0 22 2 138 0 23 2 138 0 31 2 138 0 32 2 138 0 33 7 9 0 36 2 138 0 104 2 138 0 105 2 138 0 107 1 123 0 108 2 138 0 110] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 2 146 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 7 13 0 36 7 17 0 37 7 17 0 38 0 85 0 39 7 17 0 40 0 93 0 41 0 97 0 42 7 17 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 7 17 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 72 0 121 0 74 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 0 177 0 91 0 177 0 92 5 85 0 96 0 193 0 100 5 89 0 101 2 146 0 104 2 146 0 105 0 201 0 107 1 127 0 108 2 146 0 110] 
#[1 2 213 0 2 2 213 0 3 2 213 0 4 2 213 0 5 2 213 0 6 2 213 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 2 150 0 20 0 45 0 21 0 49 0 22 2 197 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 2 201 0 39 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 209 0 74 0 133 0 80 0 165 0 85 0 133 0 86 2 213 0 91 2 213 0 92 0 193 0 100 1 205 0 101 2 150 0 104 2 150 0 105 2 217 0 107 1 131 0 108 2 150 0 110] 
#[1 2 154 0 20 7 21 0 36 2 154 0 104 2 154 0 105 1 135 0 108 2 154 0 110] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 233 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 7 25 0 36 2 245 0 39 2 249 0 48 2 249 0 55 2 253 0 56 3 1 0 59 3 5 0 60 3 9 0 61 3 13 0 72 2 249 0 80 2 37 0 85 2 249 0 86 3 5 0 90 1 21 0 91 1 21 0 92 2 45 0 100 2 133 0 101 7 25 0 108] 
#[0 7 29 0 36 0 108] 
#[1 2 162 0 2 2 162 0 3 2 162 0 4 2 162 0 5 2 162 0 6 2 162 0 7 2 162 0 8 2 162 0 12 2 162 0 13 2 162 0 15 2 162 0 17 2 162 0 18 2 162 0 19 1 139 0 20 2 162 0 21 2 162 0 22 2 162 0 23 2 162 0 31 2 162 0 32 2 162 0 33 7 37 0 36 2 162 0 104 1 143 0 105 2 162 0 107 1 147 0 108 2 162 0 110] 
#[0 1 151 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 233 0 20 1 237 0 36 1 241 0 94 1 245 0 98 1 249 0 99 0 206 0 104 0 206 0 105 1 155 0 108 2 170 0 110] 
#[0 1 159 0 20 0 104 0 105 0 108 0 110] 
#[0 1 163 0 20 0 104 0 105 0 108 0 110] 
#[0 1 167 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 7 45 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 1 94 0 14 7 49 0 84] 
#[1 1 242 0 11 1 242 0 14 7 53 0 82] 
#[0 7 57 0 14] 
#[1 1 94 0 16 7 61 0 84] 
#[0 7 65 0 16] 
#[1 2 2 0 11 2 2 0 16 7 69 0 88] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[1 0 46 0 17 0 46 0 18 7 73 0 66 1 1 0 70 7 77 0 71] 
#[1 7 81 0 103 2 65 0 108] 
#[0 2 190 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 85 0 103 2 65 0 108] 
#[0 2 194 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 89 0 103 2 65 0 108] 
#[0 2 198 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 93 0 103 2 65 0 108] 
#[0 2 202 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 206 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 210 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 4 189 0 12 0 235 0 17 0 235 0 18 0 41 0 19 0 45 0 21 7 97 0 58 4 53 0 66 1 1 0 70 4 57 0 71 4 61 0 100 4 197 0 107 2 65 0 108] 
#[1 0 46 0 17 0 46 0 18 7 101 0 66 1 1 0 70 7 105 0 71] 
#[0 1 198 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 33 0 8 7 109 0 46 2 65 0 108] 
#[1 2 214 0 8 2 214 0 11 2 214 0 12 2 214 0 13 2 214 0 14 2 214 0 15 2 214 0 16 2 214 0 19 2 214 0 20 2 214 0 21 2 214 0 22 2 214 0 23 2 214 0 31 2 214 0 32 2 214 0 33 2 214 0 103 2 214 0 104 2 214 0 105 1 171 0 108 2 214 0 110] 
#[0 2 218 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 222 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 226 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 108] 
#[1 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 19 0 218 0 21 0 218 0 22 0 218 0 23 0 218 0 31 0 218 0 32 0 218 0 33 2 230 0 103 1 175 0 108] 
#[0 2 234 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 238 0 106 0 109] 
#[1 7 117 0 23 7 121 0 73 2 62 0 106 7 125 0 109] 
#[0 7 129 0 106] 
#[0 2 242 0 23 0 106 0 109] 
#[1 7 117 0 23 7 133 0 73 2 62 0 106 7 125 0 109] 
#[0 7 137 0 106] 
#[0 2 246 0 8 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 108] 
#[1 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 53 0 66 1 1 0 70 2 57 0 71 2 209 0 74 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 100 1 205 0 101 5 9 0 107 1 137 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 7 141 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 73 0 36 0 133 0 48 0 133 0 55 0 137 0 56 7 145 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 7 145 0 74 3 85 0 80 7 145 0 83 7 149 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 100 3 101 0 101 1 37 0 107 3 73 0 108] 
#[1 7 153 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 3 109 0 48 3 109 0 55 0 137 0 56 7 161 0 74 3 109 0 80 7 157 0 84 0 165 0 85 3 109 0 86 7 161 0 89 0 193 0 100 3 125 0 101 2 69 0 108] 
#[0 2 250 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 254 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 2 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 46 0 17 0 46 0 18 7 165 0 66 1 1 0 70 7 169 0 71] 
#[0 3 6 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 10 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 173 0 103 2 65 0 108] 
#[0 3 14 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 177 0 103 2 65 0 108] 
#[0 1 179 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 181 0 103 2 65 0 108] 
#[0 3 22 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 185 0 103 2 65 0 108] 
#[0 3 26 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 33 0 8 3 173 0 12 0 6 0 13 0 6 0 15 0 235 0 17 0 235 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 7 189 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 7 97 0 58 7 193 0 66 1 1 0 70 7 197 0 71 2 209 0 74 0 133 0 80 0 165 0 85 0 133 0 86 3 189 0 100 1 205 0 101 7 201 0 103 5 9 0 107 1 137 0 108] 
#[1 7 205 0 36 7 209 0 103 7 205 0 108] 
#[1 0 126 0 12 7 213 0 36 7 217 0 103 1 79 0 108] 
#[1 7 221 0 36 7 225 0 103 7 221 0 108] 
#[1 7 229 0 36 7 233 0 103 7 229 0 108] 
#[0 1 183 0 103 0 108] 
#[0 1 187 0 103 0 108] 
#[0 1 191 0 103 0 108] 
#[0 1 195 0 103 0 108] 
#[0 1 199 0 103 0 108] 
#[0 1 203 0 103 0 108] 
#[0 3 30 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 126 0 12 7 237 0 36 7 241 0 103 1 79 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 1 253 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 7 245 0 36 6 81 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 85 0 48 0 121 0 50 6 89 0 53 0 129 0 54 2 13 0 55 2 17 0 56 6 93 0 57 6 97 0 59 6 101 0 60 6 105 0 61 6 109 0 66 1 1 0 70 6 113 0 71 6 117 0 72 0 121 0 74 2 13 0 80 2 37 0 85 2 13 0 86 6 101 0 90 1 21 0 91 1 21 0 92 2 45 0 100 3 101 0 101 1 37 0 107 7 245 0 108] 
#[0 3 34 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 249 0 103 4 197 0 107 2 65 0 108] 
#[0 3 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 7 253 0 103 2 65 0 108] 
#[0 2 98 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 2 166 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 174 0 20 0 104 0 105 0 108 0 110] 
#[0 2 178 0 20 0 104 0 105 0 108 0 110] 
#[0 2 182 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 8 1 0 75 1 65 0 76 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 100 1 77 0 101 1 81 0 102 0 50 0 103 0 50 0 104 0 50 0 105 1 37 0 107 0 71 0 108 0 50 0 110] 
#[1 1 207 0 2 1 211 0 3 1 215 0 4 1 219 0 5 1 223 0 6 1 227 0 7 1 231 0 23 8 9 0 91 8 9 0 92 3 42 0 103 1 235 0 108] 
#[0 3 46 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 103 0 108] 
#[0 1 239 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 107 0 108 0 110] 
#[0 3 54 0 20 0 104 0 105 0 108 0 110] 
#[0 3 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 62 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 10 0 17 1 10 0 18 5 153 0 58 4 197 0 107 2 65 0 108] 
#[1 5 165 0 36 5 169 0 103 5 165 0 108] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 8 13 0 36 5 201 0 58 4 77 0 100 8 13 0 108] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 73 0 36 0 133 0 48 0 133 0 55 0 137 0 56 8 17 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 8 17 0 74 3 85 0 80 8 17 0 83 8 21 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 100 3 101 0 101 1 37 0 107 3 73 0 108] 
#[0 3 66 0 11 0 14] 
#[0 8 25 0 14] 
#[0 3 70 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 3 109 0 48 3 109 0 55 0 137 0 56 8 33 0 74 3 109 0 80 8 29 0 84 0 165 0 85 3 109 0 86 8 33 0 89 0 193 0 100 3 125 0 101 2 69 0 108] 
#[0 8 37 0 16] 
#[0 3 74 0 11 0 16] 
#[1 8 41 0 103 4 197 0 107 2 65 0 108] 
#[0 3 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 8 45 0 105] 
#[0 3 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 3 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 8 49 0 36 0 108] 
#[1 3 94 0 2 3 94 0 3 3 94 0 4 3 94 0 5 3 94 0 6 3 94 0 7 3 94 0 8 3 94 0 12 3 94 0 13 3 94 0 15 3 94 0 17 3 94 0 18 3 94 0 19 1 243 0 20 3 94 0 21 3 94 0 22 3 94 0 23 3 94 0 31 3 94 0 32 3 94 0 33 8 57 0 36 3 94 0 104 1 247 0 105 3 94 0 107 1 251 0 108 3 94 0 110] 
#[1 2 213 0 2 2 213 0 3 2 213 0 4 2 213 0 5 2 213 0 6 2 213 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 3 98 0 20 0 45 0 21 0 49 0 22 2 197 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 2 201 0 39 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 209 0 74 0 133 0 80 0 165 0 85 0 133 0 86 2 213 0 91 2 213 0 92 0 193 0 100 1 205 0 101 3 98 0 104 3 98 0 105 2 217 0 107 1 255 0 108 3 98 0 110] 
#[1 3 102 0 20 8 65 0 36 3 102 0 104 3 102 0 105 2 3 0 108 3 102 0 110] 
#[1 3 106 0 20 3 106 0 104 3 106 0 105 2 7 0 108 3 106 0 110] 
#[1 3 110 0 2 3 110 0 3 3 110 0 4 3 110 0 5 3 110 0 6 3 110 0 7 3 110 0 8 2 11 0 12 3 110 0 13 3 110 0 15 2 15 0 17 2 15 0 18 2 19 0 19 3 110 0 20 2 23 0 21 3 110 0 22 3 110 0 23 3 110 0 31 3 110 0 32 3 110 0 33 4 193 0 39 4 61 0 100 3 110 0 104 3 110 0 105 2 27 0 107 2 31 0 108 3 110 0 110] 
#[1 8 69 0 105 2 65 0 108] 
#[0 8 73 0 36 0 108] 
#[1 8 77 0 105 2 65 0 108] 
#[0 3 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 2 35 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 8 81 0 14] 
#[1 8 85 0 11 1 94 0 14 6 213 0 81 8 89 0 84] 
#[0 2 39 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 8 93 0 16] 
#[0 2 43 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 8 97 0 11 1 94 0 16 8 101 0 84 6 233 0 87] 
#[0 3 130 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 134 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 138 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 142 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 146 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 150 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 46 0 17 0 46 0 18 8 105 0 66 1 1 0 70 8 109 0 71] 
#[0 3 154 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 158 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 3 162 0 8 3 162 0 11 3 162 0 12 3 162 0 13 3 162 0 14 3 162 0 15 3 162 0 16 3 162 0 19 3 162 0 20 3 162 0 21 3 162 0 22 3 162 0 23 3 162 0 31 3 162 0 32 3 162 0 33 3 162 0 103 3 162 0 104 3 162 0 105 2 47 0 108 3 162 0 110] 
#[0 3 166 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 170 0 106 0 109] 
#[0 8 117 0 106] 
#[0 3 174 0 23 0 106 0 109] 
#[0 3 178 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 8 121 0 106] 
#[0 3 182 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 94 0 14 8 125 0 84] 
#[1 1 242 0 11 1 242 0 14 8 129 0 82] 
#[0 8 133 0 14] 
#[1 1 94 0 16 8 137 0 84] 
#[0 8 141 0 16] 
#[1 2 2 0 11 2 2 0 16 8 145 0 88] 
#[0 3 186 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 190 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 194 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 51 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 202 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 206 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 4 13 0 12 8 149 0 103 2 65 0 108] 
#[0 2 55 0 103 0 108] 
#[0 2 59 0 103 0 108] 
#[1 0 33 0 8 2 73 0 46 8 153 0 77] 
#[1 8 157 0 103 2 65 0 108] 
#[0 3 210 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 8 161 0 103 2 65 0 108] 
#[0 3 214 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 8 165 0 103 2 65 0 108] 
#[0 3 218 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 8 169 0 103 2 65 0 108] 
#[0 3 222 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 8 173 0 103 2 65 0 108] 
#[0 3 18 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 33 0 8 3 173 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 7 189 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 7 193 0 66 1 1 0 70 7 197 0 71 2 209 0 74 0 133 0 80 0 165 0 85 0 133 0 86 3 189 0 100 1 205 0 101 7 201 0 103 5 9 0 107 1 137 0 108] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 50 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 105 0 107 0 108 0 110] 
#[0 3 118 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 103 0 108] 
#[0 3 234 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 103 0 108] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 7 97 0 58 4 61 0 100 2 65 0 108] 
#[0 3 238 0 11 0 14] 
#[0 8 177 0 14] 
#[0 3 242 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 8 181 0 16] 
#[0 3 246 0 11 0 16] 
#[0 3 250 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[1 8 185 0 105 2 65 0 108] 
#[0 8 189 0 36 0 108] 
#[1 8 193 0 105 2 65 0 108] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[1 4 10 0 20 4 10 0 104 4 10 0 105 2 63 0 108 4 10 0 110] 
#[0 4 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[1 8 197 0 105 2 65 0 108] 
#[0 4 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 2 67 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 73 0 36 0 133 0 48 0 133 0 55 0 137 0 56 8 17 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 8 17 0 74 3 85 0 80 8 17 0 83 8 201 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 100 3 101 0 101 1 37 0 107 3 73 0 108] 
#[0 8 205 0 14] 
#[0 2 71 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 3 109 0 48 3 109 0 55 0 137 0 56 8 33 0 74 3 109 0 80 8 209 0 84 0 165 0 85 3 109 0 86 8 33 0 89 0 193 0 100 3 125 0 101 2 69 0 108] 
#[0 8 213 0 16] 
#[0 4 30 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 34 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 38 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 42 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 46 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 8 217 0 14] 
#[1 8 221 0 11 1 94 0 14 6 213 0 81 8 225 0 84] 
#[0 3 122 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 8 229 0 16] 
#[0 3 126 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 8 233 0 11 1 94 0 16 8 237 0 84 6 233 0 87] 
#[1 0 33 0 8 2 73 0 46 8 241 0 77] 
#[0 4 50 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 54 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 58 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 62 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 66 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 3 198 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 70 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 74 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[1 8 245 0 105 2 65 0 108] 
#[0 4 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 4 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 8 249 0 14] 
#[0 2 75 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 8 253 0 16] 
#[0 2 79 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 22 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 73 0 36 0 133 0 48 0 133 0 55 0 137 0 56 8 17 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 70 1 5 0 71 1 9 0 72 8 17 0 74 3 85 0 80 8 17 0 83 9 1 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 100 3 101 0 101 1 37 0 107 3 73 0 108] 
#[0 9 5 0 14] 
#[0 4 26 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 177 0 23 1 181 0 31 0 61 0 32 1 185 0 33 2 69 0 36 3 109 0 48 3 109 0 55 0 137 0 56 8 33 0 74 3 109 0 80 9 9 0 84 0 165 0 85 3 109 0 86 8 33 0 89 0 193 0 100 3 125 0 101 2 69 0 108] 
#[0 9 13 0 16] 
#[0 4 98 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 107 0 108 0 110] 
#[0 2 83 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 2 87 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 9 17 0 14] 
#[0 4 90 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 9 21 0 16] 
#[0 4 94 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 106 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110] 
#[0 4 110 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 105 0 108 0 110]
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
			(currentToken ids first = scanner DOCUMENTSTARTId
				or: [ currentToken ids first = scanner DOCUMENTENDId ])
				ifTrue: [ self addActionsFor: scanner FINISH_LITERAL_STRINGId to: actions.
					actions notEmpty
						ifTrue: [ currentToken := SmaCCToken
									value: ''
									start: currentToken startPosition
									ids: {scanner FINISH_LITERAL_STRINGId}.
							^ actions ] ].
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
YAMLParser >> reduceActionForMappingValue10: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue11: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue12: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue13: nodes [
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
YAMLParser >> reduceActionForMappingValue14: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	result at: 1 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue5: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForMappingValue7: nodes [
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
YAMLParser >> reduceActionForPopIndent1: nodes [
	scanner popIndent.
	self updateScannerState.
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
	self updateScannerState.
	^ nil
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForPushLiteralString1: nodes [
	^ self pushScope: #LITERAL_STRING
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSetDocumentIndent1: nodes [
	scanner documentStringLiteral: true.
	self updateScannerState.
	^ nil
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSetZeroIndent1: nodes [
	scanner documentStringLiteral: false.
	scanner setIndent: 0.
	self updateScannerState.
	^ nil
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument11: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument12: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	result at: 3 put: (nodes at: 5).
	result at: 2 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument13: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument14: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument17: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument18: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument20: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument21: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 2).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument22: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 2).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument3: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument5: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument6: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 3 put: (nodes at: 4).
	result at: 2 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument7: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument8: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument9: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	result at: 2 put: (nodes at: 6).
	^ result
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
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForTagsOrAnchors3: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 3) at: 1) to: (result at: 1).
	self add: ((nodes at: 3) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____1: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____3: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____5: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____7: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE_____1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE_____2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 2).
	self add: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: ((nodes at: 2) at: 3) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 6).
	self add: ((nodes at: 2) at: 6) to: (result at: 1).
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
YAMLParser >> reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE__________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE____listitem__item___2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part________multiline_string_2: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: result.
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
YAMLParser >> reduceActionFordocumentMultilineString1: nodes [
	| result |
	result := YAMLStringNode new.
	result addTokens: (nodes at: 1) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFordocumentValue10: nodes [
	| result |
	result := nodes at: 4.
	result addFirstTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addFirstTokens: ((nodes at: 1) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFordocumentValue18: nodes [
	| result |
	result := nodes at: 2.
	result addFirstTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addFirstTokens: ((nodes at: 1) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFordocumentValue3: nodes [
	^ nodes at: 3
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFordocumentValue8: nodes [
	| result |
	result := nodes at: 3.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFordocumentValue9: nodes [
	| result |
	result := nodes at: 3.
	result addFirstTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addFirstTokens: ((nodes at: 1) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfile1: nodes [
	| result |
	result := YAMLFileNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result documents.
	result addTokens: ((nodes at: 1) at: 2) to: result documentEnds.
	result addTokens: ((nodes at: 1) at: 3) to: result documentStarts.
	result addTokens: ((nodes at: 1) at: 4) to: result globalTags.
	result addTokens: ((nodes at: 1) at: 5) to: result anchors.
	result addTokens: ((nodes at: 1) at: 6) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocuments2: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocuments3: nodes [
	| result |
	result := nodes at: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocuments4: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocuments5: nodes [
	| result |
	result := nodes at: 2.
	self addAllFirst: ((nodes at: 1) at: 1) to: (result at: 5).
	self addAllFirst: ((nodes at: 1) at: 2) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocuments6: nodes [
	| result |
	result := nodes at: 3.
	self addAllFirst: ((nodes at: 1) at: 1) to: (result at: 5).
	self addAllFirst: ((nodes at: 1) at: 2) to: (result at: 6).
	self addFirst: (nodes at: 2) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocuments7: nodes [
	| result |
	result := nodes at: 3.
	self addAllFirst: ((nodes at: 1) at: 1) to: (result at: 5).
	self addAllFirst: ((nodes at: 1) at: 2) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocuments8: nodes [
	| result |
	result := nodes at: 4.
	self addAllFirst: ((nodes at: 1) at: 1) to: (result at: 5).
	self addAllFirst: ((nodes at: 1) at: 2) to: (result at: 6).
	self addFirst: (nodes at: 3) to: (result at: 1).
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
YAMLParser >> reduceActionForkey1: nodes [
	| result |
	result := YAMLStringNode new.
	result addToken: (nodes at: 1) to: result parts.
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
YAMLParser >> reduceActionForlistitem7: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForlistitem8: nodes [
	| result |
	result := YAMLListItemNode new.
	result minus: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result anchors.
	result addTokens: ((nodes at: 2) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping10: nodes [
	| result |
	result := YAMLMappingNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result key: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping1: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 1).
	result value: ((nodes at: 2) at: 1).
	result addTokens: ((nodes at: 2) at: 2) to: result anchors.
	result addTokens: ((nodes at: 2) at: 3) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping2: nodes [
	| result |
	result := YAMLMappingNode new.
	result colon: (nodes at: 2).
	result value: ((nodes at: 3) at: 1).
	result addTokens: ((nodes at: 3) at: 2) to: result anchors.
	result addTokens: ((nodes at: 3) at: 3) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping3: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
	result colon: (nodes at: 2).
	result value: ((nodes at: 3) at: 1).
	result addTokens: ((nodes at: 3) at: 2) to: result anchors.
	result addTokens: ((nodes at: 3) at: 3) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping4: nodes [
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
YAMLParser >> reduceActionFormapping5: nodes [
	| result |
	result := YAMLMappingNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result colon: (nodes at: 2).
	result value: ((nodes at: 3) at: 1).
	result addTokens: ((nodes at: 3) at: 2) to: result anchors.
	result addTokens: ((nodes at: 3) at: 3) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping6: nodes [
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
YAMLParser >> reduceActionFormapping7: nodes [
	| result |
	result := YAMLMappingNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result anchors.
	result addTokens: ((nodes at: 1) at: 2) to: result tags.
	result key: (nodes at: 2).
	result colon: (nodes at: 3).
	result value: ((nodes at: 4) at: 1).
	result addTokens: ((nodes at: 4) at: 2) to: result anchors.
	result addTokens: ((nodes at: 4) at: 3) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFormapping8: nodes [
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
YAMLParser >> reduceActionFormapping9: nodes [
	| result |
	result := YAMLMappingNode new.
	result key: (nodes at: 1).
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
YAMLParser >> reduceActionFormultiline_string5: nodes [
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
YAMLParser >> reduceActionForvalue17: nodes [
	| result |
	result := nodes at: 4.
	result addFirstTokens: ((nodes at: 2) at: 1) to: result anchors.
	result addFirstTokens: ((nodes at: 2) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue18: nodes [
	| result |
	result := nodes at: 5.
	result addFirstTokens: ((nodes at: 2) at: 1) to: result anchors.
	result addFirstTokens: ((nodes at: 2) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue19: nodes [
	| result |
	result := nodes at: 4.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue20: nodes [
	| result |
	result := nodes at: 5.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue21: nodes [
	| result |
	result := nodes at: 5.
	result addFirstTokens: ((nodes at: 3) at: 1) to: result anchors.
	result addFirstTokens: ((nodes at: 3) at: 2) to: result tags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForvalue22: nodes [
	| result |
	result := nodes at: 6.
	result addFirstTokens: ((nodes at: 3) at: 1) to: result anchors.
	result addFirstTokens: ((nodes at: 3) at: 2) to: result tags.
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
