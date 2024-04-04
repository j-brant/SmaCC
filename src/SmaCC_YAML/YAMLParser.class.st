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
#[ 0 9 0 42] 
#[ 0 13 0 42] 
#[ 0 17 0 42] 
#[ 0 21 0 42] 
#[ 0 25 0 42] 
#[ 0 29 0 42] 
#[ 0 6 0 42] 
#[ 0 41 0 42] 
#[ 0 42 0 45] 
#[ 0 42 0 49] 
#[ 0 42 0 209] 
#[ 0 42 0 213] 
#[ 0 42 0 217] 
#[ 0 42 1 41] 
#[ 0 9 0 50] 
#[ 0 13 0 50] 
#[ 0 17 0 50] 
#[ 0 21 0 50] 
#[ 0 25 0 50] 
#[ 0 29 0 50] 
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
#[ 0 194 0 202] 
#[ 0 194 0 198 0 202 0 205] 
#[ 0 205 0 222] 
#[ 0 74 0 205] 
#[ 0 202 0 205] 
#[ 0 218 2 97] 
#[ 0 42 2 137] 
#[ 0 42 0 205] 
#[ 0 226 1 22] 
#[ 0 66 1 54] 
#[ 0 66 0 74 1 54] 
#[ 0 66 0 70 0 74 0 205 1 54] 
#[ 0 126 1 62] 
#[ 0 170 1 66] 
#[ 0 194 1 70] 
#[ 0 194 0 202 1 70] 
#[ 0 194 0 198 0 202 0 205 1 70] 
#[ 0 226 1 74] 
#[ 0 205 1 110] 
#[ 0 146 1 118] 
#[ 0 146 0 150 1 118] 
#[ 0 154 1 122] 
#[ 0 158 1 126] 
#[ 0 162 1 130] 
#[ 0 166 1 134] 
#[ 0 218 1 138] 
#[ 0 66 0 70] 
#[ 0 194 0 198] 
#[ 0 46 1 18] 
#[ 0 226 1 190] 
#[ 1 34 1 202] 
#[ 0 70 1 54] 
#[ 0 198 1 70] 
#[ 1 78 1 206] 
#[ 1 82 1 210] 
#[ 0 70 0 74 0 205] 
#[ 0 150 1 118] 
#[ 0 198 0 202 0 205] 
#[ 0 66 1 214] 
#[ 0 66 0 70 0 205 1 214] 
#[ 0 130 0 205] 
#[ 0 194 1 214] 
#[ 0 194 0 198 0 205 1 214] 
#[ 1 34 2 14] 
#[ 0 218 2 22] 
#[ 1 78 2 26] 
#[ 1 82 2 30] 
#[ 0 74 1 214] 
#[ 0 70 0 74 0 205 1 214] 
#[ 0 250 1 218] 
#[ 0 202 1 214] 
#[ 0 198 0 202 0 205 1 214] 
#[ 0 205 2 46] 
#[ 0 205 2 54] 
#[ 0 174 0 205] 
#[ 0 182 0 205] 
#[ 0 205 1 214] 
#[ 0 205 2 94] 
#[ 2 34 2 98] 
#[ 2 38 2 102] 
#[ 2 42 2 110] 
#[ 0 205 2 122] 
#[ 0 14 1 133] 
#[ 2 146 7 85] 
#[ 0 205 2 146] 
#[ 1 34 1 202 2 154] 
#[ 1 78 1 206 2 158] 
#[ 1 82 1 210 2 162] 
#[ 1 226 2 166] 
#[ 2 226 2 230] 
#[ 2 186 3 6] 
#[ 0 242 1 166] 
#[ 0 246 1 170] 
#[ 0 250 1 174] 
#[ 0 254 1 178] 
#[ 1 2 1 182] 
#[ 1 6 1 186] 
#[ 0 9 3 30] 
#[ 0 13 3 30] 
#[ 0 17 3 30] 
#[ 0 21 3 30] 
#[ 0 25 3 30] 
#[ 0 29 3 30] 
#[ 3 30 8 61] 
#[ 2 65 3 30] 
#[ 0 66 0 205 1 214] 
#[ 0 194 0 205 1 214] 
#[ 2 170 3 38] 
#[ 2 174 3 42] 
#[ 2 178 3 50] 
#[ 3 82 8 125] 
#[ 0 205 3 82] 
#[ 0 94 1 58] 
#[ 2 126 3 94] 
#[ 2 130 3 98] 
#[ 2 134 3 102] 
#[ 3 118 3 170] 
#[ 1 142 2 66] 
#[ 1 146 2 70] 
#[ 3 58 4 6] 
#[ 3 66 4 10] 
#[ 3 230 4 74] 
#[ 3 238 4 78] 
#[ 4 50 4 94] 
#[ 4 54 4 98]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2024-04-04T07:18:07.63811-05:00'
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
 : <STRING_MY_START> ([^\ \r\n\:] | (\: [^\ \r\n\t\#]) | (\ + ([^\ \:\#\r\n] | (\: [^\ \r\n\t\#]))) )*
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
 | numberToken 'part' {{String}}
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
 : (numberToken 'part' | <STRING_MY> 'part')? <NEWLINE>+ <INDENT> ( (numberToken 'part' | <STRING_MY> 'part') (<NEWLINE>+ (numberToken 'part' | <STRING_MY> 'part' | <singleQuoteString> 'part' | <doubleQuoteString> 'part')?)* | multiline_string)+ <NEWLINE>+? <DEDENT> {{String}}
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
	| <NEWLINE>+ <INDENT> flowmappinglist 'value' <NEWLINE>+ <DEDENT>
	| alias 'value'?
	| <NEWLINE>+ listWithoutInitialNewline 'value'
	| <NEWLINE>+ <INDENT> TagsOrAnchors <NEWLINE>+ <DEDENT> listWithoutInitialNewline 'value'
	| flowlist 'value'
	| <NEWLINE>+ <INDENT> flowlist 'value' <NEWLINE>+ <DEDENT>
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
	#(85 0 #reduceActionForPushFlow1: 11670529 true) 
	#(39 0 #reduceActionForSetDocumentIndent1: 6931457 true) 
	#(96 0 #reduceActionForfileDocument6: 12412934 false) 
	#(92 1 #liftFirstValue: 12246017 false) 
	#(92 1 #liftFirstValue: 12246018 false) 
	#(92 1 #liftFirstValue: 12246019 false) 
	#(92 1 #liftFirstValue: 12246020 false) 
	#(91 1 #liftFirstValue: 12103682 false) 
	#(91 1 #liftFirstValue: 12103683 false) 
	#(52 0 #reduceActionForPushIndent1: 8122369 true) 
	#(71 0 #reduceActionForPushLiteralString1: 9858049 true) 
	#(77 0 #reduceActionForfileDocument6: 10523659 false) 
	#(99 1 #reduceActionForTagOrAnchor1: 12943361 false) 
	#(99 1 #reduceActionForTagOrAnchor2: 12943362 false) 
	#(48 1 #reduceActionForalias1: 7981057 false) 
	#(41 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7057410 false) 
	#(55 1 #reduceActionForkey1: 8321025 false) 
	#(60 1 #reduceActionForkey1: 9284610 false) 
	#(73 1 #reduceActionForkey1: 10146817 false) 
	#(55 1 #reduceActionForkey1: 8321026 false) 
	#(59 1 #reduceActionForkey1: 9217025 false) 
	#(55 1 #reduceActionForkey1: 8321027 false) 
	#(96 1 #reduceActionForfileDocument1: 12412929 false) 
	#(37 1 #liftFirstValue: 6226957 false) 
	#(38 1 #liftFirstValue: 6457363 false) 
	#(42 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 7057409 false) 
	#(40 1 #reduceActionFordocumentMultilineString1: 7029761 false) 
	#(37 1 #liftFirstValue: 6226945 false) 
	#(45 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7203841 false) 
	#(43 1 #reduceActionForlist1: 7195649 false) 
	#(44 1 #liftFirstValue: 7203841 false) 
	#(55 1 #liftFirstValue: 8321029 false) 
	#(54 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 8266753 false) 
	#(37 1 #liftFirstValue: 6226950 false) 
	#(53 1 #reduceActionFormappinglist1: 8251393 false) 
	#(75 1 #reduceActionFormapping9: 10250249 false) 
	#(55 1 #liftFirstValue: 8321032 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6457361 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6457345 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6457349 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6457359 false) 
	#(50 1 #liftFirstValue: 8069121 false) 
	#(55 1 #liftFirstValue: 8321031 false) 
	#(37 1 #liftFirstValue: 6226955 false) 
	#(55 1 #liftFirstValue: 8321030 false) 
	#(37 1 #liftFirstValue: 6226956 false) 
	#(60 1 #liftFirstValue: 9284609 false) 
	#(41 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7057409 false) 
	#(55 1 #reduceActionForkey1: 8321028 false) 
	#(90 1 #reduceActionFornumber1: 12064769 false) 
	#(91 1 #liftFirstValue: 12103681 false) 
	#(35 1 #reduceActionForfile1: 6181889 false) 
	#(95 0 #reduceActionFor_SplitDocument__NEWLINE____fileDocument__1: 12365825 false) 
	#(100 1 #reduceActionForTagsOrAnchors1: 12995585 false) 
	#(96 1 #reduceActionForfileDocument4: 12412932 false) 
	#(36 1 #liftFirstValue: 6204417 false) 
	#(46 2 #reduceActionForlistitem2: 7244802 false) 
	#(46 2 #reduceActionForlistitem2: 7244806 false) 
	#(46 2 #reduceActionForlistitem2: 7244801 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8610849 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8610817 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8610821 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8610823 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8610827 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8610847 false) 
	#(47 1 #liftFirstValue: 7577607 false) 
	#(47 1 #liftFirstValue: 7577612 false) 
	#(58 0 #reduceActionForPopIndent1: 9146369 true) 
	#(46 2 #reduceActionForlistitem7: 7244807 false) 
	#(77 1 #reduceActionForfileDocument1: 10523660 false) 
	#(76 1 #reduceActionForfileDocument1: 10387461 false) 
	#(75 2 #reduceActionFormapping1: 10250241 false) 
	#(76 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 10387457 false) 
	#(77 1 #reduceActionForfileDocument1: 10523663 false) 
	#(77 1 #reduceActionForfileDocument1: 10523657 false) 
	#(56 2 #reduceActionForComplexKey1: 8535041 false) 
	#(41 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: 7057414 false) 
	#(96 2 #reduceActionForfileDocument5: 12412933 false) 
	#(44 2 #liftSecondValue: 7203842 false) 
	#(50 2 #liftSecondValue: 8069122 false) 
	#(41 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: 7057413 false) 
	#(36 2 #liftFirstValue: 6204418 false) 
	#(38 2 #reduceActionFordocumentValue7: 6457351 false) 
	#(38 2 #reduceActionFordocumentValue7: 6457355 false) 
	#(42 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: 7057410 false) 
	#(45 2 #reduceActionFor__NEWLINE____listitem__item___2: 7203842 false) 
	#(54 2 #reduceActionFor__NEWLINE____listitem__item___2: 8266754 false) 
	#(84 0 #reduceActionForPopFlow1: 11593729 true) 
	#(35 2 #reduceActionForfile1: 6181890 false) 
	#(98 0 #reduceActionForSetZeroIndent1: 12824577 true) 
	#(93 2 #reduceActionForfileDocuments1: 12331009 false) 
	#(96 2 #reduceActionForfileDocument2: 12412930 false) 
	#(75 2 #reduceActionFormapping10: 10250250 false) 
	#(38 2 #reduceActionFordocumentValue18: 6457362 false) 
	#(38 2 #reduceActionFordocumentValue18: 6457346 false) 
	#(38 2 #reduceActionFordocumentValue18: 6457350 false) 
	#(38 2 #reduceActionFordocumentValue18: 6457360 false) 
	#(100 2 #reduceActionForTagsOrAnchors2: 12995586 false) 
	#(57 2 #reduceActionFordocumentValue7: 8610824 false) 
	#(57 2 #reduceActionFordocumentValue7: 8610828 false) 
	#(79 0 #reduceActionFor__NEWLINE____listitem__item___1: 11244545 false) 
	#(51 0 #reduceActionFor__NEWLINE____listitem__item___1: 8069121 false) 
	#(68 0 #reduceActionFor__NEWLINE____listitem__item___1: 9722881 false) 
	#(46 3 #reduceActionForlistitem3: 7244803 false) 
	#(57 2 #reduceActionFordocumentValue18: 8610850 false) 
	#(57 2 #reduceActionFordocumentValue18: 8610818 false) 
	#(57 2 #reduceActionFordocumentValue18: 8610822 false) 
	#(57 2 #reduceActionFordocumentValue18: 8610825 false) 
	#(57 2 #reduceActionFordocumentValue18: 8610829 false) 
	#(57 2 #reduceActionFordocumentValue18: 8610848 false) 
	#(46 3 #reduceActionForlistitem8: 7244808 false) 
	#(77 2 #reduceActionForfileDocument5: 10523661 false) 
	#(76 2 #reduceActionForMappingValueWithTags2: 10387458 false) 
	#(75 3 #reduceActionFormapping2: 10250242 false) 
	#(38 3 #reduceActionFordocumentValue8: 6457352 false) 
	#(38 3 #reduceActionFordocumentValue8: 6457356 false) 
	#(65 0 #reduceActionFor__NEWLINE____listitem__item___1: 9475073 false) 
	#(62 1 #reduceActionFor__NEWLINE____listitem__item___1: 9430019 false) 
	#(63 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 9430017 false) 
	#(75 3 #reduceActionFormapping3: 10250243 false) 
	#(83 1 #liftFirstValue: 11514882 false) 
	#(83 1 #liftFirstValue: 11514881 false) 
	#(83 1 #liftFirstValue: 11514885 false) 
	#(83 1 #liftFirstValue: 11514883 false) 
	#(82 0 #reduceActionFor__COMMA___comma__flowListValue___item___1: 11399169 false) 
	#(83 1 #liftFirstValue: 11514884 false) 
	#(89 1 #reduceActionFormapping9: 11971586 false) 
	#(89 1 #liftFirstValue: 11971585 false) 
	#(88 0 #reduceActionFor__COMMA___comma__flowListValue___item___1: 11850753 false) 
	#(95 2 #reduceActionFor_SplitDocument__NEWLINE____fileDocument__2: 12365826 false) 
	#(75 3 #reduceActionFormapping5: 10250245 false) 
	#(96 3 #reduceActionForfileDocument3: 12412931 false) 
	#(100 3 #reduceActionForTagsOrAnchors3: 12995587 false) 
	#(38 3 #reduceActionFordocumentValue9: 6457353 false) 
	#(38 3 #reduceActionFordocumentValue9: 6457357 false) 
	#(41 3 #reduceActionFor__NEWLINE____listitem__item___1: 7057411 false) 
	#(37 3 #liftSecondValue: 6226946 false) 
	#(37 3 #liftSecondValue: 6226951 false) 
	#(78 2 #reduceActionForlistWithoutInitialNewline1: 11198465 false) 
	#(47 3 #liftSecondValue: 7577610 false) 
	#(49 2 #reduceActionFormappingListWithoutInitialNewline1: 8013825 false) 
	#(47 3 #liftSecondValue: 7577608 false) 
	#(74 0 #reduceActionForPopScope1: 10212353 true) 
	#(57 3 #reduceActionFordocumentValue9: 8610826 false) 
	#(57 3 #reduceActionFordocumentValue9: 8610830 false) 
	#(46 4 #reduceActionForlistitem3: 7244804 false) 
	#(57 3 #reduceActionFordocumentValue8: 8610831 false) 
	#(57 3 #reduceActionFordocumentValue8: 8610839 false) 
	#(77 3 #reduceActionForfileDocument5: 10523673 false) 
	#(76 3 #reduceActionForMappingValueWithTags2: 10387459 false) 
	#(62 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part_____singleQuoteString___part_____doubleQuoteString___part________multiline_string_2: 9430018 false) 
	#(41 4 #reduceActionFor__NEWLINE____listitem__item___1: 7057415 false) 
	#(37 4 #reduceActionFordocument4: 6226948 false) 
	#(38 4 #reduceActionFordocument4: 6457347 false) 
	#(37 4 #reduceActionFordocument4: 6226953 false) 
	#(63 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: 9430018 false) 
	#(61 4 #reduceActionFormultiline_string1: 9345025 false) 
	#(62 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part_____singleQuoteString___part_____doubleQuoteString___part________multiline_string_2: 9430017 false) 
	#(75 4 #reduceActionFormapping4: 10250244 false) 
	#(80 4 #reduceActionForflowlist1: 11312129 false) 
	#(86 4 #reduceActionForflowmappinglist1: 11757569 false) 
	#(89 2 #reduceActionFormapping10: 11971587 false) 
	#(94 2 #reduceActionFor_SplitDocument__NEWLINE____fileDocument_1: 12365825 false) 
	#(97 2 #reduceActionForSplitDocument1: 12558337 false) 
	#(97 2 #reduceActionForSplitDocument11: 12558347 false) 
	#(75 4 #reduceActionFormapping6: 10250246 false) 
	#(38 4 #reduceActionFordocumentValue10: 6457354 false) 
	#(38 4 #reduceActionFordocumentValue10: 6457358 false) 
	#(75 4 #reduceActionFormapping7: 10250247 false) 
	#(41 4 #reduceActionFor__NEWLINE____listitem__item___1: 7057412 false) 
	#(37 4 #liftSecondValue: 6226947 false) 
	#(37 4 #liftSecondValue: 6226952 false) 
	#(47 4 #reduceActionFordocument4: 7577603 false) 
	#(57 4 #reduceActionFordocument4: 8610819 false) 
	#(47 4 #reduceActionFordocument4: 7577605 false) 
	#(47 4 #reduceActionFordocument4: 7577601 false) 
	#(57 4 #reduceActionForvalue19: 8610835 false) 
	#(57 4 #reduceActionForvalue19: 8610843 false) 
	#(79 2 #reduceActionFor__NEWLINE____listitem__item___2: 11244546 false) 
	#(47 4 #liftSecondValue: 7577611 false) 
	#(51 2 #reduceActionFor__NEWLINE____listitem__item___2: 8069122 false) 
	#(47 4 #liftSecondValue: 7577609 false) 
	#(68 2 #reduceActionFor__NEWLINE____listitem__item___2: 9722882 false) 
	#(69 1 #liftFirstValue: 9723905 false) 
	#(70 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 9768961 false) 
	#(101 4 #reduceActionForTagAndAnchorWithIndent1: 13070337 false) 
	#(46 5 #reduceActionForlistitem3: 7244805 false) 
	#(57 4 #reduceActionForvalue19: 8610832 false) 
	#(57 4 #reduceActionForvalue19: 8610840 false) 
	#(57 4 #reduceActionForvalue17: 8610833 false) 
	#(57 4 #reduceActionForvalue17: 8610841 false) 
	#(77 4 #reduceActionForMappingValue5: 10523653 false) 
	#(77 4 #reduceActionForMappingValue5: 10523667 false) 
	#(77 4 #reduceActionForMappingValue5: 10523649 false) 
	#(77 4 #reduceActionForMappingValue5: 10523665 false) 
	#(77 4 #reduceActionForfileDocument5: 10523674 false) 
	#(76 4 #reduceActionForMappingValueWithTags2: 10387460 false) 
	#(61 5 #reduceActionFormultiline_string5: 9345029 false) 
	#(64 1 #nil 9475073 false) 
	#(65 2 #reduceActionFor__NEWLINE____listitem__item___2: 9475074 false) 
	#(41 5 #reduceActionFor__NEWLINE____listitem__item___1: 7057416 false) 
	#(37 5 #reduceActionFordocument4: 6226949 false) 
	#(38 5 #reduceActionFordocument4: 6457348 false) 
	#(37 5 #reduceActionFordocument4: 6226954 false) 
	#(61 5 #reduceActionFormultiline_string1: 9345026 false) 
	#(80 5 #reduceActionForflowlist2: 11312130 false) 
	#(82 2 #reduceActionForTagsOrAnchors2: 11399170 false) 
	#(86 5 #reduceActionForflowmappinglist2: 11757570 false) 
	#(88 2 #reduceActionForTagsOrAnchors2: 11850754 false) 
	#(61 5 #reduceActionFormultiline_string5: 9345027 false) 
	#(97 3 #reduceActionForSplitDocument15: 12558351 false) 
	#(97 3 #reduceActionForSplitDocument6: 12558342 false) 
	#(97 3 #reduceActionForSplitDocument12: 12558348 false) 
	#(94 3 #reduceActionFor_SplitDocument__NEWLINE____fileDocument_2: 12365826 false) 
	#(75 5 #reduceActionFormapping8: 10250248 false) 
	#(80 5 #reduceActionForflowlist5: 11312133 false) 
	#(86 5 #reduceActionForflowmappinglist5: 11757573 false) 
	#(57 5 #reduceActionForvalue20: 8610836 false) 
	#(57 5 #reduceActionForvalue20: 8610844 false) 
	#(47 5 #reduceActionFordocument4: 7577604 false) 
	#(57 5 #reduceActionFordocument4: 8610820 false) 
	#(47 5 #reduceActionFordocument4: 7577606 false) 
	#(47 5 #reduceActionFordocument4: 7577602 false) 
	#(57 5 #reduceActionForvalue21: 8610837 false) 
	#(57 5 #reduceActionForvalue21: 8610845 false) 
	#(67 2 #liftSecondValue: 9722881 false) 
	#(69 2 #liftFirstValue: 9723906 false) 
	#(70 2 #reduceActionFor__NEWLINE____listitem__item___2: 9768962 false) 
	#(66 5 #reduceActionForstring_literal1: 9651201 false) 
	#(72 5 #reduceActionForstring_literal1: 9943041 false) 
	#(57 5 #reduceActionForvalue18: 8610834 false) 
	#(57 5 #reduceActionForvalue18: 8610842 false) 
	#(77 5 #reduceActionForMappingValue5: 10523654 false) 
	#(77 5 #reduceActionForMappingValue5: 10523668 false) 
	#(77 5 #reduceActionForMappingValue5: 10523650 false) 
	#(77 5 #reduceActionForMappingValue5: 10523666 false) 
	#(77 5 #reduceActionForMappingValue5: 10523664 false) 
	#(77 5 #reduceActionForMappingValue5: 10523658 false) 
	#(77 5 #reduceActionForMappingValue7: 10523655 false) 
	#(77 5 #reduceActionForMappingValue7: 10523671 false) 
	#(77 5 #reduceActionForMappingValue7: 10523651 false) 
	#(77 5 #reduceActionForMappingValue7: 10523669 false) 
	#(61 6 #reduceActionFormultiline_string5: 9345030 false) 
	#(64 2 #liftSecondValue: 9475075 false) 
	#(64 2 #liftSecondValue: 9475077 false) 
	#(64 2 #liftSecondValue: 9475076 false) 
	#(64 2 #liftSecondValue: 9475074 false) 
	#(81 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 11399169 false) 
	#(80 6 #reduceActionForflowlist3: 11312131 false) 
	#(87 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 11850753 false) 
	#(86 6 #reduceActionForflowmappinglist3: 11757571 false) 
	#(61 6 #reduceActionFormultiline_string5: 9345028 false) 
	#(97 4 #reduceActionForSplitDocument16: 12558352 false) 
	#(97 4 #reduceActionForSplitDocument19: 12558355 false) 
	#(97 4 #reduceActionForSplitDocument18: 12558354 false) 
	#(97 4 #reduceActionForSplitDocument2: 12558338 false) 
	#(80 6 #reduceActionForflowlist6: 11312134 false) 
	#(86 6 #reduceActionForflowmappinglist6: 11757574 false) 
	#(57 6 #reduceActionForvalue22: 8610838 false) 
	#(57 6 #reduceActionForvalue22: 8610846 false) 
	#(66 6 #reduceActionForstring_literal2: 9651202 false) 
	#(72 6 #reduceActionForstring_literal2: 9943042 false) 
	#(77 6 #reduceActionForMappingValue14: 10523662 false) 
	#(77 6 #reduceActionForMappingValue7: 10523656 false) 
	#(77 6 #reduceActionForMappingValue7: 10523672 false) 
	#(77 6 #reduceActionForMappingValue7: 10523652 false) 
	#(77 6 #reduceActionForMappingValue7: 10523670 false) 
	#(80 7 #reduceActionForflowlist4: 11312132 false) 
	#(86 7 #reduceActionForflowmappinglist4: 11757572 false) 
	#(97 5 #reduceActionForSplitDocument20: 12558356 false) 
	#(97 5 #reduceActionForSplitDocument7: 12558343 false) 
	#(97 5 #reduceActionForSplitDocument3: 12558339 false) 
	#(97 5 #reduceActionForSplitDocument4: 12558340 false) 
	#(80 7 #reduceActionForflowlist7: 11312135 false) 
	#(86 7 #reduceActionForflowmappinglist7: 11757575 false) 
	#(97 6 #reduceActionForSplitDocument8: 12558344 false) 
	#(97 6 #reduceActionForSplitDocument9: 12558345 false) 
	#(97 6 #reduceActionForSplitDocument5: 12558341 false) 
	#(80 8 #reduceActionForflowlist8: 11312136 false) 
	#(86 8 #reduceActionForflowmappinglist8: 11757576 false) 
	#(97 7 #reduceActionForSplitDocument10: 12558346 false)
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
		((numberToken ''part'' | <STRING_MY> ''part'') | (<INDENT> documentMultilineString <NEWLINE>+? <DEDENT>)))+' 'list' '(<NEWLINE>+? listitem ''item'')' '(<NEWLINE>+? listitem ''item'')+' 'listitem' 'ListItemValue' 'alias' 'mappingListWithoutInitialNewline' '(<NEWLINE>+? mapping ''mapping'')' '(<NEWLINE>+? mapping ''mapping'')*' 'PushIndent' 'mappinglist' '(<NEWLINE>+? mapping ''mapping'')+' 'key' 'ComplexKey' 'value' 'PopIndent' 'string_single_quoted' 'value_scalar' 'multiline_string' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'' | <singleQuoteString> ''part'' | <doubleQuoteString> ''part'')?)* | multiline_string)' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'' | <singleQuoteString> ''part'' | <doubleQuoteString> ''part'')?)* | multiline_string)+' '(<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'' | <singleQuoteString> ''part'' | <doubleQuoteString> ''part'')?)' '(<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'' | <singleQuoteString> ''part'' | <doubleQuoteString> ''part'')?)*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' '<NEWLINE_STR_LITERAL> ''endingNewline''+' 'PushLiteralString' 'string_folded' 'string_double_quoted' 'PopScope' 'mapping' 'MappingValueWithTags' 'MappingValue' 'listWithoutInitialNewline' '(<NEWLINE>+? listitem ''item'')*' 'flowlist' '(<COMMA> ''comma'' flowListValue  ''item'')' '(<COMMA> ''comma'' flowListValue  ''item'')*' 'flowListValue' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' flowMapping ''mapping'')' '(<COMMA> ''comma'' flowMapping ''mapping'')*' 'flowMapping' 'number' 'numberToken' 'integer' 'fileDocuments' '(SplitDocument <NEWLINE>+? fileDocument)' '(SplitDocument <NEWLINE>+? fileDocument)*' 'fileDocument' 'SplitDocument' 'SetZeroIndent' 'TagOrAnchor' 'TagsOrAnchors' 'TagAndAnchorWithIndent' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
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
#[1 0 11 0 2 0 15 0 3 0 19 0 4 0 23 0 5 0 27 0 6 0 31 0 7 0 42 0 8 0 42 0 12 0 35 0 13 0 35 0 15 0 46 0 17 0 46 0 18 0 39 0 19 0 43 0 21 0 47 0 22 0 51 0 23 0 55 0 31 0 42 0 32 0 59 0 33 0 221 0 36 0 225 0 47 0 229 0 48 0 233 0 52 0 237 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 225 0 80 0 165 0 85 0 225 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 29 0 100 1 33 0 101 1 37 0 106 0 63 0 107] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 1 61 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 70 0 12 0 123 0 20 0 66 0 23 1 85 0 36 0 123 0 103 0 123 0 104 0 66 0 106 0 127 0 107 0 123 0 109] 
#[1 0 78 0 11 0 82 0 12 0 78 0 14 0 78 0 20 0 78 0 102 0 78 0 103 0 78 0 104 0 131 0 107 0 78 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 1 89 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 0 86 0 11 0 90 0 12 0 86 0 14 0 86 0 20 0 86 0 102 0 86 0 103 0 86 0 104 0 135 0 107 0 86 0 109] 
#[0 0 0 0 109] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 101 0 36 1 105 0 37 1 105 0 38 1 109 0 39 1 105 0 40 0 93 0 41 0 97 0 42 1 105 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 1 105 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 1 117 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 1 121 0 91 1 121 0 92 0 193 0 99 1 125 0 100 1 129 0 106 1 133 0 107] 
#[0 0 94 0 20 0 103 0 104 0 107 0 109] 
#[0 0 98 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 1 137 0 66 1 1 0 71 1 141 0 72] 
#[0 0 102 0 20 0 103 0 104 0 107 0 109] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 157 0 2 1 157 0 3 1 157 0 4 1 157 0 5 1 157 0 6 1 157 0 7 0 110 0 20 1 145 0 23 1 149 0 36 1 153 0 41 1 157 0 91 1 157 0 92 0 110 0 102 0 110 0 103 0 110 0 104 1 161 0 106 0 139 0 107 0 110 0 109] 
#[0 0 114 0 20 0 103 0 104 0 107 0 109] 
#[0 0 118 0 8 0 20 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 0 122 0 20 1 165 0 36 1 169 0 44 1 169 0 46 0 122 0 102 0 122 0 103 0 122 0 104 0 143 0 107 0 122 0 109] 
#[0 0 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 130 0 11 0 12 0 16 0 107] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 138 0 20 0 103 0 104 0 107 0 109] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 142 0 20 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 1 185 0 36 0 133 0 48 1 189 0 50 0 133 0 55 0 137 0 56 1 189 0 75 0 133 0 80 0 165 0 85 0 133 0 86 1 201 0 91 1 201 0 92 0 193 0 99 1 205 0 100 0 142 0 102 0 142 0 103 0 142 0 104 0 147 0 107 0 142 0 109] 
#[1 1 209 0 12 1 213 0 36 1 213 0 107] 
#[1 0 146 0 2 0 146 0 3 0 146 0 4 0 146 0 5 0 146 0 6 0 146 0 7 0 151 0 11 0 151 0 12 0 146 0 13 0 146 0 14 0 146 0 15 0 151 0 16 0 146 0 19 0 146 0 20 0 146 0 21 0 146 0 22 0 146 0 23 0 146 0 31 0 146 0 32 0 146 0 33 0 146 0 102 0 146 0 103 0 146 0 104 0 151 0 107 0 146 0 109] 
#[0 0 154 0 20 0 103 0 104 0 107 0 109] 
#[0 0 158 0 20 0 103 0 104 0 107 0 109] 
#[0 0 162 0 20 0 103 0 104 0 107 0 109] 
#[0 0 166 0 20 0 103 0 104 0 107 0 109] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 174 0 12 0 178 0 20 0 178 0 103 0 178 0 104 0 155 0 107 0 178 0 109] 
#[1 1 217 0 13 1 221 0 15] 
#[1 0 182 0 12 0 186 0 20 0 186 0 103 0 186 0 104 0 159 0 107 0 186 0 109] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 7 0 198 0 12 0 163 0 20 0 194 0 23 1 225 0 36 0 163 0 103 0 163 0 104 0 194 0 106 0 167 0 107 0 163 0 109] 
#[0 0 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 229 0 36 1 229 0 107 0 210 0 109] 
#[1 0 214 0 20 1 233 0 95 0 214 0 103 0 214 0 104 0 214 0 107 0 214 0 109] 
#[0 0 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 1 237 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 222 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 241 0 36 1 245 0 37 1 245 0 38 1 249 0 39 1 245 0 40 0 93 0 41 0 97 0 42 1 245 0 43 0 105 0 44 0 109 0 45 0 105 0 46 1 253 0 48 0 121 0 50 1 245 0 53 0 129 0 54 1 253 0 55 2 1 0 56 2 5 0 59 2 9 0 60 2 13 0 61 2 17 0 73 0 121 0 75 0 161 0 80 2 21 0 85 0 169 0 86 2 9 0 90 0 177 0 91 0 177 0 92 2 25 0 99 1 125 0 100 0 222 0 103 0 222 0 104 0 201 0 106 0 171 0 107 0 222 0 109] 
#[1 2 49 0 2 2 49 0 3 2 49 0 4 2 49 0 5 2 49 0 6 2 49 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 29 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 33 0 36 2 37 0 40 0 93 0 41 0 97 0 42 2 41 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 2 45 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 2 49 0 91 2 49 0 92 0 193 0 99 1 205 0 100 1 161 0 106 2 33 0 107] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 0 74 0 2 0 74 0 3 0 74 0 4 0 74 0 5 0 74 0 6 0 74 0 7 0 74 0 8 0 74 0 11 0 74 0 12 0 74 0 13 0 74 0 14 0 74 0 15 0 74 0 16 0 74 0 19 0 74 0 20 0 74 0 21 0 74 0 22 0 74 0 23 0 74 0 31 0 74 0 32 0 74 0 33 1 85 0 36 0 74 0 102 0 74 0 103 0 74 0 104 0 175 0 107 0 74 0 109] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 2 53 0 66 1 1 0 71 2 57 0 72 2 61 0 106 2 65 0 107] 
#[0 0 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 2 73 0 46 0 133 0 48 2 77 0 49 0 133 0 55 0 137 0 56 2 81 0 75 2 85 0 78 0 133 0 80 0 165 0 85 0 133 0 86 1 201 0 91 1 201 0 92 0 193 0 99 1 205 0 100 2 69 0 107] 
#[0 0 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 2 89 0 17 2 93 0 18] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 15 0 202 0 16 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 23 0 202 0 31 0 202 0 32 0 202 0 33 1 225 0 36 0 202 0 102 0 202 0 103 0 202 0 104 0 179 0 107 0 202 0 109] 
#[1 0 218 0 2 0 218 0 3 0 218 0 4 0 218 0 5 0 218 0 6 0 218 0 7 0 218 0 8 0 218 0 11 0 218 0 12 0 218 0 13 0 218 0 14 0 218 0 15 0 218 0 16 0 218 0 17 0 218 0 18 0 218 0 19 0 218 0 20 0 218 0 21 0 218 0 22 0 218 0 23 0 218 0 31 0 218 0 32 0 218 0 33 0 218 0 102 0 218 0 103 0 218 0 104 0 183 0 107 0 218 0 109] 
#[1 0 11 0 2 0 15 0 3 0 19 0 4 0 23 0 5 0 27 0 6 0 31 0 7 0 42 0 8 0 42 0 12 0 35 0 13 0 35 0 15 0 46 0 17 0 46 0 18 0 39 0 19 0 43 0 21 0 42 0 22 0 51 0 23 0 55 0 31 0 42 0 32 0 59 0 33 2 101 0 36 2 105 0 47 0 233 0 52 2 109 0 59 2 113 0 60 2 117 0 61 2 121 0 66 1 1 0 71 2 125 0 72 2 129 0 73 2 105 0 80 2 21 0 85 2 105 0 86 2 113 0 90 1 21 0 91 1 21 0 92 2 25 0 99 2 133 0 100 0 187 0 107] 
#[1 0 42 0 2 0 42 0 3 0 42 0 4 0 42 0 5 0 42 0 6 0 42 0 7 0 42 0 8 0 42 0 12 0 35 0 13 0 35 0 15 0 39 0 19 0 43 0 21 0 42 0 22 0 42 0 23 0 42 0 31 0 42 0 32 0 42 0 33 2 141 0 36 2 145 0 47 0 233 0 52 2 145 0 80 0 165 0 85 2 145 0 86 0 193 0 99 2 133 0 100 0 191 0 107] 
#[1 1 18 0 17 1 18 0 18 0 41 0 19 0 45 0 21 2 149 0 36 2 153 0 58 0 193 0 99 2 157 0 100 2 149 0 107] 
#[1 1 22 0 2 1 22 0 3 1 22 0 4 1 22 0 5 1 22 0 6 1 22 0 7 1 22 0 8 1 22 0 11 1 22 0 12 1 22 0 13 1 22 0 14 1 22 0 15 1 22 0 16 0 226 0 17 0 226 0 18 1 22 0 19 1 22 0 20 1 22 0 21 1 22 0 22 1 22 0 23 1 22 0 31 1 22 0 32 1 22 0 33 1 22 0 102 1 22 0 103 1 22 0 104 0 226 0 106 0 195 0 107 1 22 0 109] 
#[1 0 33 0 8 0 46 0 17 0 46 0 18 2 73 0 46 2 53 0 66 1 1 0 71 2 57 0 72 2 161 0 78 2 165 0 106 2 65 0 107] 
#[0 1 26 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 2 73 0 46 2 169 0 78] 
#[0 1 30 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 34 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 38 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 42 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 2 173 0 36 1 49 0 48 1 53 0 52 2 109 0 59 2 113 0 60 2 117 0 61 2 121 0 66 1 1 0 71 2 125 0 72 2 129 0 73 2 177 0 77 1 69 0 80 2 21 0 85 1 73 0 86 2 113 0 90 1 21 0 91 1 21 0 92 2 25 0 99 2 133 0 100 0 50 0 102 0 50 0 103 0 50 0 104 0 119 0 107 0 50 0 109] 
#[1 0 42 0 8 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 181 0 36 1 49 0 48 1 53 0 52 2 185 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 193 0 99 2 133 0 100 0 50 0 102 0 119 0 107] 
#[1 2 189 0 106 2 65 0 107] 
#[0 1 50 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 12 0 91 0 13 0 91 0 15 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 2 193 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 0 199 0 2 0 199 0 3 0 199 0 4 0 199 0 5 0 199 0 6 0 199 0 7 0 70 0 12 0 203 0 20 0 199 0 23 1 85 0 36 0 203 0 103 0 203 0 104 0 199 0 106 0 207 0 107 0 203 0 109] 
#[1 2 213 0 2 2 213 0 3 2 213 0 4 2 213 0 5 2 213 0 6 2 213 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 197 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 2 201 0 39 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 209 0 75 0 133 0 80 0 165 0 85 0 133 0 86 2 213 0 91 2 213 0 92 0 193 0 99 1 205 0 100 2 217 0 106 1 133 0 107] 
#[0 1 58 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 2 221 0 66 1 1 0 71 2 225 0 72] 
#[0 0 211 0 8 0 20 0 103 0 104 0 107 0 109] 
#[0 0 215 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 107 0 109] 
#[1 0 219 0 2 0 219 0 3 0 219 0 4 0 219 0 5 0 219 0 6 0 219 0 7 0 198 0 12 0 223 0 20 0 219 0 23 1 225 0 36 0 223 0 103 0 223 0 104 0 219 0 106 0 227 0 107 0 223 0 109] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 2 229 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 2 237 0 36 2 241 0 39 2 245 0 48 2 245 0 55 2 249 0 56 2 253 0 59 3 1 0 60 3 5 0 61 3 9 0 73 2 245 0 80 2 21 0 85 2 245 0 86 3 1 0 90 3 13 0 91 3 13 0 92 2 25 0 99 2 133 0 100 2 237 0 107] 
#[1 3 53 0 2 3 53 0 3 3 53 0 4 3 53 0 5 3 53 0 6 3 53 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 3 17 0 23 1 177 0 31 0 61 0 32 1 181 0 33 3 21 0 36 3 25 0 40 0 93 0 41 0 97 0 42 3 29 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 33 0 48 0 121 0 50 3 37 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 41 0 61 3 45 0 62 3 49 0 63 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 3 53 0 91 3 53 0 92 0 193 0 99 1 205 0 100 1 161 0 106 3 21 0 107] 
#[1 0 231 0 2 0 231 0 3 0 231 0 4 0 231 0 5 0 231 0 6 0 231 0 7 0 231 0 8 0 231 0 12 0 231 0 13 0 231 0 15 0 231 0 17 0 231 0 18 0 231 0 19 1 74 0 20 0 231 0 21 0 231 0 22 0 231 0 23 0 231 0 31 0 231 0 32 0 231 0 33 1 74 0 102 1 74 0 103 0 231 0 104 0 231 0 106 0 231 0 107 1 74 0 109] 
#[0 1 78 0 20 0 103 0 104 0 107 0 109] 
#[0 1 82 0 20 0 103 0 104 0 107 0 109] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 3 61 0 2 3 61 0 3 3 61 0 4 3 61 0 5 3 61 0 6 3 61 0 7 3 57 0 23 3 61 0 91 3 61 0 92 3 65 0 106 2 65 0 107] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 157 0 2 1 157 0 3 1 157 0 4 1 157 0 5 1 157 0 6 1 157 0 7 1 145 0 23 1 149 0 36 2 37 0 40 0 93 0 41 0 97 0 42 1 157 0 91 1 157 0 92 1 161 0 106 1 149 0 107] 
#[1 0 33 0 8 2 205 0 46 2 65 0 107] 
#[0 1 90 0 8 0 20 0 102 0 103 0 104 0 107 0 109] 
#[0 0 70 0 11 0 12 0 16 0 107] 
#[0 0 82 0 11 0 12 0 16 0 107] 
#[0 0 90 0 11 0 12 0 16 0 107] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 0 133 0 48 0 133 0 55 0 137 0 56 2 209 0 75 0 133 0 80 0 165 0 85 0 133 0 86 1 201 0 91 1 201 0 92 0 193 0 99 1 205 0 100 1 133 0 107] 
#[0 1 94 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 0 174 0 11 0 12 0 16 0 107] 
#[0 0 182 0 11 0 12 0 16 0 107] 
#[0 0 198 0 11 0 12 0 16 0 107] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 2 229 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 3 69 0 36 2 245 0 48 2 245 0 55 2 249 0 56 2 245 0 80 2 21 0 85 2 245 0 86 1 201 0 91 1 201 0 92 2 25 0 99 2 133 0 100 3 69 0 107] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 73 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 3 77 0 12 2 65 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 3 81 0 11 0 37 0 12 0 6 0 13 1 98 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 85 0 36 3 89 0 48 0 133 0 55 0 137 0 56 3 105 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 105 0 75 3 101 0 80 3 105 0 83 3 109 0 84 0 165 0 85 3 113 0 86 0 245 0 90 3 13 0 91 3 13 0 92 0 193 0 99 3 117 0 100 1 37 0 106 3 85 0 107] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 3 121 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 98 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 3 125 0 48 3 125 0 55 0 137 0 56 3 137 0 75 3 125 0 80 3 133 0 84 0 165 0 85 3 125 0 86 3 137 0 89 1 201 0 91 1 201 0 92 0 193 0 99 3 141 0 100 2 69 0 107] 
#[1 3 145 0 106 2 65 0 107] 
#[1 2 65 0 107 1 102 0 109] 
#[1 3 149 0 20 3 153 0 36 3 157 0 94 3 161 0 97 3 165 0 98 1 106 0 103 1 106 0 104 0 235 0 107 1 110 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 12 0 91 0 13 0 91 0 15 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 169 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 3 173 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 101 0 36 3 177 0 37 3 177 0 38 3 181 0 39 3 177 0 40 0 93 0 41 0 97 0 42 3 177 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 3 177 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 1 117 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 1 121 0 91 1 121 0 92 3 185 0 99 1 125 0 100 1 129 0 106 1 133 0 107] 
#[0 1 114 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 3 189 0 66 1 1 0 71 3 193 0 72] 
#[1 3 197 0 12 3 201 0 36 3 201 0 107] 
#[1 0 239 0 2 0 239 0 3 0 239 0 4 0 239 0 5 0 239 0 6 0 239 0 7 0 243 0 12 0 239 0 13 0 239 0 15 0 239 0 19 0 239 0 20 0 239 0 21 0 239 0 22 0 239 0 23 0 239 0 31 0 239 0 32 0 239 0 33 0 239 0 102 0 239 0 103 0 239 0 104 0 243 0 107 0 239 0 109] 
#[0 0 247 0 20 0 103 0 104 0 107 0 109] 
#[0 0 251 0 20 0 103 0 104 0 107 0 109] 
#[0 0 255 0 20 0 103 0 104 0 107 0 109] 
#[0 1 3 0 20 0 103 0 104 0 107 0 109] 
#[1 3 205 0 13 3 209 0 15] 
#[1 1 7 0 2 1 7 0 3 1 7 0 4 1 7 0 5 1 7 0 6 1 7 0 7 1 138 0 8 1 138 0 11 1 7 0 12 1 7 0 13 1 138 0 14 1 7 0 15 1 138 0 16 1 7 0 17 1 7 0 18 1 7 0 19 1 138 0 20 1 7 0 21 1 7 0 22 1 7 0 23 1 7 0 31 1 7 0 32 1 7 0 33 1 138 0 102 1 138 0 103 1 138 0 104 1 138 0 106 1 7 0 107 1 138 0 109] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 70 0 12 0 66 0 23 0 66 0 102 0 66 0 106 1 11 0 107] 
#[1 2 213 0 2 2 213 0 3 2 213 0 4 2 213 0 5 2 213 0 6 2 213 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 197 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 209 0 75 0 133 0 80 0 165 0 85 0 133 0 86 2 213 0 91 2 213 0 92 0 193 0 99 1 205 0 100 3 65 0 106 1 133 0 107] 
#[1 3 213 0 36 3 217 0 102 3 213 0 107] 
#[1 3 221 0 36 3 225 0 102 3 221 0 107] 
#[1 3 229 0 36 3 233 0 102 3 229 0 107] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 7 0 198 0 12 0 194 0 23 0 194 0 102 0 194 0 106 1 15 0 107] 
#[0 1 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 4 13 0 2 4 13 0 3 4 13 0 4 4 13 0 5 4 13 0 6 4 13 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 1 19 0 17 1 19 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 241 0 36 3 245 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 249 0 48 0 121 0 50 3 253 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 1 0 57 4 5 0 58 0 241 0 59 0 245 0 60 4 9 0 61 3 45 0 62 3 49 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 4 13 0 91 4 13 0 92 0 193 0 99 4 17 0 100 1 37 0 106 3 241 0 107] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 17 0 18 0 19 0 21 0 23 0 31 0 33 0 102 0 104 0 106 0 107 0 109] 
#[1 4 21 0 12 2 65 0 107] 
#[1 1 150 0 2 1 150 0 3 1 150 0 4 1 150 0 5 1 150 0 6 1 150 0 7 1 150 0 8 1 150 0 11 1 150 0 12 1 150 0 13 1 150 0 14 1 150 0 15 1 150 0 16 1 150 0 19 1 150 0 20 1 150 0 21 1 150 0 22 1 150 0 23 1 150 0 31 1 150 0 32 1 150 0 33 4 25 0 79 1 150 0 102 1 150 0 103 1 150 0 104 1 150 0 107 1 150 0 109] 
#[1 4 29 0 36 4 33 0 102 4 29 0 107] 
#[1 1 154 0 2 1 154 0 3 1 154 0 4 1 154 0 5 1 154 0 6 1 154 0 7 1 154 0 12 1 154 0 13 1 154 0 15 1 154 0 19 1 154 0 21 1 154 0 22 1 154 0 23 1 154 0 31 1 154 0 32 1 154 0 33 4 37 0 51 1 154 0 102 1 154 0 107] 
#[1 4 41 0 36 4 45 0 102 4 41 0 107] 
#[1 4 49 0 68 1 158 0 105 1 158 0 108] 
#[1 4 53 0 68 1 158 0 105 1 158 0 108] 
#[0 4 57 0 106] 
#[1 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 4 61 0 66 1 1 0 71 4 65 0 72 4 69 0 99 4 73 0 106 2 65 0 107] 
#[0 1 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 4 77 0 36 4 81 0 85 4 85 0 99 4 77 0 107] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 5 1 190 0 6 1 190 0 7 1 190 0 8 1 190 0 11 1 190 0 12 1 190 0 13 1 190 0 14 1 190 0 15 1 190 0 16 0 226 0 17 0 226 0 18 1 23 0 19 1 190 0 20 1 23 0 21 1 190 0 22 1 190 0 23 1 190 0 31 1 190 0 32 1 190 0 33 1 190 0 102 1 190 0 103 1 190 0 104 0 226 0 106 1 23 0 107 1 190 0 109] 
#[1 4 89 0 106 2 65 0 107] 
#[1 4 93 0 36 4 97 0 102 4 93 0 107] 
#[1 1 18 0 17 1 18 0 18 4 101 0 58 2 65 0 107] 
#[1 0 46 0 17 0 46 0 18 4 105 0 66 1 1 0 71 4 109 0 72] 
#[1 1 18 0 17 1 18 0 18 0 41 0 19 0 45 0 21 4 113 0 36 4 117 0 58 4 85 0 99 4 113 0 107] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 4 13 0 2 4 13 0 3 4 13 0 4 4 13 0 5 4 13 0 6 4 13 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 1 19 0 17 1 19 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 241 0 36 4 121 0 43 0 105 0 44 0 109 0 45 0 105 0 46 4 125 0 48 0 121 0 50 4 129 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 133 0 57 4 5 0 58 0 241 0 59 0 245 0 60 4 9 0 61 3 45 0 62 3 49 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 4 137 0 80 0 165 0 85 4 141 0 86 0 245 0 90 4 13 0 91 4 13 0 92 0 193 0 99 4 145 0 100 1 37 0 106 3 241 0 107] 
#[1 4 149 0 36 4 153 0 102 4 149 0 107] 
#[1 0 33 0 8 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 2 73 0 46 4 61 0 66 1 1 0 71 4 65 0 72 2 161 0 78 4 69 0 99 4 157 0 106 2 65 0 107] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 33 0 8 2 73 0 46 2 161 0 78 4 161 0 106 2 65 0 107] 
#[1 4 165 0 36 4 169 0 102 4 165 0 107] 
#[1 4 185 0 2 4 185 0 3 4 185 0 4 4 185 0 5 4 185 0 6 4 185 0 7 4 173 0 23 4 177 0 36 3 41 0 61 3 45 0 62 4 181 0 63 4 185 0 91 4 185 0 92 4 177 0 107] 
#[0 1 27 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 54 0 2 1 54 0 3 1 54 0 4 1 54 0 5 1 54 0 6 1 54 0 7 0 70 0 12 1 54 0 20 1 54 0 23 1 54 0 102 1 54 0 103 1 54 0 104 1 54 0 106 1 31 0 107 1 54 0 109] 
#[1 0 46 0 17 0 46 0 18 4 189 0 66 1 1 0 71 4 193 0 72] 
#[0 1 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 70 0 2 1 70 0 3 1 70 0 4 1 70 0 5 1 70 0 6 1 70 0 7 0 198 0 12 1 70 0 20 1 70 0 23 1 70 0 102 1 70 0 103 1 70 0 104 1 70 0 106 1 35 0 107 1 70 0 109] 
#[1 3 53 0 2 3 53 0 3 3 53 0 4 3 53 0 5 3 53 0 6 3 53 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 3 17 0 23 1 177 0 31 0 61 0 32 1 181 0 33 3 21 0 36 4 197 0 40 0 93 0 41 0 97 0 42 4 201 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 33 0 48 0 121 0 50 4 205 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 41 0 61 3 45 0 62 3 49 0 63 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 3 53 0 91 3 53 0 92 0 193 0 99 1 205 0 100 1 161 0 106 3 21 0 107] 
#[0 1 39 0 20 0 103 0 104 0 107 0 109] 
#[0 1 43 0 20 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 4 209 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 0 74 0 11 0 70 0 12 0 74 0 14 0 74 0 20 1 85 0 36 0 74 0 102 0 74 0 103 0 74 0 104 1 47 0 107 0 74 0 109] 
#[1 4 213 0 12 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 4 217 0 39 4 69 0 99 4 221 0 106 2 65 0 107] 
#[1 0 46 0 17 0 46 0 18 4 225 0 66 1 1 0 71 4 229 0 72] 
#[1 4 233 0 12 4 237 0 36 4 237 0 107] 
#[1 1 118 0 2 1 118 0 3 1 118 0 4 1 118 0 5 1 118 0 6 1 118 0 7 1 51 0 11 1 51 0 12 1 118 0 13 1 118 0 14 1 118 0 15 1 51 0 16 1 118 0 19 1 118 0 20 1 118 0 21 1 118 0 22 1 118 0 23 1 118 0 31 1 118 0 32 1 118 0 33 1 118 0 102 1 118 0 103 1 118 0 104 1 51 0 107 1 118 0 109] 
#[0 1 122 0 20 0 103 0 104 0 107 0 109] 
#[0 1 126 0 20 0 103 0 104 0 107 0 109] 
#[0 1 130 0 20 0 103 0 104 0 107 0 109] 
#[0 1 134 0 20 0 103 0 104 0 107 0 109] 
#[1 0 202 0 11 0 198 0 12 0 202 0 14 0 202 0 20 1 225 0 36 0 202 0 102 0 202 0 103 0 202 0 104 1 55 0 107 0 202 0 109] 
#[1 1 59 0 2 1 59 0 3 1 59 0 4 1 59 0 5 1 59 0 6 1 59 0 7 0 70 0 12 1 59 0 23 1 85 0 36 4 241 0 65 1 59 0 102 0 66 0 106 1 63 0 107] 
#[1 2 213 0 2 2 213 0 3 2 213 0 4 2 213 0 5 2 213 0 6 2 213 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 197 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 209 0 75 0 133 0 80 0 165 0 85 0 133 0 86 2 213 0 91 2 213 0 92 0 193 0 99 1 205 0 100 4 245 0 106 1 133 0 107] 
#[1 4 249 0 36 4 253 0 102 4 249 0 107] 
#[1 5 1 0 36 5 5 0 102 5 1 0 107] 
#[1 0 130 0 12 5 9 0 36 5 13 0 102 1 67 0 107] 
#[1 5 17 0 36 5 21 0 102 5 17 0 107] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[1 4 185 0 2 4 185 0 3 4 185 0 4 4 185 0 5 4 185 0 6 4 185 0 7 4 173 0 23 5 25 0 36 3 41 0 61 5 29 0 62 4 185 0 91 4 185 0 92 5 33 0 102 5 25 0 107] 
#[1 1 71 0 2 1 71 0 3 1 71 0 4 1 71 0 5 1 71 0 6 1 71 0 7 0 198 0 12 1 71 0 23 1 225 0 36 5 37 0 65 1 71 0 102 0 194 0 106 1 75 0 107] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 1 157 0 2 1 157 0 3 1 157 0 4 1 157 0 5 1 157 0 6 1 157 0 7 1 145 0 23 1 149 0 36 4 197 0 40 0 93 0 41 0 97 0 42 1 157 0 91 1 157 0 92 1 161 0 106 1 149 0 107] 
#[1 4 213 0 12 0 41 0 19 0 45 0 21 4 69 0 99 2 65 0 107] 
#[0 1 226 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 41 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 1 98 0 14 5 45 0 84] 
#[1 4 21 0 12 0 46 0 17 0 46 0 18 2 53 0 66 1 1 0 71 2 57 0 72 5 49 0 106 2 65 0 107] 
#[1 1 230 0 11 0 130 0 12 1 230 0 14 0 130 0 107] 
#[0 1 234 0 11 0 14] 
#[0 1 238 0 11 0 14] 
#[1 1 242 0 11 0 174 0 12 1 242 0 14 0 174 0 107] 
#[1 1 246 0 11 1 246 0 14 5 53 0 82] 
#[0 5 57 0 14] 
#[1 1 250 0 11 0 182 0 12 1 250 0 14 0 182 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 2 229 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 61 0 36 2 245 0 48 2 245 0 55 2 249 0 56 2 109 0 59 2 113 0 60 2 117 0 61 2 121 0 66 1 1 0 71 2 125 0 72 2 129 0 73 2 245 0 80 2 21 0 85 2 245 0 86 2 113 0 90 3 13 0 91 3 13 0 92 2 25 0 99 2 133 0 100 5 61 0 107] 
#[1 1 98 0 16 5 65 0 84] 
#[1 1 254 0 11 1 209 0 12 1 254 0 16 1 213 0 36 1 213 0 107] 
#[0 2 2 0 11 0 16] 
#[0 5 69 0 16] 
#[1 2 6 0 11 2 6 0 16 5 73 0 88] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 2 229 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 3 69 0 36 5 77 0 48 5 77 0 55 2 249 0 56 5 77 0 80 2 21 0 85 5 77 0 86 1 201 0 91 1 201 0 92 2 25 0 99 2 133 0 100 3 69 0 107] 
#[1 4 185 0 2 4 185 0 3 4 185 0 4 4 185 0 5 4 185 0 6 4 185 0 7 4 173 0 23 4 177 0 36 3 41 0 61 3 45 0 62 5 81 0 63 4 185 0 91 4 185 0 92 4 177 0 107] 
#[1 5 85 0 36 5 89 0 98 1 106 0 104 5 85 0 107] 
#[1 5 93 0 20 5 97 0 36 5 101 0 98 1 106 0 103 1 106 0 104 1 133 0 107] 
#[0 2 10 0 20 0 103 0 104 0 107 0 109] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 105 0 36 0 77 0 37 0 77 0 38 0 85 0 39 0 77 0 40 0 93 0 41 0 97 0 42 0 77 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 0 77 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 0 121 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 0 177 0 91 0 177 0 92 5 109 0 96 0 193 0 99 0 197 0 100 0 14 0 103 0 14 0 104 0 201 0 106 0 7 0 107 0 14 0 109] 
#[1 5 113 0 103 5 117 0 104] 
#[0 1 79 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 12 0 91 0 13 0 91 0 15 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 121 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[0 2 18 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 5 125 0 66 1 1 0 71 5 129 0 72] 
#[1 1 83 0 2 1 83 0 3 1 83 0 4 1 83 0 5 1 83 0 6 1 83 0 7 2 22 0 8 1 83 0 12 1 83 0 13 1 83 0 15 1 83 0 17 1 83 0 18 1 83 0 19 2 22 0 20 1 83 0 21 1 83 0 22 1 83 0 23 1 83 0 31 1 83 0 32 1 83 0 33 2 22 0 103 2 22 0 104 2 22 0 106 1 83 0 107 2 22 0 109] 
#[0 1 87 0 20 0 103 0 104 0 107 0 109] 
#[0 1 91 0 20 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 12 0 91 0 13 0 91 0 15 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 133 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 5 137 0 12 2 65 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 5 141 0 11 0 37 0 12 0 6 0 13 1 98 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 85 0 36 3 89 0 48 0 133 0 55 0 137 0 56 5 145 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 145 0 75 3 101 0 80 5 145 0 83 5 149 0 84 0 165 0 85 3 113 0 86 0 245 0 90 3 13 0 91 3 13 0 92 0 193 0 99 3 117 0 100 1 37 0 106 3 85 0 107] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 5 153 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 98 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 3 125 0 48 3 125 0 55 0 137 0 56 5 161 0 75 3 125 0 80 5 157 0 84 0 165 0 85 3 125 0 86 5 161 0 89 1 201 0 91 1 201 0 92 0 193 0 99 3 141 0 100 2 69 0 107] 
#[1 5 165 0 102 2 65 0 107] 
#[0 2 34 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 5 169 0 102 2 65 0 107] 
#[0 2 38 0 20 0 103 0 104 0 107 0 109] 
#[1 5 173 0 102 2 65 0 107] 
#[0 2 42 0 20 0 103 0 104 0 107 0 109] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 0 70 0 12 1 214 0 23 1 85 0 36 4 241 0 65 1 95 0 102 1 99 0 107] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 1 19 0 17 1 19 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 5 177 0 58 2 53 0 66 1 1 0 71 2 57 0 72 2 209 0 75 0 133 0 80 0 165 0 85 0 133 0 86 1 201 0 91 1 201 0 92 0 193 0 99 1 205 0 100 5 49 0 106 1 133 0 107] 
#[1 5 181 0 36 5 185 0 102 5 181 0 107] 
#[1 0 130 0 12 5 189 0 36 5 193 0 102 1 67 0 107] 
#[1 5 197 0 36 5 201 0 102 5 197 0 107] 
#[1 5 205 0 36 5 209 0 102 5 205 0 107] 
#[1 0 46 0 17 0 46 0 18 5 213 0 66 1 1 0 71 5 217 0 72] 
#[1 1 218 0 2 1 218 0 3 1 218 0 4 1 218 0 5 1 218 0 6 1 218 0 7 1 218 0 23 1 103 0 102 1 103 0 107] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 0 198 0 12 1 214 0 23 1 225 0 36 5 37 0 65 1 107 0 102 1 111 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 2 229 0 12 0 6 0 13 0 6 0 15 1 19 0 17 1 19 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 221 0 36 2 245 0 48 2 245 0 55 2 249 0 56 5 225 0 58 2 109 0 59 2 113 0 60 2 117 0 61 2 121 0 66 1 1 0 71 2 125 0 72 2 129 0 73 2 245 0 80 2 21 0 85 2 245 0 86 2 113 0 90 3 13 0 91 3 13 0 92 2 25 0 99 2 133 0 100 5 221 0 107] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 229 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 2 46 0 2 2 46 0 3 2 46 0 4 2 46 0 5 2 46 0 6 2 46 0 7 0 33 0 8 2 46 0 11 2 46 0 12 2 46 0 13 2 46 0 14 2 46 0 15 2 46 0 16 2 46 0 19 2 46 0 20 2 46 0 21 2 46 0 22 2 46 0 23 2 46 0 31 2 46 0 32 2 46 0 33 1 165 0 36 5 233 0 44 5 233 0 46 2 46 0 102 2 46 0 103 2 46 0 104 1 115 0 107 2 46 0 109] 
#[1 5 237 0 102 2 65 0 107] 
#[0 2 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 1 185 0 36 0 133 0 48 5 241 0 50 0 133 0 55 0 137 0 56 5 241 0 75 0 133 0 80 0 165 0 85 0 133 0 86 1 201 0 91 1 201 0 92 0 193 0 99 1 205 0 100 2 54 0 102 1 119 0 107] 
#[1 5 245 0 102 2 65 0 107] 
#[0 2 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 5 249 0 67 5 253 0 69 6 1 0 70 6 5 0 74 2 62 0 105 6 9 0 108] 
#[1 5 249 0 67 5 253 0 69 6 13 0 70 6 17 0 74 2 62 0 105 6 9 0 108] 
#[1 0 41 0 19 0 45 0 21 6 21 0 99] 
#[0 2 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 4 13 0 2 4 13 0 3 4 13 0 4 4 13 0 5 4 13 0 6 4 13 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 25 0 36 3 245 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 3 253 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 1 0 57 0 241 0 59 0 245 0 60 4 9 0 61 3 45 0 62 3 49 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 4 13 0 91 4 13 0 92 0 193 0 99 3 117 0 100 1 37 0 106 6 25 0 107] 
#[1 0 41 0 19 0 45 0 21 4 69 0 99 2 65 0 107] 
#[1 6 29 0 13 6 33 0 15] 
#[0 1 138 0 13 0 15 0 17 0 18 0 19 0 21 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 25 0 36 3 245 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 3 253 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 1 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 80 0 165 0 85 0 133 0 86 0 245 0 90 3 13 0 91 3 13 0 92 0 193 0 99 3 117 0 100 1 37 0 106 6 25 0 107] 
#[1 6 37 0 102 2 65 0 107] 
#[0 2 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 6 41 0 66 1 1 0 71 6 45 0 72] 
#[0 2 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 18 0 17 1 18 0 18 0 41 0 19 0 45 0 21 6 49 0 58 4 69 0 99 2 65 0 107] 
#[1 0 46 0 17 0 46 0 18 6 53 0 66 1 1 0 71 6 57 0 72] 
#[1 6 61 0 36 6 65 0 102 6 61 0 107] 
#[1 0 130 0 12 6 69 0 36 6 73 0 102 1 67 0 107] 
#[1 6 77 0 36 6 81 0 102 6 77 0 107] 
#[1 6 85 0 36 6 89 0 102 6 85 0 107] 
#[1 0 174 0 12 6 93 0 36 1 123 0 107] 
#[1 0 182 0 12 6 97 0 36 1 127 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 0 33 0 8 1 237 0 12 0 6 0 13 0 6 0 15 1 19 0 17 1 19 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 101 0 36 6 105 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 109 0 48 0 121 0 50 6 113 0 53 0 129 0 54 1 253 0 55 2 1 0 56 6 117 0 57 5 225 0 58 6 121 0 59 6 125 0 60 6 129 0 61 6 133 0 66 1 1 0 71 6 137 0 72 6 141 0 73 0 121 0 75 1 253 0 80 2 21 0 85 1 253 0 86 6 125 0 90 3 13 0 91 3 13 0 92 2 25 0 99 3 117 0 100 1 37 0 106 6 101 0 107] 
#[1 6 145 0 102 2 65 0 107] 
#[0 2 86 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 4 13 0 2 4 13 0 3 4 13 0 4 4 13 0 5 4 13 0 6 4 13 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 237 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 25 0 36 4 121 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 149 0 48 0 121 0 50 4 129 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 133 0 57 0 241 0 59 0 245 0 60 4 9 0 61 3 45 0 62 3 49 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 4 137 0 80 0 165 0 85 4 141 0 86 0 245 0 90 4 13 0 91 4 13 0 92 0 193 0 99 6 153 0 100 1 37 0 106 6 25 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 25 0 36 4 121 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 149 0 48 0 121 0 50 4 129 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 133 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 4 137 0 80 0 165 0 85 4 141 0 86 0 245 0 90 3 13 0 91 3 13 0 92 0 193 0 99 6 153 0 100 1 37 0 106 6 25 0 107] 
#[1 6 157 0 102 2 65 0 107] 
#[0 2 90 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 85 0 36 4 241 0 65 1 214 0 102 1 131 0 107] 
#[1 4 221 0 106 2 65 0 107] 
#[1 4 185 0 2 4 185 0 3 4 185 0 4 4 185 0 5 4 185 0 6 4 185 0 7 4 173 0 23 6 161 0 36 3 41 0 61 5 29 0 62 4 185 0 91 4 185 0 92 6 165 0 102 6 161 0 107] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 225 0 36 5 37 0 65 1 214 0 102 1 131 0 107] 
#[0 1 206 0 20 0 103 0 104 0 107 0 109] 
#[0 1 210 0 20 0 103 0 104 0 107 0 109] 
#[1 6 169 0 36 6 173 0 102 6 169 0 107] 
#[1 6 177 0 36 6 181 0 102 6 177 0 107] 
#[1 6 185 0 36 6 189 0 102 6 185 0 107] 
#[0 2 14 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 6 193 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 0 46 0 17 0 46 0 18 6 197 0 66 1 1 0 71 6 201 0 72] 
#[1 4 185 0 2 4 185 0 3 4 185 0 4 4 185 0 5 4 185 0 6 4 185 0 7 4 173 0 23 4 177 0 36 3 41 0 61 3 45 0 62 3 49 0 63 4 185 0 91 4 185 0 92 4 177 0 107] 
#[0 2 26 0 20 0 103 0 104 0 107 0 109] 
#[0 2 30 0 20 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 6 205 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 6 209 0 12 2 65 0 107] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 5 2 94 0 6 2 94 0 7 2 94 0 23 6 213 0 36 6 217 0 64 2 94 0 102 1 135 0 107] 
#[1 6 229 0 2 6 229 0 3 6 229 0 4 6 229 0 5 6 229 0 6 6 229 0 7 6 221 0 23 6 225 0 36 4 197 0 40 0 93 0 41 0 97 0 42 3 41 0 61 3 45 0 62 3 49 0 63 6 229 0 91 6 229 0 92 1 161 0 106 6 225 0 107] 
#[1 6 233 0 102 2 65 0 107] 
#[0 1 139 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 106 0 107 0 109] 
#[1 6 237 0 102 2 65 0 107] 
#[0 1 143 0 20 0 103 0 104 0 107 0 109] 
#[1 6 241 0 102 2 65 0 107] 
#[0 2 106 0 20 0 103 0 104 0 107 0 109] 
#[1 6 245 0 102 2 65 0 107] 
#[0 1 147 0 20 0 103 0 104 0 107 0 109] 
#[1 6 249 0 102 4 221 0 106 2 65 0 107] 
#[0 2 114 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 2 122 0 2 2 122 0 3 2 122 0 4 2 122 0 5 2 122 0 6 2 122 0 7 2 122 0 23 6 213 0 36 6 217 0 64 2 122 0 102 1 151 0 107] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 6 253 0 14] 
#[1 4 185 0 2 4 185 0 3 4 185 0 4 4 185 0 5 4 185 0 6 4 185 0 7 1 18 0 17 1 18 0 18 0 41 0 19 0 45 0 21 0 49 0 22 4 173 0 23 7 1 0 36 7 5 0 48 4 5 0 58 3 41 0 61 3 45 0 62 3 49 0 63 4 185 0 91 4 185 0 92 0 193 0 99 7 9 0 100 7 1 0 107] 
#[1 7 13 0 11 1 98 0 14 7 17 0 81 7 21 0 84] 
#[0 2 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 4 213 0 12 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 4 61 0 66 1 1 0 71 4 65 0 72 4 69 0 99 4 221 0 106 2 65 0 107] 
#[0 7 25 0 16] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 29 0 11 1 98 0 16 7 33 0 84 7 37 0 87] 
#[1 2 138 0 11 4 233 0 12 2 138 0 16 4 237 0 36 4 237 0 107] 
#[1 4 185 0 2 4 185 0 3 4 185 0 4 4 185 0 5 4 185 0 6 4 185 0 7 4 173 0 23 7 41 0 36 3 41 0 61 5 29 0 62 4 185 0 91 4 185 0 92 7 45 0 102 7 41 0 107] 
#[1 7 49 0 98 1 106 0 104 2 65 0 107] 
#[0 7 53 0 104] 
#[1 7 57 0 36 7 61 0 98 1 106 0 104 7 57 0 107] 
#[1 7 65 0 98 1 106 0 104 2 65 0 107] 
#[1 7 69 0 103 7 73 0 104] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 0 73 0 36 7 77 0 37 7 77 0 38 1 109 0 39 7 77 0 40 0 93 0 41 0 97 0 42 7 77 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 7 77 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 1 117 0 75 0 161 0 80 0 165 0 85 0 169 0 86 0 145 0 90 1 121 0 91 1 121 0 92 7 81 0 96 0 193 0 99 0 197 0 100 0 14 0 103 0 14 0 104 1 129 0 106 1 155 0 107 0 14 0 109] 
#[0 2 142 0 20 0 103 0 104 0 107 0 109] 
#[1 2 146 0 2 2 146 0 3 2 146 0 4 2 146 0 5 2 146 0 6 2 146 0 7 2 146 0 8 2 146 0 12 2 146 0 13 2 146 0 15 2 146 0 17 2 146 0 18 2 146 0 19 1 159 0 20 2 146 0 21 2 146 0 22 2 146 0 23 2 146 0 31 2 146 0 32 2 146 0 33 7 89 0 36 2 146 0 103 2 146 0 104 2 146 0 106 1 163 0 107 2 146 0 109] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 1 167 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 1 171 0 20 0 103 0 104 0 107 0 109] 
#[0 1 175 0 20 0 103 0 104 0 107 0 109] 
#[0 1 179 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 12 0 91 0 13 0 91 0 15 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 7 93 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 1 98 0 14 7 97 0 84] 
#[1 1 246 0 11 1 246 0 14 7 101 0 82] 
#[0 7 105 0 14] 
#[1 1 98 0 16 7 109 0 84] 
#[0 7 113 0 16] 
#[1 2 6 0 11 2 6 0 16 7 117 0 88] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 2 174 0 20 0 103 0 104 0 107 0 109] 
#[0 2 178 0 20 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 7 121 0 66 1 1 0 71 7 125 0 72] 
#[1 7 129 0 102 2 65 0 107] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 133 0 102 2 65 0 107] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 137 0 102 2 65 0 107] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 141 0 102 2 65 0 107] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 4 213 0 12 1 19 0 17 1 19 0 18 0 41 0 19 0 45 0 21 7 145 0 58 4 61 0 66 1 1 0 71 4 65 0 72 4 69 0 99 4 221 0 106 2 65 0 107] 
#[1 0 46 0 17 0 46 0 18 7 149 0 66 1 1 0 71 7 153 0 72] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 214 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 107] 
#[0 2 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 222 0 105 0 108] 
#[1 7 157 0 23 7 161 0 108] 
#[1 7 165 0 74 2 62 0 105 7 169 0 108] 
#[0 7 173 0 105] 
#[1 2 226 0 23 2 230 0 105 1 183 0 108] 
#[1 7 177 0 74 2 62 0 105 7 169 0 108] 
#[0 7 181 0 105] 
#[0 2 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 107] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 53 0 66 1 1 0 71 2 57 0 72 2 209 0 75 0 133 0 80 0 165 0 85 0 133 0 86 1 201 0 91 1 201 0 92 0 193 0 99 1 205 0 100 5 49 0 106 1 133 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 7 185 0 11 0 37 0 12 0 6 0 13 1 98 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 85 0 36 3 89 0 48 0 133 0 55 0 137 0 56 7 189 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 7 189 0 75 3 101 0 80 7 189 0 83 7 193 0 84 0 165 0 85 3 113 0 86 0 245 0 90 3 13 0 91 3 13 0 92 0 193 0 99 3 117 0 100 1 37 0 106 3 85 0 107] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 7 197 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 98 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 3 125 0 48 3 125 0 55 0 137 0 56 7 205 0 75 3 125 0 80 7 201 0 84 0 165 0 85 3 125 0 86 7 205 0 89 1 201 0 91 1 201 0 92 0 193 0 99 3 141 0 100 2 69 0 107] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 7 209 0 66 1 1 0 71 7 213 0 72] 
#[0 2 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 217 0 102 2 65 0 107] 
#[0 3 2 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 221 0 102 2 65 0 107] 
#[0 1 187 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 225 0 102 2 65 0 107] 
#[0 3 10 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 229 0 102 2 65 0 107] 
#[0 3 14 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 7 233 0 102 2 65 0 107] 
#[1 7 237 0 102 2 65 0 107] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 33 0 8 3 173 0 12 0 6 0 13 0 6 0 15 1 19 0 17 1 19 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 7 145 0 58 7 241 0 66 1 1 0 71 7 245 0 72 2 209 0 75 0 133 0 80 0 165 0 85 0 133 0 86 1 201 0 91 1 201 0 92 3 185 0 99 1 205 0 100 7 249 0 102 5 49 0 106 1 133 0 107] 
#[1 7 253 0 36 8 1 0 102 7 253 0 107] 
#[1 0 130 0 12 8 5 0 36 8 9 0 102 1 67 0 107] 
#[1 8 13 0 36 8 17 0 102 8 13 0 107] 
#[1 8 21 0 36 8 25 0 102 8 21 0 107] 
#[0 1 191 0 102 0 107] 
#[0 1 195 0 102 0 107] 
#[0 1 199 0 102 0 107] 
#[0 1 203 0 102 0 107] 
#[0 1 207 0 102 0 107] 
#[0 1 211 0 102 0 107] 
#[0 3 18 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 130 0 12 8 29 0 36 8 33 0 102 1 67 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 0 33 0 8 1 237 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 8 37 0 36 6 105 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 109 0 48 0 121 0 50 6 113 0 53 0 129 0 54 1 253 0 55 2 1 0 56 6 117 0 57 6 121 0 59 6 125 0 60 6 129 0 61 6 133 0 66 1 1 0 71 6 137 0 72 6 141 0 73 0 121 0 75 1 253 0 80 2 21 0 85 1 253 0 86 6 125 0 90 3 13 0 91 3 13 0 92 2 25 0 99 3 117 0 100 1 37 0 106 8 37 0 107] 
#[0 3 22 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 41 0 102 4 221 0 106 2 65 0 107] 
#[0 3 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 45 0 102 2 65 0 107] 
#[0 2 98 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[1 8 49 0 102 2 65 0 107] 
#[0 2 102 0 20 0 103 0 104 0 107 0 109] 
#[1 8 53 0 102 2 65 0 107] 
#[0 2 110 0 20 0 103 0 104 0 107 0 109] 
#[0 2 154 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 158 0 20 0 103 0 104 0 107 0 109] 
#[0 2 162 0 20 0 103 0 104 0 107 0 109] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 67 0 2 0 71 0 3 0 75 0 4 0 79 0 5 0 83 0 6 0 87 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 91 0 13 0 50 0 14 0 91 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 95 0 19 0 50 0 20 0 99 0 21 0 103 0 22 0 107 0 23 0 111 0 31 0 50 0 32 0 115 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 57 0 76 1 65 0 77 1 69 0 80 0 165 0 85 1 73 0 86 0 245 0 90 1 21 0 91 1 21 0 92 1 25 0 99 1 77 0 100 1 81 0 101 0 50 0 102 0 50 0 103 0 50 0 104 1 37 0 106 0 119 0 107 0 50 0 109] 
#[1 1 215 0 2 1 219 0 3 1 223 0 4 1 227 0 5 1 231 0 6 1 235 0 7 1 239 0 23 8 65 0 31 8 69 0 33 8 73 0 91 8 73 0 92 3 30 0 102 1 243 0 107] 
#[0 3 34 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[1 1 59 0 2 1 59 0 3 1 59 0 4 1 59 0 5 1 59 0 6 1 59 0 7 1 59 0 23 1 85 0 36 4 241 0 65 1 59 0 102 0 66 0 106 1 247 0 107] 
#[1 3 61 0 2 3 61 0 3 3 61 0 4 3 61 0 5 3 61 0 6 3 61 0 7 3 57 0 23 3 61 0 91 3 61 0 92 4 245 0 106 2 65 0 107] 
#[1 1 71 0 2 1 71 0 3 1 71 0 4 1 71 0 5 1 71 0 6 1 71 0 7 1 71 0 23 1 225 0 36 5 37 0 65 1 71 0 102 0 194 0 106 1 251 0 107] 
#[0 1 255 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 103 0 104 0 106 0 107 0 109] 
#[0 2 3 0 20 0 103 0 104 0 107 0 109] 
#[0 3 46 0 20 0 103 0 104 0 107 0 109] 
#[0 2 7 0 20 0 103 0 104 0 107 0 109] 
#[0 3 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 18 0 17 1 18 0 18 5 177 0 58 4 221 0 106 2 65 0 107] 
#[1 5 189 0 36 5 193 0 102 5 189 0 107] 
#[1 1 18 0 17 1 18 0 18 0 41 0 19 0 45 0 21 8 77 0 36 5 225 0 58 4 85 0 99 8 77 0 107] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 0 37 0 12 0 6 0 13 1 98 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 85 0 36 3 89 0 48 0 133 0 55 0 137 0 56 8 81 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 81 0 75 3 101 0 80 8 81 0 83 8 85 0 84 0 165 0 85 3 113 0 86 0 245 0 90 3 13 0 91 3 13 0 92 0 193 0 99 3 117 0 100 1 37 0 106 3 85 0 107] 
#[0 3 62 0 11 0 14] 
#[0 8 89 0 14] 
#[0 3 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 37 0 12 0 6 0 13 0 6 0 15 1 98 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 3 125 0 48 3 125 0 55 0 137 0 56 8 97 0 75 3 125 0 80 8 93 0 84 0 165 0 85 3 125 0 86 8 97 0 89 1 201 0 91 1 201 0 92 0 193 0 99 3 141 0 100 2 69 0 107] 
#[0 8 101 0 16] 
#[0 3 70 0 11 0 16] 
#[1 8 105 0 102 4 221 0 106 2 65 0 107] 
#[0 3 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 109 0 104] 
#[0 3 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 8 113 0 98 1 106 0 104 2 65 0 107] 
#[0 8 117 0 104] 
#[0 8 121 0 104] 
#[1 3 82 0 2 3 82 0 3 3 82 0 4 3 82 0 5 3 82 0 6 3 82 0 7 3 82 0 8 3 82 0 12 3 82 0 13 3 82 0 15 3 82 0 17 3 82 0 18 3 82 0 19 2 11 0 20 3 82 0 21 3 82 0 22 3 82 0 23 3 82 0 31 3 82 0 32 3 82 0 33 8 129 0 36 3 82 0 103 3 82 0 104 3 82 0 106 2 15 0 107 3 82 0 109] 
#[0 3 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 2 19 0 20 0 103 0 104 0 107 0 109] 
#[0 3 90 0 20 0 103 0 104 0 107 0 109] 
#[0 8 133 0 36 0 107] 
#[1 8 137 0 20 8 141 0 36 8 145 0 104 1 133 0 107] 
#[0 2 23 0 2 0 3 0 4 0 5 0 6 0 7 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 149 0 14] 
#[1 8 153 0 11 1 98 0 14 7 17 0 81 8 157 0 84] 
#[0 2 27 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 161 0 16] 
#[0 2 31 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 165 0 11 1 98 0 16 8 169 0 84 7 37 0 87] 
#[0 3 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 0 46 0 17 0 46 0 18 8 173 0 66 1 1 0 71 8 177 0 72] 
#[0 3 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 138 0 105 0 108] 
#[0 3 142 0 23 0 108] 
#[0 8 181 0 105] 
#[0 3 146 0 105 0 108] 
#[0 3 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 185 0 105] 
#[0 3 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 98 0 14 8 189 0 84] 
#[1 1 246 0 11 1 246 0 14 8 193 0 82] 
#[0 8 197 0 14] 
#[1 1 98 0 16 8 201 0 84] 
#[0 8 205 0 16] 
#[1 2 6 0 11 2 6 0 16 8 209 0 88] 
#[0 3 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 166 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 35 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 174 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 182 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 39 0 102 0 107] 
#[0 2 43 0 102 0 107] 
#[1 0 33 0 8 2 73 0 46 8 213 0 78] 
#[1 8 217 0 102 2 65 0 107] 
#[0 3 190 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 221 0 102 2 65 0 107] 
#[0 3 194 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 225 0 102 2 65 0 107] 
#[0 3 198 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 229 0 102 2 65 0 107] 
#[0 3 202 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 8 233 0 102 2 65 0 107] 
#[0 3 6 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 33 0 8 3 173 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 2 205 0 46 0 133 0 48 0 133 0 55 0 137 0 56 7 241 0 66 1 1 0 71 7 245 0 72 2 209 0 75 0 133 0 80 0 165 0 85 0 133 0 86 1 201 0 91 1 201 0 92 3 185 0 99 1 205 0 100 7 249 0 102 5 49 0 106 1 133 0 107] 
#[0 3 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 38 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 102 0 103 0 104 0 106 0 107 0 109] 
#[0 3 42 0 20 0 103 0 104 0 107 0 109] 
#[0 3 50 0 20 0 103 0 104 0 107 0 109] 
#[0 3 94 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 210 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[0 3 214 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[0 3 218 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[0 3 222 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 102 0 107] 
#[1 1 18 0 17 1 18 0 18 0 41 0 19 0 45 0 21 7 145 0 58 4 69 0 99 2 65 0 107] 
#[0 3 226 0 11 0 14] 
#[0 8 237 0 14] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 8 241 0 16] 
#[0 3 234 0 11 0 16] 
#[0 3 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 8 245 0 104] 
#[0 3 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 3 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 8 249 0 36 0 107] 
#[1 8 253 0 20 9 1 0 36 9 5 0 104 1 133 0 107] 
#[1 9 9 0 104 2 65 0 107] 
#[0 9 13 0 36 0 107] 
#[1 9 17 0 104 2 65 0 107] 
#[0 4 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 2 47 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 0 37 0 12 0 6 0 13 1 98 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 85 0 36 3 89 0 48 0 133 0 55 0 137 0 56 8 81 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 81 0 75 3 101 0 80 8 81 0 83 9 21 0 84 0 165 0 85 3 113 0 86 0 245 0 90 3 13 0 91 3 13 0 92 0 193 0 99 3 117 0 100 1 37 0 106 3 85 0 107] 
#[0 9 25 0 14] 
#[0 2 51 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 37 0 12 0 6 0 13 0 6 0 15 1 98 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 3 125 0 48 3 125 0 55 0 137 0 56 8 97 0 75 3 125 0 80 9 29 0 84 0 165 0 85 3 125 0 86 8 97 0 89 1 201 0 91 1 201 0 92 0 193 0 99 3 141 0 100 2 69 0 107] 
#[0 9 33 0 16] 
#[0 4 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 9 37 0 14] 
#[1 9 41 0 11 1 98 0 14 7 17 0 81 9 45 0 84] 
#[0 3 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 9 49 0 16] 
#[0 3 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 9 53 0 11 1 98 0 16 9 57 0 84 7 37 0 87] 
#[0 4 30 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 34 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 38 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 42 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 46 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 3 170 0 2 0 3 0 4 0 5 0 6 0 7 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 9 61 0 104 2 65 0 107] 
#[0 9 65 0 36 0 107] 
#[1 9 69 0 104 2 65 0 107] 
#[0 4 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 4 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 9 73 0 104 2 65 0 107] 
#[0 4 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 9 77 0 14] 
#[0 2 55 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 9 81 0 16] 
#[0 2 59 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 3 13 0 2 3 13 0 3 3 13 0 4 3 13 0 5 3 13 0 6 3 13 0 7 0 37 0 12 0 6 0 13 1 98 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 233 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 85 0 36 3 89 0 48 0 133 0 55 0 137 0 56 8 81 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 81 0 75 3 101 0 80 8 81 0 83 9 85 0 84 0 165 0 85 3 113 0 86 0 245 0 90 3 13 0 91 3 13 0 92 0 193 0 99 3 117 0 100 1 37 0 106 3 85 0 107] 
#[0 9 89 0 14] 
#[0 4 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[1 1 201 0 2 1 201 0 3 1 201 0 4 1 201 0 5 1 201 0 6 1 201 0 7 0 37 0 12 0 6 0 13 0 6 0 15 1 98 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 173 0 23 1 177 0 31 0 61 0 32 1 181 0 33 2 69 0 36 3 125 0 48 3 125 0 55 0 137 0 56 8 97 0 75 3 125 0 80 9 93 0 84 0 165 0 85 3 125 0 86 8 97 0 89 1 201 0 91 1 201 0 92 0 193 0 99 3 141 0 100 2 69 0 107] 
#[0 9 97 0 16] 
#[0 4 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[1 9 101 0 104 2 65 0 107] 
#[0 4 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 4 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 2 63 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 2 67 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 9 105 0 14] 
#[0 4 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 9 109 0 16] 
#[0 4 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 103 0 104 0 106 0 107 0 109] 
#[0 4 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109] 
#[0 4 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 102 0 103 0 104 0 107 0 109]
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
YAMLParser >> reduceActionForMappingValue14: nodes [
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
YAMLParser >> reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part_____singleQuoteString___part_____doubleQuoteString___part________multiline_string_2: nodes [
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
