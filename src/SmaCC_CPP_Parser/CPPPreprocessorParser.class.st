Class {
	#name : #CPPPreprocessorParser,
	#superclass : #SmaCCGLRParser,
	#instVars : [
		'preprocessor'
	],
	#category : #'SmaCC_CPP_Parser-Preprocessor'
}

{ #category : #generated }
CPPPreprocessorParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 10] 
#[ 0 6 0 13] 
#[ 0 98 1 161] 
#[ 0 130 1 161] 
#[ 0 134 1 161] 
#[ 0 138 1 161] 
#[ 0 142 1 161] 
#[ 0 146 1 161] 
#[ 0 150 1 161] 
#[ 0 154 1 161] 
#[ 0 158 1 161] 
#[ 0 194 2 113]
	).
]

{ #category : #'generated-accessing' }
CPPPreprocessorParser class >> cacheId [
	^'2019-04-12T13:08:54.837808-05:00'
]

{ #category : #generated }
CPPPreprocessorParser class >> definitionComment [
"%glr;

%start File Macro;

%excludes filename define error macro;

%left <bang>;
%nonassoc <lt> <ltEq> <eqEq> <gt> <gtEq>;
%left <ampAmp>;
%left <barBar>;


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
    | error {preprocessor finish}
    ;
Lines
    : Line
    | Lines <eol> Line
    | error <eol> Line
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
    | <hash> <if> Expression <eol> Lines EndIf
    | <hash> <ifdef> <Identifier> <eol> Lines EndIf
    | <hash> <ifndef> <Identifier> <eol> Lines EndIf
    | <hash> <line> Tokens
    | <hash> SwitchToError <error> SwitchToDefault <errorText>?
    | <hash> <pragma> Tokens
    ;
EndIf
    : ElIfs Else <hash> <endif>
    ;
ElIfs
    : 
    | ElIfs <hash> <elif> Expression <eol> Lines
    ;
Else
    :
    | <hash> <else> <eol> Lines
    ;
Expression
    : <defined> <lParen> <Identifier> 'name' <rParen> {preprocessor isDefined: name value}
    | <defined> <Identifier> 'name' {preprocessor isDefined: name value}
    | <bang> Expression 'value' {(preprocessor isTrue: value) not}
    | Expression 'a' <ampAmp> Expression 'b' {(preprocessor isTrue: a) and: [preprocessor isTrue: b]}
    | Expression 'a' <barBar> Expression 'b' {(preprocessor isTrue: a) or: [preprocessor isTrue: b]}
    | <Integerliteral> 'value' {preprocessor convertInteger: value value}
    | <Identifier> 'name' {preprocessor valueOf: name value}
    | <lParen> Expression 'value' <rParen> {value}
    | Expression 'a' <lt> Expression 'b' {preprocessor is: a lessThan: b}
    | Expression 'a' <ltEq> Expression 'b' {(preprocessor is: b lessThan: a) not}
    | Expression 'a' <eqEq> Expression 'b' {preprocessor is: a equalTo: b}
    | Expression 'a' <bangEq> Expression 'b' {(preprocessor is: a equalTo: b) not}
    | Expression 'a' <gt> Expression 'b' {preprocessor is: b lessThan: a}
    | Expression 'a' <gtEq> Expression 'b' {(preprocessor is: a lessThan: b) not}
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
    ;
Value
    : Token 'token' {preprocessor processToken: token first using: self. token first}
    | <hash> 'hash' <Identifier> 'name' {preprocessor stringify: name hash: hash. nil}
    | Value 'a' <hashHash> Token 'b' {preprocessor concatenate: a with: b first using: aParser}
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
    : {self scope: #filename. nil}
    ;
SwitchToDefine
    : {self scope: #define. nil}
    ;
SwitchToError
    : {self scope: #error. nil}
    ;
SwitchToMacro
    : {self scope: #macro. nil}
    ;
SwitchToDefault
    : {self scope: #default. nil}
    ;"
]

{ #category : #processing }
CPPPreprocessorParser class >> process: aString interval: anInterval using: aCPPPreprocessor isMacro: aBoolean [
	| parser stream |
	stream := ReadStream on: aString.
	stream setFrom: anInterval first to: anInterval last.
	parser := self on: stream.
	parser createDefaultErrorHandlers.
	parser preprocessor: aCPPPreprocessor.
	aBoolean
		ifTrue: [ parser setStartingState: self startingStateForMacro ].
	parser parse
]

{ #category : #processing }
CPPPreprocessorParser class >> process: aString using: aCPPPreprocessor [
	self
		process: aString
		interval: (1 to: aString size)
		using: aCPPPreprocessor
		isMacro: false
]

{ #category : #generated }
CPPPreprocessorParser class >> reduceTable [
^#(
	#(94 0 #reduceFor:) 
	#(78 0 #reduceActionForFile1:) 
	#(92 0 #reduceFor:) 
	#(81 1 #reduceFor:) 
	#(97 0 #reduceActionForSwitchToDefine1:) 
	#(98 0 #reduceActionForSwitchToError1:) 
	#(96 0 #reduceActionForSwitchToFilename1:) 
	#(78 1 #reduceActionForFile1:) 
	#(79 1 #reduceFor:) 
	#(80 1 #reduceFor:) 
	#(91 1 #reduceActionForFile1:) 
	#(95 1 #reduceFor:) 
	#(94 2 #reduceActionForTokens2:) 
	#(92 2 #reduceFor:) 
	#(93 1 #reduceActionForValue1:) 
	#(85 1 #reduceActionForExpression7:) 
	#(85 1 #reduceActionForExpression6:) 
	#(81 3 #reduceFor:) 
	#(81 3 #reduceActionForDirective3:) 
	#(100 0 #reduceActionForSwitchToDefault1:) 
	#(99 0 #reduceActionForSwitchToMacro1:) 
	#(79 3 #reduceFor:) 
	#(93 2 #reduceActionForValue2:) 
	#(85 2 #reduceActionForExpression3:) 
	#(85 2 #reduceActionForExpression2:) 
	#(86 0 #reduceActionForArgs1:) 
	#(81 4 #reduceFor:) 
	#(93 3 #reduceActionForValue3:) 
	#(85 3 #liftSecondValue:) 
	#(87 1 #reduceActionForArgList1:) 
	#(86 1 #liftFirstValue:) 
	#(85 3 #reduceActionForExpression12:) 
	#(85 3 #reduceActionForExpression4:) 
	#(85 3 #reduceActionForExpression9:) 
	#(85 3 #reduceActionForExpression10:) 
	#(85 3 #reduceActionForExpression11:) 
	#(85 3 #reduceActionForExpression13:) 
	#(85 3 #reduceActionForExpression14:) 
	#(85 3 #reduceActionForExpression5:) 
	#(83 0 #reduceFor:) 
	#(81 5 #reduceActionForDirective4:) 
	#(81 5 #reduceActionForDirective5:) 
	#(89 0 #reduceActionForParms1:) 
	#(81 5 #reduceFor:) 
	#(85 4 #reduceActionForExpression1:) 
	#(85 4 #reduceActionForExpression15:) 
	#(81 6 #reduceFor:) 
	#(84 0 #reduceFor:) 
	#(88 6 #reduceActionForDefineExpression1:) 
	#(89 1 #reduceActionForArgList1:) 
	#(90 1 #reduceActionForArgList1:) 
	#(89 1 #liftFirstValue:) 
	#(87 3 #reduceActionForArgList2:) 
	#(88 7 #reduceActionForDefineExpression2:) 
	#(89 3 #reduceActionForArgList2:) 
	#(90 3 #reduceActionForArgList2:) 
	#(82 4 #reduceFor:) 
	#(88 9 #reduceActionForDefineExpression3:) 
	#(84 4 #reduceFor:) 
	#(88 10 #reduceActionForDefineExpression4:) 
	#(83 6 #reduceFor:)
	).
]

{ #category : #'generated-accessing' }
CPPPreprocessorParser class >> scannerClass [
	^CPPPreprocessorScanner
]

{ #category : #generated }
CPPPreprocessorParser class >> startingStateForFile [
	^ 1
]

{ #category : #generated }
CPPPreprocessorParser class >> startingStateForMacro [
	^ 2
]

{ #category : #generated }
CPPPreprocessorParser class >> symbolNames [
	^ #('<errorText>' '<macro>' '<filename>' '<bang>' '<bangEq>' '<percent>' '<percentEq>' '<amp>' '<ampAmp>' '<ampEq>' '<lParen>' '<rParen>' '<star>' '<starEq>' '<plus>' '<plusPlus>' '<plusEq>' '<comma>' '<minus>' '<minusMinus>' '<minusEq>' '<minusGt>' '<dot>' '<ellipses>' '<slash>' '<slashEq>' '<colon>' '<colonColon>' '<semicolon>' '<lt>' '<ltLt>' '<ltLtEq>' '<ltEq>' '<eq>' '<eqEq>' '<gt>' '<gtEq>' '<gtGt>' '<gtGtEq>' '<question>' '<lBracket>' '<rBracket>' '<upArrow>' '<upArrowEq>' '<lBrace>' '<bar>' '<barEq>' '<barBar>' '<rBrace>' '<tilde>' '<hash>' '<hashHash>' '<define>' '<defined>' '<elif>' '<else>' '<endif>' '<error>' '<if>' '<ifdef>' '<ifndef>' '<include>' '<include_next>' '<line>' '<pragma>' '<undef>' '<FunctionMacroStart>' '<Identifier>' '<Integerliteral>' '<Characterliteral>' '<Floatingliteral>' '<Stringliteral>' '<comment>' '<whitespace>' '<eol>' '<lineContinuation>' 'B e g i n' 'File' 'Lines' 'Line' 'Directive' 'EndIf' 'ElIfs' 'Else' 'Expression' 'Args' 'ArgList' 'DefineExpression' 'Parms' 'ParmList' 'Macro' 'Values' 'Value' 'Tokens' 'Token' 'SwitchToFilename' 'SwitchToDefine' 'SwitchToError' 'SwitchToMacro' 'SwitchToDefault' 'E O F' 'error')
]

{ #category : #generated }
CPPPreprocessorParser class >> transitionTable [
^#(
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 13 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 0 17 0 78 0 21 0 79 0 25 0 80 0 29 0 81 0 33 0 88 0 37 0 94 0 7 0 101 0 41 0 102] 
#[1 0 14 0 4 0 14 0 5 0 14 0 6 0 14 0 7 0 14 0 8 0 14 0 9 0 14 0 10 0 14 0 11 0 14 0 12 0 14 0 13 0 14 0 14 0 14 0 15 0 14 0 16 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 20 0 14 0 21 0 14 0 22 0 14 0 23 0 14 0 24 0 14 0 25 0 14 0 26 0 14 0 27 0 14 0 28 0 14 0 29 0 14 0 30 0 14 0 31 0 14 0 32 0 14 0 33 0 14 0 34 0 14 0 35 0 14 0 36 0 14 0 37 0 14 0 38 0 14 0 39 0 14 0 40 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 44 0 14 0 45 0 14 0 46 0 14 0 47 0 14 0 48 0 14 0 49 0 14 0 50 0 14 0 51 0 14 0 68 0 14 0 69 0 14 0 70 0 14 0 71 0 14 0 72 0 45 0 91 0 49 0 92 0 14 0 101] 
#[1 0 18 0 51 0 22 0 53 0 26 0 58 0 53 0 59 0 57 0 60 0 61 0 61 0 30 0 62 0 30 0 63 0 65 0 64 0 69 0 65 0 73 0 66 0 18 0 75 0 77 0 96 0 81 0 97 0 85 0 98 0 18 0 101] 
#[0 0 0 0 101] 
#[1 0 89 0 75 0 34 0 101] 
#[0 0 38 0 51 0 75 0 101] 
#[0 0 42 0 51 0 75 0 101] 
#[0 0 18 0 51 0 75 0 101] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 0 42 0 51 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 0 42 0 75 1 45 0 95 0 42 0 101] 
#[1 1 49 0 75 0 34 0 101] 
#[0 0 0 0 101] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 1 53 0 51 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 1 57 0 93 1 61 0 95 0 46 0 101] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 1 85 0 85] 
#[0 1 89 0 68] 
#[0 1 93 0 68] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 6 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 1 97 0 94 0 6 0 101] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 6 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 1 101 0 94 0 6 0 101] 
#[0 1 105 0 68] 
#[1 1 109 0 62 1 113 0 63] 
#[0 1 117 0 53] 
#[0 1 121 0 58] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 1 125 0 80 0 29 0 81 0 33 0 88 0 37 0 94 0 6 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 50 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 54 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 1 129 0 80 0 29 0 81 0 33 0 88 0 37 0 94 0 6 0 101] 
#[0 1 133 0 68] 
#[1 0 58 0 4 0 58 0 5 0 58 0 6 0 58 0 7 0 58 0 8 0 58 0 9 0 58 0 10 0 58 0 11 0 58 0 12 0 58 0 13 0 58 0 14 0 58 0 15 0 58 0 16 0 58 0 17 0 58 0 18 0 58 0 19 0 58 0 20 0 58 0 21 0 58 0 22 0 58 0 23 0 58 0 24 0 58 0 25 0 58 0 26 0 58 0 27 0 58 0 28 0 58 0 29 0 58 0 30 0 58 0 31 0 58 0 32 0 58 0 33 0 58 0 34 0 58 0 35 0 58 0 36 0 58 0 37 0 58 0 38 0 58 0 39 0 58 0 40 0 58 0 41 0 58 0 42 0 58 0 43 0 58 0 44 0 58 0 45 0 58 0 46 0 58 0 47 0 58 0 48 0 58 0 49 0 58 0 50 0 58 0 51 1 137 0 52 0 58 0 68 0 58 0 69 0 58 0 70 0 58 0 71 0 58 0 72 0 58 0 101] 
#[0 0 62 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 101] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 1 141 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 1 145 0 85] 
#[1 1 149 0 11 1 153 0 68] 
#[1 0 66 0 5 0 66 0 9 1 157 0 11 0 66 0 12 0 66 0 18 0 66 0 30 0 66 0 33 0 66 0 35 0 66 0 36 0 66 0 37 0 66 0 48 0 66 0 75] 
#[0 0 70 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 161 0 5 1 165 0 9 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48 1 193 0 75] 
#[0 1 197 0 75] 
#[0 1 201 0 75] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 0 74 0 51 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 0 74 0 75 1 45 0 95 0 74 0 101] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 0 74 0 51 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 0 74 0 75 1 45 0 95 0 74 0 101] 
#[0 0 78 0 51 0 75 0 101] 
#[1 0 82 0 3 1 205 0 100] 
#[1 0 82 0 3 1 209 0 100] 
#[1 0 82 0 67 0 86 0 68 1 213 0 99 1 217 0 100] 
#[1 0 82 0 1 0 82 0 51 0 82 0 75 1 221 0 100 0 82 0 101] 
#[0 0 90 0 51 0 75 0 101] 
#[0 0 90 0 51 0 75 0 101] 
#[0 0 94 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 101] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 1 225 0 95] 
#[1 0 15 0 5 1 165 0 9 0 98 0 12 0 98 0 18 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48 0 98 0 75] 
#[1 1 161 0 5 1 165 0 9 1 229 0 12 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48] 
#[0 1 233 0 68] 
#[0 0 102 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 65 0 4 1 69 0 11 0 106 0 12 1 73 0 54 1 77 0 68 1 81 0 69 1 237 0 85 1 241 0 86 1 245 0 87] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 1 249 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 1 253 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 1 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 5 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 9 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 13 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 17 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 21 0 85] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 25 0 79 0 25 0 80 0 29 0 81 0 33 0 88 0 37 0 94 2 29 0 102] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 33 0 79 0 25 0 80 0 29 0 81 0 33 0 88 0 37 0 94 2 29 0 102] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 37 0 79 0 25 0 80 0 29 0 81 0 33 0 88 0 37 0 94 2 29 0 102] 
#[0 2 41 0 3] 
#[0 2 45 0 3] 
#[0 2 49 0 68] 
#[0 2 53 0 67] 
#[1 2 57 0 1 0 110 0 51 0 110 0 75 0 110 0 101] 
#[0 0 114 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 101] 
#[0 0 118 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[0 2 61 0 12] 
#[1 1 161 0 5 1 165 0 9 0 122 0 12 0 122 0 18 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48] 
#[0 2 65 0 12] 
#[1 0 126 0 12 2 69 0 18] 
#[1 0 19 0 5 1 165 0 9 0 130 0 12 0 130 0 18 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48 0 130 0 75] 
#[1 0 23 0 5 0 134 0 9 0 134 0 12 0 134 0 18 0 134 0 30 0 134 0 33 0 134 0 35 0 134 0 36 0 134 0 37 1 189 0 48 0 134 0 75] 
#[1 0 27 0 5 1 165 0 9 0 138 0 12 0 138 0 18 1 189 0 48 0 138 0 75] 
#[1 0 31 0 5 1 165 0 9 0 142 0 12 0 142 0 18 1 189 0 48 0 142 0 75] 
#[1 0 35 0 5 1 165 0 9 0 146 0 12 0 146 0 18 1 189 0 48 0 146 0 75] 
#[1 0 39 0 5 1 165 0 9 0 150 0 12 0 150 0 18 1 189 0 48 0 150 0 75] 
#[1 0 43 0 5 1 165 0 9 0 154 0 12 0 154 0 18 1 189 0 48 0 154 0 75] 
#[1 0 47 0 5 0 158 0 9 0 158 0 12 0 158 0 18 0 158 0 30 0 158 0 33 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 48 0 158 0 75] 
#[1 0 162 0 51 0 89 0 75 2 73 0 82 2 77 0 83] 
#[0 1 49 0 75] 
#[1 0 162 0 51 0 89 0 75 2 81 0 82 2 77 0 83] 
#[1 0 162 0 51 0 89 0 75 2 85 0 82 2 77 0 83] 
#[0 0 166 0 51 0 75 0 101] 
#[0 0 170 0 51 0 75 0 101] 
#[1 0 82 0 2 0 82 0 51 0 82 0 75 2 89 0 100 0 82 0 101] 
#[1 0 174 0 12 2 93 0 24 2 97 0 68 2 101 0 89 2 105 0 90] 
#[0 0 178 0 51 0 75 0 101] 
#[0 0 182 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[0 0 186 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 109 0 85] 
#[0 0 190 0 51 0 75 0 101] 
#[1 0 51 0 51 2 117 0 84] 
#[0 0 190 0 51 0 75 0 101] 
#[0 0 190 0 51 0 75 0 101] 
#[1 2 121 0 2 0 198 0 51 0 198 0 75 0 198 0 101] 
#[0 0 202 0 12] 
#[0 0 206 0 12 0 18] 
#[1 0 86 0 12 2 125 0 99] 
#[1 0 210 0 12 2 129 0 18] 
#[1 1 161 0 5 1 165 0 9 0 214 0 12 0 214 0 18 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48] 
#[1 2 133 0 55 2 137 0 56] 
#[0 2 141 0 51] 
#[0 0 218 0 51 0 75 0 101] 
#[0 2 145 0 12] 
#[1 2 149 0 24 2 153 0 68] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 157 0 85] 
#[0 2 161 0 75] 
#[0 2 165 0 57] 
#[1 0 82 0 2 0 82 0 51 0 82 0 75 2 169 0 100 0 82 0 101] 
#[0 0 222 0 12] 
#[0 0 226 0 12 0 18] 
#[1 1 161 0 5 1 165 0 9 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48 2 173 0 75] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 177 0 79 0 25 0 80 0 29 0 81 0 33 0 88 0 37 0 94 2 29 0 102] 
#[0 0 230 0 51 0 75 0 101] 
#[1 2 181 0 2 0 234 0 51 0 234 0 75 0 234 0 101] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 185 0 79 0 25 0 80 0 29 0 81 0 33 0 88 0 37 0 94 2 29 0 102] 
#[1 0 238 0 51 0 89 0 75] 
#[0 0 242 0 51 0 75 0 101] 
#[1 0 246 0 51 0 89 0 75]
	).
]

{ #category : #private }
CPPPreprocessorParser >> performReduceMethod: aSymbol with: items [
	^ (states size > 1
		and:
			[ items isEmpty and: [ aSymbol beginsWith: 'reduceActionForSwitchTo' ] ])
		ifTrue: [ self perform: aSymbol with: items ]
		ifFalse: [ super performReduceMethod: aSymbol with: items ]
]

{ #category : #accessing }
CPPPreprocessorParser >> preprocessor: aCPPPreprocessor [
	preprocessor := aCPPPreprocessor
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForArgList1: nodes [
	^ OrderedCollection with: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForArgList2: nodes [
	^ (nodes at: 1)
		add: (nodes at: 3);
		yourself
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForArgs1: nodes [
	^ #()
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDefineExpression1: nodes [
	^ preprocessor define: (nodes at: 5) as: nil hash: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDefineExpression2: nodes [
	^ preprocessor
		define: (nodes at: 5)
		as: (nodes at: 7)
		hash: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDefineExpression3: nodes [
	^ preprocessor
		defineFunction: (nodes at: 5)
		parameters: (nodes at: 6)
		as: nil
		hash: (nodes at: 1)
		right: (nodes at: 8)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDefineExpression4: nodes [
	^ preprocessor
		defineFunction: (nodes at: 5)
		parameters: (nodes at: 6)
		as: (nodes at: 10)
		hash: (nodes at: 1)
		right: (nodes at: 8)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDirective3: nodes [
	^ preprocessor undefine: (nodes at: 3) value
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDirective4: nodes [
	^ preprocessor include: (nodes at: 5) hash: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForDirective5: nodes [
	^ preprocessor includeNext: (nodes at: 5) hash: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression10: nodes [
	^ (preprocessor is: (nodes at: 3) lessThan: (nodes at: 1)) not
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression11: nodes [
	^ preprocessor is: (nodes at: 1) equalTo: (nodes at: 3)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression12: nodes [
	^ (preprocessor is: (nodes at: 1) equalTo: (nodes at: 3)) not
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression13: nodes [
	^ preprocessor is: (nodes at: 3) lessThan: (nodes at: 1)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression14: nodes [
	^ (preprocessor is: (nodes at: 1) lessThan: (nodes at: 3)) not
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression15: nodes [
	^ preprocessor evaluate: (nodes at: 1) value with: (nodes at: 3)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression1: nodes [
	^ preprocessor isDefined: (nodes at: 3) value
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression2: nodes [
	^ preprocessor isDefined: (nodes at: 2) value
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression3: nodes [
	^ (preprocessor isTrue: (nodes at: 2)) not
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression4: nodes [
	^ (preprocessor isTrue: (nodes at: 1))
		and: [ preprocessor isTrue: (nodes at: 3) ]
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression5: nodes [
	^ (preprocessor isTrue: (nodes at: 1))
		or: [ preprocessor isTrue: (nodes at: 3) ]
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression6: nodes [
	^ preprocessor convertInteger: (nodes at: 1) value
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression7: nodes [
	^ preprocessor valueOf: (nodes at: 1) value
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForExpression9: nodes [
	^ preprocessor is: (nodes at: 1) lessThan: (nodes at: 3)
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForFile1: nodes [
	^ preprocessor finish
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForParms1: nodes [
	^ OrderedCollection new
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToDefault1: nodes [
	self scope: #default.
	^ nil
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToDefine1: nodes [
	self scope: #define.
	^ nil
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToError1: nodes [
	self scope: #error.
	^ nil
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToFilename1: nodes [
	self scope: #filename.
	^ nil
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForSwitchToMacro1: nodes [
	self scope: #macro.
	^ nil
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForTokens2: nodes [
	^ preprocessor processToken: (nodes at: 2) first using: self
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForValue1: nodes [
	preprocessor processToken: (nodes at: 1) first using: self.
	^ (nodes at: 1) first
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForValue2: nodes [
	preprocessor stringify: (nodes at: 2) hash: (nodes at: 1).
	^ nil
]

{ #category : #'generated-reduction actions' }
CPPPreprocessorParser >> reduceActionForValue3: nodes [
	^ preprocessor
		concatenate: (nodes at: 1)
		with: (nodes at: 3) first
		using: aParser
]

{ #category : #testing }
CPPPreprocessorParser >> tryAllTokens [
	^ true
]
