Class {
	#name : 'CPPPreprocessorParser',
	#superclass : 'SmaCCGLRParser',
	#instVars : [
		'preprocessor'
	],
	#category : 'SmaCC_CPP_Parser-Preprocessor',
	#package : 'SmaCC_CPP_Parser',
	#tag : 'Preprocessor'
}

{ #category : 'generated' }
CPPPreprocessorParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 10] 
#[ 0 6 0 13] 
#[ 1 74 1 241] 
#[ 1 82 1 177] 
#[ 1 126 1 177] 
#[ 1 130 1 177] 
#[ 1 134 1 177] 
#[ 1 138 1 177] 
#[ 1 142 1 177] 
#[ 1 146 1 177] 
#[ 1 150 1 177] 
#[ 1 154 1 177]
	).
]

{ #category : 'generated-accessing' }
CPPPreprocessorParser class >> cacheId [
	^'2020-09-14T14:23:04.364561-05:00'
]

{ #category : 'generated' }
CPPPreprocessorParser class >> definitionComment [
"%glr;

%start File Macro;

%excludes filename define error macro;

%left <barBar>;
%left <ampAmp>;
%nonassoc <lt> <ltEq> <eqEq> <gt> <gtEq>;
%left <bang>;


error <errorText>
    : [^\r\n]+
    ;

macro <macro>
   : ([^\r\n] | \\(\r\n?|\n))+
   ;

filename <filename>
    : \"" [^\""]+ \""
    | \< [^\>]+ \>
    ;


default <bang>
   : \!
   ;
default <bangEq>
   : \!\=
   ;
default <percent>
   : \%
   ;
default <percentEq>
   : \%\=
   ;
default <amp>
   : \&
   ;
default <ampAmp>
   : \&\&
   ;
default <ampEq>
   : \&\=
   ;
default <lParen>
   : \(
   ;
default <rParen>
   : \)
   ;
default <star>
   : \*
   ;
default <starEq>
   : \*\=
   ;
default <plus>
   : \+
   ;
default <plusPlus>
   : \+\+
   ;
default <plusEq>
   : \+\=
   ;
default <comma>
   : \,
   ;
default <minus>
   : \-
   ;
default <minusMinus>
   : \-\-
   ;
default <minusEq>
   : \-\=
   ;
default <minusGt>
   : \-\>
   ;
default <dot>
   : \.
   ;
default <ellipses>
   : \.\.\.
   ;
default <slash>
   : \/
   ;
default <slashEq>
   : \/\=
   ;
default <colon>
   : \:
   ;
default <colonColon>
   : \:\:
   ;
default <semicolon>
   : \;
   ;
filename default <lt>
    : \<
    ;
default <ltLt>
   : \<\<
   ;
default <ltLtEq>
   : \<\<\=
   ;
filename default <ltEq>
    : \<\=
    ;
default <eq>
   : \=
   ;
default <eqEq>
   : \=\=
   ;
filename default <gt>
    : \>
    ;
filename default <gtEq>
    : \>\=
    ;
default <gtGt>
   : \>\>
   ;
default <gtGtEq>
   : \>\>\=
   ;
default <question>
   : \?
   ;
default <lBracket>
   : \[
   ;
default <rBracket>
   : \]
   ;
default <upArrow>
   : \^
   ;
default <upArrowEq>
   : \^\=
   ;
default <lBrace>
   : \{
   ;
default <bar>
   : \|
   ;
default <barEq>
   : \|\=
   ;
default <barBar>
   : \|\|
   ;
default <rBrace>
   : \}
   ;
default <tilde>
   : \~
   ;
default <hash>
   : \#
   ;
default <hashHash>
   : \#\#
   ;

default <define>
   : define
   ;
default <defined>
   : defined
   ;
default <elif>
   : elif
   ;
default <else>
   : else
   ;
default <endif>
   : endif
   ;
default <error>
   : error
   ;
default <if>
   : if
   ;
default <ifdef>
   : ifdef
   ;
default <ifndef>
   : ifndef
   ;
default <include>
   : include
   ;
default <include_next>
   : include_next
   ;
default <line>
   : line
   ;
default <pragma>
   : pragma
   ;
default <undef>
   : undef
   ;

filename <quote>
    : \""
    ;

define <FunctionMacroStart>
    : <Identifier> \(
    ;

default define <Identifier>
   : <Identifiernondigit> (<Identifiernondigit> | <DIGIT>)*
   ;
<Identifiernondigit>
   : <NONDIGIT>
   | <Universalcharactername>
   ;
<NONDIGIT>
   : [a-zA-Z_]
   ;
<DIGIT>
   : [0-9]
   ;
<Universalcharactername>
   : \\u <Hexquad>
   | \\U <Hexquad> <Hexquad>
   ;
<Hexquad>
   : <HEXADECIMALDIGIT> <HEXADECIMALDIGIT> <HEXADECIMALDIGIT> <HEXADECIMALDIGIT>
   ;
<HEXADECIMALDIGIT>
   : [0-9a-fA-F]
   ;

<Integerliteral>
   : <Decimalliteral> <Integersuffix>?
   | <Octalliteral> <Integersuffix>?
   | <Hexadecimalliteral> <Integersuffix>?
   | <Binaryliteral> <Integersuffix>?
   ;
<Decimalliteral>
   : <NONZERODIGIT> (\'? <DIGIT>)*
   ;
<NONZERODIGIT>
   : [1-9]
   ;
<Octalliteral>
   : 0 (\'? <OCTALDIGIT>)*
   ;
<OCTALDIGIT>
   : [0-7]
   ;
<Hexadecimalliteral>
   : (0x | 0X) <HEXADECIMALDIGIT> (\'? <HEXADECIMALDIGIT>)*
   ;
<Binaryliteral>
   : (0b | 0B) <BINARYDIGIT> (\'? <BINARYDIGIT>)*
   ;
<BINARYDIGIT>
   : [01]
   ;
<Integersuffix>
   : <Unsignedsuffix> <Longsuffix>?
   | <Unsignedsuffix> <Longlongsuffix>?
   | <Longsuffix> <Unsignedsuffix>?
   | <Longlongsuffix> <Unsignedsuffix>?
   ;
<Unsignedsuffix>
   : [uU]
   ;
<Longsuffix>
   : [lL]
   ;
<Longlongsuffix>
   : ll
   | LL
   ;

<Characterliteral>
   : \' <Cchar>+ \'
   | u \' <Cchar>+ \'
   | U \' <Cchar>+ \'
   | L \' <Cchar>+ \'
   ;
<Cchar>
   : [^\'\\\r\n]
   | <Escapesequence>
   | <Universalcharactername>
   ;
<Universalcharactername>
   : \\u <Hexquad>
   | \\U <Hexquad> <Hexquad>
   ;
<Escapesequence>
   : <Simpleescapesequence>
   | <Octalescapesequence>
   | <Hexadecimalescapesequence>
   ;
<Simpleescapesequence>
   : \\\'
   | \\\""
   | \\\?
   | \\\\
   | \\a
   | \\b
   | \\f
   | \\n
   | \\r
   | \\t
   | \\v
   | \\(\r\n?|\n)
   ;
<Octalescapesequence>
   : \\ <OCTALDIGIT>
   | \\ <OCTALDIGIT> <OCTALDIGIT>
   | \\ <OCTALDIGIT> <OCTALDIGIT> <OCTALDIGIT>
   ;
<Hexadecimalescapesequence>
   : \\x <HEXADECIMALDIGIT>+
   ;

<Floatingliteral>
   : <Fractionalconstant> <Exponentpart>? <Floatingsuffix>?
   | <Digitsequence> <Exponentpart> <Floatingsuffix>?
   ;
<Fractionalconstant>
   : <Digitsequence>? \. <Digitsequence>
   | <Digitsequence> \.
   ;
<Digitsequence>
   : <DIGIT> (\'? <DIGIT>)*
   ;
<Exponentpart>
   : e <SIGN>? <Digitsequence>
   | E <SIGN>? <Digitsequence>
   ;
<SIGN>
   : [\+\-]
   ;
<Floatingsuffix>
   : [flFL]
   ;
<Stringliteral>
   : <Encodingprefix>? \"" <Schar>* \""
   | <Encodingprefix>? R <Rawstring>
   ;
<Encodingprefix>
   : u8
   | u
   | U
   | L
   ;
<Schar>
   : [^\""\\\r\n]
   | <Escapesequence>
   | <Universalcharactername>
   ;

<Rawstring>
   : \"" [^\(\"")]* \( [^\)]* \) [^\(\"")]* \""
   ;

define default <comment>
   : \/\/ [^\r\n]*
   | (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
   ;
define default filename <whitespace>
   : [\ \t]+
   ;
define default macro <eol>
    : \r\n? | \n
    ;
define default <lineContinuation>
    : \\ <eol>
    ;

File
    : {preprocessor finish}
    | Lines {preprocessor finish}
    ;
Lines
    : Line
    | error
    | Lines <eol> Line
    ;
Line
    : Tokens
    | Directive
    ;

Directive
    : <hash>
    | DefineExpression
    | <hash> <undef> <Identifier> 'name' {preprocessor undefine: name value}
    | <hash> 'hash' SwitchToFilename <include> SwitchToDefault <filename> 'file' {preprocessor include: file hash: hash}
    | <hash> 'hash' SwitchToFilename <include_next> SwitchToDefault <filename> 'file' {preprocessor includeNext: file hash: hash}
    | IfDef Lines EndIf
    | <hash> <line> Tokens
    | <hash> SwitchToError <error> SwitchToDefault <errorText>?
    | <hash> <pragma> Tokens
    ;
IfDef
	: <hash> <if> Expression <eol> {preprocessor processIf: nodes}
	| <hash> <ifdef> <Identifier> <eol> {preprocessor processIfDef: nodes}
	| <hash> <ifndef> <Identifier> <eol> {preprocessor processIfNDef: nodes}
	;
EndIf
    : ElIfs Else <hash> <endif> {preprocessor processEndIf: nodes}
    ;
ElIfs
    : 
    | ElIfs ElseIfDef Lines
    ;
ElseIfDef
	: <hash> <elif> Expression <eol> {preprocessor processElseIf: nodes}
	;
Else
    :
    | HashElse Lines
    ;
HashElse
	: <hash> <else> <eol> {preprocessor processElse: nodes}
	;
Expression
    : <defined> <lParen> <Identifier> 'name' <rParen> {preprocessor isDefined: name value}
    | <defined> <Identifier> 'name' {preprocessor isDefined: name value}
    | <bang> Expression 'value' {(preprocessor isTrue: value) ifNotNil: [:b | b not]}
    | Expression 'a' <ampAmp> Expression 'b' {preprocessor if: a and: b}
    | Expression 'a' <barBar> Expression 'b' {preprocessor if: a or: b}
    | <Integerliteral> 'value' {preprocessor convertInteger: value value}
    | <Identifier> 'name' {preprocessor valueOf: name value}
    | <lParen> Expression 'value' <rParen> {value}
    | Expression 'a' <lt> Expression 'b' {preprocessor is: a lessThan: b}
    | Expression 'a' <ltEq> Expression 'b' {(preprocessor is: b lessThan: a) ifNotNil: [:b | b not]}
    | Expression 'a' <eqEq> Expression 'b' {preprocessor is: a equalTo: b}
    | Expression 'a' <bangEq> Expression 'b' {(preprocessor is: a equalTo: b) ifNotNil: [:b | b not]}
    | Expression 'a' <gt> Expression 'b' {preprocessor is: b lessThan: a}
    | Expression 'a' <gtEq> Expression 'b' {(preprocessor is: a lessThan: b) ifNotNil: [:b | b not]}
    | <Identifier> 'name' <lParen> Args 'args' <rParen> {preprocessor evaluate: name value with: args}
    ;
Args
    : {#()}
    | ArgList {'1'}
    ;
ArgList
    : Expression {OrderedCollection with: '1'}
    | ArgList 'list' <comma> Expression 'value' {list add: value; yourself}
    ;

DefineExpression
    : <hash> 'hash' SwitchToDefine <define> SwitchToMacro <Identifier> 'name' SwitchToDefault {preprocessor define: name as: nil hash: hash}
    | <hash> 'hash' SwitchToDefine <define> SwitchToMacro <Identifier> 'name' SwitchToDefault <macro> 'macro' {preprocessor define: name as: macro hash: hash}
    | <hash> 'hash' SwitchToDefine <define> SwitchToDefault <FunctionMacroStart> 'name' Parms 'parms' SwitchToMacro <rParen> 'rParen' SwitchToDefault {preprocessor defineFunction: name parameters: parms as: nil hash: hash right: rParen}
    | <hash> 'hash' SwitchToDefine <define> SwitchToDefault <FunctionMacroStart> 'name' Parms 'parms' SwitchToMacro <rParen> 'rParen' SwitchToDefault <macro> 'macro' {preprocessor defineFunction: name parameters: parms as: macro hash: hash right: rParen}
    ;
Parms
    : {OrderedCollection new}
    | <ellipses> {OrderedCollection with: '1'}
    | ParmList {'1'}
    | ParmList 'list' <comma> <ellipses> 'name' {list add: name; yourself}
    ;
ParmList
    : <Identifier> {OrderedCollection with: '1'}
    | ParmList 'list' <comma> <Identifier> 'name' {list add: name; yourself}
    ;
Macro
    : Values {preprocessor finish}
    ;
Values
    :
    | Values Value
    | error
    ;
Value
    : Token 'token' {preprocessor processToken: token first using: self. token first}
    | <hash> 'hash' <Identifier> 'name' {preprocessor stringify: name hash: hash. nil}
    | Value 'a' <hashHash> Token 'b' {preprocessor concatenate: a with: b first using: self. b first}
    | <eol> {nil}
    ;

Tokens
    :
    | Tokens Token 'token' {preprocessor processToken: token first using: self}
    ;
Token
    : <Identifier>
    | <Integerliteral>
    | <Characterliteral>
    | <Floatingliteral>
    | <Stringliteral>
    | <bang>
    | <bangEq>
    | <percent>
    | <percentEq>
    | <amp>
    | <ampAmp>
    | <ampEq>
    | <lParen>
    | <rParen>
    | <star>
    | <starEq>
    | <plus>
    | <plusPlus>
    | <plusEq>
    | <comma>
    | <minus>
    | <minusMinus>
    | <minusEq>
    | <minusGt>
#    | ""->*""
    | <dot>
#    | "".*""
    | <ellipses>
    | <slash>
    | <slashEq>
    | <colon>
    | <colonColon>
    | <semicolon>
    | <lt>
    | <ltLt>
    | <ltLtEq>
    | <ltEq>
    | <eq>
    | <eqEq>
    | <gt>
    | <gtEq>
    | <gtGt>
    | <gtGtEq>
    | <question>
    | <lBracket>
    | <rBracket>
    | <upArrow>
    | <upArrowEq>
    | <lBrace>
    | <bar>
    | <barEq>
    | <barBar>
    | <rBrace>
    | <tilde>
    ;


SwitchToFilename
    : [self scope: #filename. nil]
    ;
SwitchToDefine
    : [self scope: #define. nil]
    ;
SwitchToError
    : [self scope: #error. nil]
    ;
SwitchToMacro
    : [self scope: #macro. nil]
    ;
SwitchToDefault
    : [self scope: #default. nil]
    ;"
]

{ #category : 'processing' }
CPPPreprocessorParser class >> process: aString interval: anInterval using: aCPPPreprocessor isMacro: aBoolean [
	| parser stream |
	stream := ReadStream on: aString.
	stream setFrom: anInterval first to: anInterval last.
	parser := self on: stream.
	parser createDefaultErrorHandlers.
	parser preprocessor: aCPPPreprocessor.
	aBoolean
		ifTrue: [ parser setStartingState: self startingStateForMacro ].
	[ parser parse ]
		on: SmaCCParserError
		do: [ :ex | 
			ex isResumable
				ifTrue: [ ex resume ]
				ifFalse: [ ex signal ] ]
]

{ #category : 'processing' }
CPPPreprocessorParser class >> process: aString using: aCPPPreprocessor [
	self
		process: aString
		interval: (1 to: aString size)
		using: aCPPPreprocessor
		isMacro: false
]

{ #category : 'generated' }
CPPPreprocessorParser class >> reduceTable [
^#(
	#(97 0 #reduceFor: 9764865 false ) 
	#(78 0 #reduceActionForFile1: 5480449 false ) 
	#(95 0 #reduceFor: 9400321 false ) 
	#(81 1 #reduceFor: 5656577 false ) 
	#(100 0 #reduceActionForSwitchToDefine1: 10790913 true ) 
	#(101 0 #reduceActionForSwitchToError1: 10846209 true ) 
	#(99 0 #reduceActionForSwitchToFilename1: 10731521 true ) 
	#(78 1 #reduceActionForFile1: 5480450 false ) 
	#(79 1 #reduceFor: 5555201 false ) 
	#(80 1 #reduceFor: 5614594 false ) 
	#(81 1 #reduceFor: 5656578 false ) 
	#(80 1 #reduceFor: 5614593 false ) 
	#(79 1 #reduceFor: 5555202 false ) 
	#(94 1 #reduceActionForFile1: 9352193 false ) 
	#(95 1 #reduceFor: 9400323 false ) 
	#(84 0 #reduceFor: 6498305 false ) 
	#(98 1 #reduceFor: 9866246 false ) 
	#(98 1 #reduceFor: 9866247 false ) 
	#(98 1 #reduceFor: 9866248 false ) 
	#(98 1 #reduceFor: 9866249 false ) 
	#(98 1 #reduceFor: 9866250 false ) 
	#(98 1 #reduceFor: 9866251 false ) 
	#(98 1 #reduceFor: 9866252 false ) 
	#(98 1 #reduceFor: 9866253 false ) 
	#(98 1 #reduceFor: 9866254 false ) 
	#(98 1 #reduceFor: 9866255 false ) 
	#(98 1 #reduceFor: 9866256 false ) 
	#(98 1 #reduceFor: 9866257 false ) 
	#(98 1 #reduceFor: 9866258 false ) 
	#(98 1 #reduceFor: 9866259 false ) 
	#(98 1 #reduceFor: 9866260 false ) 
	#(98 1 #reduceFor: 9866261 false ) 
	#(98 1 #reduceFor: 9866262 false ) 
	#(98 1 #reduceFor: 9866263 false ) 
	#(98 1 #reduceFor: 9866264 false ) 
	#(98 1 #reduceFor: 9866265 false ) 
	#(98 1 #reduceFor: 9866266 false ) 
	#(98 1 #reduceFor: 9866267 false ) 
	#(98 1 #reduceFor: 9866268 false ) 
	#(98 1 #reduceFor: 9866269 false ) 
	#(98 1 #reduceFor: 9866270 false ) 
	#(98 1 #reduceFor: 9866271 false ) 
	#(98 1 #reduceFor: 9866272 false ) 
	#(98 1 #reduceFor: 9866273 false ) 
	#(98 1 #reduceFor: 9866274 false ) 
	#(98 1 #reduceFor: 9866275 false ) 
	#(98 1 #reduceFor: 9866276 false ) 
	#(98 1 #reduceFor: 9866277 false ) 
	#(98 1 #reduceFor: 9866278 false ) 
	#(98 1 #reduceFor: 9866279 false ) 
	#(98 1 #reduceFor: 9866280 false ) 
	#(98 1 #reduceFor: 9866281 false ) 
	#(98 1 #reduceFor: 9866282 false ) 
	#(98 1 #reduceFor: 9866283 false ) 
	#(98 1 #reduceFor: 9866284 false ) 
	#(98 1 #reduceFor: 9866285 false ) 
	#(98 1 #reduceFor: 9866286 false ) 
	#(98 1 #reduceFor: 9866287 false ) 
	#(98 1 #reduceFor: 9866288 false ) 
	#(98 1 #reduceFor: 9866289 false ) 
	#(98 1 #reduceFor: 9866290 false ) 
	#(98 1 #reduceFor: 9866291 false ) 
	#(98 1 #reduceFor: 9866292 false ) 
	#(98 1 #reduceFor: 9866241 false ) 
	#(98 1 #reduceFor: 9866242 false ) 
	#(98 1 #reduceFor: 9866243 false ) 
	#(98 1 #reduceFor: 9866244 false ) 
	#(98 1 #reduceFor: 9866245 false ) 
	#(97 2 #reduceActionForTokens2: 9764866 false ) 
	#(96 1 #nil 9451524 false ) 
	#(95 2 #reduceFor: 9400322 false ) 
	#(96 1 #reduceActionForValue1: 9451521 false ) 
	#(88 1 #reduceActionForExpression7: 6740999 false ) 
	#(88 1 #reduceActionForExpression6: 6740998 false ) 
	#(81 3 #reduceFor: 5656583 false ) 
	#(81 3 #reduceFor: 5656586 false ) 
	#(81 3 #reduceActionForDirective3: 5656579 false ) 
	#(103 0 #reduceActionForSwitchToDefault1: 10952705 true ) 
	#(102 0 #reduceActionForSwitchToMacro1: 10899457 true ) 
	#(79 3 #reduceFor: 5555203 false ) 
	#(81 3 #reduceFor: 5656582 false ) 
	#(86 0 #reduceFor: 6631425 false ) 
	#(96 2 #reduceActionForValue2: 9451522 false ) 
	#(88 2 #reduceActionForExpression3: 6740995 false ) 
	#(88 2 #reduceActionForExpression2: 6740994 false ) 
	#(89 0 #reduceActionForArgs1: 7998465 false ) 
	#(82 4 #reduceActionForIfDef1: 6193153 false ) 
	#(82 4 #reduceActionForIfDef2: 6193154 false ) 
	#(82 4 #reduceActionForIfDef3: 6193155 false ) 
	#(81 4 #reduceFor: 5656584 false ) 
	#(96 3 #reduceActionForValue3: 9451523 false ) 
	#(88 3 #liftSecondValue: 6741000 false ) 
	#(90 1 #reduceActionForArgList1: 8042497 false ) 
	#(89 1 #liftFirstValue: 7998466 false ) 
	#(88 3 #reduceActionForExpression12: 6741004 false ) 
	#(88 3 #reduceActionForExpression4: 6740996 false ) 
	#(88 3 #reduceActionForExpression9: 6741001 false ) 
	#(88 3 #reduceActionForExpression10: 6741002 false ) 
	#(88 3 #reduceActionForExpression11: 6741003 false ) 
	#(88 3 #reduceActionForExpression13: 6741005 false ) 
	#(88 3 #reduceActionForExpression14: 6741006 false ) 
	#(88 3 #reduceActionForExpression5: 6740997 false ) 
	#(81 5 #reduceActionForDirective4: 5656580 false ) 
	#(81 5 #reduceActionForDirective5: 5656581 false ) 
	#(92 0 #reduceActionForParms1: 9018369 false ) 
	#(81 5 #reduceFor: 5656585 false ) 
	#(84 3 #reduceFor: 6498306 false ) 
	#(86 2 #reduceFor: 6631426 false ) 
	#(88 4 #reduceActionForExpression1: 6740993 false ) 
	#(88 4 #reduceActionForExpression15: 6741007 false ) 
	#(91 6 #reduceActionForDefineExpression1: 8183809 false ) 
	#(92 1 #reduceActionForArgList1: 9018370 false ) 
	#(93 1 #reduceActionForArgList1: 9207809 false ) 
	#(92 1 #liftFirstValue: 9018371 false ) 
	#(87 3 #reduceActionForHashElse1: 6670337 false ) 
	#(83 4 #reduceActionForEndIf1: 6417409 false ) 
	#(90 3 #reduceActionForArgList2: 8042498 false ) 
	#(91 7 #reduceActionForDefineExpression2: 8183810 false ) 
	#(85 4 #reduceActionForElseIfDef1: 6546433 false ) 
	#(92 3 #reduceActionForArgList2: 9018372 false ) 
	#(93 3 #reduceActionForArgList2: 9207810 false ) 
	#(91 9 #reduceActionForDefineExpression3: 8183811 false ) 
	#(91 10 #reduceActionForDefineExpression4: 8183812 false )
	).
]

{ #category : 'generated-accessing' }
CPPPreprocessorParser class >> scannerClass [
	^CPPPreprocessorScanner
]

{ #category : 'generated' }
CPPPreprocessorParser class >> startingStateForFile [
	^ 1
]

{ #category : 'generated' }
CPPPreprocessorParser class >> startingStateForMacro [
	^ 2
]

{ #category : 'generated' }
CPPPreprocessorParser class >> symbolNames [
	^ #('<errorText>' '<macro>' '<filename>' '<bang>' '<bangEq>' '<percent>' '<percentEq>' '<amp>' '<ampAmp>' '<ampEq>' '<lParen>' '<rParen>' '<star>' '<starEq>' '<plus>' '<plusPlus>' '<plusEq>' '<comma>' '<minus>' '<minusMinus>' '<minusEq>' '<minusGt>' '<dot>' '<ellipses>' '<slash>' '<slashEq>' '<colon>' '<colonColon>' '<semicolon>' '<lt>' '<ltLt>' '<ltLtEq>' '<ltEq>' '<eq>' '<eqEq>' '<gt>' '<gtEq>' '<gtGt>' '<gtGtEq>' '<question>' '<lBracket>' '<rBracket>' '<upArrow>' '<upArrowEq>' '<lBrace>' '<bar>' '<barEq>' '<barBar>' '<rBrace>' '<tilde>' '<hash>' '<hashHash>' '<define>' '<defined>' '<elif>' '<else>' '<endif>' '<error>' '<if>' '<ifdef>' '<ifndef>' '<include>' '<include_next>' '<line>' '<pragma>' '<undef>' '<FunctionMacroStart>' '<Identifier>' '<Integerliteral>' '<Characterliteral>' '<Floatingliteral>' '<Stringliteral>' '<comment>' '<whitespace>' '<eol>' '<lineContinuation>' 'B e g i n' 'File' 'Lines' 'Line' 'Directive' 'IfDef' 'EndIf' 'ElIfs' 'ElseIfDef' 'Else' 'HashElse' 'Expression' 'Args' 'ArgList' 'DefineExpression' 'Parms' 'ParmList' 'Macro' 'Values' 'Value' 'Tokens' 'Token' 'SwitchToFilename' 'SwitchToDefine' 'SwitchToError' 'SwitchToMacro' 'SwitchToDefault' 'E O F' 'error')
]

{ #category : 'generated' }
CPPPreprocessorParser class >> transitionTable [
^#(
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 13 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 0 17 0 78 0 21 0 79 0 25 0 80 0 29 0 81 0 33 0 82 0 37 0 91 0 41 0 97 0 7 0 104 0 45 0 105] 
#[1 0 14 0 4 0 14 0 5 0 14 0 6 0 14 0 7 0 14 0 8 0 14 0 9 0 14 0 10 0 14 0 11 0 14 0 12 0 14 0 13 0 14 0 14 0 14 0 15 0 14 0 16 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 20 0 14 0 21 0 14 0 22 0 14 0 23 0 14 0 24 0 14 0 25 0 14 0 26 0 14 0 27 0 14 0 28 0 14 0 29 0 14 0 30 0 14 0 31 0 14 0 32 0 14 0 33 0 14 0 34 0 14 0 35 0 14 0 36 0 14 0 37 0 14 0 38 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 44 0 14 0 45 0 14 0 46 0 14 0 47 0 14 0 48 0 14 0 49 0 14 0 50 0 14 0 51 0 14 0 68 0 14 0 69 0 14 0 70 0 14 0 71 0 14 0 72 0 14 0 75 0 49 0 94 0 53 0 95 0 14 0 104 0 57 0 105] 
#[1 0 18 0 51 0 22 0 53 0 26 0 58 0 61 0 59 0 65 0 60 0 69 0 61 0 30 0 62 0 30 0 63 0 73 0 64 0 77 0 65 0 81 0 66 0 18 0 75 0 85 0 99 0 89 0 100 0 93 0 101 0 18 0 104] 
#[0 0 0 0 104] 
#[1 0 97 0 75 0 34 0 104] 
#[0 0 38 0 51 0 75 0 104] 
#[0 0 42 0 51 0 75 0 104] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 0 101 0 79 0 25 0 80 0 29 0 81 0 33 0 82 0 37 0 91 0 41 0 97 0 45 0 105] 
#[0 0 46 0 51 0 75 0 104] 
#[1 0 105 0 4 0 109 0 5 0 113 0 6 0 117 0 7 0 121 0 8 0 125 0 9 0 129 0 10 0 133 0 11 0 137 0 12 0 141 0 13 0 145 0 14 0 149 0 15 0 153 0 16 0 157 0 17 0 161 0 18 0 165 0 19 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 23 0 185 0 24 0 189 0 25 0 193 0 26 0 197 0 27 0 201 0 28 0 205 0 29 0 209 0 30 0 213 0 31 0 217 0 32 0 221 0 33 0 225 0 34 0 229 0 35 0 233 0 36 0 237 0 37 0 241 0 38 0 245 0 39 0 249 0 40 0 253 0 41 1 1 0 42 1 5 0 43 1 9 0 44 1 13 0 45 1 17 0 46 1 21 0 47 1 25 0 48 1 29 0 49 1 33 0 50 0 50 0 51 1 37 0 68 1 41 0 69 1 45 0 70 1 49 0 71 1 53 0 72 0 50 0 75 1 57 0 98 0 50 0 104] 
#[0 0 54 0 51 0 75 0 104] 
#[0 0 0 0 104] 
#[1 0 105 0 4 0 109 0 5 0 113 0 6 0 117 0 7 0 121 0 8 0 125 0 9 0 129 0 10 0 133 0 11 0 137 0 12 0 141 0 13 0 145 0 14 0 149 0 15 0 153 0 16 0 157 0 17 0 161 0 18 0 165 0 19 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 23 0 185 0 24 0 189 0 25 0 193 0 26 0 197 0 27 0 201 0 28 0 205 0 29 0 209 0 30 0 213 0 31 0 217 0 32 0 221 0 33 0 225 0 34 0 229 0 35 0 233 0 36 0 237 0 37 0 241 0 38 0 245 0 39 0 249 0 40 0 253 0 41 1 1 0 42 1 5 0 43 1 9 0 44 1 13 0 45 1 17 0 46 1 21 0 47 1 25 0 48 1 29 0 49 1 33 0 50 1 61 0 51 1 37 0 68 1 41 0 69 1 45 0 70 1 49 0 71 1 53 0 72 1 65 0 75 1 69 0 96 1 73 0 98 0 58 0 104] 
#[0 0 62 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 1 97 0 88] 
#[0 1 101 0 68] 
#[0 1 105 0 68] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 6 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 1 109 0 97 0 6 0 104] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 6 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 1 113 0 97 0 6 0 104] 
#[0 1 117 0 68] 
#[1 1 121 0 62 1 125 0 63] 
#[0 1 129 0 53] 
#[0 1 133 0 58] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 1 137 0 80 0 29 0 81 0 33 0 82 0 37 0 91 0 41 0 97 0 6 0 104] 
#[1 0 66 0 51 0 97 0 75 1 141 0 83 1 145 0 84] 
#[0 0 70 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 74 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 78 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 82 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 86 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 90 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 94 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 98 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 102 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 106 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 110 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 114 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 118 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 122 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 126 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 130 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 134 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 138 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 142 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 146 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 150 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 154 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 158 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 162 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 166 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 170 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 174 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 178 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 182 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 186 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 190 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 194 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 198 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 202 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 206 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 210 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 214 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 218 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 222 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 226 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 230 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 234 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 238 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 242 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 246 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 250 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 0 254 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 1 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 1 6 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 1 10 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 1 14 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 1 18 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 1 22 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 1 149 0 68] 
#[0 1 26 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[1 1 30 0 4 1 30 0 5 1 30 0 6 1 30 0 7 1 30 0 8 1 30 0 9 1 30 0 10 1 30 0 11 1 30 0 12 1 30 0 13 1 30 0 14 1 30 0 15 1 30 0 16 1 30 0 17 1 30 0 18 1 30 0 19 1 30 0 20 1 30 0 21 1 30 0 22 1 30 0 23 1 30 0 24 1 30 0 25 1 30 0 26 1 30 0 27 1 30 0 28 1 30 0 29 1 30 0 30 1 30 0 31 1 30 0 32 1 30 0 33 1 30 0 34 1 30 0 35 1 30 0 36 1 30 0 37 1 30 0 38 1 30 0 39 1 30 0 40 1 30 0 41 1 30 0 42 1 30 0 43 1 30 0 44 1 30 0 45 1 30 0 46 1 30 0 47 1 30 0 48 1 30 0 49 1 30 0 50 1 30 0 51 1 153 0 52 1 30 0 68 1 30 0 69 1 30 0 70 1 30 0 71 1 30 0 72 1 30 0 75 1 30 0 104] 
#[0 1 34 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 1 157 0 88] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 1 161 0 88] 
#[1 1 165 0 11 1 169 0 68] 
#[1 1 38 0 5 1 38 0 9 1 173 0 11 1 38 0 12 1 38 0 18 1 38 0 30 1 38 0 33 1 38 0 35 1 38 0 36 1 38 0 37 1 38 0 48 1 38 0 75] 
#[0 1 42 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 177 0 5 1 181 0 9 1 185 0 30 1 189 0 33 1 193 0 35 1 197 0 36 1 201 0 37 1 205 0 48 1 209 0 75] 
#[0 1 213 0 75] 
#[0 1 217 0 75] 
#[1 0 105 0 4 0 109 0 5 0 113 0 6 0 117 0 7 0 121 0 8 0 125 0 9 0 129 0 10 0 133 0 11 0 137 0 12 0 141 0 13 0 145 0 14 0 149 0 15 0 153 0 16 0 157 0 17 0 161 0 18 0 165 0 19 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 23 0 185 0 24 0 189 0 25 0 193 0 26 0 197 0 27 0 201 0 28 0 205 0 29 0 209 0 30 0 213 0 31 0 217 0 32 0 221 0 33 0 225 0 34 0 229 0 35 0 233 0 36 0 237 0 37 0 241 0 38 0 245 0 39 0 249 0 40 0 253 0 41 1 1 0 42 1 5 0 43 1 9 0 44 1 13 0 45 1 17 0 46 1 21 0 47 1 25 0 48 1 29 0 49 1 33 0 50 1 46 0 51 1 37 0 68 1 41 0 69 1 45 0 70 1 49 0 71 1 53 0 72 1 46 0 75 1 57 0 98 1 46 0 104] 
#[1 0 105 0 4 0 109 0 5 0 113 0 6 0 117 0 7 0 121 0 8 0 125 0 9 0 129 0 10 0 133 0 11 0 137 0 12 0 141 0 13 0 145 0 14 0 149 0 15 0 153 0 16 0 157 0 17 0 161 0 18 0 165 0 19 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 23 0 185 0 24 0 189 0 25 0 193 0 26 0 197 0 27 0 201 0 28 0 205 0 29 0 209 0 30 0 213 0 31 0 217 0 32 0 221 0 33 0 225 0 34 0 229 0 35 0 233 0 36 0 237 0 37 0 241 0 38 0 245 0 39 0 249 0 40 0 253 0 41 1 1 0 42 1 5 0 43 1 9 0 44 1 13 0 45 1 17 0 46 1 21 0 47 1 25 0 48 1 29 0 49 1 33 0 50 1 50 0 51 1 37 0 68 1 41 0 69 1 45 0 70 1 49 0 71 1 53 0 72 1 50 0 75 1 57 0 98 1 50 0 104] 
#[0 1 54 0 51 0 75 0 104] 
#[1 1 58 0 3 1 221 0 103] 
#[1 1 58 0 3 1 225 0 103] 
#[1 1 58 0 67 1 62 0 68 1 229 0 102 1 233 0 103] 
#[1 1 58 0 1 1 58 0 51 1 58 0 75 1 237 0 103 1 58 0 104] 
#[0 1 66 0 51 0 75 0 104] 
#[0 1 70 0 51 0 75 0 104] 
#[1 0 15 0 51 1 245 0 85 1 249 0 86 1 253 0 87] 
#[0 1 78 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[1 0 105 0 4 0 109 0 5 0 113 0 6 0 117 0 7 0 121 0 8 0 125 0 9 0 129 0 10 0 133 0 11 0 137 0 12 0 141 0 13 0 145 0 14 0 149 0 15 0 153 0 16 0 157 0 17 0 161 0 18 0 165 0 19 0 169 0 20 0 173 0 21 0 177 0 22 0 181 0 23 0 185 0 24 0 189 0 25 0 193 0 26 0 197 0 27 0 201 0 28 0 205 0 29 0 209 0 30 0 213 0 31 0 217 0 32 0 221 0 33 0 225 0 34 0 229 0 35 0 233 0 36 0 237 0 37 0 241 0 38 0 245 0 39 0 249 0 40 0 253 0 41 1 1 0 42 1 5 0 43 1 9 0 44 1 13 0 45 1 17 0 46 1 21 0 47 1 25 0 48 1 29 0 49 1 33 0 50 1 37 0 68 1 41 0 69 1 45 0 70 1 49 0 71 1 53 0 72 2 1 0 98] 
#[1 0 19 0 5 1 82 0 9 1 82 0 12 1 82 0 18 1 82 0 30 1 82 0 33 1 82 0 35 1 82 0 36 1 82 0 37 1 82 0 48 1 82 0 75] 
#[1 1 177 0 5 1 181 0 9 2 5 0 12 1 185 0 30 1 189 0 33 1 193 0 35 1 197 0 36 1 201 0 37 1 205 0 48] 
#[0 2 9 0 68] 
#[0 1 86 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 77 0 4 1 81 0 11 1 90 0 12 1 85 0 54 1 89 0 68 1 93 0 69 2 13 0 88 2 17 0 89 2 21 0 90] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 25 0 88] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 29 0 88] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 33 0 88] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 37 0 88] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 41 0 88] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 45 0 88] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 49 0 88] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 53 0 88] 
#[0 1 94 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 105] 
#[0 1 98 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 105] 
#[0 1 102 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 105] 
#[0 2 57 0 3] 
#[0 2 61 0 3] 
#[0 2 65 0 68] 
#[0 2 69 0 67] 
#[1 2 73 0 1 1 106 0 51 1 106 0 75 1 106 0 104] 
#[1 2 77 0 55 2 81 0 56] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 85 0 79 0 25 0 80 0 29 0 81 0 33 0 82 0 37 0 91 0 41 0 97 0 45 0 105] 
#[0 2 89 0 51] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 93 0 79 0 25 0 80 0 29 0 81 0 33 0 82 0 37 0 91 0 41 0 97 0 45 0 105] 
#[0 1 110 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 104] 
#[0 1 114 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[0 2 97 0 12] 
#[1 1 177 0 5 1 181 0 9 1 118 0 12 1 118 0 18 1 185 0 30 1 189 0 33 1 193 0 35 1 197 0 36 1 201 0 37 1 205 0 48] 
#[0 2 101 0 12] 
#[1 1 122 0 12 2 105 0 18] 
#[1 0 23 0 5 1 181 0 9 1 126 0 12 1 126 0 18 1 185 0 30 1 189 0 33 1 193 0 35 1 197 0 36 1 201 0 37 1 205 0 48 1 126 0 75] 
#[1 0 27 0 5 1 130 0 9 1 130 0 12 1 130 0 18 1 185 0 30 1 189 0 33 1 193 0 35 1 197 0 36 1 201 0 37 1 130 0 48 1 130 0 75] 
#[1 0 31 0 5 1 134 0 9 1 134 0 12 1 134 0 18 1 134 0 48 1 134 0 75] 
#[1 0 35 0 5 1 138 0 9 1 138 0 12 1 138 0 18 1 138 0 48 1 138 0 75] 
#[1 0 39 0 5 1 142 0 9 1 142 0 12 1 142 0 18 1 142 0 48 1 142 0 75] 
#[1 0 43 0 5 1 146 0 9 1 146 0 12 1 146 0 18 1 146 0 48 1 146 0 75] 
#[1 0 47 0 5 1 150 0 9 1 150 0 12 1 150 0 18 1 150 0 48 1 150 0 75] 
#[1 0 51 0 5 1 181 0 9 1 154 0 12 1 154 0 18 1 185 0 30 1 189 0 33 1 193 0 35 1 197 0 36 1 201 0 37 1 154 0 48 1 154 0 75] 
#[0 1 158 0 51 0 75 0 104] 
#[0 1 162 0 51 0 75 0 104] 
#[1 1 58 0 2 1 58 0 51 1 58 0 75 2 109 0 103 1 58 0 104] 
#[1 1 166 0 12 2 113 0 24 2 117 0 68 2 121 0 92 2 125 0 93] 
#[0 1 170 0 51 0 75 0 104] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 129 0 88] 
#[0 2 133 0 75] 
#[1 1 174 0 51 0 97 0 75] 
#[0 2 137 0 57] 
#[1 1 178 0 51 0 97 0 75] 
#[0 1 182 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[0 1 186 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 77 0 4 1 81 0 11 1 85 0 54 1 89 0 68 1 93 0 69 2 141 0 88] 
#[1 2 145 0 2 1 190 0 51 1 190 0 75 1 190 0 104] 
#[0 1 194 0 12] 
#[0 1 198 0 12 0 18] 
#[1 1 62 0 12 2 149 0 102] 
#[1 1 202 0 12 2 153 0 18] 
#[1 1 177 0 5 1 181 0 9 1 185 0 30 1 189 0 33 1 193 0 35 1 197 0 36 1 201 0 37 1 205 0 48 2 157 0 75] 
#[0 1 206 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 105] 
#[0 1 210 0 51 0 75 0 104] 
#[1 1 177 0 5 1 181 0 9 1 214 0 12 1 214 0 18 1 185 0 30 1 189 0 33 1 193 0 35 1 197 0 36 1 201 0 37 1 205 0 48] 
#[0 1 218 0 51 0 75 0 104] 
#[0 2 161 0 12] 
#[1 2 165 0 24 2 169 0 68] 
#[0 1 222 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 105] 
#[1 1 58 0 2 1 58 0 51 1 58 0 75 2 173 0 103 1 58 0 104] 
#[0 1 226 0 12] 
#[0 1 230 0 12 0 18] 
#[1 2 177 0 2 1 234 0 51 1 234 0 75 1 234 0 104] 
#[0 1 238 0 51 0 75 0 104]
	).
]

{ #category : 'accessing' }
CPPPreprocessorParser >> preprocessor: aCPPPreprocessor [
	preprocessor := aCPPPreprocessor
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForArgList1: nodes [
	^ OrderedCollection with: (nodes at: 1)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForArgList2: nodes [
	^ (nodes at: 1)
		add: (nodes at: 3);
		yourself
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForArgs1: nodes [
	^ #()
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDefineExpression1: nodes [
	^ preprocessor define: (nodes at: 5) as: nil hash: (nodes at: 1)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDefineExpression2: nodes [
	^ preprocessor
		define: (nodes at: 5)
		as: (nodes at: 7)
		hash: (nodes at: 1)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDefineExpression3: nodes [
	^ preprocessor
		defineFunction: (nodes at: 5)
		parameters: (nodes at: 6)
		as: nil
		hash: (nodes at: 1)
		right: (nodes at: 8)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDefineExpression4: nodes [
	^ preprocessor
		defineFunction: (nodes at: 5)
		parameters: (nodes at: 6)
		as: (nodes at: 10)
		hash: (nodes at: 1)
		right: (nodes at: 8)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDirective3: nodes [
	^ preprocessor undefine: (nodes at: 3) value
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDirective4: nodes [
	^ preprocessor include: (nodes at: 5) hash: (nodes at: 1)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDirective5: nodes [
	^ preprocessor includeNext: (nodes at: 5) hash: (nodes at: 1)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForElseIfDef1: nodes [
	^ preprocessor processElseIf: nodes
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForEndIf1: nodes [
	^ preprocessor processEndIf: nodes
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression10: nodes [
	^ (preprocessor is: (nodes at: 3) lessThan: (nodes at: 1))
		ifNotNil: [ :b | (nodes at: 3) not ]
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression11: nodes [
	^ preprocessor is: (nodes at: 1) equalTo: (nodes at: 3)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression12: nodes [
	^ (preprocessor is: (nodes at: 1) equalTo: (nodes at: 3))
		ifNotNil: [ :b | (nodes at: 3) not ]
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression13: nodes [
	^ preprocessor is: (nodes at: 3) lessThan: (nodes at: 1)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression14: nodes [
	^ (preprocessor is: (nodes at: 1) lessThan: (nodes at: 3))
		ifNotNil: [ :b | (nodes at: 3) not ]
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression15: nodes [
	^ preprocessor evaluate: (nodes at: 1) value with: (nodes at: 3)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression1: nodes [
	^ preprocessor isDefined: (nodes at: 3) value
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression2: nodes [
	^ preprocessor isDefined: (nodes at: 2) value
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression3: nodes [
	^ (preprocessor isTrue: (nodes at: 2)) ifNotNil: [ :b | b not ]
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression4: nodes [
	^ preprocessor if: (nodes at: 1) and: (nodes at: 3)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression5: nodes [
	^ preprocessor if: (nodes at: 1) or: (nodes at: 3)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression6: nodes [
	^ preprocessor convertInteger: (nodes at: 1) value
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression7: nodes [
	^ preprocessor valueOf: (nodes at: 1) value
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression9: nodes [
	^ preprocessor is: (nodes at: 1) lessThan: (nodes at: 3)
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForFile1: nodes [
	^ preprocessor finish
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForHashElse1: nodes [
	^ preprocessor processElse: nodes
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForIfDef1: nodes [
	^ preprocessor processIf: nodes
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForIfDef2: nodes [
	^ preprocessor processIfDef: nodes
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForIfDef3: nodes [
	^ preprocessor processIfNDef: nodes
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForParms1: nodes [
	^ OrderedCollection new
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToDefault1: nodes [
	self scope: #default.
	^ nil
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToDefine1: nodes [
	self scope: #define.
	^ nil
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToError1: nodes [
	self scope: #error.
	^ nil
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToFilename1: nodes [
	self scope: #filename.
	^ nil
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToMacro1: nodes [
	self scope: #macro.
	^ nil
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForTokens2: nodes [
	^ preprocessor processToken: (nodes at: 2) first using: self
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForValue1: nodes [
	preprocessor processToken: (nodes at: 1) first using: self.
	^ (nodes at: 1) first
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForValue2: nodes [
	preprocessor stringify: (nodes at: 2) hash: (nodes at: 1).
	^ nil
]

{ #category : 'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForValue3: nodes [
	preprocessor
		concatenate: (nodes at: 1)
		with: (nodes at: 3) first
		using: self.
	^ (nodes at: 3) first
]

{ #category : 'testing' }
CPPPreprocessorParser >> tryAllTokens [
	^ true
]
