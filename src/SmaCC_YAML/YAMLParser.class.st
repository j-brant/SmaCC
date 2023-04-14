Class {
	#name : #YAMLParser,
	#superclass : #SmaCCGLRParser,
	#instVars : [
		'scopeStack'
	],
	#category : #'SmaCC_YAML-Parser'
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
#[ 0 110 0 205] 
#[ 0 122 0 205] 
#[ 0 142 0 205] 
#[ 0 146 0 150] 
#[ 0 174 0 178] 
#[ 0 182 0 186] 
#[ 0 194 0 198] 
#[ 0 194 0 198 0 205] 
#[ 0 205 0 218] 
#[ 0 74 0 205] 
#[ 0 198 0 205] 
#[ 0 214 2 89] 
#[ 0 42 2 129] 
#[ 0 42 0 205] 
#[ 0 222 1 18] 
#[ 0 66 1 50] 
#[ 0 66 0 74 1 50] 
#[ 0 66 0 70 0 74 0 205 1 50] 
#[ 0 126 1 58] 
#[ 0 170 1 62] 
#[ 0 194 1 66] 
#[ 0 194 0 198 1 66] 
#[ 0 194 0 198 0 205 1 66] 
#[ 0 222 1 70] 
#[ 0 205 1 106] 
#[ 0 146 0 150 1 114] 
#[ 0 150 1 114] 
#[ 0 154 1 118] 
#[ 0 158 1 122] 
#[ 0 162 1 126] 
#[ 0 166 1 130] 
#[ 0 214 1 134] 
#[ 0 66 0 70] 
#[ 0 46 1 14] 
#[ 0 222 1 186] 
#[ 1 30 1 198] 
#[ 0 70 1 50] 
#[ 1 74 1 202] 
#[ 1 78 1 206] 
#[ 0 70 0 74 0 205] 
#[ 0 146 1 114] 
#[ 0 66 1 210] 
#[ 0 66 0 70 0 205 1 210] 
#[ 0 130 0 205] 
#[ 0 194 1 210] 
#[ 0 194 0 205 1 210] 
#[ 1 30 2 10] 
#[ 0 214 2 18] 
#[ 1 74 2 22] 
#[ 1 78 2 26] 
#[ 0 74 1 210] 
#[ 0 70 0 74 0 205 1 210] 
#[ 0 246 1 214] 
#[ 0 198 1 210] 
#[ 0 198 0 205 1 210] 
#[ 0 205 2 42] 
#[ 0 205 2 50] 
#[ 0 205 1 210] 
#[ 0 205 2 90] 
#[ 2 30 2 94] 
#[ 2 34 2 98] 
#[ 2 38 2 106] 
#[ 0 205 2 118] 
#[ 0 14 1 133] 
#[ 2 142 7 49] 
#[ 0 205 2 142] 
#[ 1 30 1 198 2 150] 
#[ 1 74 1 202 2 154] 
#[ 1 78 1 206 2 158] 
#[ 1 222 2 162] 
#[ 2 222 2 226] 
#[ 2 182 3 2] 
#[ 0 238 1 162] 
#[ 0 242 1 166] 
#[ 0 246 1 170] 
#[ 0 250 1 174] 
#[ 0 254 1 178] 
#[ 1 2 1 182] 
#[ 0 9 3 26] 
#[ 0 13 3 26] 
#[ 0 17 3 26] 
#[ 0 21 3 26] 
#[ 0 25 3 26] 
#[ 0 29 3 26] 
#[ 3 26 8 17] 
#[ 2 57 3 26] 
#[ 0 66 0 205 1 210] 
#[ 2 166 3 34] 
#[ 2 170 3 38] 
#[ 2 174 3 46] 
#[ 3 78 8 73] 
#[ 0 205 3 78] 
#[ 0 94 1 54] 
#[ 2 122 3 90] 
#[ 2 126 3 94] 
#[ 2 130 3 98] 
#[ 3 114 3 166] 
#[ 1 138 2 62] 
#[ 1 142 2 66] 
#[ 3 54 3 242] 
#[ 3 62 3 246] 
#[ 3 210 4 54] 
#[ 3 218 4 58] 
#[ 4 30 4 74] 
#[ 4 34 4 78]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2023-04-13T07:39:37.902174-05:00'
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

default FLOW <ALIAS>
 : <STAR> [^\s\,\[\]\{\}]+
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
 | <NEWLINE>+? <INDENT> list 'value' <NEWLINE>+? <DEDENT> {value}
 | mappinglist 
 | <NEWLINE>+? <INDENT> mappinglist 'value' <NEWLINE>+? <DEDENT> {value}
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
	: mapping 'mapping' (<NEWLINE>+? mapping 'mapping')* {{MappingList}}
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
 : PushLiteralString 'indent' <LITERAL_STR_IND> 'part' (<NEWLINE_STR_LITERAL>+ <STRING_MY> 'part')* <NEWLINE_STR_LITERAL> 'endingNewline'+? PopScope <FINISH_LITERAL_STRING> {{String}}
 ;
PushLiteralString
	: [self pushScope: #LITERAL_STRING.
	scanner currentIndent]
	;

string_folded
 : PushLiteralString 'indent' <FOLD_STR_IND> 'part' (<NEWLINE_STR_LITERAL>+ <STRING_MY> 'part')* <NEWLINE_STR_LITERAL> 'endingNewline'+? PopScope <FINISH_LITERAL_STRING> {{String}}
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
	| <NEWLINE>+ <INDENT> TagsOrAnchors <NEWLINE>+ <DEDENT> listWithoutInitialNewline 'value'
	| flowlist 'value'
	| <NEWLINE>+ <INDENT> TagsOrAnchors? (value 'value' | alias 'value') <NEWLINE>+? <DEDENT>
	| PushIndent listWithoutInitialNewline 'value' <NEWLINE>+? <DEDENT> 
	;
listWithoutInitialNewline
	: listitem 'item' (<NEWLINE>+? listitem 'item')* {{List}}
	;

/*
 * flow rules
 */

flowlist
 : TagsOrAnchors? PushFlow <OPEN_BRACK> 'leftBracket' (flowListValue 'item' (<COMMA> 'comma' flowListValue  'item')*)? <COMMA> 'comma'? PopFlow <CLOSE_BRACK> 'rightBracket' {{FlowList}}
 ;
flowListValue
	: value
	| alias
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
	: fileDocument 
			(SplitDocument <NEWLINE>+? fileDocument)* 
	;
fileDocument
	: document 'document'
	| TagsOrAnchors <NEWLINE>+? document 'document'
	| TagsOrAnchors
	| <NEWLINE>+ document 'document'
	|
	;
SplitDocument
	: <NEWLINE>+? SetZeroIndent <DOCUMENTEND> 'documentEnd' (<NEWLINE>+? <GLOBAL_TAG> 'globalTag'? <NEWLINE>+ <DOCUMENTSTART> 'documentStart')?
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
	#(85 0 #reduceActionForPushFlow1: 11423745 true) 
	#(39 0 #reduceActionForSetDocumentIndent1: 6907905 true) 
	#(96 0 #reduceActionForfileDocument6: 12166150 false) 
	#(92 1 #liftFirstValue: 11999233 false) 
	#(92 1 #liftFirstValue: 11999234 false) 
	#(92 1 #liftFirstValue: 11999235 false) 
	#(92 1 #liftFirstValue: 11999236 false) 
	#(91 1 #liftFirstValue: 11856898 false) 
	#(91 1 #liftFirstValue: 11856899 false) 
	#(52 0 #reduceActionForPushIndent1: 8098817 true) 
	#(71 0 #reduceActionForPushLiteralString1: 9741313 true) 
	#(77 0 #reduceActionForfileDocument6: 10406922 false) 
	#(99 1 #reduceActionForTagOrAnchor1: 12696577 false) 
	#(99 1 #reduceActionForTagOrAnchor2: 12696578 false) 
	#(48 1 #reduceActionForalias1: 7957505 false) 
	#(41 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7033858 false) 
	#(55 1 #reduceActionForkey1: 8297473 false) 
	#(60 1 #reduceActionForkey1: 9227266 false) 
	#(73 1 #reduceActionForkey1: 10030081 false) 
	#(55 1 #reduceActionForkey1: 8297474 false) 
	#(59 1 #reduceActionForkey1: 9159681 false) 
	#(55 1 #reduceActionForkey1: 8297475 false) 
	#(96 1 #reduceActionForfileDocument1: 12166145 false) 
	#(37 1 #liftFirstValue: 6203405 false) 
	#(38 1 #liftFirstValue: 6433811 false) 
	#(42 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 7033857 false) 
	#(40 1 #reduceActionFordocumentMultilineString1: 7006209 false) 
	#(37 1 #liftFirstValue: 6203393 false) 
	#(45 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7180289 false) 
	#(43 1 #reduceActionForlist1: 7172097 false) 
	#(44 1 #liftFirstValue: 7180289 false) 
	#(55 1 #liftFirstValue: 8297476 false) 
	#(54 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 8243201 false) 
	#(37 1 #liftFirstValue: 6203398 false) 
	#(53 1 #reduceActionFormappinglist1: 8227841 false) 
	#(55 1 #liftFirstValue: 8297479 false) 
	#(75 1 #reduceActionFormapping9: 10133513 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6433809 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6433793 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6433797 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6433807 false) 
	#(50 1 #liftFirstValue: 8045569 false) 
	#(55 1 #liftFirstValue: 8297478 false) 
	#(37 1 #liftFirstValue: 6203403 false) 
	#(55 1 #liftFirstValue: 8297477 false) 
	#(37 1 #liftFirstValue: 6203404 false) 
	#(60 1 #liftFirstValue: 9227265 false) 
	#(41 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7033857 false) 
	#(90 1 #reduceActionFornumber1: 11817985 false) 
	#(91 1 #liftFirstValue: 11856897 false) 
	#(35 1 #reduceActionForfile1: 6158337 false) 
	#(95 0 #reduceActionFor_SplitDocument__NEWLINE____fileDocument__1: 12119041 false) 
	#(100 1 #reduceActionForTagsOrAnchors1: 12748801 false) 
	#(96 1 #reduceActionForfileDocument4: 12166148 false) 
	#(36 1 #liftFirstValue: 6180865 false) 
	#(46 2 #reduceActionForlistitem2: 7221250 false) 
	#(46 2 #reduceActionForlistitem2: 7221254 false) 
	#(46 2 #reduceActionForlistitem2: 7221249 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8553505 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8553473 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8553477 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8553479 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8553483 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8553503 false) 
	#(47 1 #liftFirstValue: 7554055 false) 
	#(47 1 #liftFirstValue: 7554060 false) 
	#(58 0 #reduceActionForPopIndent1: 9089025 true) 
	#(46 2 #reduceActionForlistitem7: 7221255 false) 
	#(77 1 #reduceActionForfileDocument1: 10406923 false) 
	#(76 1 #reduceActionForfileDocument1: 10270725 false) 
	#(75 2 #reduceActionFormapping1: 10133505 false) 
	#(76 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 10270721 false) 
	#(77 1 #reduceActionForfileDocument1: 10406926 false) 
	#(77 1 #reduceActionForfileDocument1: 10406921 false) 
	#(56 2 #reduceActionForComplexKey1: 8477697 false) 
	#(41 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: 7033862 false) 
	#(96 2 #reduceActionForfileDocument5: 12166149 false) 
	#(44 2 #liftSecondValue: 7180290 false) 
	#(50 2 #liftSecondValue: 8045570 false) 
	#(41 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: 7033861 false) 
	#(36 2 #liftFirstValue: 6180866 false) 
	#(38 2 #reduceActionFordocumentValue7: 6433799 false) 
	#(38 2 #reduceActionFordocumentValue7: 6433803 false) 
	#(42 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: 7033858 false) 
	#(45 2 #reduceActionFor__NEWLINE____listitem__item___2: 7180290 false) 
	#(54 2 #reduceActionFor__NEWLINE____listitem__item___2: 8243202 false) 
	#(84 0 #reduceActionForPopFlow1: 11346945 true) 
	#(35 2 #reduceActionForfile1: 6158338 false) 
	#(98 0 #reduceActionForSetZeroIndent1: 12577793 true) 
	#(93 2 #reduceActionForfileDocuments1: 12084225 false) 
	#(96 2 #reduceActionForfileDocument2: 12166146 false) 
	#(75 2 #reduceActionFormapping10: 10133514 false) 
	#(38 2 #reduceActionFordocumentValue18: 6433810 false) 
	#(38 2 #reduceActionFordocumentValue18: 6433794 false) 
	#(38 2 #reduceActionFordocumentValue18: 6433798 false) 
	#(38 2 #reduceActionFordocumentValue18: 6433808 false) 
	#(100 2 #reduceActionForTagsOrAnchors2: 12748802 false) 
	#(57 2 #reduceActionFordocumentValue7: 8553480 false) 
	#(57 2 #reduceActionFordocumentValue7: 8553484 false) 
	#(79 0 #reduceActionFor__NEWLINE____listitem__item___1: 10997761 false) 
	#(51 0 #reduceActionFor__NEWLINE____listitem__item___1: 8045569 false) 
	#(68 0 #reduceActionFor__NEWLINE____listitem__item___1: 9606145 false) 
	#(46 3 #reduceActionForlistitem3: 7221251 false) 
	#(57 2 #reduceActionFordocumentValue18: 8553506 false) 
	#(57 2 #reduceActionFordocumentValue18: 8553474 false) 
	#(57 2 #reduceActionFordocumentValue18: 8553478 false) 
	#(57 2 #reduceActionFordocumentValue18: 8553481 false) 
	#(57 2 #reduceActionFordocumentValue18: 8553485 false) 
	#(57 2 #reduceActionFordocumentValue18: 8553504 false) 
	#(46 3 #reduceActionForlistitem8: 7221256 false) 
	#(77 2 #reduceActionForfileDocument5: 10406924 false) 
	#(76 2 #reduceActionForMappingValueWithTags2: 10270722 false) 
	#(75 3 #reduceActionFormapping2: 10133506 false) 
	#(38 3 #reduceActionFordocumentValue8: 6433800 false) 
	#(38 3 #reduceActionFordocumentValue8: 6433804 false) 
	#(65 0 #reduceActionFor__NEWLINE____listitem__item___1: 9417729 false) 
	#(62 1 #reduceActionFor__NEWLINE____listitem__item___1: 9372675 false) 
	#(63 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 9372673 false) 
	#(75 3 #reduceActionFormapping3: 10133507 false) 
	#(83 1 #liftFirstValue: 11268098 false) 
	#(83 1 #liftFirstValue: 11268097 false) 
	#(83 1 #liftFirstValue: 11268101 false) 
	#(83 1 #liftFirstValue: 11268099 false) 
	#(82 0 #reduceActionFor__COMMA___comma__flowListValue___item___1: 11152385 false) 
	#(83 1 #liftFirstValue: 11268100 false) 
	#(89 1 #reduceActionFormapping9: 11724802 false) 
	#(89 1 #liftFirstValue: 11724801 false) 
	#(88 0 #reduceActionFor__COMMA___comma__flowListValue___item___1: 11603969 false) 
	#(95 2 #reduceActionFor_SplitDocument__NEWLINE____fileDocument__2: 12119042 false) 
	#(75 3 #reduceActionFormapping5: 10133509 false) 
	#(96 3 #reduceActionForfileDocument3: 12166147 false) 
	#(100 3 #reduceActionForTagsOrAnchors3: 12748803 false) 
	#(38 3 #reduceActionFordocumentValue9: 6433801 false) 
	#(38 3 #reduceActionFordocumentValue9: 6433805 false) 
	#(41 3 #reduceActionFor__NEWLINE____listitem__item___1: 7033859 false) 
	#(37 3 #liftSecondValue: 6203394 false) 
	#(37 3 #liftSecondValue: 6203399 false) 
	#(78 2 #reduceActionForlistWithoutInitialNewline1: 10951681 false) 
	#(47 3 #liftSecondValue: 7554058 false) 
	#(49 2 #reduceActionFormappingListWithoutInitialNewline1: 7990273 false) 
	#(47 3 #liftSecondValue: 7554056 false) 
	#(74 0 #reduceActionForPopScope1: 10095617 true) 
	#(57 3 #reduceActionFordocumentValue9: 8553482 false) 
	#(57 3 #reduceActionFordocumentValue9: 8553486 false) 
	#(46 4 #reduceActionForlistitem3: 7221252 false) 
	#(57 3 #reduceActionFordocumentValue8: 8553487 false) 
	#(57 3 #reduceActionFordocumentValue8: 8553495 false) 
	#(77 3 #reduceActionForfileDocument5: 10406935 false) 
	#(76 3 #reduceActionForMappingValueWithTags2: 10270723 false) 
	#(62 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part________multiline_string_2: 9372674 false) 
	#(41 4 #reduceActionFor__NEWLINE____listitem__item___1: 7033863 false) 
	#(37 4 #reduceActionFordocument4: 6203396 false) 
	#(38 4 #reduceActionFordocument4: 6433795 false) 
	#(37 4 #reduceActionFordocument4: 6203401 false) 
	#(63 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: 9372674 false) 
	#(61 4 #reduceActionFormultiline_string1: 9287681 false) 
	#(62 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part________multiline_string_2: 9372673 false) 
	#(75 4 #reduceActionFormapping4: 10133508 false) 
	#(80 4 #reduceActionForflowlist1: 11065345 false) 
	#(86 4 #reduceActionForflowmappinglist1: 11510785 false) 
	#(89 2 #reduceActionFormapping10: 11724803 false) 
	#(94 2 #reduceActionFor_SplitDocument__NEWLINE____fileDocument_1: 12119041 false) 
	#(97 2 #reduceActionForSplitDocument1: 12311553 false) 
	#(97 2 #reduceActionForSplitDocument11: 12311563 false) 
	#(75 4 #reduceActionFormapping6: 10133510 false) 
	#(38 4 #reduceActionFordocumentValue10: 6433802 false) 
	#(38 4 #reduceActionFordocumentValue10: 6433806 false) 
	#(75 4 #reduceActionFormapping7: 10133511 false) 
	#(41 4 #reduceActionFor__NEWLINE____listitem__item___1: 7033860 false) 
	#(37 4 #liftSecondValue: 6203395 false) 
	#(37 4 #liftSecondValue: 6203400 false) 
	#(47 4 #reduceActionFordocument4: 7554051 false) 
	#(57 4 #reduceActionFordocument4: 8553475 false) 
	#(47 4 #reduceActionFordocument4: 7554053 false) 
	#(47 4 #reduceActionFordocument4: 7554049 false) 
	#(57 4 #reduceActionForvalue19: 8553491 false) 
	#(57 4 #reduceActionForvalue19: 8553499 false) 
	#(79 2 #reduceActionFor__NEWLINE____listitem__item___2: 10997762 false) 
	#(47 4 #liftSecondValue: 7554059 false) 
	#(51 2 #reduceActionFor__NEWLINE____listitem__item___2: 8045570 false) 
	#(47 4 #liftSecondValue: 7554057 false) 
	#(68 2 #reduceActionFor__NEWLINE____listitem__item___2: 9606146 false) 
	#(69 1 #liftFirstValue: 9607169 false) 
	#(70 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 9652225 false) 
	#(101 4 #reduceActionForTagAndAnchorWithIndent1: 12823553 false) 
	#(46 5 #reduceActionForlistitem3: 7221253 false) 
	#(57 4 #reduceActionForvalue19: 8553488 false) 
	#(57 4 #reduceActionForvalue19: 8553496 false) 
	#(57 4 #reduceActionForvalue17: 8553489 false) 
	#(57 4 #reduceActionForvalue17: 8553497 false) 
	#(77 4 #reduceActionForMappingValue5: 10406917 false) 
	#(77 4 #reduceActionForMappingValue5: 10406929 false) 
	#(77 4 #reduceActionForMappingValue5: 10406913 false) 
	#(77 4 #reduceActionForMappingValue5: 10406927 false) 
	#(77 4 #reduceActionForfileDocument5: 10406936 false) 
	#(76 4 #reduceActionForMappingValueWithTags2: 10270724 false) 
	#(61 5 #reduceActionFormultiline_string5: 9287685 false) 
	#(64 1 #nil 9417729 false) 
	#(65 2 #reduceActionFor__NEWLINE____listitem__item___2: 9417730 false) 
	#(41 5 #reduceActionFor__NEWLINE____listitem__item___1: 7033864 false) 
	#(37 5 #reduceActionFordocument4: 6203397 false) 
	#(38 5 #reduceActionFordocument4: 6433796 false) 
	#(37 5 #reduceActionFordocument4: 6203402 false) 
	#(61 5 #reduceActionFormultiline_string1: 9287682 false) 
	#(80 5 #reduceActionForflowlist2: 11065346 false) 
	#(82 2 #reduceActionForTagsOrAnchors2: 11152386 false) 
	#(86 5 #reduceActionForflowmappinglist2: 11510786 false) 
	#(88 2 #reduceActionForTagsOrAnchors2: 11603970 false) 
	#(61 5 #reduceActionFormultiline_string5: 9287683 false) 
	#(97 3 #reduceActionForSplitDocument15: 12311567 false) 
	#(97 3 #reduceActionForSplitDocument6: 12311558 false) 
	#(97 3 #reduceActionForSplitDocument12: 12311564 false) 
	#(94 3 #reduceActionFor_SplitDocument__NEWLINE____fileDocument_2: 12119042 false) 
	#(75 5 #reduceActionFormapping8: 10133512 false) 
	#(80 5 #reduceActionForflowlist5: 11065349 false) 
	#(86 5 #reduceActionForflowmappinglist5: 11510789 false) 
	#(57 5 #reduceActionForvalue20: 8553492 false) 
	#(57 5 #reduceActionForvalue20: 8553500 false) 
	#(47 5 #reduceActionFordocument4: 7554052 false) 
	#(57 5 #reduceActionFordocument4: 8553476 false) 
	#(47 5 #reduceActionFordocument4: 7554054 false) 
	#(47 5 #reduceActionFordocument4: 7554050 false) 
	#(57 5 #reduceActionForvalue21: 8553493 false) 
	#(57 5 #reduceActionForvalue21: 8553501 false) 
	#(67 2 #liftSecondValue: 9606145 false) 
	#(69 2 #liftFirstValue: 9607170 false) 
	#(70 2 #reduceActionFor__NEWLINE____listitem__item___2: 9652226 false) 
	#(66 5 #reduceActionForstring_literal1: 9534465 false) 
	#(72 5 #reduceActionForstring_literal1: 9826305 false) 
	#(57 5 #reduceActionForvalue18: 8553490 false) 
	#(57 5 #reduceActionForvalue18: 8553498 false) 
	#(77 5 #reduceActionForMappingValue5: 10406918 false) 
	#(77 5 #reduceActionForMappingValue5: 10406930 false) 
	#(77 5 #reduceActionForMappingValue5: 10406914 false) 
	#(77 5 #reduceActionForMappingValue5: 10406928 false) 
	#(77 5 #reduceActionForMappingValue7: 10406919 false) 
	#(77 5 #reduceActionForMappingValue7: 10406933 false) 
	#(77 5 #reduceActionForMappingValue7: 10406915 false) 
	#(77 5 #reduceActionForMappingValue7: 10406931 false) 
	#(61 6 #reduceActionFormultiline_string5: 9287686 false) 
	#(64 2 #liftSecondValue: 9417731 false) 
	#(64 2 #liftSecondValue: 9417730 false) 
	#(81 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 11152385 false) 
	#(80 6 #reduceActionForflowlist3: 11065347 false) 
	#(87 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 11603969 false) 
	#(86 6 #reduceActionForflowmappinglist3: 11510787 false) 
	#(61 6 #reduceActionFormultiline_string5: 9287684 false) 
	#(97 4 #reduceActionForSplitDocument16: 12311568 false) 
	#(97 4 #reduceActionForSplitDocument19: 12311571 false) 
	#(97 4 #reduceActionForSplitDocument18: 12311570 false) 
	#(97 4 #reduceActionForSplitDocument2: 12311554 false) 
	#(80 6 #reduceActionForflowlist6: 11065350 false) 
	#(86 6 #reduceActionForflowmappinglist6: 11510790 false) 
	#(57 6 #reduceActionForvalue22: 8553494 false) 
	#(57 6 #reduceActionForvalue22: 8553502 false) 
	#(66 6 #reduceActionForstring_literal2: 9534466 false) 
	#(72 6 #reduceActionForstring_literal2: 9826306 false) 
	#(77 6 #reduceActionForMappingValue13: 10406925 false) 
	#(77 6 #reduceActionForMappingValue7: 10406920 false) 
	#(77 6 #reduceActionForMappingValue7: 10406934 false) 
	#(77 6 #reduceActionForMappingValue7: 10406916 false) 
	#(77 6 #reduceActionForMappingValue7: 10406932 false) 
	#(80 7 #reduceActionForflowlist4: 11065348 false) 
	#(86 7 #reduceActionForflowmappinglist4: 11510788 false) 
	#(97 5 #reduceActionForSplitDocument20: 12311572 false) 
	#(97 5 #reduceActionForSplitDocument7: 12311559 false) 
	#(97 5 #reduceActionForSplitDocument3: 12311555 false) 
	#(97 5 #reduceActionForSplitDocument4: 12311556 false) 
	#(80 7 #reduceActionForflowlist7: 11065351 false) 
	#(86 7 #reduceActionForflowmappinglist7: 11510791 false) 
	#(97 6 #reduceActionForSplitDocument8: 12311560 false) 
	#(97 6 #reduceActionForSplitDocument9: 12311561 false) 
	#(97 6 #reduceActionForSplitDocument5: 12311557 false) 
	#(80 8 #reduceActionForflowlist8: 11065352 false) 
	#(86 8 #reduceActionForflowmappinglist8: 11510792 false) 
	#(97 7 #reduceActionForSplitDocument10: 12311562 false)
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
		((numberToken ''part'' | <STRING_MY> ''part'') | (<INDENT> documentMultilineString <NEWLINE>+? <DEDENT>)))+' 'list' '(<NEWLINE>+? listitem ''item'')' '(<NEWLINE>+? listitem ''item'')+' 'listitem' 'ListItemValue' 'alias' 'mappingListWithoutInitialNewline' '(<NEWLINE>+? mapping ''mapping'')' '(<NEWLINE>+? mapping ''mapping'')*' 'PushIndent' 'mappinglist' '(<NEWLINE>+? mapping ''mapping'')+' 'key' 'ComplexKey' 'value' 'PopIndent' 'string_single_quoted' 'value_scalar' 'multiline_string' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)* | multiline_string)' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)* | multiline_string)+' '(<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)' '(<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' '<NEWLINE_STR_LITERAL> ''endingNewline''+' 'PushLiteralString' 'string_folded' 'string_double_quoted' 'PopScope' 'mapping' 'MappingValueWithTags' 'MappingValue' 'listWithoutInitialNewline' '(<NEWLINE>+? listitem ''item'')*' 'flowlist' '(<COMMA> ''comma'' flowListValue  ''item'')' '(<COMMA> ''comma'' flowListValue  ''item'')*' 'flowListValue' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' flowMapping ''mapping'')' '(<COMMA> ''comma'' flowMapping ''mapping'')*' 'flowMapping' 'number' 'numberToken' 'integer' 'fileDocuments' '(SplitDocument <NEWLINE>+? fileDocument)' '(SplitDocument <NEWLINE>+? fileDocument)*' 'fileDocument' 'SplitDocument' 'SetZeroIndent' 'TagOrAnchor' 'TagsOrAnchors' 'TagAndAnchorWithIndent' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
]

{ #category : #generated }
YAMLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #YAMLFileNode #YAMLFileNode #SmaCCToken #YAMLValueNode #YAMLValueNode nil #YAMLStringNode #SmaCCToken #OrderedCollection #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLListItemNode #YAMLValueNode #YAMLAliasNode #YAMLMappingListNode #YAMLMappingNode #OrderedCollection nil #YAMLMappingListNode #OrderedCollection #YAMLParseNode #YAMLComplexKeyNode #YAMLValueNode nil #YAMLStringNode #YAMLValueNode #YAMLStringNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #YAMLStringNode #SmaCCToken #OrderedCollection #SmaCCToken #OrderedCollection #Object #YAMLStringNode #YAMLStringNode nil #YAMLMappingNode #OrderedCollection #OrderedCollection #YAMLListNode #OrderedCollection #YAMLFlowListNode #OrderedCollection #OrderedCollection #YAMLParseNode nil nil #YAMLFlowMappingListNode #OrderedCollection #OrderedCollection #YAMLMappingNode #YAMLNumberNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection nil #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
YAMLParser class >> transitionTable [
^#(
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 0 69 0 35 0 73 0 36 0 77 0 37 0 77 0 38 0 85 0 39 0 77 0 40 0 93 0 41 0 97 0 42 0 77 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 0 77 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 0 121 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 0 177 0 91 0 177 0 92 0 185 0 93 0 189 0 96 0 193 0 99 0 197 0 100 0 14 0 103 0 14 0 104 0 201 0 106 0 7 0 107 0 14 0 109] 
#[0 0 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 46 0 17 0 46 0 18 0 15 0 19 0 19 0 21 0 23 0 22 0 27 0 23 0 31 0 31 0 42 0 32 0 35 0 33 0 221 0 36 0 225 0 47 0 229 0 48 0 233 0 52 0 237 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 225 0 80 0 165 0 85 0 225 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 29 0 100 1 33 0 101 1 37 0 106 0 39 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 1 61 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 62 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 70 0 12 0 75 0 20 0 66 0 23 1 85 0 36 0 75 0 103 0 75 0 104 0 66 0 106 0 79 0 107 0 75 0 109] 
#[1 0 78 0 11 0 82 0 12 0 78 0 14 0 78 0 20 0 78 0 102 0 78 0 103 0 78 0 104 0 83 0 107 0 78 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 1 89 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 0 86 0 11 0 90 0 12 0 86 0 14 0 86 0 20 0 86 0 102 0 86 0 103 0 86 0 104 0 87 0 107 0 86 0 109] 
#[0 0 0 0 109] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 101 0 36 1 105 0 37 1 105 0 38 1 109 0 39 1 105 0 40 0 93 0 41 0 97 0 42 1 105 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 1 105 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 1 117 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 1 121 0 91 1 121 0 92 0 193 0 99 1 125 0 100 1 129 0 106 1 133 0 107] 
#[0 0 94 0 20 0 103 0 104 0 107 0 109] 
#[0 0 98 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 1 137 0 66 1 1 0 71 1 141 0 72] 
#[0 0 102 0 20 0 103 0 104 0 107 0 109] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 157 0 2 1 157 0 3 1 157 0 4 1 157 0 5 1 157 0 6 1 157 0 7 0 110 0 20 1 145 0 23 1 149 0 36 1 153 0 41 1 157 0 91 1 157 0 92 0 110 0 102 0 110 0 103 0 110 0 104 1 161 0 106 0 91 0 107 0 110 0 109] 
#[0 0 114 0 20 0 103 0 104 0 107 0 109] 
#[0 0 118 0 8 0 20 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 0 122 0 20 1 165 0 36 1 169 0 44 1 169 0 46 0 122 0 102 0 122 0 103 0 122 0 104 0 95 0 107 0 122 0 109] 
#[0 0 126 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 130 0 11 0 12 0 16 0 107] 
#[0 0 134 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 138 0 20 0 103 0 104 0 107 0 109] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 142 0 20 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 1 185 0 36 0 133 0 48 1 189 0 50 0 133 0 55 0 137 0 56 1 189 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 99 1 201 0 100 0 142 0 102 0 142 0 103 0 142 0 104 0 99 0 107 0 142 0 109] 
#[1 1 205 0 12 1 209 0 36 1 209 0 107] 
#[1 0 103 0 11 0 103 0 12 0 150 0 13 0 150 0 14 0 150 0 15 0 103 0 16 0 150 0 19 0 150 0 20 0 150 0 21 0 150 0 22 0 150 0 23 0 150 0 31 0 150 0 32 0 150 0 33 0 150 0 102 0 150 0 103 0 150 0 104 0 103 0 107 0 150 0 109] 
#[0 0 154 0 20 0 103 0 104 0 107 0 109] 
#[0 0 158 0 20 0 103 0 104 0 107 0 109] 
#[0 0 162 0 20 0 103 0 104 0 107 0 109] 
#[0 0 166 0 20 0 103 0 104 0 107 0 109] 
#[0 0 170 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 174 0 12 0 178 0 20 0 178 0 103 0 178 0 104 0 107 0 107 0 178 0 109] 
#[1 1 213 0 13 1 217 0 15] 
#[1 0 182 0 12 0 186 0 20 0 186 0 103 0 186 0 104 0 111 0 107 0 186 0 109] 
#[0 0 190 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 7 0 115 0 20 0 194 0 23 1 221 0 36 0 115 0 103 0 115 0 104 0 194 0 106 0 119 0 107 0 115 0 109] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 225 0 36 1 225 0 107 0 206 0 109] 
#[1 0 210 0 20 1 229 0 95 0 210 0 103 0 210 0 104 0 210 0 107 0 210 0 109] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 1 233 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 218 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 237 0 36 1 241 0 37 1 241 0 38 1 245 0 39 1 241 0 40 0 93 0 41 0 97 0 42 1 241 0 43 0 105 0 44 0 109 0 45 0 105 0 46 1 249 0 48 0 121 0 50 1 241 0 53 0 129 0 54 1 249 0 55 1 253 0 56 2 1 0 59 2 5 0 60 2 9 0 61 2 13 0 73 0 121 0 75 0 161 0 80 2 17 0 85 0 169 0 86 2 5 0 90 0 177 0 91 0 177 0 92 2 21 0 99 1 125 0 100 0 218 0 103 0 218 0 104 0 201 0 106 0 123 0 107 0 218 0 109] 
#[1 1 157 0 2 1 157 0 3 1 157 0 4 1 157 0 5 1 157 0 6 1 157 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 25 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 29 0 36 2 33 0 40 0 93 0 41 0 97 0 42 2 37 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 2 41 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 1 157 0 91 1 157 0 92 0 193 0 99 1 201 0 100 1 161 0 106 2 29 0 107] 
#[0 0 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 0 74 0 8 0 74 0 11 0 74 0 12 0 74 0 13 0 74 0 14 0 74 0 15 0 74 0 16 0 74 0 19 0 74 0 20 0 74 0 21 0 74 0 22 0 74 0 23 0 74 0 31 0 74 0 32 0 74 0 33 1 85 0 36 0 74 0 102 0 74 0 103 0 74 0 104 0 127 0 107 0 74 0 109] 
#[0 0 78 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 86 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 2 45 0 66 1 1 0 71 2 49 0 72 2 53 0 106 2 57 0 107] 
#[0 0 226 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 230 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 2 65 0 46 0 133 0 48 2 69 0 49 0 133 0 55 0 137 0 56 2 73 0 75 2 77 0 78 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 99 1 201 0 100 2 61 0 107] 
#[0 0 234 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 238 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 242 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 246 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 250 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 2 81 0 17 2 85 0 18] 
#[0 0 254 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 2 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 6 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 10 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 198 0 8 0 198 0 11 0 198 0 12 0 198 0 13 0 198 0 14 0 198 0 15 0 198 0 16 0 198 0 19 0 198 0 20 0 198 0 21 0 198 0 22 0 198 0 23 0 198 0 31 0 198 0 32 0 198 0 33 1 221 0 36 0 198 0 102 0 198 0 103 0 198 0 104 0 131 0 107 0 198 0 109] 
#[1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 23 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 102 0 214 0 103 0 214 0 104 0 135 0 107 0 214 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 46 0 17 0 46 0 18 0 15 0 19 0 19 0 21 0 42 0 22 0 27 0 23 0 31 0 31 0 42 0 32 0 35 0 33 2 93 0 36 2 97 0 47 0 233 0 52 2 101 0 59 2 105 0 60 2 109 0 61 2 113 0 66 1 1 0 71 2 117 0 72 2 121 0 73 2 97 0 80 2 17 0 85 2 97 0 86 2 105 0 90 1 21 0 91 1 21 0 92 2 21 0 99 2 125 0 100 0 139 0 107] 
#[1 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 15 0 19 0 19 0 21 0 42 0 22 0 42 0 23 0 42 0 31 0 42 0 32 0 42 0 33 2 133 0 36 2 137 0 47 0 233 0 52 2 137 0 80 0 165 0 85 2 137 0 86 0 193 0 99 2 125 0 100 0 143 0 107] 
#[1 1 14 0 17 1 14 0 18 0 41 0 19 0 45 0 21 2 141 0 36 2 145 0 58 0 193 0 99 2 149 0 100 2 141 0 107] 
#[1 1 18 0 8 1 18 0 11 1 18 0 12 1 18 0 13 1 18 0 14 1 18 0 15 1 18 0 16 0 222 0 17 0 222 0 18 1 18 0 19 1 18 0 20 1 18 0 21 1 18 0 22 1 18 0 23 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 102 1 18 0 103 1 18 0 104 0 222 0 106 0 147 0 107 1 18 0 109] 
#[1 0 33 0 8 0 46 0 17 0 46 0 18 2 65 0 46 2 45 0 66 1 1 0 71 2 49 0 72 2 153 0 78 2 157 0 106 2 57 0 107] 
#[0 1 22 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 2 65 0 46 2 161 0 78] 
#[0 1 26 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 30 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 34 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 38 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 42 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 2 165 0 36 1 49 0 48 1 53 0 52 2 101 0 59 2 105 0 60 2 109 0 61 2 113 0 66 1 1 0 71 2 117 0 72 2 121 0 73 2 169 0 77 1 69 0 80 2 17 0 85 1 73 0 86 2 105 0 90 1 21 0 91 1 21 0 92 2 21 0 99 2 125 0 100 0 50 0 102 0 50 0 103 0 50 0 104 0 71 0 107 0 50 0 109] 
#[1 0 42 0 8 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 173 0 36 1 49 0 48 1 53 0 52 2 177 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 193 0 99 2 125 0 100 0 50 0 102 0 71 0 107] 
#[1 2 181 0 106 2 57 0 107] 
#[0 1 46 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 2 185 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 0 151 0 2 0 151 0 3 0 151 0 4 0 151 0 5 0 151 0 6 0 151 0 7 0 70 0 12 0 155 0 20 0 151 0 23 1 85 0 36 0 155 0 103 0 155 0 104 0 151 0 106 0 159 0 107 0 155 0 109] 
#[1 2 205 0 2 2 205 0 3 2 205 0 4 2 205 0 5 2 205 0 6 2 205 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 189 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 2 193 0 39 2 197 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 201 0 75 0 133 0 80 0 165 0 85 0 133 0 86 2 205 0 91 2 205 0 92 0 193 0 99 1 201 0 100 2 209 0 106 1 133 0 107] 
#[0 1 54 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 2 213 0 66 1 1 0 71 2 217 0 72] 
#[0 0 163 0 8 0 20 0 103 0 104 0 107 0 109] 
#[0 0 167 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 107 0 109] 
#[1 0 171 0 2 0 171 0 3 0 171 0 4 0 171 0 5 0 171 0 6 0 171 0 7 0 175 0 20 0 171 0 23 1 221 0 36 0 175 0 103 0 175 0 104 0 171 0 106 0 179 0 107 0 175 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 221 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 2 229 0 36 2 233 0 39 2 237 0 48 2 237 0 55 2 241 0 56 2 245 0 59 2 249 0 60 2 253 0 61 3 1 0 73 2 237 0 80 2 17 0 85 2 237 0 86 2 249 0 90 1 21 0 91 1 21 0 92 2 21 0 99 2 125 0 100 2 229 0 107] 
#[1 3 41 0 2 3 41 0 3 3 41 0 4 3 41 0 5 3 41 0 6 3 41 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 3 5 0 23 1 177 0 31 0 61 0 32 1 181 0 33 3 9 0 36 3 13 0 40 0 93 0 41 0 97 0 42 3 17 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 21 0 48 0 121 0 50 3 25 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 29 0 61 3 33 0 62 3 37 0 63 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 3 41 0 91 3 41 0 92 0 193 0 99 1 201 0 100 1 161 0 106 3 9 0 107] 
#[1 0 183 0 2 0 183 0 3 0 183 0 4 0 183 0 5 0 183 0 6 0 183 0 7 0 183 0 8 0 183 0 12 0 183 0 13 0 183 0 15 0 183 0 17 0 183 0 18 0 183 0 19 1 70 0 20 0 183 0 21 0 183 0 22 0 183 0 23 0 183 0 31 0 183 0 32 0 183 0 33 1 70 0 102 1 70 0 103 0 183 0 104 0 183 0 106 0 183 0 107 1 70 0 109] 
#[0 1 74 0 20 0 103 0 104 0 107 0 109] 
#[0 1 78 0 20 0 103 0 104 0 107 0 109] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 2 205 0 2 2 205 0 3 2 205 0 4 2 205 0 5 2 205 0 6 2 205 0 7 3 45 0 23 2 205 0 91 2 205 0 92 3 49 0 106 2 57 0 107] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 157 0 2 1 157 0 3 1 157 0 4 1 157 0 5 1 157 0 6 1 157 0 7 1 145 0 23 1 149 0 36 2 33 0 40 0 93 0 41 0 97 0 42 1 157 0 91 1 157 0 92 1 161 0 106 1 149 0 107] 
#[1 0 33 0 8 2 197 0 46 2 57 0 107] 
#[0 1 86 0 8 0 20 0 102 0 103 0 104 0 107 0 109] 
#[0 0 70 0 11 0 12 0 16 0 107] 
#[0 0 82 0 11 0 12 0 16 0 107] 
#[0 0 90 0 11 0 12 0 16 0 107] 
#[1 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 0 133 0 48 0 133 0 55 0 137 0 56 2 201 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 99 1 201 0 100 1 133 0 107] 
#[0 1 90 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 174 0 11 0 12 0 16 0 107] 
#[0 0 182 0 11 0 12 0 16 0 107] 
#[1 2 221 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 3 53 0 36 2 237 0 48 2 237 0 55 2 241 0 56 2 237 0 80 2 17 0 85 2 237 0 86 2 21 0 99 2 125 0 100 3 53 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 57 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 3 61 0 12 2 57 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 3 65 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 69 0 36 3 73 0 48 0 133 0 55 0 137 0 56 3 89 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 89 0 75 3 85 0 80 3 89 0 83 3 93 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 99 3 101 0 100 1 37 0 106 3 69 0 107] 
#[1 3 105 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 3 109 0 48 3 109 0 55 0 137 0 56 3 121 0 75 3 109 0 80 3 117 0 84 0 165 0 85 3 109 0 86 3 121 0 89 0 193 0 99 3 125 0 100 2 61 0 107] 
#[1 3 129 0 106 2 57 0 107] 
#[1 2 57 0 107 1 98 0 109] 
#[1 3 133 0 20 3 137 0 36 3 141 0 94 3 145 0 97 3 149 0 98 1 102 0 103 1 102 0 104 0 187 0 107 1 106 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 153 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 3 157 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 101 0 36 3 161 0 37 3 161 0 38 3 165 0 39 3 161 0 40 0 93 0 41 0 97 0 42 3 161 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 3 161 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 1 117 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 1 121 0 91 1 121 0 92 3 169 0 99 1 125 0 100 1 129 0 106 1 133 0 107] 
#[0 1 110 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 3 173 0 66 1 1 0 71 3 177 0 72] 
#[1 3 181 0 12 3 185 0 36 3 185 0 107] 
#[1 0 191 0 12 0 195 0 13 0 195 0 15 0 195 0 19 0 195 0 20 0 195 0 21 0 195 0 22 0 195 0 23 0 195 0 31 0 195 0 32 0 195 0 33 0 195 0 102 0 195 0 103 0 195 0 104 0 191 0 107 0 195 0 109] 
#[0 0 199 0 20 0 103 0 104 0 107 0 109] 
#[0 0 203 0 20 0 103 0 104 0 107 0 109] 
#[0 0 207 0 20 0 103 0 104 0 107 0 109] 
#[0 0 211 0 20 0 103 0 104 0 107 0 109] 
#[1 3 189 0 13 3 193 0 15] 
#[1 0 215 0 2 0 215 0 3 0 215 0 4 0 215 0 5 0 215 0 6 0 215 0 7 1 134 0 8 1 134 0 11 0 215 0 12 0 215 0 13 1 134 0 14 0 215 0 15 1 134 0 16 0 215 0 17 0 215 0 18 0 215 0 19 1 134 0 20 0 215 0 21 0 215 0 22 0 215 0 23 0 215 0 31 0 215 0 32 0 215 0 33 1 134 0 102 1 134 0 103 1 134 0 104 1 134 0 106 0 215 0 107 1 134 0 109] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 70 0 12 0 66 0 23 0 66 0 102 0 66 0 106 0 219 0 107] 
#[1 2 205 0 2 2 205 0 3 2 205 0 4 2 205 0 5 2 205 0 6 2 205 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 189 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 2 197 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 201 0 75 0 133 0 80 0 165 0 85 0 133 0 86 2 205 0 91 2 205 0 92 0 193 0 99 1 201 0 100 3 49 0 106 1 133 0 107] 
#[1 3 197 0 36 3 201 0 102 3 197 0 107] 
#[1 3 205 0 36 3 209 0 102 3 205 0 107] 
#[1 3 213 0 36 3 217 0 102 3 213 0 107] 
#[0 1 138 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 142 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 3 253 0 2 3 253 0 3 3 253 0 4 3 253 0 5 3 253 0 6 3 253 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 223 0 17 0 223 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 221 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 225 0 36 3 229 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 233 0 48 0 121 0 50 3 237 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 241 0 57 3 245 0 58 0 241 0 59 0 245 0 60 3 249 0 61 3 33 0 62 3 37 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 3 253 0 91 3 253 0 92 0 193 0 99 4 1 0 100 1 37 0 106 3 225 0 107] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 17 0 18 0 19 0 21 0 23 0 102 0 104 0 106 0 107 0 109] 
#[1 4 5 0 12 2 57 0 107] 
#[1 1 146 0 8 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 31 1 146 0 32 1 146 0 33 4 9 0 79 1 146 0 102 1 146 0 103 1 146 0 104 1 146 0 107 1 146 0 109] 
#[1 4 13 0 36 4 17 0 102 4 13 0 107] 
#[1 1 150 0 12 1 150 0 13 1 150 0 15 1 150 0 19 1 150 0 21 1 150 0 22 1 150 0 23 1 150 0 31 1 150 0 32 1 150 0 33 4 21 0 51 1 150 0 102 1 150 0 107] 
#[1 4 25 0 36 4 29 0 102 4 25 0 107] 
#[1 4 33 0 68 1 154 0 105 1 154 0 108] 
#[1 4 37 0 68 1 154 0 105 1 154 0 108] 
#[0 4 41 0 106] 
#[1 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 4 45 0 66 1 1 0 71 4 49 0 72 4 53 0 99 4 57 0 106 2 57 0 107] 
#[0 1 158 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 162 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 166 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 170 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 174 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 178 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 182 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 4 61 0 36 4 65 0 85 4 69 0 99 4 61 0 107] 
#[1 1 186 0 8 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 0 222 0 17 0 222 0 18 0 227 0 19 1 186 0 20 0 227 0 21 1 186 0 22 1 186 0 23 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 102 1 186 0 103 1 186 0 104 0 222 0 106 0 227 0 107 1 186 0 109] 
#[1 4 73 0 106 2 57 0 107] 
#[1 4 77 0 36 4 81 0 102 4 77 0 107] 
#[1 1 14 0 17 1 14 0 18 4 85 0 58 2 57 0 107] 
#[1 0 46 0 17 0 46 0 18 4 89 0 66 1 1 0 71 4 93 0 72] 
#[1 1 14 0 17 1 14 0 18 0 41 0 19 0 45 0 21 4 97 0 36 4 101 0 58 4 69 0 99 4 97 0 107] 
#[0 1 190 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 3 253 0 2 3 253 0 3 3 253 0 4 3 253 0 5 3 253 0 6 3 253 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 223 0 17 0 223 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 221 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 225 0 36 4 105 0 43 0 105 0 44 0 109 0 45 0 105 0 46 4 109 0 48 0 121 0 50 4 113 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 117 0 57 3 245 0 58 0 241 0 59 0 245 0 60 3 249 0 61 3 33 0 62 3 37 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 3 253 0 91 3 253 0 92 0 193 0 99 4 121 0 100 1 37 0 106 3 225 0 107] 
#[1 4 125 0 36 4 129 0 102 4 125 0 107] 
#[1 0 33 0 8 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 2 65 0 46 4 45 0 66 1 1 0 71 4 49 0 72 2 153 0 78 4 53 0 99 4 133 0 106 2 57 0 107] 
#[0 1 194 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 2 65 0 46 2 153 0 78 4 137 0 106 2 57 0 107] 
#[1 4 141 0 36 4 145 0 102 4 141 0 107] 
#[1 4 161 0 2 4 161 0 3 4 161 0 4 4 161 0 5 4 161 0 6 4 161 0 7 4 149 0 23 4 153 0 36 3 29 0 61 3 33 0 62 4 157 0 63 4 161 0 91 4 161 0 92 4 153 0 107] 
#[0 0 231 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 50 0 2 1 50 0 3 1 50 0 4 1 50 0 5 1 50 0 6 1 50 0 7 0 70 0 12 1 50 0 20 1 50 0 23 1 50 0 102 1 50 0 103 1 50 0 104 1 50 0 106 0 235 0 107 1 50 0 109] 
#[1 0 46 0 17 0 46 0 18 4 165 0 66 1 1 0 71 4 169 0 72] 
#[0 1 58 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 62 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 3 41 0 2 3 41 0 3 3 41 0 4 3 41 0 5 3 41 0 6 3 41 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 3 5 0 23 1 177 0 31 0 61 0 32 1 181 0 33 3 9 0 36 4 173 0 40 0 93 0 41 0 97 0 42 4 177 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 21 0 48 0 121 0 50 4 181 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 29 0 61 3 33 0 62 3 37 0 63 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 3 41 0 91 3 41 0 92 0 193 0 99 1 201 0 100 1 161 0 106 3 9 0 107] 
#[0 0 239 0 20 0 103 0 104 0 107 0 109] 
#[0 0 243 0 20 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 4 185 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 0 74 0 11 0 70 0 12 0 74 0 14 0 74 0 20 1 85 0 36 0 74 0 102 0 74 0 103 0 74 0 104 0 247 0 107 0 74 0 109] 
#[1 4 189 0 12 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 4 193 0 39 4 53 0 99 4 197 0 106 2 57 0 107] 
#[1 0 46 0 17 0 46 0 18 4 201 0 66 1 1 0 71 4 205 0 72] 
#[1 4 209 0 12 4 213 0 36 4 213 0 107] 
#[1 0 251 0 11 0 251 0 12 1 114 0 13 1 114 0 14 1 114 0 15 0 251 0 16 1 114 0 19 1 114 0 20 1 114 0 21 1 114 0 22 1 114 0 23 1 114 0 31 1 114 0 32 1 114 0 33 1 114 0 102 1 114 0 103 1 114 0 104 0 251 0 107 1 114 0 109] 
#[0 1 118 0 20 0 103 0 104 0 107 0 109] 
#[0 1 122 0 20 0 103 0 104 0 107 0 109] 
#[0 1 126 0 20 0 103 0 104 0 107 0 109] 
#[0 1 130 0 20 0 103 0 104 0 107 0 109] 
#[1 0 255 0 2 0 255 0 3 0 255 0 4 0 255 0 5 0 255 0 6 0 255 0 7 0 70 0 12 0 255 0 23 1 85 0 36 4 217 0 65 0 255 0 102 0 66 0 106 1 3 0 107] 
#[1 2 205 0 2 2 205 0 3 2 205 0 4 2 205 0 5 2 205 0 6 2 205 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 189 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 2 197 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 201 0 75 0 133 0 80 0 165 0 85 0 133 0 86 2 205 0 91 2 205 0 92 0 193 0 99 1 201 0 100 4 221 0 106 1 133 0 107] 
#[1 4 225 0 36 4 229 0 102 4 225 0 107] 
#[1 4 233 0 36 4 237 0 102 4 233 0 107] 
#[1 0 130 0 12 4 241 0 36 4 245 0 102 1 7 0 107] 
#[1 4 249 0 36 4 253 0 102 4 249 0 107] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[1 4 161 0 2 4 161 0 3 4 161 0 4 4 161 0 5 4 161 0 6 4 161 0 7 4 149 0 23 5 1 0 36 3 29 0 61 5 5 0 62 4 161 0 91 4 161 0 92 5 9 0 102 5 1 0 107] 
#[1 1 11 0 2 1 11 0 3 1 11 0 4 1 11 0 5 1 11 0 6 1 11 0 7 1 11 0 23 1 221 0 36 5 13 0 65 1 11 0 102 0 194 0 106 1 15 0 107] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 157 0 2 1 157 0 3 1 157 0 4 1 157 0 5 1 157 0 6 1 157 0 7 1 145 0 23 1 149 0 36 4 173 0 40 0 93 0 41 0 97 0 42 1 157 0 91 1 157 0 92 1 161 0 106 1 149 0 107] 
#[1 4 189 0 12 0 41 0 19 0 45 0 21 4 53 0 99 2 57 0 107] 
#[0 1 222 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 17 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 1 94 0 14 5 21 0 84] 
#[1 4 5 0 12 0 46 0 17 0 46 0 18 2 45 0 66 1 1 0 71 2 49 0 72 5 25 0 106 2 57 0 107] 
#[1 1 226 0 11 0 130 0 12 1 226 0 14 0 130 0 107] 
#[0 1 230 0 11 0 14] 
#[0 1 234 0 11 0 14] 
#[1 1 238 0 11 0 174 0 12 1 238 0 14 0 174 0 107] 
#[1 1 242 0 11 1 242 0 14 5 29 0 82] 
#[0 5 33 0 14] 
#[1 1 246 0 11 0 182 0 12 1 246 0 14 0 182 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 221 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 37 0 36 2 237 0 48 2 237 0 55 2 241 0 56 2 101 0 59 2 105 0 60 2 109 0 61 2 113 0 66 1 1 0 71 2 117 0 72 2 121 0 73 2 237 0 80 2 17 0 85 2 237 0 86 2 105 0 90 1 21 0 91 1 21 0 92 2 21 0 99 2 125 0 100 5 37 0 107] 
#[1 1 94 0 16 5 41 0 84] 
#[1 1 250 0 11 1 205 0 12 1 250 0 16 1 209 0 36 1 209 0 107] 
#[0 1 254 0 11 0 16] 
#[0 5 45 0 16] 
#[1 2 2 0 11 2 2 0 16 5 49 0 88] 
#[1 2 221 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 3 53 0 36 5 53 0 48 5 53 0 55 2 241 0 56 5 53 0 80 2 17 0 85 5 53 0 86 2 21 0 99 2 125 0 100 3 53 0 107] 
#[1 4 161 0 2 4 161 0 3 4 161 0 4 4 161 0 5 4 161 0 6 4 161 0 7 4 149 0 23 4 153 0 36 3 29 0 61 3 33 0 62 5 57 0 63 4 161 0 91 4 161 0 92 4 153 0 107] 
#[1 5 61 0 36 5 65 0 98 1 102 0 104 5 61 0 107] 
#[1 5 69 0 20 5 73 0 36 5 77 0 98 1 102 0 103 1 102 0 104 1 133 0 107] 
#[0 2 6 0 20 0 103 0 104 0 107 0 109] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 81 0 36 0 77 0 37 0 77 0 38 0 85 0 39 0 77 0 40 0 93 0 41 0 97 0 42 0 77 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 0 77 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 0 121 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 0 177 0 91 0 177 0 92 5 85 0 96 0 193 0 99 0 197 0 100 0 14 0 103 0 14 0 104 0 201 0 106 0 7 0 107 0 14 0 109] 
#[1 5 89 0 103 5 93 0 104] 
#[0 1 19 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 97 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[0 2 14 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 5 101 0 66 1 1 0 71 5 105 0 72] 
#[1 1 23 0 2 1 23 0 3 1 23 0 4 1 23 0 5 1 23 0 6 1 23 0 7 2 18 0 8 1 23 0 12 1 23 0 13 1 23 0 15 1 23 0 17 1 23 0 18 1 23 0 19 2 18 0 20 1 23 0 21 1 23 0 22 1 23 0 23 1 23 0 31 1 23 0 32 1 23 0 33 2 18 0 103 2 18 0 104 2 18 0 106 1 23 0 107 2 18 0 109] 
#[0 1 27 0 20 0 103 0 104 0 107 0 109] 
#[0 1 31 0 20 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 109 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 5 113 0 12 2 57 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 5 117 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 69 0 36 3 73 0 48 0 133 0 55 0 137 0 56 5 121 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 121 0 75 3 85 0 80 5 121 0 83 5 125 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 99 3 101 0 100 1 37 0 106 3 69 0 107] 
#[1 5 129 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 3 109 0 48 3 109 0 55 0 137 0 56 5 137 0 75 3 109 0 80 5 133 0 84 0 165 0 85 3 109 0 86 5 137 0 89 0 193 0 99 3 125 0 100 2 61 0 107] 
#[1 5 141 0 102 2 57 0 107] 
#[0 2 30 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 5 145 0 102 2 57 0 107] 
#[0 2 34 0 20 0 103 0 104 0 107 0 109] 
#[1 5 149 0 102 2 57 0 107] 
#[0 2 38 0 20 0 103 0 104 0 107 0 109] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 5 1 210 0 6 1 210 0 7 0 70 0 12 1 210 0 23 1 85 0 36 4 217 0 65 1 35 0 102 1 39 0 107] 
#[1 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 223 0 17 0 223 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 2 197 0 46 0 133 0 48 0 133 0 55 0 137 0 56 5 153 0 58 2 45 0 66 1 1 0 71 2 49 0 72 2 201 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 99 1 201 0 100 5 25 0 106 1 133 0 107] 
#[1 5 157 0 36 5 161 0 102 5 157 0 107] 
#[1 0 130 0 12 5 165 0 36 5 169 0 102 1 7 0 107] 
#[1 5 173 0 36 5 177 0 102 5 173 0 107] 
#[1 5 181 0 36 5 185 0 102 5 181 0 107] 
#[1 0 46 0 17 0 46 0 18 5 189 0 66 1 1 0 71 5 193 0 72] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 43 0 102 1 43 0 107] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 5 1 210 0 6 1 210 0 7 1 210 0 23 1 221 0 36 5 13 0 65 1 47 0 102 1 51 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 221 0 12 0 6 0 13 0 6 0 15 0 223 0 17 0 223 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 197 0 36 2 237 0 48 2 237 0 55 2 241 0 56 5 201 0 58 2 101 0 59 2 105 0 60 2 109 0 61 2 113 0 66 1 1 0 71 2 117 0 72 2 121 0 73 2 237 0 80 2 17 0 85 2 237 0 86 2 105 0 90 1 21 0 91 1 21 0 92 2 21 0 99 2 125 0 100 5 197 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 205 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 0 33 0 8 2 42 0 11 2 42 0 12 2 42 0 13 2 42 0 14 2 42 0 15 2 42 0 16 2 42 0 19 2 42 0 20 2 42 0 21 2 42 0 22 2 42 0 23 2 42 0 31 2 42 0 32 2 42 0 33 1 165 0 36 5 209 0 44 5 209 0 46 2 42 0 102 2 42 0 103 2 42 0 104 1 55 0 107 2 42 0 109] 
#[1 5 213 0 102 2 57 0 107] 
#[0 2 46 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 1 185 0 36 0 133 0 48 5 217 0 50 0 133 0 55 0 137 0 56 5 217 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 99 1 201 0 100 2 50 0 102 1 59 0 107] 
#[1 5 221 0 102 2 57 0 107] 
#[0 2 54 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 5 225 0 67 5 229 0 69 5 233 0 70 5 237 0 74 2 58 0 105 5 241 0 108] 
#[1 5 225 0 67 5 229 0 69 5 245 0 70 5 249 0 74 2 58 0 105 5 241 0 108] 
#[1 0 41 0 19 0 45 0 21 5 253 0 99] 
#[0 2 62 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 66 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 3 253 0 2 3 253 0 3 3 253 0 4 3 253 0 5 3 253 0 6 3 253 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 221 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 1 0 36 3 229 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 3 237 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 241 0 57 0 241 0 59 0 245 0 60 3 249 0 61 3 33 0 62 3 37 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 3 253 0 91 3 253 0 92 0 193 0 99 3 101 0 100 1 37 0 106 6 1 0 107] 
#[1 0 41 0 19 0 45 0 21 4 53 0 99 2 57 0 107] 
#[1 6 5 0 13 6 9 0 15] 
#[0 1 134 0 13 0 15 0 17 0 18 0 19 0 21 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 1 0 36 3 229 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 3 237 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 241 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 99 3 101 0 100 1 37 0 106 6 1 0 107] 
#[1 6 13 0 102 2 57 0 107] 
#[0 2 70 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 6 17 0 66 1 1 0 71 6 21 0 72] 
#[0 2 74 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 78 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 14 0 17 1 14 0 18 0 41 0 19 0 45 0 21 6 25 0 58 4 53 0 99 2 57 0 107] 
#[1 0 46 0 17 0 46 0 18 6 29 0 66 1 1 0 71 6 33 0 72] 
#[1 6 37 0 36 6 41 0 102 6 37 0 107] 
#[1 0 130 0 12 6 45 0 36 6 49 0 102 1 7 0 107] 
#[1 6 53 0 36 6 57 0 102 6 53 0 107] 
#[1 6 61 0 36 6 65 0 102 6 61 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 1 233 0 12 0 6 0 13 0 6 0 15 0 223 0 17 0 223 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 69 0 36 6 73 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 77 0 48 0 121 0 50 6 81 0 53 0 129 0 54 1 249 0 55 1 253 0 56 6 85 0 57 5 201 0 58 6 89 0 59 6 93 0 60 6 97 0 61 6 101 0 66 1 1 0 71 6 105 0 72 6 109 0 73 0 121 0 75 1 249 0 80 2 17 0 85 1 249 0 86 6 93 0 90 1 21 0 91 1 21 0 92 2 21 0 99 3 101 0 100 1 37 0 106 6 69 0 107] 
#[1 6 113 0 102 2 57 0 107] 
#[0 2 82 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 3 253 0 2 3 253 0 3 3 253 0 4 3 253 0 5 3 253 0 6 3 253 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 221 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 1 0 36 4 105 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 117 0 48 0 121 0 50 4 113 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 117 0 57 0 241 0 59 0 245 0 60 3 249 0 61 3 33 0 62 3 37 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 3 253 0 91 3 253 0 92 0 193 0 99 6 121 0 100 1 37 0 106 6 1 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 1 0 36 4 105 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 117 0 48 0 121 0 50 4 113 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 117 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 99 6 121 0 100 1 37 0 106 6 1 0 107] 
#[1 6 125 0 102 2 57 0 107] 
#[0 2 86 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 5 1 210 0 6 1 210 0 7 1 210 0 23 1 85 0 36 4 217 0 65 1 210 0 102 1 63 0 107] 
#[1 4 197 0 106 2 57 0 107] 
#[1 4 161 0 2 4 161 0 3 4 161 0 4 4 161 0 5 4 161 0 6 4 161 0 7 4 149 0 23 6 129 0 36 3 29 0 61 5 5 0 62 4 161 0 91 4 161 0 92 6 133 0 102 6 129 0 107] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 5 1 210 0 6 1 210 0 7 1 210 0 23 1 221 0 36 5 13 0 65 1 210 0 102 1 63 0 107] 
#[0 1 202 0 20 0 103 0 104 0 107 0 109] 
#[0 1 206 0 20 0 103 0 104 0 107 0 109] 
#[1 6 137 0 36 6 141 0 102 6 137 0 107] 
#[1 6 145 0 36 6 149 0 102 6 145 0 107] 
#[1 6 153 0 36 6 157 0 102 6 153 0 107] 
#[0 2 10 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 6 161 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 0 46 0 17 0 46 0 18 6 165 0 66 1 1 0 71 6 169 0 72] 
#[1 4 161 0 2 4 161 0 3 4 161 0 4 4 161 0 5 4 161 0 6 4 161 0 7 4 149 0 23 4 153 0 36 3 29 0 61 3 33 0 62 3 37 0 63 4 161 0 91 4 161 0 92 4 153 0 107] 
#[0 2 22 0 20 0 103 0 104 0 107 0 109] 
#[0 2 26 0 20 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 6 173 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 6 177 0 12 2 57 0 107] 
#[1 2 90 0 2 2 90 0 3 2 90 0 4 2 90 0 5 2 90 0 6 2 90 0 7 2 90 0 23 6 181 0 36 6 185 0 64 2 90 0 102 1 67 0 107] 
#[1 3 41 0 2 3 41 0 3 3 41 0 4 3 41 0 5 3 41 0 6 3 41 0 7 6 189 0 23 6 193 0 36 4 173 0 40 0 93 0 41 0 97 0 42 3 29 0 61 3 33 0 62 3 37 0 63 3 41 0 91 3 41 0 92 1 161 0 106 6 193 0 107] 
#[1 6 197 0 102 2 57 0 107] 
#[0 1 71 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 106 0 107 0 109] 
#[1 6 201 0 102 2 57 0 107] 
#[0 1 75 0 20 0 103 0 104 0 107 0 109] 
#[1 6 205 0 102 2 57 0 107] 
#[0 2 102 0 20 0 103 0 104 0 107 0 109] 
#[1 6 209 0 102 2 57 0 107] 
#[0 1 79 0 20 0 103 0 104 0 107 0 109] 
#[1 6 213 0 102 4 197 0 106 2 57 0 107] 
#[0 2 110 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[0 2 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 5 2 118 0 6 2 118 0 7 2 118 0 23 6 181 0 36 6 185 0 64 2 118 0 102 1 83 0 107] 
#[0 2 122 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 6 217 0 14] 
#[1 4 161 0 2 4 161 0 3 4 161 0 4 4 161 0 5 4 161 0 6 4 161 0 7 1 14 0 17 1 14 0 18 0 41 0 19 0 45 0 21 0 49 0 22 4 149 0 23 6 221 0 36 6 225 0 48 3 245 0 58 3 29 0 61 3 33 0 62 3 37 0 63 4 161 0 91 4 161 0 92 0 193 0 99 6 229 0 100 6 221 0 107] 
#[1 6 233 0 11 1 94 0 14 6 237 0 81 6 241 0 84] 
#[0 2 126 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 4 189 0 12 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 4 45 0 66 1 1 0 71 4 49 0 72 4 53 0 99 4 197 0 106 2 57 0 107] 
#[0 6 245 0 16] 
#[0 2 130 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 6 249 0 11 1 94 0 16 6 253 0 84 7 1 0 87] 
#[1 2 134 0 11 4 209 0 12 2 134 0 16 4 213 0 36 4 213 0 107] 
#[1 4 161 0 2 4 161 0 3 4 161 0 4 4 161 0 5 4 161 0 6 4 161 0 7 4 149 0 23 7 5 0 36 3 29 0 61 5 5 0 62 4 161 0 91 4 161 0 92 7 9 0 102 7 5 0 107] 
#[1 7 13 0 98 1 102 0 104 2 57 0 107] 
#[0 7 17 0 104] 
#[1 7 21 0 36 7 25 0 98 1 102 0 104 7 21 0 107] 
#[1 7 29 0 98 1 102 0 104 2 57 0 107] 
#[1 7 33 0 103 7 37 0 104] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 0 73 0 36 7 41 0 37 7 41 0 38 1 109 0 39 7 41 0 40 0 93 0 41 0 97 0 42 7 41 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 7 41 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 1 117 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 1 121 0 91 1 121 0 92 7 45 0 96 0 193 0 99 0 197 0 100 0 14 0 103 0 14 0 104 1 129 0 106 1 87 0 107 0 14 0 109] 
#[0 2 138 0 20 0 103 0 104 0 107 0 109] 
#[1 2 142 0 2 2 142 0 3 2 142 0 4 2 142 0 5 2 142 0 6 2 142 0 7 2 142 0 8 2 142 0 12 2 142 0 13 2 142 0 15 2 142 0 17 2 142 0 18 2 142 0 19 1 91 0 20 2 142 0 21 2 142 0 22 2 142 0 23 2 142 0 31 2 142 0 32 2 142 0 33 7 53 0 36 2 142 0 103 2 142 0 104 2 142 0 106 1 95 0 107 2 142 0 109] 
#[0 2 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 1 99 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 103 0 20 0 103 0 104 0 107 0 109] 
#[0 1 107 0 20 0 103 0 104 0 107 0 109] 
#[0 1 111 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 7 57 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 1 94 0 14 7 61 0 84] 
#[1 1 242 0 11 1 242 0 14 7 65 0 82] 
#[0 7 69 0 14] 
#[1 1 94 0 16 7 73 0 84] 
#[0 7 77 0 16] 
#[1 2 2 0 11 2 2 0 16 7 81 0 88] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 2 170 0 20 0 103 0 104 0 107 0 109] 
#[0 2 174 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 7 85 0 66 1 1 0 71 7 89 0 72] 
#[1 7 93 0 102 2 57 0 107] 
#[0 2 178 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 97 0 102 2 57 0 107] 
#[0 2 182 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 101 0 102 2 57 0 107] 
#[0 2 186 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 105 0 102 2 57 0 107] 
#[0 2 190 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 194 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 198 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 4 189 0 12 0 223 0 17 0 223 0 18 0 41 0 19 0 45 0 21 7 109 0 58 4 45 0 66 1 1 0 71 4 49 0 72 4 53 0 99 4 197 0 106 2 57 0 107] 
#[1 0 46 0 17 0 46 0 18 7 113 0 66 1 1 0 71 7 117 0 72] 
#[0 1 198 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 202 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 206 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 210 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 107] 
#[0 2 214 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 218 0 105 0 108] 
#[1 7 121 0 23 7 125 0 108] 
#[1 7 129 0 74 2 58 0 105 7 133 0 108] 
#[0 7 137 0 105] 
#[1 2 222 0 23 2 226 0 105 1 115 0 108] 
#[1 7 141 0 74 2 58 0 105 7 133 0 108] 
#[0 7 145 0 105] 
#[0 2 230 0 8 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 107] 
#[1 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 2 197 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 45 0 66 1 1 0 71 2 49 0 72 2 201 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 193 0 99 1 201 0 100 5 25 0 106 1 133 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 7 149 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 69 0 36 3 73 0 48 0 133 0 55 0 137 0 56 7 153 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 7 153 0 75 3 85 0 80 7 153 0 83 7 157 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 99 3 101 0 100 1 37 0 106 3 69 0 107] 
#[1 7 161 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 3 109 0 48 3 109 0 55 0 137 0 56 7 169 0 75 3 109 0 80 7 165 0 84 0 165 0 85 3 109 0 86 7 169 0 89 0 193 0 99 3 125 0 100 2 61 0 107] 
#[0 2 234 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 238 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 242 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 7 173 0 66 1 1 0 71 7 177 0 72] 
#[0 2 246 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 250 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 181 0 102 2 57 0 107] 
#[0 2 254 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 185 0 102 2 57 0 107] 
#[0 1 119 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 189 0 102 2 57 0 107] 
#[0 3 6 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 193 0 102 2 57 0 107] 
#[0 3 10 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 3 157 0 12 0 6 0 13 0 6 0 15 0 223 0 17 0 223 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 2 197 0 46 0 133 0 48 0 133 0 55 0 137 0 56 7 109 0 58 7 197 0 66 1 1 0 71 7 201 0 72 2 201 0 75 0 133 0 80 0 165 0 85 0 133 0 86 3 169 0 99 1 201 0 100 7 205 0 102 5 25 0 106 1 133 0 107] 
#[1 7 209 0 36 7 213 0 102 7 209 0 107] 
#[1 0 130 0 12 7 217 0 36 7 221 0 102 1 7 0 107] 
#[1 7 225 0 36 7 229 0 102 7 225 0 107] 
#[1 7 233 0 36 7 237 0 102 7 233 0 107] 
#[0 1 123 0 102 0 107] 
#[0 1 127 0 102 0 107] 
#[0 1 131 0 102 0 107] 
#[0 1 135 0 102 0 107] 
#[0 1 139 0 102 0 107] 
#[0 1 143 0 102 0 107] 
#[0 3 14 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 130 0 12 7 241 0 36 7 245 0 102 1 7 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 1 233 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 7 249 0 36 6 73 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 77 0 48 0 121 0 50 6 81 0 53 0 129 0 54 1 249 0 55 1 253 0 56 6 85 0 57 6 89 0 59 6 93 0 60 6 97 0 61 6 101 0 66 1 1 0 71 6 105 0 72 6 109 0 73 0 121 0 75 1 249 0 80 2 17 0 85 1 249 0 86 6 93 0 90 1 21 0 91 1 21 0 92 2 21 0 99 3 101 0 100 1 37 0 106 7 249 0 107] 
#[0 3 18 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 253 0 102 4 197 0 106 2 57 0 107] 
#[0 3 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 1 0 102 2 57 0 107] 
#[0 2 94 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 8 5 0 102 2 57 0 107] 
#[0 2 98 0 20 0 103 0 104 0 107 0 109] 
#[1 8 9 0 102 2 57 0 107] 
#[0 2 106 0 20 0 103 0 104 0 107 0 109] 
#[0 2 150 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 154 0 20 0 103 0 104 0 107 0 109] 
#[0 2 158 0 20 0 103 0 104 0 107 0 109] 
#[0 2 162 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 13 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 71 0 107 0 50 0 109] 
#[1 1 147 0 2 1 151 0 3 1 155 0 4 1 159 0 5 1 163 0 6 1 167 0 7 1 171 0 23 8 21 0 91 8 21 0 92 3 26 0 102 1 175 0 107] 
#[0 3 30 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[1 0 255 0 2 0 255 0 3 0 255 0 4 0 255 0 5 0 255 0 6 0 255 0 7 0 255 0 23 1 85 0 36 4 217 0 65 0 255 0 102 0 66 0 106 1 179 0 107] 
#[1 2 205 0 2 2 205 0 3 2 205 0 4 2 205 0 5 2 205 0 6 2 205 0 7 3 45 0 23 2 205 0 91 2 205 0 92 4 221 0 106 2 57 0 107] 
#[0 1 183 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 106 0 107 0 109] 
#[0 1 187 0 20 0 103 0 104 0 107 0 109] 
#[0 3 42 0 20 0 103 0 104 0 107 0 109] 
#[0 1 191 0 20 0 103 0 104 0 107 0 109] 
#[0 3 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 54 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 14 0 17 1 14 0 18 5 153 0 58 4 197 0 106 2 57 0 107] 
#[1 5 165 0 36 5 169 0 102 5 165 0 107] 
#[1 1 14 0 17 1 14 0 18 0 41 0 19 0 45 0 21 8 25 0 36 5 201 0 58 4 69 0 99 8 25 0 107] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 69 0 36 3 73 0 48 0 133 0 55 0 137 0 56 8 29 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 29 0 75 3 85 0 80 8 29 0 83 8 33 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 99 3 101 0 100 1 37 0 106 3 69 0 107] 
#[0 3 58 0 11 0 14] 
#[0 8 37 0 14] 
#[0 3 62 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 3 109 0 48 3 109 0 55 0 137 0 56 8 45 0 75 3 109 0 80 8 41 0 84 0 165 0 85 3 109 0 86 8 45 0 89 0 193 0 99 3 125 0 100 2 61 0 107] 
#[0 8 49 0 16] 
#[0 3 66 0 11 0 16] 
#[1 8 53 0 102 4 197 0 106 2 57 0 107] 
#[0 3 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 57 0 104] 
#[0 3 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 8 61 0 98 1 102 0 104 2 57 0 107] 
#[0 8 65 0 104] 
#[0 8 69 0 104] 
#[1 3 78 0 2 3 78 0 3 3 78 0 4 3 78 0 5 3 78 0 6 3 78 0 7 3 78 0 8 3 78 0 12 3 78 0 13 3 78 0 15 3 78 0 17 3 78 0 18 3 78 0 19 1 195 0 20 3 78 0 21 3 78 0 22 3 78 0 23 3 78 0 31 3 78 0 32 3 78 0 33 8 77 0 36 3 78 0 103 3 78 0 104 3 78 0 106 1 199 0 107 3 78 0 109] 
#[0 3 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 1 203 0 20 0 103 0 104 0 107 0 109] 
#[0 3 86 0 20 0 103 0 104 0 107 0 109] 
#[0 8 81 0 36 0 107] 
#[1 8 85 0 20 8 89 0 36 8 93 0 104 1 133 0 107] 
#[0 1 207 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 97 0 14] 
#[1 8 101 0 11 1 94 0 14 6 237 0 81 8 105 0 84] 
#[0 1 211 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 109 0 16] 
#[0 1 215 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 113 0 11 1 94 0 16 8 117 0 84 7 1 0 87] 
#[0 3 102 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 106 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 110 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 114 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 118 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 122 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 8 121 0 66 1 1 0 71 8 125 0 72] 
#[0 3 126 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 130 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 134 0 105 0 108] 
#[0 3 138 0 23 0 108] 
#[0 8 129 0 105] 
#[0 3 142 0 105 0 108] 
#[0 3 146 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 133 0 105] 
#[0 3 150 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 94 0 14 8 137 0 84] 
#[1 1 242 0 11 1 242 0 14 8 141 0 82] 
#[0 8 145 0 14] 
#[1 1 94 0 16 8 149 0 84] 
#[0 8 153 0 16] 
#[1 2 2 0 11 2 2 0 16 8 157 0 88] 
#[0 3 154 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 158 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 162 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 219 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 170 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 174 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 223 0 102 0 107] 
#[0 1 227 0 102 0 107] 
#[1 0 33 0 8 2 65 0 46 8 161 0 78] 
#[1 8 165 0 102 2 57 0 107] 
#[0 3 178 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 169 0 102 2 57 0 107] 
#[0 3 182 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 173 0 102 2 57 0 107] 
#[0 3 186 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 177 0 102 2 57 0 107] 
#[0 3 190 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 181 0 102 2 57 0 107] 
#[0 3 2 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 3 157 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 2 197 0 46 0 133 0 48 0 133 0 55 0 137 0 56 7 197 0 66 1 1 0 71 7 201 0 72 2 201 0 75 0 133 0 80 0 165 0 85 0 133 0 86 3 169 0 99 1 201 0 100 7 205 0 102 5 25 0 106 1 133 0 107] 
#[0 3 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 34 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 3 38 0 20 0 103 0 104 0 107 0 109] 
#[0 3 46 0 20 0 103 0 104 0 107 0 109] 
#[0 3 90 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 198 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[0 3 202 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[1 1 14 0 17 1 14 0 18 0 41 0 19 0 45 0 21 7 109 0 58 4 53 0 99 2 57 0 107] 
#[0 3 206 0 11 0 14] 
#[0 8 185 0 14] 
#[0 3 210 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 189 0 16] 
#[0 3 214 0 11 0 16] 
#[0 3 218 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 8 193 0 104] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 3 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 8 197 0 36 0 107] 
#[1 8 201 0 20 8 205 0 36 8 209 0 104 1 133 0 107] 
#[1 8 213 0 104 2 57 0 107] 
#[0 8 217 0 36 0 107] 
#[1 8 221 0 104 2 57 0 107] 
#[0 3 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 1 231 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 69 0 36 3 73 0 48 0 133 0 55 0 137 0 56 8 29 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 29 0 75 3 85 0 80 8 29 0 83 8 225 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 99 3 101 0 100 1 37 0 106 3 69 0 107] 
#[0 8 229 0 14] 
#[0 1 235 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 3 109 0 48 3 109 0 55 0 137 0 56 8 45 0 75 3 109 0 80 8 233 0 84 0 165 0 85 3 109 0 86 8 45 0 89 0 193 0 99 3 125 0 100 2 61 0 107] 
#[0 8 237 0 16] 
#[0 3 250 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 254 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 2 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 6 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 241 0 14] 
#[1 8 245 0 11 1 94 0 14 6 237 0 81 8 249 0 84] 
#[0 3 94 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 253 0 16] 
#[0 3 98 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 9 1 0 11 1 94 0 16 9 5 0 84 7 1 0 87] 
#[0 4 10 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 14 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 18 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 22 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 26 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 166 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 30 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 34 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 9 9 0 104 2 57 0 107] 
#[0 9 13 0 36 0 107] 
#[1 9 17 0 104 2 57 0 107] 
#[0 4 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 4 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 9 21 0 104 2 57 0 107] 
#[0 4 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 9 25 0 14] 
#[0 1 239 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 9 29 0 16] 
#[0 1 243 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 242 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 225 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 69 0 36 3 73 0 48 0 133 0 55 0 137 0 56 8 29 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 29 0 75 3 85 0 80 8 29 0 83 9 33 0 84 0 165 0 85 3 97 0 86 0 245 0 90 1 21 0 91 1 21 0 92 0 193 0 99 3 101 0 100 1 37 0 106 3 69 0 107] 
#[0 9 37 0 14] 
#[0 3 246 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 61 0 36 3 109 0 48 3 109 0 55 0 137 0 56 8 45 0 75 3 109 0 80 9 41 0 84 0 165 0 85 3 109 0 86 8 45 0 89 0 193 0 99 3 125 0 100 2 61 0 107] 
#[0 9 45 0 16] 
#[0 4 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 9 49 0 104 2 57 0 107] 
#[0 4 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 4 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 1 247 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 251 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 9 53 0 14] 
#[0 4 54 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 9 57 0 16] 
#[0 4 58 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 4 74 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 78 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109]
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
	self pushScope: #LITERAL_STRING.
	^ scanner currentIndent
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
YAMLParser >> reduceActionForSplitDocument10: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	result at: 3 put: (nodes at: 5).
	result at: 2 put: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument11: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument12: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument15: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument16: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument18: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument19: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 2).
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
YAMLParser >> reduceActionForSplitDocument4: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument5: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 2).
	result at: 3 put: (nodes at: 4).
	result at: 2 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument6: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument7: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument8: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	result at: 2 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForSplitDocument9: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 3).
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
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE____fileDocument_1: nodes [
	| result |
	result := Array new: 6.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE____fileDocument_2: nodes [
	| result |
	result := Array new: 6.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 5).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE____fileDocument__1: nodes [
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
YAMLParser >> reduceActionFor_SplitDocument__NEWLINE____fileDocument__2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	self add: ((nodes at: 2) at: 3) to: (result at: 3).
	self add: ((nodes at: 2) at: 4) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 6) to: (result at: 6).
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
YAMLParser >> reduceActionFor__COMMA___comma__flowListValue___item___1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: nodes [
	| result |
	result := nodes at: 1.
	self addAll: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionFor__NEWLINE____listitem__item___1: nodes [
	| result |
	result := OrderedCollection new: 2.
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
YAMLParser >> reduceActionFordocument4: nodes [
	^ nodes at: 3
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
YAMLParser >> reduceActionFordocumentValue7: nodes [
	| result |
	result := nodes at: 2.
	^ result
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
	result addTokens: ((nodes at: 1) at: 2) to: result anchors.
	result addTokens: ((nodes at: 1) at: 3) to: result tags.
	result addTokens: ((nodes at: 1) at: 4) to: result documentEnds.
	result addTokens: ((nodes at: 1) at: 5) to: result documentStarts.
	result addTokens: ((nodes at: 1) at: 6) to: result globalTags.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument3: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument4: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument5: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocument6: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForfileDocuments1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 6).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 5) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 6) to: (result at: 3).
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
	result indent: (nodes at: 1).
	result addToken: (nodes at: 2) to: result parts.
	result addTokens: (nodes at: 3) to: result parts.
	^ result
]

{ #category : #'generated-reduction actions' }
YAMLParser >> reduceActionForstring_literal2: nodes [
	| result |
	result := YAMLStringNode new.
	result indent: (nodes at: 1).
	result addToken: (nodes at: 2) to: result parts.
	result addTokens: (nodes at: 3) to: result parts.
	result addTokens: (nodes at: 4) to: result endingNewlines.
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
