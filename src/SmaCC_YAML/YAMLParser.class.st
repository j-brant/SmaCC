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
#[ 0 214 2 117] 
#[ 0 42 2 157] 
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
#[ 0 142 1 110] 
#[ 0 150 1 114] 
#[ 0 154 1 118] 
#[ 0 158 1 122] 
#[ 0 162 1 126] 
#[ 0 205 1 130] 
#[ 0 214 1 134] 
#[ 0 66 0 70] 
#[ 0 46 1 10] 
#[ 0 218 1 186] 
#[ 1 26 1 198] 
#[ 0 70 1 46] 
#[ 0 205 1 202] 
#[ 1 74 1 206] 
#[ 1 78 1 210] 
#[ 0 70 0 74 0 205] 
#[ 0 146 1 110] 
#[ 0 66 1 214] 
#[ 0 66 0 70 0 205 1 214] 
#[ 0 126 0 205] 
#[ 0 190 1 214] 
#[ 0 190 0 205 1 214] 
#[ 1 106 2 85] 
#[ 0 205 2 6] 
#[ 2 10 5 161] 
#[ 0 205 2 10] 
#[ 1 26 2 18] 
#[ 0 205 2 22] 
#[ 0 214 2 26] 
#[ 0 205 2 30] 
#[ 1 74 2 34] 
#[ 1 78 2 38] 
#[ 0 74 1 214] 
#[ 0 70 0 74 0 205 1 214] 
#[ 0 242 1 218] 
#[ 0 194 1 214] 
#[ 0 194 0 205 1 214] 
#[ 0 205 2 54] 
#[ 2 62 6 49] 
#[ 0 205 1 214] 
#[ 0 205 2 102] 
#[ 2 42 2 106] 
#[ 2 46 2 110] 
#[ 2 50 2 118] 
#[ 0 205 2 130] 
#[ 2 154 7 117] 
#[ 0 205 2 154] 
#[ 0 205 2 162] 
#[ 1 137 2 166] 
#[ 0 205 2 170] 
#[ 2 178 7 145] 
#[ 2 178 7 153] 
#[ 1 137 2 178] 
#[ 1 26 1 198 2 182] 
#[ 0 205 2 186] 
#[ 1 74 1 206 2 190] 
#[ 1 78 1 210 2 194] 
#[ 1 226 2 198] 
#[ 2 238 7 225] 
#[ 0 218 2 254] 
#[ 3 10 3 14] 
#[ 2 218 3 46] 
#[ 0 234 1 162] 
#[ 0 238 1 166] 
#[ 0 242 1 170] 
#[ 0 246 1 174] 
#[ 0 250 1 178] 
#[ 0 254 1 182] 
#[ 0 9 3 70] 
#[ 0 13 3 70] 
#[ 0 17 3 70] 
#[ 0 21 3 70] 
#[ 0 25 3 70] 
#[ 0 29 3 70] 
#[ 3 70 8 129] 
#[ 2 85 3 70] 
#[ 0 66 0 205 1 214] 
#[ 2 202 3 78] 
#[ 2 206 3 82] 
#[ 2 210 3 90] 
#[ 3 130 8 177] 
#[ 3 130 8 185] 
#[ 1 137 3 130] 
#[ 1 137 3 134] 
#[ 0 205 3 138] 
#[ 2 85 3 142] 
#[ 3 146 4 241] 
#[ 0 10 3 146] 
#[ 0 41 3 146] 
#[ 0 45 3 146] 
#[ 3 146 4 249] 
#[ 2 85 3 146] 
#[ 2 134 3 154] 
#[ 2 138 3 158] 
#[ 2 142 3 162] 
#[ 3 198 8 237] 
#[ 3 178 3 238] 
#[ 1 138 2 74] 
#[ 1 142 2 78] 
#[ 2 85 4 50] 
#[ 3 98 4 62] 
#[ 3 106 4 66] 
#[ 4 26 4 130] 
#[ 4 34 4 134] 
#[ 4 110 4 146] 
#[ 4 114 4 150]
	).
]

{ #category : #'generated-accessing' }
YAMLParser class >> cacheId [
	^'2023-04-05T10:46:48.908-05:00'
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
	#(86 0 #reduceActionForPushFlow1: 11425793 true) 
	#(39 0 #reduceActionForSetDocumentIndent1: 6884353 true) 
	#(96 0 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE_____1: 12156929 false) 
	#(93 1 #liftFirstValue: 12001281 false) 
	#(93 1 #liftFirstValue: 12001282 false) 
	#(93 1 #liftFirstValue: 12001283 false) 
	#(93 1 #liftFirstValue: 12001284 false) 
	#(92 1 #liftFirstValue: 11858946 false) 
	#(92 1 #liftFirstValue: 11858947 false) 
	#(52 0 #reduceActionForPushIndent1: 8086529 true) 
	#(71 0 #reduceActionForPushLiteralString1: 9729025 true) 
	#(77 0 #reduceActionForMappingValue10: 10394634 false) 
	#(101 1 #reduceActionForTagOrAnchor1: 12638209 false) 
	#(101 1 #reduceActionForTagOrAnchor2: 12638210 false) 
	#(48 1 #reduceActionForalias1: 7933953 false) 
	#(41 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7010306 false) 
	#(55 1 #reduceActionForkey1: 8285185 false) 
	#(60 1 #reduceActionForkey1: 9214978 false) 
	#(73 1 #reduceActionForkey1: 10017793 false) 
	#(55 1 #reduceActionForkey1: 8285186 false) 
	#(59 1 #reduceActionForkey1: 9147393 false) 
	#(55 1 #reduceActionForkey1: 8285187 false) 
	#(37 1 #liftFirstValue: 6179853 false) 
	#(38 1 #liftFirstValue: 6410259 false) 
	#(42 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 7010305 false) 
	#(40 1 #reduceActionFordocumentMultilineString1: 6982657 false) 
	#(37 1 #liftFirstValue: 6179841 false) 
	#(45 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7156737 false) 
	#(43 1 #reduceActionForlist1: 7148545 false) 
	#(44 1 #liftFirstValue: 7156737 false) 
	#(55 1 #liftFirstValue: 8285188 false) 
	#(54 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 8230913 false) 
	#(37 1 #liftFirstValue: 6179846 false) 
	#(53 1 #reduceActionFormappinglist1: 8215553 false) 
	#(75 1 #reduceActionFormapping9: 10121225 false) 
	#(55 1 #liftFirstValue: 8285191 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6410257 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6410241 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6410245 false) 
	#(38 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 6410255 false) 
	#(50 1 #liftFirstValue: 8022017 false) 
	#(55 1 #liftFirstValue: 8285190 false) 
	#(37 1 #liftFirstValue: 6179851 false) 
	#(55 1 #liftFirstValue: 8285189 false) 
	#(37 1 #liftFirstValue: 6179852 false) 
	#(60 1 #liftFirstValue: 9214977 false) 
	#(41 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 7010305 false) 
	#(91 1 #reduceActionFornumber1: 11820033 false) 
	#(92 1 #liftFirstValue: 11858945 false) 
	#(35 1 #reduceActionForfile1: 6134785 false) 
	#(100 0 #reduceActionForSetZeroIndent1: 12519425 true) 
	#(94 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 12086273 false) 
	#(102 1 #reduceActionForTagsOrAnchors1: 12690433 false) 
	#(36 1 #liftFirstValue: 6157313 false) 
	#(46 2 #reduceActionForlistitem2: 7197698 false) 
	#(46 2 #reduceActionForlistitem2: 7197702 false) 
	#(46 2 #reduceActionForlistitem2: 7197697 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8541217 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8541185 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8541189 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8541191 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8541195 false) 
	#(57 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 8541215 false) 
	#(47 1 #liftFirstValue: 7530503 false) 
	#(47 1 #liftFirstValue: 7530508 false) 
	#(58 0 #reduceActionForPopIndent1: 9076737 true) 
	#(46 2 #reduceActionForlistitem7: 7197703 false) 
	#(77 1 #reduceActionForMappingValue11: 10394635 false) 
	#(76 1 #reduceActionForMappingValue11: 10258437 false) 
	#(75 2 #reduceActionFormapping1: 10121217 false) 
	#(76 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 10258433 false) 
	#(77 1 #reduceActionForMappingValue11: 10394639 false) 
	#(77 1 #reduceActionForMappingValue11: 10394633 false) 
	#(56 2 #reduceActionForComplexKey1: 8465409 false) 
	#(41 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: 7010310 false) 
	#(44 2 #liftSecondValue: 7156738 false) 
	#(50 2 #liftSecondValue: 8022018 false) 
	#(41 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____6: 7010309 false) 
	#(94 2 #reduceActionForfileDocuments3: 12086275 false) 
	#(36 2 #liftFirstValue: 6157314 false) 
	#(94 2 #reduceActionForfileDocuments2: 12086274 false) 
	#(38 2 #reduceActionForfileDocuments3: 6410247 false) 
	#(38 2 #reduceActionForfileDocuments3: 6410251 false) 
	#(42 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: 7010306 false) 
	#(45 2 #reduceActionFor__NEWLINE____listitem__item___2: 7156738 false) 
	#(54 2 #reduceActionFor__NEWLINE____listitem__item___2: 8230914 false) 
	#(85 0 #reduceActionForPopFlow1: 11348993 true) 
	#(35 2 #reduceActionForfile1: 6134786 false) 
	#(96 2 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE_____2: 12156930 false) 
	#(98 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 12184577 false) 
	#(75 2 #reduceActionFormapping10: 10121226 false) 
	#(38 2 #reduceActionFordocumentValue18: 6410258 false) 
	#(38 2 #reduceActionFordocumentValue18: 6410242 false) 
	#(38 2 #reduceActionFordocumentValue18: 6410246 false) 
	#(38 2 #reduceActionFordocumentValue18: 6410256 false) 
	#(94 2 #reduceActionForfileDocuments5: 12086277 false) 
	#(102 2 #reduceActionForTagsOrAnchors2: 12690434 false) 
	#(57 2 #reduceActionForfileDocuments3: 8541192 false) 
	#(57 2 #reduceActionForfileDocuments3: 8541196 false) 
	#(80 0 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 10997761 false) 
	#(51 0 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 8022017 false) 
	#(68 0 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 9593857 false) 
	#(46 3 #reduceActionForlistitem3: 7197699 false) 
	#(57 2 #reduceActionFordocumentValue18: 8541218 false) 
	#(57 2 #reduceActionFordocumentValue18: 8541186 false) 
	#(57 2 #reduceActionFordocumentValue18: 8541190 false) 
	#(57 2 #reduceActionFordocumentValue18: 8541193 false) 
	#(57 2 #reduceActionFordocumentValue18: 8541197 false) 
	#(57 2 #reduceActionFordocumentValue18: 8541216 false) 
	#(46 3 #reduceActionForlistitem8: 7197704 false) 
	#(77 2 #reduceActionForMappingValue12: 10394636 false) 
	#(76 2 #reduceActionForMappingValueWithTags2: 10258434 false) 
	#(75 3 #reduceActionFormapping2: 10121218 false) 
	#(94 3 #reduceActionForfileDocuments4: 12086276 false) 
	#(38 3 #reduceActionFordocumentValue8: 6410248 false) 
	#(38 3 #reduceActionFordocumentValue8: 6410252 false) 
	#(65 0 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 9405441 false) 
	#(62 1 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 9360387 false) 
	#(63 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 9360385 false) 
	#(75 3 #reduceActionFormapping3: 10121219 false) 
	#(84 1 #liftFirstValue: 11279361 false) 
	#(84 1 #liftFirstValue: 11279364 false) 
	#(84 1 #liftFirstValue: 11279362 false) 
	#(83 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 11163649 false) 
	#(84 1 #liftFirstValue: 11279363 false) 
	#(90 1 #reduceActionFormapping9: 11726850 false) 
	#(90 1 #liftFirstValue: 11726849 false) 
	#(89 0 #reduceActionFor_TagsOrAnchors__NEWLINE____1: 11606017 false) 
	#(95 2 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____1: 12156929 false) 
	#(99 2 #reduceActionForSplitDocument1: 12253185 false) 
	#(99 2 #reduceActionForSplitDocument13: 12253197 false) 
	#(75 3 #reduceActionFormapping5: 10121221 false) 
	#(94 3 #reduceActionForfileDocuments7: 12086279 false) 
	#(102 3 #reduceActionForTagsOrAnchors3: 12690435 false) 
	#(94 3 #reduceActionForfileDocuments6: 12086278 false) 
	#(38 3 #reduceActionFordocumentValue9: 6410249 false) 
	#(38 3 #reduceActionFordocumentValue9: 6410253 false) 
	#(41 3 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 7010307 false) 
	#(37 3 #liftSecondValue: 6179842 false) 
	#(37 3 #liftSecondValue: 6179847 false) 
	#(78 2 #reduceActionForlistWithoutInitialNewline1: 10951681 false) 
	#(47 3 #liftSecondValue: 7530506 false) 
	#(49 2 #reduceActionFormappingListWithoutInitialNewline1: 7966721 false) 
	#(47 3 #liftSecondValue: 7530504 false) 
	#(74 0 #reduceActionForPopScope1: 10083329 true) 
	#(57 3 #reduceActionFordocumentValue9: 8541194 false) 
	#(57 3 #reduceActionFordocumentValue9: 8541198 false) 
	#(46 4 #reduceActionForlistitem3: 7197700 false) 
	#(57 3 #reduceActionFordocumentValue8: 8541199 false) 
	#(57 3 #reduceActionFordocumentValue8: 8541207 false) 
	#(77 3 #reduceActionForMappingValue12: 10394648 false) 
	#(76 3 #reduceActionForMappingValueWithTags2: 10258435 false) 
	#(62 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part________multiline_string_2: 9360386 false) 
	#(41 4 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 7010311 false) 
	#(37 4 #reduceActionFordocument4: 6179844 false) 
	#(38 4 #reduceActionFordocument4: 6410243 false) 
	#(37 4 #reduceActionFordocument4: 6179849 false) 
	#(63 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____2: 9360386 false) 
	#(61 4 #reduceActionFormultiline_string1: 9275393 false) 
	#(62 2 #reduceActionFor___numberToken__part_____STRING_MY___part_____NEWLINE____numberToken__part_____STRING_MY___part________multiline_string_2: 9360385 false) 
	#(75 4 #reduceActionFormapping4: 10121220 false) 
	#(81 4 #reduceActionForflowlist1: 11076609 false) 
	#(87 4 #reduceActionForflowmappinglist1: 11512833 false) 
	#(90 2 #reduceActionFormapping10: 11726851 false) 
	#(99 3 #reduceActionForSplitDocument17: 12253201 false) 
	#(99 3 #reduceActionForSplitDocument7: 12253191 false) 
	#(99 3 #reduceActionForSplitDocument14: 12253198 false) 
	#(95 3 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____5: 12156933 false) 
	#(95 3 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____1: 12156930 false) 
	#(95 3 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____3: 12156931 false) 
	#(98 2 #reduceActionFor_TagsOrAnchors__NEWLINE____2: 12184578 false) 
	#(99 3 #reduceActionForSplitDocument1: 12253188 false) 
	#(75 4 #reduceActionFormapping6: 10121222 false) 
	#(94 4 #reduceActionForfileDocuments8: 12086280 false) 
	#(38 4 #reduceActionFordocumentValue10: 6410250 false) 
	#(38 4 #reduceActionFordocumentValue10: 6410254 false) 
	#(75 4 #reduceActionFormapping7: 10121223 false) 
	#(41 4 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 7010308 false) 
	#(37 4 #liftSecondValue: 6179843 false) 
	#(37 4 #liftSecondValue: 6179848 false) 
	#(47 4 #reduceActionFordocument4: 7530499 false) 
	#(57 4 #reduceActionFordocument4: 8541187 false) 
	#(47 4 #reduceActionFordocument4: 7530501 false) 
	#(47 4 #reduceActionFordocument4: 7530497 false) 
	#(57 4 #reduceActionForvalue19: 8541203 false) 
	#(57 4 #reduceActionForvalue19: 8541211 false) 
	#(79 1 #liftFirstValue: 10997761 false) 
	#(80 2 #reduceActionFor__NEWLINE____listitem__item___2: 10997762 false) 
	#(47 4 #liftSecondValue: 7530507 false) 
	#(51 2 #reduceActionFor__NEWLINE____listitem__item___2: 8022018 false) 
	#(49 3 #reduceActionFormappingListWithoutInitialNewline1: 7966722 false) 
	#(47 4 #liftSecondValue: 7530505 false) 
	#(68 2 #reduceActionFor__NEWLINE____listitem__item___2: 9593858 false) 
	#(69 1 #liftFirstValue: 9594881 false) 
	#(70 1 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT____2: 9639937 false) 
	#(103 4 #reduceActionForTagAndAnchorWithIndent1: 12765185 false) 
	#(46 5 #reduceActionForlistitem3: 7197701 false) 
	#(57 4 #reduceActionForvalue19: 8541200 false) 
	#(57 4 #reduceActionForvalue19: 8541208 false) 
	#(57 4 #reduceActionForvalue17: 8541201 false) 
	#(57 4 #reduceActionForvalue17: 8541209 false) 
	#(77 4 #reduceActionForMappingValue5: 10394629 false) 
	#(77 4 #reduceActionForMappingValue5: 10394642 false) 
	#(77 4 #reduceActionForMappingValue5: 10394625 false) 
	#(77 4 #reduceActionForMappingValue5: 10394640 false) 
	#(77 4 #reduceActionForMappingValue12: 10394649 false) 
	#(76 4 #reduceActionForMappingValueWithTags2: 10258436 false) 
	#(61 5 #reduceActionFormultiline_string5: 9275397 false) 
	#(64 1 #nil 9405441 false) 
	#(65 2 #reduceActionFor__NEWLINE____listitem__item___2: 9405442 false) 
	#(41 5 #reduceActionFor__NEWLINE____listitem__item___NEWLINE____1: 7010312 false) 
	#(37 5 #reduceActionFordocument4: 6179845 false) 
	#(38 5 #reduceActionFordocument4: 6410244 false) 
	#(37 5 #reduceActionFordocument4: 6179850 false) 
	#(61 5 #reduceActionFormultiline_string1: 9275394 false) 
	#(81 5 #reduceActionForflowlist2: 11076610 false) 
	#(83 2 #reduceActionForTagsOrAnchors2: 11163650 false) 
	#(87 5 #reduceActionForflowmappinglist2: 11512834 false) 
	#(89 2 #reduceActionForTagsOrAnchors2: 11606018 false) 
	#(61 5 #reduceActionFormultiline_string5: 9275395 false) 
	#(99 4 #reduceActionForSplitDocument18: 12253202 false) 
	#(99 4 #reduceActionForSplitDocument21: 12253205 false) 
	#(99 4 #reduceActionForSplitDocument20: 12253204 false) 
	#(99 4 #reduceActionForSplitDocument7: 12253194 false) 
	#(95 4 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____5: 12156934 false) 
	#(95 4 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____7: 12156935 false) 
	#(95 4 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____3: 12156932 false) 
	#(97 2 #reduceActionFor__NEWLINE_________numberToken__part_____STRING_MY___part_______INDENT__documentMultilineString__NEWLINE_____DEDENT_____1: 12184577 false) 
	#(99 4 #reduceActionForSplitDocument2: 12253186 false) 
	#(75 5 #reduceActionFormapping8: 10121224 false) 
	#(81 5 #reduceActionForflowlist5: 11076613 false) 
	#(87 5 #reduceActionForflowmappinglist5: 11512837 false) 
	#(57 5 #reduceActionForvalue20: 8541204 false) 
	#(57 5 #reduceActionForvalue20: 8541212 false) 
	#(47 5 #reduceActionFordocument4: 7530500 false) 
	#(57 5 #reduceActionFordocument4: 8541188 false) 
	#(47 5 #reduceActionFordocument4: 7530502 false) 
	#(47 5 #reduceActionFordocument4: 7530498 false) 
	#(57 5 #reduceActionForvalue21: 8541205 false) 
	#(57 5 #reduceActionForvalue21: 8541213 false) 
	#(79 2 #liftSecondValue: 10997763 false) 
	#(79 2 #liftFirstValue: 10997762 false) 
	#(67 2 #liftSecondValue: 9593857 false) 
	#(69 2 #liftFirstValue: 9594882 false) 
	#(70 2 #reduceActionFor__NEWLINE____listitem__item___2: 9639938 false) 
	#(66 5 #reduceActionForstring_literal1: 9522177 false) 
	#(72 5 #reduceActionForstring_literal1: 9814017 false) 
	#(57 5 #reduceActionForvalue18: 8541202 false) 
	#(57 5 #reduceActionForvalue18: 8541210 false) 
	#(77 5 #reduceActionForMappingValue5: 10394630 false) 
	#(77 5 #reduceActionForMappingValue5: 10394643 false) 
	#(77 5 #reduceActionForMappingValue5: 10394626 false) 
	#(77 5 #reduceActionForMappingValue5: 10394641 false) 
	#(77 5 #reduceActionForMappingValue7: 10394631 false) 
	#(77 5 #reduceActionForMappingValue7: 10394646 false) 
	#(77 5 #reduceActionForMappingValue7: 10394627 false) 
	#(77 5 #reduceActionForMappingValue7: 10394644 false) 
	#(61 6 #reduceActionFormultiline_string5: 9275398 false) 
	#(64 2 #liftSecondValue: 9405443 false) 
	#(64 2 #liftSecondValue: 9405442 false) 
	#(82 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 11163649 false) 
	#(81 6 #reduceActionForflowlist3: 11076611 false) 
	#(88 2 #reduceActionFor__COMMA___comma__flowListValue___item__1: 11606017 false) 
	#(87 6 #reduceActionForflowmappinglist3: 11512835 false) 
	#(61 6 #reduceActionFormultiline_string5: 9275396 false) 
	#(99 5 #reduceActionForSplitDocument22: 12253206 false) 
	#(99 5 #reduceActionForSplitDocument8: 12253192 false) 
	#(95 5 #reduceActionFor_SplitDocument__NEWLINE_____TagsOrAnchors__NEWLINE_____document__document____NEWLINE____7: 12156936 false) 
	#(99 5 #reduceActionForSplitDocument3: 12253187 false) 
	#(99 5 #reduceActionForSplitDocument5: 12253189 false) 
	#(81 6 #reduceActionForflowlist6: 11076614 false) 
	#(87 6 #reduceActionForflowmappinglist6: 11512838 false) 
	#(57 6 #reduceActionForvalue22: 8541206 false) 
	#(57 6 #reduceActionForvalue22: 8541214 false) 
	#(79 3 #liftSecondValue: 10997764 false) 
	#(66 6 #reduceActionForstring_literal2: 9522178 false) 
	#(72 6 #reduceActionForstring_literal2: 9814018 false) 
	#(77 6 #reduceActionForMappingValue13: 10394637 false) 
	#(77 6 #reduceActionForMappingValue7: 10394632 false) 
	#(77 6 #reduceActionForMappingValue7: 10394647 false) 
	#(77 6 #reduceActionForMappingValue7: 10394628 false) 
	#(77 6 #reduceActionForMappingValue7: 10394645 false) 
	#(81 7 #reduceActionForflowlist4: 11076612 false) 
	#(87 7 #reduceActionForflowmappinglist4: 11512836 false) 
	#(99 6 #reduceActionForSplitDocument9: 12253193 false) 
	#(99 6 #reduceActionForSplitDocument11: 12253195 false) 
	#(99 6 #reduceActionForSplitDocument6: 12253190 false) 
	#(81 7 #reduceActionForflowlist7: 11076615 false) 
	#(87 7 #reduceActionForflowmappinglist7: 11512839 false) 
	#(77 7 #reduceActionForMappingValue14: 10394638 false) 
	#(99 7 #reduceActionForSplitDocument12: 12253196 false) 
	#(81 8 #reduceActionForflowlist8: 11076616 false) 
	#(87 8 #reduceActionForflowmappinglist8: 11512840 false)
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
		((numberToken ''part'' | <STRING_MY> ''part'') | (<INDENT> documentMultilineString <NEWLINE>+? <DEDENT>)))+' 'list' '(<NEWLINE>+? listitem ''item'')' '(<NEWLINE>+? listitem ''item'')+' 'listitem' 'ListItemValue' 'alias' 'mappingListWithoutInitialNewline' '(<NEWLINE>+? mapping ''mapping'')' '(<NEWLINE>+? mapping ''mapping'')*' 'PushIndent' 'mappinglist' '(<NEWLINE>+? mapping ''mapping'')+' 'key' 'ComplexKey' 'value' 'PopIndent' 'string_single_quoted' 'value_scalar' 'multiline_string' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)* | multiline_string)' '( (numberToken ''part'' | <STRING_MY> ''part'') (<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)* | multiline_string)+' '(<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)' '(<NEWLINE>+ (numberToken ''part'' | <STRING_MY> ''part'')?)*' 'string_literal' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')' '(<NEWLINE_STR_LITERAL>+ <STRING_MY> ''part'')*' '<NEWLINE_STR_LITERAL>+' '<NEWLINE_STR_LITERAL> ''endingNewline''+' 'PushLiteralString' 'string_folded' 'string_double_quoted' 'PopScope' 'mapping' 'MappingValueWithTags' 'MappingValue' 'listWithoutInitialNewline' '(<NEWLINE>+? listitem ''item'' <NEWLINE>?)' '(<NEWLINE>+? listitem ''item'' <NEWLINE>?)*' 'flowlist' '(<COMMA> ''comma'' flowListValue  ''item'')' '(<COMMA> ''comma'' flowListValue  ''item'')*' 'flowListValue' 'PopFlow' 'PushFlow' 'flowmappinglist' '(<COMMA> ''comma'' flowMapping ''mapping'')' '(<COMMA> ''comma'' flowMapping ''mapping'')*' 'flowMapping' 'number' 'numberToken' 'integer' 'fileDocuments' '(SplitDocument <NEWLINE>+? (TagsOrAnchors <NEWLINE>+)* document ''document''? <NEWLINE>+?)' '(SplitDocument <NEWLINE>+? (TagsOrAnchors <NEWLINE>+)* document ''document''? <NEWLINE>+?)*' '(TagsOrAnchors <NEWLINE>+)' '(TagsOrAnchors <NEWLINE>+)*' 'SplitDocument' 'SetZeroIndent' 'TagOrAnchor' 'TagsOrAnchors' 'TagAndAnchorWithIndent' '<DEDENT>' '<DOCUMENTEND>' '<DOCUMENTSTART>' '<FINISH_LITERAL_STRING>' '<INDENT>' '<NEWLINE>' '<NEWLINE_STR_LITERAL>' 'E O F' 'error')
]

{ #category : #generated }
YAMLParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #YAMLFileNode #YAMLFileNode #SmaCCToken #YAMLValueNode #YAMLValueNode nil #YAMLStringNode #SmaCCToken #OrderedCollection #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLListItemNode #YAMLValueNode #YAMLAliasNode #YAMLMappingListNode #YAMLMappingNode #OrderedCollection nil #YAMLMappingListNode #OrderedCollection #YAMLParseNode #YAMLComplexKeyNode #YAMLValueNode nil #YAMLStringNode #YAMLValueNode #YAMLStringNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #YAMLStringNode #SmaCCToken #OrderedCollection #SmaCCToken #OrderedCollection #Object #YAMLStringNode #YAMLStringNode nil #YAMLMappingNode #OrderedCollection #OrderedCollection #YAMLListNode #YAMLListItemNode #OrderedCollection #YAMLFlowListNode #OrderedCollection #OrderedCollection #YAMLParseNode nil nil #YAMLFlowMappingListNode #OrderedCollection #OrderedCollection #YAMLMappingNode #YAMLNumberNode #SmaCCToken #SmaCCToken #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection nil #OrderedCollection #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
YAMLParser class >> transitionTable [
^#(
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 0 69 0 35 0 73 0 36 0 77 0 37 0 77 0 38 0 85 0 39 0 77 0 40 0 93 0 41 0 97 0 42 0 77 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 0 77 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 0 121 0 75 0 161 0 81 0 165 0 86 0 169 0 87 0 145 0 91 0 177 0 92 0 177 0 93 0 185 0 94 0 189 0 96 0 193 0 101 0 197 0 102 0 14 0 105 0 14 0 106 0 201 0 108 0 7 0 109 0 14 0 111] 
#[0 0 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 46 0 17 0 46 0 18 0 15 0 19 0 19 0 21 0 23 0 22 0 27 0 23 0 31 0 31 0 42 0 32 0 35 0 33 0 221 0 36 0 225 0 47 0 229 0 48 0 233 0 52 0 237 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 225 0 81 0 165 0 86 0 225 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 29 0 102 1 33 0 103 1 37 0 108 0 39 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 1 61 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 0 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 0 62 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 70 0 12 0 75 0 20 0 66 0 23 1 85 0 36 0 75 0 105 0 75 0 106 0 66 0 108 0 79 0 109 0 75 0 111] 
#[1 0 78 0 11 0 82 0 12 0 78 0 14 0 78 0 20 0 78 0 104 0 78 0 105 0 78 0 106 0 83 0 109 0 78 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 1 89 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 0 86 0 11 0 90 0 12 0 86 0 14 0 86 0 20 0 86 0 104 0 86 0 105 0 86 0 106 0 87 0 109 0 86 0 111] 
#[0 0 0 0 111] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 101 0 36 1 105 0 37 1 105 0 38 1 109 0 39 1 105 0 40 0 93 0 41 0 97 0 42 1 105 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 1 105 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 1 117 0 75 0 161 0 81 0 165 0 86 0 169 0 87 0 145 0 91 1 121 0 92 1 121 0 93 1 125 0 96 0 193 0 101 1 129 0 102 0 14 0 105 0 14 0 106 1 133 0 108 0 91 0 109 0 14 0 111] 
#[1 0 14 0 20 1 141 0 96 0 14 0 105 0 14 0 106 0 14 0 109 0 14 0 111] 
#[0 0 94 0 20 0 105 0 106 0 109 0 111] 
#[1 0 46 0 17 0 46 0 18 1 145 0 66 1 1 0 71 1 149 0 72] 
#[0 0 98 0 20 0 105 0 106 0 109 0 111] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 1 165 0 2 1 165 0 3 1 165 0 4 1 165 0 5 1 165 0 6 1 165 0 7 0 106 0 20 1 153 0 23 1 157 0 36 1 161 0 41 1 165 0 92 1 165 0 93 0 106 0 104 0 106 0 105 0 106 0 106 1 169 0 108 0 95 0 109 0 106 0 111] 
#[0 0 110 0 20 0 105 0 106 0 109 0 111] 
#[0 0 114 0 8 0 20 0 104 0 105 0 106 0 109 0 111] 
#[1 0 33 0 8 0 118 0 20 1 173 0 36 1 177 0 44 1 177 0 46 0 118 0 104 0 118 0 105 0 118 0 106 0 99 0 109 0 118 0 111] 
#[0 0 122 0 8 0 20 0 104 0 105 0 106 0 109 0 111] 
#[0 0 126 0 11 0 12 0 16 0 109] 
#[0 0 130 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 134 0 20 0 105 0 106 0 109 0 111] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 138 0 20 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 1 193 0 36 0 133 0 48 1 197 0 50 0 133 0 55 0 137 0 56 1 197 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 193 0 101 1 209 0 102 0 138 0 104 0 138 0 105 0 138 0 106 0 103 0 109 0 138 0 111] 
#[1 1 213 0 12 1 217 0 36 1 217 0 109] 
#[1 0 107 0 11 0 107 0 12 0 142 0 13 0 142 0 14 0 142 0 15 0 107 0 16 0 142 0 19 0 142 0 20 0 142 0 21 0 142 0 22 0 142 0 23 0 142 0 31 0 142 0 32 0 142 0 33 0 142 0 104 0 142 0 105 0 142 0 106 0 107 0 109 0 142 0 111] 
#[0 0 150 0 20 0 105 0 106 0 109 0 111] 
#[0 0 154 0 20 0 105 0 106 0 109 0 111] 
#[0 0 158 0 20 0 105 0 106 0 109 0 111] 
#[0 0 162 0 20 0 105 0 106 0 109 0 111] 
#[0 0 166 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 170 0 12 0 174 0 20 0 174 0 105 0 174 0 106 0 111 0 109 0 174 0 111] 
#[1 1 221 0 13 1 225 0 15] 
#[1 0 178 0 12 0 182 0 20 0 182 0 105 0 182 0 106 0 115 0 109 0 182 0 111] 
#[0 0 186 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 190 0 2 0 190 0 3 0 190 0 4 0 190 0 5 0 190 0 6 0 190 0 7 0 119 0 20 0 190 0 23 1 229 0 36 0 119 0 105 0 119 0 106 0 190 0 108 0 123 0 109 0 119 0 111] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 1 233 0 36 1 233 0 109 0 202 0 111] 
#[1 1 237 0 20 1 241 0 36 1 245 0 95 1 249 0 99 1 253 0 100 0 206 0 105 0 206 0 106 0 127 0 109 0 210 0 111] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 2 1 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 2 5 0 36 2 9 0 37 2 9 0 38 2 13 0 39 2 9 0 40 0 93 0 41 0 97 0 42 2 9 0 43 0 105 0 44 0 109 0 45 0 105 0 46 2 17 0 48 0 121 0 50 2 9 0 53 0 129 0 54 2 17 0 55 2 21 0 56 2 25 0 59 2 29 0 60 2 33 0 61 2 37 0 73 0 121 0 75 0 161 0 81 2 41 0 86 0 169 0 87 2 29 0 91 0 177 0 92 0 177 0 93 2 45 0 96 2 49 0 101 1 129 0 102 0 14 0 105 0 14 0 106 0 201 0 108 0 7 0 109 0 14 0 111] 
#[1 1 165 0 2 1 165 0 3 1 165 0 4 1 165 0 5 1 165 0 6 1 165 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 53 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 57 0 36 2 61 0 40 0 93 0 41 0 97 0 42 2 65 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 2 69 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 1 165 0 92 1 165 0 93 0 193 0 101 1 209 0 102 1 169 0 108 2 57 0 109] 
#[0 0 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 0 74 0 8 0 74 0 11 0 74 0 12 0 74 0 13 0 74 0 14 0 74 0 15 0 74 0 16 0 74 0 19 0 74 0 20 0 74 0 21 0 74 0 22 0 74 0 23 0 74 0 31 0 74 0 32 0 74 0 33 1 85 0 36 0 74 0 104 0 74 0 105 0 74 0 106 0 131 0 109 0 74 0 111] 
#[0 0 78 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 86 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 46 0 17 0 46 0 18 2 73 0 66 1 1 0 71 2 77 0 72 2 81 0 108 2 85 0 109] 
#[0 0 222 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 226 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 2 93 0 46 0 133 0 48 2 97 0 49 0 133 0 55 0 137 0 56 2 101 0 75 2 105 0 78 0 133 0 81 0 165 0 86 0 133 0 87 0 193 0 101 1 209 0 102 2 89 0 109] 
#[0 0 230 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 234 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 238 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 242 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 246 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 2 109 0 17 2 113 0 18] 
#[0 0 250 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 254 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 2 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 6 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 194 0 8 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 23 0 194 0 31 0 194 0 32 0 194 0 33 1 229 0 36 0 194 0 104 0 194 0 105 0 194 0 106 0 135 0 109 0 194 0 111] 
#[1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 23 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 104 0 214 0 105 0 214 0 106 0 139 0 109 0 214 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 46 0 17 0 46 0 18 0 15 0 19 0 19 0 21 0 42 0 22 0 27 0 23 0 31 0 31 0 42 0 32 0 35 0 33 2 121 0 36 2 125 0 47 0 233 0 52 2 129 0 59 2 133 0 60 2 137 0 61 2 141 0 66 1 1 0 71 2 145 0 72 2 149 0 73 2 125 0 81 2 41 0 86 2 125 0 87 2 133 0 91 1 21 0 92 1 21 0 93 2 49 0 101 2 153 0 102 0 143 0 109] 
#[1 0 42 0 8 0 42 0 12 0 11 0 13 0 11 0 15 0 15 0 19 0 19 0 21 0 42 0 22 0 42 0 23 0 42 0 31 0 42 0 32 0 42 0 33 2 161 0 36 2 165 0 47 0 233 0 52 2 165 0 81 0 165 0 86 2 165 0 87 0 193 0 101 2 153 0 102 0 147 0 109] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 2 169 0 36 2 173 0 58 0 193 0 101 2 177 0 102 2 169 0 109] 
#[1 1 14 0 8 1 14 0 11 1 14 0 12 1 14 0 13 1 14 0 14 1 14 0 15 1 14 0 16 0 218 0 17 0 218 0 18 1 14 0 19 1 14 0 20 1 14 0 21 1 14 0 22 1 14 0 23 1 14 0 31 1 14 0 32 1 14 0 33 1 14 0 104 1 14 0 105 1 14 0 106 0 218 0 108 0 151 0 109 1 14 0 111] 
#[1 0 33 0 8 0 46 0 17 0 46 0 18 2 93 0 46 2 73 0 66 1 1 0 71 2 77 0 72 2 181 0 78 2 185 0 108 2 85 0 109] 
#[0 1 18 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 33 0 8 2 93 0 46 2 189 0 78] 
#[0 1 22 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 26 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 30 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 34 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 38 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 2 193 0 36 1 49 0 48 1 53 0 52 2 129 0 59 2 133 0 60 2 137 0 61 2 141 0 66 1 1 0 71 2 145 0 72 2 149 0 73 2 197 0 77 1 69 0 81 2 41 0 86 1 73 0 87 2 133 0 91 1 21 0 92 1 21 0 93 2 49 0 101 2 153 0 102 0 50 0 104 0 50 0 105 0 50 0 106 0 71 0 109 0 50 0 111] 
#[1 0 42 0 8 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 201 0 36 1 49 0 48 1 53 0 52 2 205 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 193 0 101 2 153 0 102 0 50 0 104 0 71 0 109] 
#[1 2 209 0 108 2 85 0 109] 
#[0 1 42 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 2 213 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 0 155 0 2 0 155 0 3 0 155 0 4 0 155 0 5 0 155 0 6 0 155 0 7 0 70 0 12 0 159 0 20 0 155 0 23 1 85 0 36 0 159 0 105 0 159 0 106 0 155 0 108 0 163 0 109 0 159 0 111] 
#[1 2 233 0 2 2 233 0 3 2 233 0 4 2 233 0 5 2 233 0 6 2 233 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 2 217 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 2 221 0 39 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 2 233 0 92 2 233 0 93 0 193 0 101 1 209 0 102 2 237 0 108 1 137 0 109] 
#[1 0 14 0 20 2 241 0 96 0 14 0 105 0 14 0 106 0 14 0 109 0 14 0 111] 
#[1 0 46 0 17 0 46 0 18 2 245 0 66 1 1 0 71 2 249 0 72] 
#[0 0 167 0 8 0 20 0 105 0 106 0 109 0 111] 
#[0 0 171 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 109 0 111] 
#[1 0 175 0 2 0 175 0 3 0 175 0 4 0 175 0 5 0 175 0 6 0 175 0 7 0 179 0 20 0 175 0 23 1 229 0 36 0 179 0 105 0 179 0 106 0 175 0 108 0 183 0 109 0 179 0 111] 
#[1 1 237 0 20 1 241 0 36 1 245 0 95 1 249 0 99 1 253 0 100 0 206 0 105 0 206 0 106 0 187 0 109 1 62 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 253 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 5 0 36 3 9 0 39 3 13 0 48 3 13 0 55 3 17 0 56 3 21 0 59 3 25 0 60 3 29 0 61 3 33 0 73 3 13 0 81 2 41 0 86 3 13 0 87 3 25 0 91 1 21 0 92 1 21 0 93 2 49 0 101 2 153 0 102 3 5 0 109] 
#[1 3 73 0 2 3 73 0 3 3 73 0 4 3 73 0 5 3 73 0 6 3 73 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 3 37 0 23 1 185 0 31 0 61 0 32 1 189 0 33 3 41 0 36 3 45 0 40 0 93 0 41 0 97 0 42 3 49 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 53 0 48 0 121 0 50 3 57 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 61 0 61 3 65 0 62 3 69 0 63 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 3 73 0 92 3 73 0 93 0 193 0 101 1 209 0 102 1 169 0 108 3 41 0 109] 
#[1 0 191 0 2 0 191 0 3 0 191 0 4 0 191 0 5 0 191 0 6 0 191 0 7 0 191 0 8 0 191 0 12 0 191 0 13 0 191 0 15 0 191 0 17 0 191 0 18 0 191 0 19 1 66 0 20 0 191 0 21 0 191 0 22 0 191 0 23 0 191 0 31 0 191 0 32 0 191 0 33 0 191 0 104 1 66 0 105 0 191 0 106 0 191 0 108 0 191 0 109 1 66 0 111] 
#[1 1 237 0 20 1 241 0 36 1 245 0 95 1 249 0 99 1 253 0 100 0 206 0 105 0 206 0 106 0 195 0 109 1 70 0 111] 
#[0 1 74 0 20 0 105 0 106 0 109 0 111] 
#[0 1 78 0 20 0 105 0 106 0 109 0 111] 
#[0 0 66 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 2 233 0 2 2 233 0 3 2 233 0 4 2 233 0 5 2 233 0 6 2 233 0 7 3 77 0 23 2 233 0 92 2 233 0 93 3 81 0 108 2 85 0 109] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 0 190 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 1 165 0 2 1 165 0 3 1 165 0 4 1 165 0 5 1 165 0 6 1 165 0 7 1 153 0 23 1 157 0 36 2 61 0 40 0 93 0 41 0 97 0 42 1 165 0 92 1 165 0 93 1 169 0 108 1 157 0 109] 
#[1 0 33 0 8 2 225 0 46 2 85 0 109] 
#[0 1 86 0 8 0 20 0 104 0 105 0 106 0 109 0 111] 
#[0 0 70 0 11 0 12 0 16 0 109] 
#[0 0 82 0 11 0 12 0 16 0 109] 
#[0 0 90 0 11 0 12 0 16 0 109] 
#[1 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 0 133 0 48 0 133 0 55 0 137 0 56 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 193 0 101 1 209 0 102 1 137 0 109] 
#[0 1 90 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 0 170 0 11 0 12 0 16 0 109] 
#[0 0 178 0 11 0 12 0 16 0 109] 
#[1 2 253 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 3 85 0 36 3 13 0 48 3 13 0 55 3 17 0 56 3 13 0 81 2 41 0 86 3 13 0 87 2 49 0 101 2 153 0 102 3 85 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 89 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 3 93 0 12 2 85 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 3 97 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 101 0 36 0 133 0 48 0 133 0 55 0 137 0 56 3 117 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 117 0 75 3 113 0 81 3 117 0 84 3 121 0 85 0 165 0 86 3 125 0 87 0 245 0 91 1 21 0 92 1 21 0 93 0 193 0 101 3 129 0 102 1 37 0 108 3 101 0 109] 
#[1 3 133 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 3 137 0 48 3 137 0 55 0 137 0 56 3 149 0 75 3 137 0 81 3 145 0 85 0 165 0 86 3 137 0 87 3 149 0 90 0 193 0 101 3 153 0 102 2 89 0 109] 
#[1 3 157 0 108 2 85 0 109] 
#[1 2 85 0 109 1 98 0 111] 
#[1 3 161 0 36 3 165 0 100 0 206 0 106 3 161 0 109] 
#[1 3 169 0 20 3 173 0 36 3 177 0 100 0 206 0 105 0 206 0 106 1 137 0 109] 
#[0 1 102 0 20 0 105 0 106 0 109 0 111] 
#[1 1 106 0 2 1 106 0 3 1 106 0 4 1 106 0 5 1 106 0 6 1 106 0 7 1 106 0 8 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 17 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 21 1 106 0 22 1 106 0 23 1 106 0 31 1 106 0 32 1 106 0 33 3 181 0 36 3 185 0 98 1 106 0 105 1 106 0 106 1 106 0 108 0 199 0 109 1 106 0 111] 
#[1 3 189 0 105 3 193 0 106] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 3 197 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 1 121 0 2 1 121 0 3 1 121 0 4 1 121 0 5 1 121 0 6 1 121 0 7 0 33 0 8 3 201 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 14 0 20 0 45 0 21 0 49 0 22 1 97 0 23 0 57 0 31 0 61 0 32 0 65 0 33 1 101 0 36 3 205 0 37 3 205 0 38 3 209 0 39 3 205 0 40 0 93 0 41 0 97 0 42 3 205 0 43 0 105 0 44 0 109 0 45 1 113 0 46 0 133 0 48 0 121 0 50 3 205 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 1 117 0 75 0 161 0 81 0 165 0 86 0 169 0 87 0 145 0 91 1 121 0 92 1 121 0 93 3 213 0 96 3 217 0 101 1 129 0 102 0 14 0 105 0 14 0 106 1 133 0 108 0 91 0 109 0 14 0 111] 
#[1 0 14 0 20 3 221 0 96 0 14 0 105 0 14 0 106 0 14 0 109 0 14 0 111] 
#[1 0 46 0 17 0 46 0 18 3 225 0 66 1 1 0 71 3 229 0 72] 
#[1 3 233 0 12 3 237 0 36 3 237 0 109] 
#[1 0 203 0 12 0 207 0 13 0 207 0 15 0 207 0 19 0 207 0 20 0 207 0 21 0 207 0 22 0 207 0 23 0 207 0 31 0 207 0 32 0 207 0 33 0 207 0 104 0 207 0 105 0 207 0 106 0 203 0 109 0 207 0 111] 
#[0 0 211 0 20 0 105 0 106 0 109 0 111] 
#[0 0 215 0 20 0 105 0 106 0 109 0 111] 
#[0 0 219 0 20 0 105 0 106 0 109 0 111] 
#[0 0 223 0 20 0 105 0 106 0 109 0 111] 
#[1 3 241 0 13 3 245 0 15] 
#[1 1 237 0 20 1 241 0 36 1 245 0 95 1 249 0 99 1 253 0 100 0 206 0 105 0 206 0 106 0 227 0 109 1 130 0 111] 
#[1 0 231 0 2 0 231 0 3 0 231 0 4 0 231 0 5 0 231 0 6 0 231 0 7 1 134 0 8 1 134 0 11 0 231 0 12 0 231 0 13 1 134 0 14 0 231 0 15 1 134 0 16 0 231 0 17 0 231 0 18 0 231 0 19 1 134 0 20 0 231 0 21 0 231 0 22 0 231 0 23 0 231 0 31 0 231 0 32 0 231 0 33 1 134 0 104 1 134 0 105 1 134 0 106 1 134 0 108 0 231 0 109 1 134 0 111] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 70 0 12 0 66 0 23 0 66 0 104 0 66 0 108 0 235 0 109] 
#[1 2 233 0 2 2 233 0 3 2 233 0 4 2 233 0 5 2 233 0 6 2 233 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 217 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 2 233 0 92 2 233 0 93 0 193 0 101 1 209 0 102 3 81 0 108 1 137 0 109] 
#[1 3 249 0 36 3 253 0 104 3 249 0 109] 
#[1 4 1 0 36 4 5 0 104 4 1 0 109] 
#[1 4 9 0 36 4 13 0 104 4 9 0 109] 
#[0 1 138 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 142 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 4 49 0 2 4 49 0 3 4 49 0 4 4 49 0 5 4 49 0 6 4 49 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 239 0 17 0 239 0 18 0 41 0 19 0 45 0 21 0 49 0 22 4 17 0 23 0 57 0 31 0 61 0 32 0 65 0 33 4 21 0 36 4 25 0 43 0 105 0 44 0 109 0 45 0 105 0 46 4 29 0 48 0 121 0 50 4 33 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 37 0 57 4 41 0 58 0 241 0 59 0 245 0 60 4 45 0 61 3 65 0 62 3 69 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 245 0 91 4 49 0 92 4 49 0 93 0 193 0 101 4 53 0 102 1 37 0 108 4 21 0 109] 
#[0 1 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 4 57 0 12 2 85 0 109] 
#[1 1 146 0 8 1 146 0 11 1 146 0 12 1 146 0 13 1 146 0 14 1 146 0 15 1 146 0 16 1 146 0 19 1 146 0 20 1 146 0 21 1 146 0 22 1 146 0 23 1 146 0 31 1 146 0 32 1 146 0 33 4 61 0 80 1 146 0 104 1 146 0 105 1 146 0 106 1 146 0 109 1 146 0 111] 
#[1 4 65 0 36 4 69 0 104 4 65 0 109] 
#[1 1 150 0 12 1 150 0 13 1 150 0 15 1 150 0 19 1 150 0 21 1 150 0 22 1 150 0 23 1 150 0 31 1 150 0 32 1 150 0 33 4 73 0 51 1 150 0 104 1 150 0 109] 
#[1 4 77 0 36 4 81 0 104 4 77 0 109] 
#[1 4 85 0 68 1 154 0 107 1 154 0 110] 
#[1 4 89 0 68 1 154 0 107 1 154 0 110] 
#[0 4 93 0 108] 
#[1 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 4 97 0 66 1 1 0 71 4 101 0 72 4 105 0 101 4 109 0 108 2 85 0 109] 
#[0 1 158 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 162 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 166 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 170 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 174 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 178 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 182 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 4 113 0 36 4 117 0 86 4 121 0 101 4 113 0 109] 
#[1 1 186 0 8 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 0 218 0 17 0 218 0 18 0 243 0 19 1 186 0 20 0 243 0 21 1 186 0 22 1 186 0 23 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 104 1 186 0 105 1 186 0 106 0 218 0 108 0 243 0 109 1 186 0 111] 
#[1 4 125 0 108 2 85 0 109] 
#[1 4 129 0 36 4 133 0 104 4 129 0 109] 
#[1 1 10 0 17 1 10 0 18 4 137 0 58 2 85 0 109] 
#[1 0 46 0 17 0 46 0 18 4 141 0 66 1 1 0 71 4 145 0 72] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 4 149 0 36 4 153 0 58 4 121 0 101 4 149 0 109] 
#[0 1 190 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 4 49 0 2 4 49 0 3 4 49 0 4 4 49 0 5 4 49 0 6 4 49 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 239 0 17 0 239 0 18 0 41 0 19 0 45 0 21 0 49 0 22 4 17 0 23 0 57 0 31 0 61 0 32 0 65 0 33 4 21 0 36 4 157 0 43 0 105 0 44 0 109 0 45 0 105 0 46 4 161 0 48 0 121 0 50 4 165 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 169 0 57 4 41 0 58 0 241 0 59 0 245 0 60 4 45 0 61 3 65 0 62 3 69 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 245 0 91 4 49 0 92 4 49 0 93 0 193 0 101 4 173 0 102 1 37 0 108 4 21 0 109] 
#[1 4 177 0 36 4 181 0 104 4 177 0 109] 
#[1 0 33 0 8 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 2 93 0 46 4 97 0 66 1 1 0 71 4 101 0 72 2 181 0 78 4 105 0 101 4 185 0 108 2 85 0 109] 
#[0 1 194 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 33 0 8 2 93 0 46 2 181 0 78 4 189 0 108 2 85 0 109] 
#[1 4 193 0 36 4 197 0 104 4 193 0 109] 
#[1 4 213 0 2 4 213 0 3 4 213 0 4 4 213 0 5 4 213 0 6 4 213 0 7 4 201 0 23 4 205 0 36 3 61 0 61 3 65 0 62 4 209 0 63 4 213 0 92 4 213 0 93 4 205 0 109] 
#[0 0 247 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 46 0 2 1 46 0 3 1 46 0 4 1 46 0 5 1 46 0 6 1 46 0 7 0 70 0 12 1 46 0 20 1 46 0 23 1 46 0 104 1 46 0 105 1 46 0 106 1 46 0 108 0 251 0 109 1 46 0 111] 
#[1 0 46 0 17 0 46 0 18 4 217 0 66 1 1 0 71 4 221 0 72] 
#[0 1 50 0 8 0 20 0 104 0 105 0 106 0 109 0 111] 
#[0 1 54 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 3 73 0 2 3 73 0 3 3 73 0 4 3 73 0 5 3 73 0 6 3 73 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 3 37 0 23 1 185 0 31 0 61 0 32 1 189 0 33 3 41 0 36 4 225 0 40 0 93 0 41 0 97 0 42 4 229 0 43 0 105 0 44 0 109 0 45 0 105 0 46 3 53 0 48 0 121 0 50 4 233 0 53 0 129 0 54 0 133 0 55 0 137 0 56 3 61 0 61 3 65 0 62 3 69 0 63 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 3 73 0 92 3 73 0 93 0 193 0 101 1 209 0 102 1 169 0 108 3 41 0 109] 
#[1 1 237 0 20 1 241 0 36 1 245 0 95 1 249 0 99 1 253 0 100 0 206 0 105 0 206 0 106 0 255 0 109 1 202 0 111] 
#[0 1 3 0 20 0 105 0 106 0 109 0 111] 
#[0 1 7 0 20 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 4 237 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 0 74 0 11 0 70 0 12 0 74 0 14 0 74 0 20 1 85 0 36 0 74 0 104 0 74 0 105 0 74 0 106 1 11 0 109 0 74 0 111] 
#[1 4 241 0 12 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 4 245 0 39 4 105 0 101 4 249 0 108 2 85 0 109] 
#[1 0 46 0 17 0 46 0 18 4 253 0 66 1 1 0 71 5 1 0 72] 
#[1 5 5 0 12 5 9 0 36 5 9 0 109] 
#[1 1 15 0 11 1 15 0 12 1 110 0 13 1 110 0 14 1 110 0 15 1 15 0 16 1 110 0 19 1 110 0 20 1 110 0 21 1 110 0 22 1 110 0 23 1 110 0 31 1 110 0 32 1 110 0 33 1 110 0 104 1 110 0 105 1 110 0 106 1 15 0 109 1 110 0 111] 
#[0 1 114 0 20 0 105 0 106 0 109 0 111] 
#[0 1 118 0 20 0 105 0 106 0 109 0 111] 
#[0 1 122 0 20 0 105 0 106 0 109 0 111] 
#[0 1 126 0 20 0 105 0 106 0 109 0 111] 
#[1 1 19 0 2 1 19 0 3 1 19 0 4 1 19 0 5 1 19 0 6 1 19 0 7 0 70 0 12 1 19 0 23 1 85 0 36 5 13 0 65 1 19 0 104 0 66 0 108 1 23 0 109] 
#[1 2 233 0 2 2 233 0 3 2 233 0 4 2 233 0 5 2 233 0 6 2 233 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 2 217 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 2 233 0 92 2 233 0 93 0 193 0 101 1 209 0 102 5 17 0 108 1 137 0 109] 
#[1 5 21 0 36 5 25 0 104 5 21 0 109] 
#[1 5 29 0 36 5 33 0 104 5 29 0 109] 
#[1 0 126 0 12 5 37 0 36 5 41 0 104 1 27 0 109] 
#[1 5 45 0 36 5 49 0 104 5 45 0 109] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 104 0 109] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 104 0 109] 
#[1 4 213 0 2 4 213 0 3 4 213 0 4 4 213 0 5 4 213 0 6 4 213 0 7 4 201 0 23 5 53 0 36 3 61 0 61 5 57 0 62 4 213 0 92 4 213 0 93 5 61 0 104 5 53 0 109] 
#[1 1 31 0 2 1 31 0 3 1 31 0 4 1 31 0 5 1 31 0 6 1 31 0 7 1 31 0 23 1 229 0 36 5 65 0 65 1 31 0 104 0 190 0 108 1 35 0 109] 
#[0 1 46 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 1 165 0 2 1 165 0 3 1 165 0 4 1 165 0 5 1 165 0 6 1 165 0 7 1 153 0 23 1 157 0 36 4 225 0 40 0 93 0 41 0 97 0 42 1 165 0 92 1 165 0 93 1 169 0 108 1 157 0 109] 
#[1 4 241 0 12 0 41 0 19 0 45 0 21 4 105 0 101 2 85 0 109] 
#[0 1 226 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 69 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 1 94 0 14 5 73 0 85] 
#[1 4 57 0 12 0 46 0 17 0 46 0 18 2 73 0 66 1 1 0 71 2 77 0 72 5 77 0 108 2 85 0 109] 
#[0 1 230 0 11 0 14] 
#[0 1 234 0 11 0 14] 
#[1 1 238 0 11 0 170 0 12 1 238 0 14 0 170 0 109] 
#[1 1 242 0 11 1 242 0 14 5 81 0 83] 
#[0 5 85 0 14] 
#[1 1 246 0 11 0 178 0 12 1 246 0 14 0 178 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 253 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 89 0 36 3 13 0 48 3 13 0 55 3 17 0 56 2 129 0 59 2 133 0 60 2 137 0 61 2 141 0 66 1 1 0 71 2 145 0 72 2 149 0 73 3 13 0 81 2 41 0 86 3 13 0 87 2 133 0 91 1 21 0 92 1 21 0 93 2 49 0 101 2 153 0 102 5 89 0 109] 
#[1 1 94 0 16 5 93 0 85] 
#[1 1 250 0 11 1 213 0 12 1 250 0 16 1 217 0 36 1 217 0 109] 
#[0 1 254 0 11 0 16] 
#[0 5 97 0 16] 
#[1 2 2 0 11 2 2 0 16 5 101 0 89] 
#[1 2 253 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 3 85 0 36 5 105 0 48 5 105 0 55 3 17 0 56 5 105 0 81 2 41 0 86 5 105 0 87 2 49 0 101 2 153 0 102 3 85 0 109] 
#[1 4 213 0 2 4 213 0 3 4 213 0 4 4 213 0 5 4 213 0 6 4 213 0 7 4 201 0 23 4 205 0 36 3 61 0 61 3 65 0 62 5 109 0 63 4 213 0 92 4 213 0 93 4 205 0 109] 
#[1 5 113 0 100 0 206 0 106 2 85 0 109] 
#[0 5 117 0 106] 
#[1 5 121 0 36 5 125 0 100 0 206 0 106 5 121 0 109] 
#[1 5 129 0 100 0 206 0 106 2 85 0 109] 
#[1 5 133 0 105 5 137 0 106] 
#[1 1 106 0 2 1 106 0 3 1 106 0 4 1 106 0 5 1 106 0 6 1 106 0 7 1 106 0 8 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 17 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 21 1 106 0 22 1 106 0 23 1 106 0 31 1 106 0 32 1 106 0 33 5 141 0 98 1 106 0 105 1 106 0 106 1 106 0 108 1 39 0 109 1 106 0 111] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 2 6 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 5 145 0 36 5 149 0 37 5 149 0 38 0 85 0 39 5 149 0 40 0 93 0 41 0 97 0 42 5 149 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 5 149 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 0 121 0 75 0 161 0 81 0 165 0 86 0 169 0 87 0 145 0 91 0 177 0 92 0 177 0 93 5 153 0 97 0 193 0 101 5 157 0 102 2 6 0 105 2 6 0 106 0 201 0 108 1 43 0 109 2 6 0 111] 
#[1 2 10 0 2 2 10 0 3 2 10 0 4 2 10 0 5 2 10 0 6 2 10 0 7 2 10 0 8 2 10 0 12 2 10 0 13 2 10 0 15 2 10 0 17 2 10 0 18 2 10 0 19 1 47 0 20 2 10 0 21 2 10 0 22 2 10 0 23 2 10 0 31 2 10 0 32 2 10 0 33 5 165 0 36 2 10 0 105 2 10 0 106 2 10 0 108 1 51 0 109 2 10 0 111] 
#[0 2 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 1 55 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 169 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 0 14 0 20 5 173 0 96 0 14 0 105 0 14 0 106 0 14 0 109 0 14 0 111] 
#[1 0 46 0 17 0 46 0 18 5 177 0 66 1 1 0 71 5 181 0 72] 
#[1 1 237 0 20 1 241 0 36 1 245 0 95 1 249 0 99 1 253 0 100 0 206 0 105 0 206 0 106 1 59 0 109 2 22 0 111] 
#[1 1 63 0 2 1 63 0 3 1 63 0 4 1 63 0 5 1 63 0 6 1 63 0 7 2 26 0 8 1 63 0 12 1 63 0 13 1 63 0 15 1 63 0 17 1 63 0 18 1 63 0 19 2 26 0 20 1 63 0 21 1 63 0 22 1 63 0 23 1 63 0 31 1 63 0 32 1 63 0 33 2 26 0 105 2 26 0 106 2 26 0 108 1 63 0 109 2 26 0 111] 
#[1 1 237 0 20 1 241 0 36 1 245 0 95 1 249 0 99 1 253 0 100 0 206 0 105 0 206 0 106 1 67 0 109 2 30 0 111] 
#[0 1 71 0 20 0 105 0 106 0 109 0 111] 
#[0 1 75 0 20 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 185 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 5 189 0 12 2 85 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 5 193 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 101 0 36 0 133 0 48 0 133 0 55 0 137 0 56 5 197 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 5 197 0 75 3 113 0 81 5 197 0 84 5 201 0 85 0 165 0 86 3 125 0 87 0 245 0 91 1 21 0 92 1 21 0 93 0 193 0 101 3 129 0 102 1 37 0 108 3 101 0 109] 
#[1 5 205 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 3 137 0 48 3 137 0 55 0 137 0 56 5 213 0 75 3 137 0 81 5 209 0 85 0 165 0 86 3 137 0 87 5 213 0 90 0 193 0 101 3 153 0 102 2 89 0 109] 
#[1 5 217 0 104 2 85 0 109] 
#[0 2 42 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 5 221 0 104 2 85 0 109] 
#[0 2 46 0 20 0 105 0 106 0 109 0 111] 
#[1 5 225 0 104 2 85 0 109] 
#[0 2 50 0 20 0 105 0 106 0 109 0 111] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 0 70 0 12 1 214 0 23 1 85 0 36 5 13 0 65 1 79 0 104 1 83 0 109] 
#[1 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 239 0 17 0 239 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 5 229 0 58 2 73 0 66 1 1 0 71 2 77 0 72 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 193 0 101 1 209 0 102 5 77 0 108 1 137 0 109] 
#[1 5 233 0 36 5 237 0 104 5 233 0 109] 
#[1 0 126 0 12 5 241 0 36 5 245 0 104 1 27 0 109] 
#[1 5 249 0 36 5 253 0 104 5 249 0 109] 
#[1 6 1 0 36 6 5 0 104 6 1 0 109] 
#[1 0 46 0 17 0 46 0 18 6 9 0 66 1 1 0 71 6 13 0 72] 
#[1 1 218 0 2 1 218 0 3 1 218 0 4 1 218 0 5 1 218 0 6 1 218 0 7 1 218 0 23 1 87 0 104 1 87 0 109] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 229 0 36 5 65 0 65 1 91 0 104 1 95 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 253 0 12 0 6 0 13 0 6 0 15 0 239 0 17 0 239 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 17 0 36 3 13 0 48 3 13 0 55 3 17 0 56 6 21 0 58 2 129 0 59 2 133 0 60 2 137 0 61 2 141 0 66 1 1 0 71 2 145 0 72 2 149 0 73 3 13 0 81 2 41 0 86 3 13 0 87 2 133 0 91 1 21 0 92 1 21 0 93 2 49 0 101 2 153 0 102 6 17 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 6 25 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 0 33 0 8 2 54 0 11 2 54 0 12 2 54 0 13 2 54 0 14 2 54 0 15 2 54 0 16 2 54 0 19 2 54 0 20 2 54 0 21 2 54 0 22 2 54 0 23 2 54 0 31 2 54 0 32 2 54 0 33 6 29 0 36 6 33 0 46 6 37 0 79 2 54 0 104 2 54 0 105 2 54 0 106 1 99 0 109 2 54 0 111] 
#[1 6 41 0 104 2 85 0 109] 
#[0 2 58 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 1 193 0 36 0 133 0 48 6 45 0 50 0 133 0 55 0 137 0 56 6 45 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 193 0 101 1 209 0 102 2 62 0 104 1 103 0 109] 
#[1 6 53 0 104 2 85 0 109] 
#[0 2 66 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 6 57 0 67 6 61 0 69 6 65 0 70 6 69 0 74 2 70 0 107 6 73 0 110] 
#[1 6 57 0 67 6 61 0 69 6 77 0 70 6 81 0 74 2 70 0 107 6 73 0 110] 
#[1 0 41 0 19 0 45 0 21 6 85 0 101] 
#[0 2 74 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 78 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 4 49 0 2 4 49 0 3 4 49 0 4 4 49 0 5 4 49 0 6 4 49 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 4 17 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 89 0 36 4 25 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 4 33 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 37 0 57 0 241 0 59 0 245 0 60 4 45 0 61 3 65 0 62 3 69 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 245 0 91 4 49 0 92 4 49 0 93 0 193 0 101 3 129 0 102 1 37 0 108 6 89 0 109] 
#[1 0 41 0 19 0 45 0 21 4 105 0 101 2 85 0 109] 
#[1 6 93 0 13 6 97 0 15] 
#[0 1 134 0 13 0 15 0 17 0 18 0 19 0 21 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 89 0 36 4 25 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 4 33 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 37 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 245 0 91 1 21 0 92 1 21 0 93 0 193 0 101 3 129 0 102 1 37 0 108 6 89 0 109] 
#[1 6 101 0 104 2 85 0 109] 
#[0 2 82 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 46 0 17 0 46 0 18 6 105 0 66 1 1 0 71 6 109 0 72] 
#[0 2 86 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 90 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 6 113 0 58 4 105 0 101 2 85 0 109] 
#[1 0 46 0 17 0 46 0 18 6 117 0 66 1 1 0 71 6 121 0 72] 
#[1 6 125 0 36 6 129 0 104 6 125 0 109] 
#[1 0 126 0 12 6 133 0 36 6 137 0 104 1 27 0 109] 
#[1 6 141 0 36 6 145 0 104 6 141 0 109] 
#[1 6 149 0 36 6 153 0 104 6 149 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 2 1 0 12 0 6 0 13 0 6 0 15 0 239 0 17 0 239 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 157 0 36 6 161 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 165 0 48 0 121 0 50 6 169 0 53 0 129 0 54 2 17 0 55 2 21 0 56 6 173 0 57 6 21 0 58 6 177 0 59 6 181 0 60 6 185 0 61 6 189 0 66 1 1 0 71 6 193 0 72 6 197 0 73 0 121 0 75 2 17 0 81 2 41 0 86 2 17 0 87 6 181 0 91 1 21 0 92 1 21 0 93 2 49 0 101 3 129 0 102 1 37 0 108 6 157 0 109] 
#[1 6 201 0 104 2 85 0 109] 
#[0 2 94 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 4 49 0 2 4 49 0 3 4 49 0 4 4 49 0 5 4 49 0 6 4 49 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 4 17 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 89 0 36 4 157 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 205 0 48 0 121 0 50 4 165 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 169 0 57 0 241 0 59 0 245 0 60 4 45 0 61 3 65 0 62 3 69 0 63 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 245 0 91 4 49 0 92 4 49 0 93 0 193 0 101 6 209 0 102 1 37 0 108 6 89 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 6 89 0 36 4 157 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 205 0 48 0 121 0 50 4 165 0 53 0 129 0 54 0 133 0 55 0 137 0 56 4 169 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 0 121 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 245 0 91 1 21 0 92 1 21 0 93 0 193 0 101 6 209 0 102 1 37 0 108 6 89 0 109] 
#[1 6 213 0 104 2 85 0 109] 
#[0 2 98 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 85 0 36 5 13 0 65 1 214 0 104 1 107 0 109] 
#[1 4 249 0 108 2 85 0 109] 
#[1 4 213 0 2 4 213 0 3 4 213 0 4 4 213 0 5 4 213 0 6 4 213 0 7 4 201 0 23 6 217 0 36 3 61 0 61 5 57 0 62 4 213 0 92 4 213 0 93 6 221 0 104 6 217 0 109] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 23 1 229 0 36 5 65 0 65 1 214 0 104 1 107 0 109] 
#[0 1 206 0 20 0 105 0 106 0 109 0 111] 
#[0 1 210 0 20 0 105 0 106 0 109 0 111] 
#[1 6 225 0 36 6 229 0 104 6 225 0 109] 
#[1 6 233 0 36 6 237 0 104 6 233 0 109] 
#[1 6 241 0 36 6 245 0 104 6 241 0 109] 
#[0 2 18 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 6 249 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 0 46 0 17 0 46 0 18 6 253 0 66 1 1 0 71 7 1 0 72] 
#[1 4 213 0 2 4 213 0 3 4 213 0 4 4 213 0 5 4 213 0 6 4 213 0 7 4 201 0 23 4 205 0 36 3 61 0 61 3 65 0 62 3 69 0 63 4 213 0 92 4 213 0 93 4 205 0 109] 
#[0 2 34 0 20 0 105 0 106 0 109 0 111] 
#[0 2 38 0 20 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 7 5 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 7 9 0 12 2 85 0 109] 
#[1 2 102 0 2 2 102 0 3 2 102 0 4 2 102 0 5 2 102 0 6 2 102 0 7 2 102 0 23 7 13 0 36 7 17 0 64 2 102 0 104 1 111 0 109] 
#[1 3 73 0 2 3 73 0 3 3 73 0 4 3 73 0 5 3 73 0 6 3 73 0 7 7 21 0 23 7 25 0 36 4 225 0 40 0 93 0 41 0 97 0 42 3 61 0 61 3 65 0 62 3 69 0 63 3 73 0 92 3 73 0 93 1 169 0 108 7 25 0 109] 
#[1 7 29 0 104 2 85 0 109] 
#[0 1 115 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 105 0 106 0 108 0 109 0 111] 
#[1 7 33 0 104 2 85 0 109] 
#[0 1 119 0 20 0 105 0 106 0 109 0 111] 
#[1 7 37 0 104 2 85 0 109] 
#[0 2 114 0 20 0 105 0 106 0 109 0 111] 
#[1 7 41 0 104 2 85 0 109] 
#[0 1 123 0 20 0 105 0 106 0 109 0 111] 
#[1 7 45 0 104 4 249 0 108 2 85 0 109] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 104 0 109] 
#[0 2 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 2 130 0 2 2 130 0 3 2 130 0 4 2 130 0 5 2 130 0 6 2 130 0 7 2 130 0 23 7 13 0 36 7 17 0 64 2 130 0 104 1 127 0 109] 
#[0 2 134 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 7 49 0 14] 
#[1 4 213 0 2 4 213 0 3 4 213 0 4 4 213 0 5 4 213 0 6 4 213 0 7 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 4 201 0 23 7 53 0 36 7 57 0 48 4 41 0 58 3 61 0 61 3 65 0 62 3 69 0 63 4 213 0 92 4 213 0 93 0 193 0 101 7 61 0 102 7 53 0 109] 
#[1 7 65 0 11 1 94 0 14 7 69 0 82 7 73 0 85] 
#[0 2 138 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 4 241 0 12 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 4 97 0 66 1 1 0 71 4 101 0 72 4 105 0 101 4 249 0 108 2 85 0 109] 
#[0 7 77 0 16] 
#[0 2 142 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 7 81 0 11 1 94 0 16 7 85 0 85 7 89 0 88] 
#[1 2 146 0 11 5 5 0 12 2 146 0 16 5 9 0 36 5 9 0 109] 
#[1 4 213 0 2 4 213 0 3 4 213 0 4 4 213 0 5 4 213 0 6 4 213 0 7 4 201 0 23 7 93 0 36 3 61 0 61 5 57 0 62 4 213 0 92 4 213 0 93 7 97 0 104 7 93 0 109] 
#[0 7 101 0 106] 
#[0 2 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[1 7 105 0 100 0 206 0 106 2 85 0 109] 
#[0 7 109 0 106] 
#[0 7 113 0 106] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 5 2 154 0 6 2 154 0 7 2 154 0 8 2 154 0 12 2 154 0 13 2 154 0 15 2 154 0 17 2 154 0 18 2 154 0 19 1 131 0 20 2 154 0 21 2 154 0 22 2 154 0 23 2 154 0 31 2 154 0 32 2 154 0 33 7 121 0 36 2 154 0 105 2 154 0 106 2 154 0 108 1 135 0 109 2 154 0 111] 
#[0 2 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[1 0 177 0 2 0 177 0 3 0 177 0 4 0 177 0 5 0 177 0 6 0 177 0 7 0 33 0 8 0 37 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 2 162 0 20 0 45 0 21 0 49 0 22 0 53 0 23 0 57 0 31 0 61 0 32 0 65 0 33 7 125 0 36 7 129 0 37 7 129 0 38 0 85 0 39 7 129 0 40 0 93 0 41 0 97 0 42 7 129 0 43 0 105 0 44 0 109 0 45 0 105 0 46 0 133 0 48 0 121 0 50 7 129 0 53 0 129 0 54 0 133 0 55 0 137 0 56 0 141 0 59 0 145 0 60 0 149 0 61 0 153 0 73 0 121 0 75 0 161 0 81 0 165 0 86 0 169 0 87 0 145 0 91 0 177 0 92 0 177 0 93 5 153 0 97 0 193 0 101 5 157 0 102 2 162 0 105 2 162 0 106 0 201 0 108 1 139 0 109 2 162 0 111] 
#[1 2 233 0 2 2 233 0 3 2 233 0 4 2 233 0 5 2 233 0 6 2 233 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 2 166 0 20 0 45 0 21 0 49 0 22 2 217 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 2 221 0 39 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 2 233 0 92 2 233 0 93 0 193 0 101 1 209 0 102 2 166 0 105 2 166 0 106 2 237 0 108 1 143 0 109 2 166 0 111] 
#[1 2 170 0 20 7 133 0 36 2 170 0 105 2 170 0 106 1 147 0 109 2 170 0 111] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 2 253 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 7 137 0 36 3 9 0 39 3 13 0 48 3 13 0 55 3 17 0 56 3 21 0 59 3 25 0 60 3 29 0 61 3 33 0 73 3 13 0 81 2 41 0 86 3 13 0 87 3 25 0 91 1 21 0 92 1 21 0 93 2 49 0 101 2 153 0 102 7 137 0 109] 
#[0 7 141 0 36 0 109] 
#[1 2 178 0 2 2 178 0 3 2 178 0 4 2 178 0 5 2 178 0 6 2 178 0 7 2 178 0 8 2 178 0 12 2 178 0 13 2 178 0 15 2 178 0 17 2 178 0 18 2 178 0 19 1 151 0 20 2 178 0 21 2 178 0 22 2 178 0 23 2 178 0 31 2 178 0 32 2 178 0 33 7 149 0 36 2 178 0 105 1 155 0 106 2 178 0 108 1 159 0 109 2 178 0 111] 
#[0 1 163 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 237 0 20 1 241 0 36 1 245 0 95 1 249 0 99 1 253 0 100 0 206 0 105 0 206 0 106 1 167 0 109 2 186 0 111] 
#[0 1 171 0 20 0 105 0 106 0 109 0 111] 
#[0 1 175 0 20 0 105 0 106 0 109 0 111] 
#[0 1 179 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 12 0 43 0 13 0 43 0 15 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 7 157 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 1 94 0 14 7 161 0 85] 
#[1 1 242 0 11 1 242 0 14 7 165 0 83] 
#[0 7 169 0 14] 
#[1 1 94 0 16 7 173 0 85] 
#[0 7 177 0 16] 
#[1 2 2 0 11 2 2 0 16 7 181 0 89] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 2 206 0 20 0 105 0 106 0 109 0 111] 
#[0 2 210 0 20 0 105 0 106 0 109 0 111] 
#[1 0 46 0 17 0 46 0 18 7 185 0 66 1 1 0 71 7 189 0 72] 
#[1 7 193 0 104 2 85 0 109] 
#[0 2 214 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 7 197 0 104 2 85 0 109] 
#[0 2 218 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 7 201 0 104 2 85 0 109] 
#[0 2 222 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 7 205 0 104 2 85 0 109] 
#[0 2 226 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 230 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 234 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 4 241 0 12 0 239 0 17 0 239 0 18 0 41 0 19 0 45 0 21 7 209 0 58 4 97 0 66 1 1 0 71 4 101 0 72 4 105 0 101 4 249 0 108 2 85 0 109] 
#[1 0 46 0 17 0 46 0 18 7 213 0 66 1 1 0 71 7 217 0 72] 
#[0 1 198 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 33 0 8 7 221 0 46 2 85 0 109] 
#[1 2 238 0 8 2 238 0 11 2 238 0 12 2 238 0 13 2 238 0 14 2 238 0 15 2 238 0 16 2 238 0 19 2 238 0 20 2 238 0 21 2 238 0 22 2 238 0 23 2 238 0 31 2 238 0 32 2 238 0 33 2 238 0 104 2 238 0 105 2 238 0 106 1 183 0 109 2 238 0 111] 
#[0 2 242 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 246 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 250 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 109] 
#[1 0 218 0 12 0 218 0 13 0 218 0 15 0 218 0 19 0 218 0 21 0 218 0 22 0 218 0 23 0 218 0 31 0 218 0 32 0 218 0 33 2 254 0 104 1 187 0 109] 
#[0 3 2 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 6 0 107 0 110] 
#[1 7 229 0 23 7 233 0 110] 
#[1 7 237 0 74 2 70 0 107 7 241 0 110] 
#[0 7 245 0 107] 
#[1 3 10 0 23 3 14 0 107 1 191 0 110] 
#[1 7 249 0 74 2 70 0 107 7 241 0 110] 
#[0 7 253 0 107] 
#[0 3 18 0 8 0 12 0 13 0 15 0 19 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 109] 
#[1 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 73 0 66 1 1 0 71 2 77 0 72 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 0 193 0 101 1 209 0 102 5 77 0 108 1 137 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 8 1 0 11 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 101 0 36 0 133 0 48 0 133 0 55 0 137 0 56 8 5 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 5 0 75 3 113 0 81 8 5 0 84 8 9 0 85 0 165 0 86 3 125 0 87 0 245 0 91 1 21 0 92 1 21 0 93 0 193 0 101 3 129 0 102 1 37 0 108 3 101 0 109] 
#[1 8 13 0 11 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 3 137 0 48 3 137 0 55 0 137 0 56 8 21 0 75 3 137 0 81 8 17 0 85 0 165 0 86 3 137 0 87 8 21 0 90 0 193 0 101 3 153 0 102 2 89 0 109] 
#[0 3 22 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 26 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 30 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 46 0 17 0 46 0 18 8 25 0 66 1 1 0 71 8 29 0 72] 
#[0 3 34 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 38 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 8 33 0 104 2 85 0 109] 
#[0 3 42 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 8 37 0 104 2 85 0 109] 
#[0 1 195 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 8 41 0 104 2 85 0 109] 
#[0 3 50 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 8 45 0 104 2 85 0 109] 
#[0 3 54 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 33 0 8 3 201 0 12 0 6 0 13 0 6 0 15 0 239 0 17 0 239 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 8 49 0 36 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 7 209 0 58 8 53 0 66 1 1 0 71 8 57 0 72 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 3 217 0 101 1 209 0 102 8 61 0 104 5 77 0 108 1 137 0 109] 
#[1 8 65 0 36 8 69 0 104 8 65 0 109] 
#[1 0 126 0 12 8 73 0 36 8 77 0 104 1 27 0 109] 
#[1 8 81 0 36 8 85 0 104 8 81 0 109] 
#[1 8 89 0 36 8 93 0 104 8 89 0 109] 
#[0 1 199 0 104 0 109] 
#[0 1 203 0 104 0 109] 
#[0 1 207 0 104 0 109] 
#[0 1 211 0 104 0 109] 
#[0 1 215 0 104 0 109] 
#[0 1 219 0 104 0 109] 
#[0 3 58 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 126 0 12 8 97 0 36 8 101 0 104 1 27 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 33 0 8 2 1 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 8 105 0 36 6 161 0 43 0 105 0 44 0 109 0 45 0 105 0 46 6 165 0 48 0 121 0 50 6 169 0 53 0 129 0 54 2 17 0 55 2 21 0 56 6 173 0 57 6 177 0 59 6 181 0 60 6 185 0 61 6 189 0 66 1 1 0 71 6 193 0 72 6 197 0 73 0 121 0 75 2 17 0 81 2 41 0 86 2 17 0 87 6 181 0 91 1 21 0 92 1 21 0 93 2 49 0 101 3 129 0 102 1 37 0 108 8 105 0 109] 
#[0 3 62 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 8 109 0 104 4 249 0 108 2 85 0 109] 
#[0 3 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 8 113 0 104 2 85 0 109] 
#[0 2 106 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[1 8 117 0 104 2 85 0 109] 
#[0 2 110 0 20 0 105 0 106 0 109 0 111] 
#[1 8 121 0 104 2 85 0 109] 
#[0 2 118 0 20 0 105 0 106 0 109 0 111] 
#[0 2 182 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 190 0 20 0 105 0 106 0 109 0 111] 
#[0 2 194 0 20 0 105 0 106 0 109 0 111] 
#[0 2 198 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 42 0 8 0 50 0 11 0 50 0 12 0 43 0 13 0 50 0 14 0 43 0 15 0 50 0 16 0 46 0 17 0 46 0 18 0 47 0 19 0 50 0 20 0 51 0 21 0 55 0 22 0 59 0 23 0 63 0 31 0 50 0 32 0 67 0 33 1 45 0 36 1 49 0 48 1 53 0 52 1 57 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 125 0 76 1 65 0 77 1 69 0 81 0 165 0 86 1 73 0 87 0 245 0 91 1 21 0 92 1 21 0 93 1 25 0 101 1 77 0 102 1 81 0 103 0 50 0 104 0 50 0 105 0 50 0 106 1 37 0 108 0 71 0 109 0 50 0 111] 
#[1 1 223 0 2 1 227 0 3 1 231 0 4 1 235 0 5 1 239 0 6 1 243 0 7 1 247 0 23 8 133 0 92 8 133 0 93 3 70 0 104 1 251 0 109] 
#[0 3 74 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 104 0 109] 
#[1 1 19 0 2 1 19 0 3 1 19 0 4 1 19 0 5 1 19 0 6 1 19 0 7 1 19 0 23 1 85 0 36 5 13 0 65 1 19 0 104 0 66 0 108 1 255 0 109] 
#[1 2 233 0 2 2 233 0 3 2 233 0 4 2 233 0 5 2 233 0 6 2 233 0 7 3 77 0 23 2 233 0 92 2 233 0 93 5 17 0 108 2 85 0 109] 
#[0 2 3 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 105 0 106 0 108 0 109 0 111] 
#[0 2 7 0 20 0 105 0 106 0 109 0 111] 
#[0 3 86 0 20 0 105 0 106 0 109 0 111] 
#[0 2 11 0 20 0 105 0 106 0 109 0 111] 
#[0 3 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 98 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 10 0 17 1 10 0 18 5 229 0 58 4 249 0 108 2 85 0 109] 
#[1 5 241 0 36 5 245 0 104 5 241 0 109] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 8 137 0 36 6 21 0 58 4 121 0 101 8 137 0 109] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 101 0 36 0 133 0 48 0 133 0 55 0 137 0 56 8 141 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 141 0 75 3 113 0 81 8 141 0 84 8 145 0 85 0 165 0 86 3 125 0 87 0 245 0 91 1 21 0 92 1 21 0 93 0 193 0 101 3 129 0 102 1 37 0 108 3 101 0 109] 
#[0 3 102 0 11 0 14] 
#[0 8 149 0 14] 
#[0 3 106 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 3 137 0 48 3 137 0 55 0 137 0 56 8 157 0 75 3 137 0 81 8 153 0 85 0 165 0 86 3 137 0 87 8 157 0 90 0 193 0 101 3 153 0 102 2 89 0 109] 
#[0 8 161 0 16] 
#[0 3 110 0 11 0 16] 
#[1 8 165 0 104 4 249 0 108 2 85 0 109] 
#[0 3 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 8 169 0 106] 
#[0 3 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 3 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 8 173 0 36 0 109] 
#[1 3 130 0 2 3 130 0 3 3 130 0 4 3 130 0 5 3 130 0 6 3 130 0 7 3 130 0 8 3 130 0 12 3 130 0 13 3 130 0 15 3 130 0 17 3 130 0 18 3 130 0 19 2 15 0 20 3 130 0 21 3 130 0 22 3 130 0 23 3 130 0 31 3 130 0 32 3 130 0 33 8 181 0 36 3 130 0 105 2 19 0 106 3 130 0 108 2 23 0 109 3 130 0 111] 
#[1 2 233 0 2 2 233 0 3 2 233 0 4 2 233 0 5 2 233 0 6 2 233 0 7 0 33 0 8 1 93 0 12 0 6 0 13 0 6 0 15 0 10 0 17 0 10 0 18 0 41 0 19 3 134 0 20 0 45 0 21 0 49 0 22 2 217 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 2 221 0 39 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 2 233 0 92 2 233 0 93 0 193 0 101 1 209 0 102 3 134 0 105 3 134 0 106 2 237 0 108 2 27 0 109 3 134 0 111] 
#[1 3 138 0 20 8 189 0 36 3 138 0 105 3 138 0 106 2 31 0 109 3 138 0 111] 
#[1 3 142 0 20 3 142 0 105 3 142 0 106 2 35 0 109 3 142 0 111] 
#[1 3 146 0 2 3 146 0 3 3 146 0 4 3 146 0 5 3 146 0 6 3 146 0 7 3 146 0 8 2 39 0 12 3 146 0 13 3 146 0 15 2 43 0 17 2 43 0 18 2 47 0 19 3 146 0 20 2 51 0 21 3 146 0 22 3 146 0 23 3 146 0 31 3 146 0 32 3 146 0 33 4 245 0 39 4 105 0 101 3 146 0 105 3 146 0 106 2 55 0 108 2 59 0 109 3 146 0 111] 
#[1 8 193 0 106 2 85 0 109] 
#[0 8 197 0 36 0 109] 
#[1 8 201 0 106 2 85 0 109] 
#[0 3 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 2 63 0 12 0 13 0 15 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 8 205 0 14] 
#[1 8 209 0 11 1 94 0 14 7 69 0 82 8 213 0 85] 
#[0 2 67 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 8 217 0 16] 
#[0 2 71 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 8 221 0 11 1 94 0 16 8 225 0 85 7 89 0 88] 
#[0 3 166 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 170 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 174 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 178 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 182 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 186 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 46 0 17 0 46 0 18 8 229 0 66 1 1 0 71 8 233 0 72] 
#[0 3 190 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 194 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 3 198 0 8 3 198 0 11 3 198 0 12 3 198 0 13 3 198 0 14 3 198 0 15 3 198 0 16 3 198 0 19 3 198 0 20 3 198 0 21 3 198 0 22 3 198 0 23 3 198 0 31 3 198 0 32 3 198 0 33 3 198 0 104 3 198 0 105 3 198 0 106 2 75 0 109 3 198 0 111] 
#[0 3 202 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 206 0 107 0 110] 
#[0 3 210 0 23 0 110] 
#[0 8 241 0 107] 
#[0 3 214 0 107 0 110] 
#[0 3 218 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 8 245 0 107] 
#[0 3 222 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 94 0 14 8 249 0 85] 
#[1 1 242 0 11 1 242 0 14 8 253 0 83] 
#[0 9 1 0 14] 
#[1 1 94 0 16 9 5 0 85] 
#[0 9 9 0 16] 
#[1 2 2 0 11 2 2 0 16 9 13 0 89] 
#[0 3 226 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 230 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 234 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 79 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 242 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 246 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 4 57 0 12 9 17 0 104 2 85 0 109] 
#[0 2 83 0 104 0 109] 
#[0 2 87 0 104 0 109] 
#[1 0 33 0 8 2 93 0 46 9 21 0 78] 
#[1 9 25 0 104 2 85 0 109] 
#[0 3 250 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 9 29 0 104 2 85 0 109] 
#[0 3 254 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 9 33 0 104 2 85 0 109] 
#[0 4 2 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 9 37 0 104 2 85 0 109] 
#[0 4 6 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 9 41 0 104 2 85 0 109] 
#[0 3 46 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 33 0 8 3 201 0 12 0 6 0 13 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 8 49 0 36 2 225 0 46 0 133 0 48 0 133 0 55 0 137 0 56 8 53 0 66 1 1 0 71 8 57 0 72 2 229 0 75 0 133 0 81 0 165 0 86 0 133 0 87 3 217 0 101 1 209 0 102 8 61 0 104 5 77 0 108 1 137 0 109] 
#[0 4 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 78 0 2 0 3 0 4 0 5 0 6 0 7 0 20 0 23 0 104 0 105 0 106 0 108 0 109 0 111] 
#[0 3 82 0 20 0 105 0 106 0 109 0 111] 
#[0 3 90 0 20 0 105 0 106 0 109 0 111] 
#[0 3 154 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 14 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 104 0 109] 
#[0 4 18 0 2 0 3 0 4 0 5 0 6 0 7 0 23 0 104 0 109] 
#[1 1 10 0 17 1 10 0 18 0 41 0 19 0 45 0 21 7 209 0 58 4 105 0 101 2 85 0 109] 
#[0 4 22 0 11 0 14] 
#[0 9 45 0 14] 
#[0 4 26 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 9 49 0 16] 
#[0 4 30 0 11 0 16] 
#[0 4 34 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[1 9 53 0 106 2 85 0 109] 
#[0 9 57 0 36 0 109] 
#[1 9 61 0 106 2 85 0 109] 
#[0 4 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[1 4 50 0 20 4 50 0 105 4 50 0 106 2 91 0 109 4 50 0 111] 
#[0 4 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[1 9 65 0 106 2 85 0 109] 
#[0 4 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 2 95 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 101 0 36 0 133 0 48 0 133 0 55 0 137 0 56 8 141 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 141 0 75 3 113 0 81 8 141 0 84 9 69 0 85 0 165 0 86 3 125 0 87 0 245 0 91 1 21 0 92 1 21 0 93 0 193 0 101 3 129 0 102 1 37 0 108 3 101 0 109] 
#[0 9 73 0 14] 
#[0 2 99 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 3 137 0 48 3 137 0 55 0 137 0 56 8 157 0 75 3 137 0 81 9 77 0 85 0 165 0 86 3 137 0 87 8 157 0 90 0 193 0 101 3 153 0 102 2 89 0 109] 
#[0 9 81 0 16] 
#[0 4 70 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 74 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 78 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 82 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 86 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 9 85 0 14] 
#[1 9 89 0 11 1 94 0 14 7 69 0 82 9 93 0 85] 
#[0 3 158 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 9 97 0 16] 
#[0 3 162 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 9 101 0 11 1 94 0 16 9 105 0 85 7 89 0 88] 
#[1 0 33 0 8 2 93 0 46 9 109 0 78] 
#[0 4 90 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 94 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 98 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 102 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 106 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 3 238 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 110 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 114 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[1 9 113 0 106 2 85 0 109] 
#[0 4 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 4 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 9 117 0 14] 
#[0 2 103 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 9 121 0 16] 
#[0 2 107 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 62 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 1 21 0 2 1 21 0 3 1 21 0 4 1 21 0 5 1 21 0 6 1 21 0 7 0 37 0 12 0 6 0 13 1 94 0 14 0 6 0 15 0 46 0 17 0 46 0 18 0 41 0 19 0 45 0 21 0 49 0 22 3 1 0 23 0 57 0 31 0 61 0 32 0 65 0 33 3 101 0 36 0 133 0 48 0 133 0 55 0 137 0 56 8 141 0 57 0 241 0 59 0 245 0 60 0 249 0 61 0 253 0 66 1 1 0 71 1 5 0 72 1 9 0 73 8 141 0 75 3 113 0 81 8 141 0 84 9 125 0 85 0 165 0 86 3 125 0 87 0 245 0 91 1 21 0 92 1 21 0 93 0 193 0 101 3 129 0 102 1 37 0 108 3 101 0 109] 
#[0 9 129 0 14] 
#[0 4 66 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[1 0 37 0 12 0 6 0 13 0 6 0 15 1 94 0 16 0 41 0 19 0 45 0 21 0 49 0 22 1 181 0 23 1 185 0 31 0 61 0 32 1 189 0 33 2 89 0 36 3 137 0 48 3 137 0 55 0 137 0 56 8 157 0 75 3 137 0 81 9 133 0 85 0 165 0 86 3 137 0 87 8 157 0 90 0 193 0 101 3 153 0 102 2 89 0 109] 
#[0 9 137 0 16] 
#[0 4 138 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 12 0 13 0 15 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 105 0 106 0 108 0 109 0 111] 
#[0 2 111 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 2 115 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 9 141 0 14] 
#[0 4 130 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 9 145 0 16] 
#[0 4 134 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 146 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111] 
#[0 4 150 0 8 0 11 0 12 0 13 0 14 0 15 0 16 0 19 0 20 0 21 0 22 0 23 0 31 0 32 0 33 0 104 0 105 0 106 0 109 0 111]
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
