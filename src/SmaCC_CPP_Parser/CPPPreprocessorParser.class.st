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
#[ 1 66 1 161] 
#[ 1 98 1 161] 
#[ 1 102 1 161] 
#[ 1 106 1 161] 
#[ 1 110 1 161] 
#[ 1 114 1 161] 
#[ 1 118 1 161] 
#[ 1 122 1 161] 
#[ 1 126 1 161] 
#[ 1 162 2 113]
	).
]

{ #category : #'generated-accessing' }
CPPPreprocessorParser class >> cacheId [
	^'2019-04-15T17:21:34.309138-05:00'
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
    | Value 'a' <hashHash> Token 'b' {preprocessor concatenate: a with: b first using: self}
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
	#(94 0 #reduceFor: 9500673 false ) 
	#(78 0 #reduceActionForFile1: 5480449 false ) 
	#(92 0 #reduceFor: 9176065 false ) 
	#(81 1 #reduceFor: 5702657 false ) 
	#(97 0 #reduceActionForSwitchToDefine1: 10526721 true ) 
	#(98 0 #reduceActionForSwitchToError1: 10582017 true ) 
	#(96 0 #reduceActionForSwitchToFilename1: 10467329 true ) 
	#(78 1 #reduceActionForFile1: 5480450 false ) 
	#(79 1 #reduceFor: 5590017 false ) 
	#(80 1 #reduceFor: 5660674 false ) 
	#(81 1 #reduceFor: 5702658 false ) 
	#(80 1 #reduceFor: 5660673 false ) 
	#(78 1 #reduceActionForFile1: 5480451 false ) 
	#(91 1 #reduceActionForFile1: 9127937 false ) 
	#(95 1 #reduceFor: 9602054 false ) 
	#(95 1 #reduceFor: 9602055 false ) 
	#(95 1 #reduceFor: 9602056 false ) 
	#(95 1 #reduceFor: 9602057 false ) 
	#(95 1 #reduceFor: 9602058 false ) 
	#(95 1 #reduceFor: 9602059 false ) 
	#(95 1 #reduceFor: 9602060 false ) 
	#(95 1 #reduceFor: 9602061 false ) 
	#(95 1 #reduceFor: 9602062 false ) 
	#(95 1 #reduceFor: 9602063 false ) 
	#(95 1 #reduceFor: 9602064 false ) 
	#(95 1 #reduceFor: 9602065 false ) 
	#(95 1 #reduceFor: 9602066 false ) 
	#(95 1 #reduceFor: 9602067 false ) 
	#(95 1 #reduceFor: 9602068 false ) 
	#(95 1 #reduceFor: 9602069 false ) 
	#(95 1 #reduceFor: 9602070 false ) 
	#(95 1 #reduceFor: 9602071 false ) 
	#(95 1 #reduceFor: 9602072 false ) 
	#(95 1 #reduceFor: 9602073 false ) 
	#(95 1 #reduceFor: 9602074 false ) 
	#(95 1 #reduceFor: 9602075 false ) 
	#(95 1 #reduceFor: 9602076 false ) 
	#(95 1 #reduceFor: 9602077 false ) 
	#(95 1 #reduceFor: 9602078 false ) 
	#(95 1 #reduceFor: 9602079 false ) 
	#(95 1 #reduceFor: 9602080 false ) 
	#(95 1 #reduceFor: 9602081 false ) 
	#(95 1 #reduceFor: 9602082 false ) 
	#(95 1 #reduceFor: 9602083 false ) 
	#(95 1 #reduceFor: 9602084 false ) 
	#(95 1 #reduceFor: 9602085 false ) 
	#(95 1 #reduceFor: 9602086 false ) 
	#(95 1 #reduceFor: 9602087 false ) 
	#(95 1 #reduceFor: 9602088 false ) 
	#(95 1 #reduceFor: 9602089 false ) 
	#(95 1 #reduceFor: 9602090 false ) 
	#(95 1 #reduceFor: 9602091 false ) 
	#(95 1 #reduceFor: 9602092 false ) 
	#(95 1 #reduceFor: 9602093 false ) 
	#(95 1 #reduceFor: 9602094 false ) 
	#(95 1 #reduceFor: 9602095 false ) 
	#(95 1 #reduceFor: 9602096 false ) 
	#(95 1 #reduceFor: 9602097 false ) 
	#(95 1 #reduceFor: 9602098 false ) 
	#(95 1 #reduceFor: 9602099 false ) 
	#(95 1 #reduceFor: 9602100 false ) 
	#(95 1 #reduceFor: 9602049 false ) 
	#(95 1 #reduceFor: 9602050 false ) 
	#(95 1 #reduceFor: 9602051 false ) 
	#(95 1 #reduceFor: 9602052 false ) 
	#(95 1 #reduceFor: 9602053 false ) 
	#(94 2 #reduceActionForTokens2: 9500674 false ) 
	#(92 2 #reduceFor: 9176066 false ) 
	#(93 1 #reduceActionForValue1: 9214977 false ) 
	#(85 1 #reduceActionForExpression7: 6535175 false ) 
	#(85 1 #reduceActionForExpression6: 6535174 false ) 
	#(81 3 #reduceFor: 5702665 false ) 
	#(81 3 #reduceFor: 5702668 false ) 
	#(81 3 #reduceActionForDirective3: 5702659 false ) 
	#(100 0 #reduceActionForSwitchToDefault1: 10688513 true ) 
	#(99 0 #reduceActionForSwitchToMacro1: 10635265 true ) 
	#(79 3 #reduceFor: 5590018 false ) 
	#(79 3 #reduceFor: 5590019 false ) 
	#(93 2 #reduceActionForValue2: 9214978 false ) 
	#(85 2 #reduceActionForExpression3: 6535171 false ) 
	#(85 2 #reduceActionForExpression2: 6535170 false ) 
	#(86 0 #reduceActionForArgs1: 7774209 false ) 
	#(81 4 #reduceFor: 5702666 false ) 
	#(93 3 #reduceActionForValue3: 9214979 false ) 
	#(85 3 #liftSecondValue: 6535176 false ) 
	#(87 1 #reduceActionForArgList1: 7818241 false ) 
	#(86 1 #liftFirstValue: 7774210 false ) 
	#(85 3 #reduceActionForExpression12: 6535180 false ) 
	#(85 3 #reduceActionForExpression4: 6535172 false ) 
	#(85 3 #reduceActionForExpression9: 6535177 false ) 
	#(85 3 #reduceActionForExpression10: 6535178 false ) 
	#(85 3 #reduceActionForExpression11: 6535179 false ) 
	#(85 3 #reduceActionForExpression13: 6535181 false ) 
	#(85 3 #reduceActionForExpression14: 6535182 false ) 
	#(85 3 #reduceActionForExpression5: 6535173 false ) 
	#(83 0 #reduceFor: 6415361 false ) 
	#(81 5 #reduceActionForDirective4: 5702660 false ) 
	#(81 5 #reduceActionForDirective5: 5702661 false ) 
	#(89 0 #reduceActionForParms1: 8794113 false ) 
	#(81 5 #reduceFor: 5702667 false ) 
	#(85 4 #reduceActionForExpression1: 6535169 false ) 
	#(85 4 #reduceActionForExpression15: 6535183 false ) 
	#(81 6 #reduceFor: 5702662 false ) 
	#(84 0 #reduceFor: 6484993 false ) 
	#(81 6 #reduceFor: 5702663 false ) 
	#(81 6 #reduceFor: 5702664 false ) 
	#(88 6 #reduceActionForDefineExpression1: 7959553 false ) 
	#(89 1 #reduceActionForArgList1: 8794114 false ) 
	#(90 1 #reduceActionForArgList1: 8983553 false ) 
	#(89 1 #liftFirstValue: 8794115 false ) 
	#(87 3 #reduceActionForArgList2: 7818242 false ) 
	#(88 7 #reduceActionForDefineExpression2: 7959554 false ) 
	#(89 3 #reduceActionForArgList2: 8794116 false ) 
	#(90 3 #reduceActionForArgList2: 8983554 false ) 
	#(82 4 #reduceFor: 6370305 false ) 
	#(88 9 #reduceActionForDefineExpression3: 7959555 false ) 
	#(84 4 #reduceFor: 6484994 false ) 
	#(88 10 #reduceActionForDefineExpression4: 7959556 false ) 
	#(83 6 #reduceFor: 6415362 false )
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
#[0 0 46 0 51 0 75 0 101] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 0 50 0 51 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 0 50 0 75 1 45 0 95 0 50 0 101] 
#[1 1 49 0 75 0 54 0 101] 
#[0 0 0 0 101] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 1 53 0 51 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 1 57 0 93 1 61 0 95 0 58 0 101] 
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
#[0 0 62 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 66 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 70 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 74 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 78 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 82 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 86 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 90 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 94 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 98 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 102 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 106 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 110 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 114 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 118 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 122 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 126 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 130 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 134 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 138 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 142 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 146 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 150 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 154 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 158 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 162 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 166 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 170 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 174 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 178 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 182 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 186 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 190 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 194 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 198 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 202 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 206 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 210 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 214 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 218 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 222 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 226 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 230 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 234 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 238 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 242 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 246 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 250 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 0 254 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 1 2 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 1 6 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 1 10 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[0 1 14 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 68 0 69 0 70 0 71 0 72 0 75 0 101] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 1 129 0 80 0 29 0 81 0 33 0 88 0 37 0 94 0 6 0 101] 
#[0 1 133 0 68] 
#[1 1 18 0 4 1 18 0 5 1 18 0 6 1 18 0 7 1 18 0 8 1 18 0 9 1 18 0 10 1 18 0 11 1 18 0 12 1 18 0 13 1 18 0 14 1 18 0 15 1 18 0 16 1 18 0 17 1 18 0 18 1 18 0 19 1 18 0 20 1 18 0 21 1 18 0 22 1 18 0 23 1 18 0 24 1 18 0 25 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 29 1 18 0 30 1 18 0 31 1 18 0 32 1 18 0 33 1 18 0 34 1 18 0 35 1 18 0 36 1 18 0 37 1 18 0 38 1 18 0 39 1 18 0 40 1 18 0 41 1 18 0 42 1 18 0 43 1 18 0 44 1 18 0 45 1 18 0 46 1 18 0 47 1 18 0 48 1 18 0 49 1 18 0 50 1 18 0 51 1 137 0 52 1 18 0 68 1 18 0 69 1 18 0 70 1 18 0 71 1 18 0 72 1 18 0 101] 
#[0 1 22 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 101] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 1 141 0 85] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 1 145 0 85] 
#[1 1 149 0 11 1 153 0 68] 
#[1 1 26 0 5 1 26 0 9 1 157 0 11 1 26 0 12 1 26 0 18 1 26 0 30 1 26 0 33 1 26 0 35 1 26 0 36 1 26 0 37 1 26 0 48 1 26 0 75] 
#[0 1 30 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 161 0 5 1 165 0 9 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48 1 193 0 75] 
#[0 1 197 0 75] 
#[0 1 201 0 75] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 1 34 0 51 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 1 34 0 75 1 45 0 95 1 34 0 101] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 1 38 0 51 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 1 38 0 75 1 45 0 95 1 38 0 101] 
#[0 1 42 0 51 0 75 0 101] 
#[1 1 46 0 3 1 205 0 100] 
#[1 1 46 0 3 1 209 0 100] 
#[1 1 46 0 67 1 50 0 68 1 213 0 99 1 217 0 100] 
#[1 1 46 0 1 1 46 0 51 1 46 0 75 1 221 0 100 1 46 0 101] 
#[0 1 54 0 51 0 75 0 101] 
#[0 1 58 0 51 0 75 0 101] 
#[0 1 62 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 101] 
#[1 0 93 0 4 0 97 0 5 0 101 0 6 0 105 0 7 0 109 0 8 0 113 0 9 0 117 0 10 0 121 0 11 0 125 0 12 0 129 0 13 0 133 0 14 0 137 0 15 0 141 0 16 0 145 0 17 0 149 0 18 0 153 0 19 0 157 0 20 0 161 0 21 0 165 0 22 0 169 0 23 0 173 0 24 0 177 0 25 0 181 0 26 0 185 0 27 0 189 0 28 0 193 0 29 0 197 0 30 0 201 0 31 0 205 0 32 0 209 0 33 0 213 0 34 0 217 0 35 0 221 0 36 0 225 0 37 0 229 0 38 0 233 0 39 0 237 0 40 0 241 0 41 0 245 0 42 0 249 0 43 0 253 0 44 1 1 0 45 1 5 0 46 1 9 0 47 1 13 0 48 1 17 0 49 1 21 0 50 1 25 0 68 1 29 0 69 1 33 0 70 1 37 0 71 1 41 0 72 1 225 0 95] 
#[1 0 15 0 5 1 165 0 9 1 66 0 12 1 66 0 18 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48 1 66 0 75] 
#[1 1 161 0 5 1 165 0 9 1 229 0 12 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48] 
#[0 1 233 0 68] 
#[0 1 70 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 65 0 4 1 69 0 11 1 74 0 12 1 73 0 54 1 77 0 68 1 81 0 69 1 237 0 85 1 241 0 86 1 245 0 87] 
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
#[1 2 57 0 1 1 78 0 51 1 78 0 75 1 78 0 101] 
#[0 1 82 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 68 0 69 0 70 0 71 0 72 0 101] 
#[0 1 86 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[0 2 61 0 12] 
#[1 1 161 0 5 1 165 0 9 1 90 0 12 1 90 0 18 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48] 
#[0 2 65 0 12] 
#[1 1 94 0 12 2 69 0 18] 
#[1 0 19 0 5 1 165 0 9 1 98 0 12 1 98 0 18 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48 1 98 0 75] 
#[1 0 23 0 5 1 102 0 9 1 102 0 12 1 102 0 18 1 102 0 30 1 102 0 33 1 102 0 35 1 102 0 36 1 102 0 37 1 189 0 48 1 102 0 75] 
#[1 0 27 0 5 1 165 0 9 1 106 0 12 1 106 0 18 1 189 0 48 1 106 0 75] 
#[1 0 31 0 5 1 165 0 9 1 110 0 12 1 110 0 18 1 189 0 48 1 110 0 75] 
#[1 0 35 0 5 1 165 0 9 1 114 0 12 1 114 0 18 1 189 0 48 1 114 0 75] 
#[1 0 39 0 5 1 165 0 9 1 118 0 12 1 118 0 18 1 189 0 48 1 118 0 75] 
#[1 0 43 0 5 1 165 0 9 1 122 0 12 1 122 0 18 1 189 0 48 1 122 0 75] 
#[1 0 47 0 5 1 126 0 9 1 126 0 12 1 126 0 18 1 126 0 30 1 126 0 33 1 126 0 35 1 126 0 36 1 126 0 37 1 126 0 48 1 126 0 75] 
#[1 1 130 0 51 0 89 0 75 2 73 0 82 2 77 0 83] 
#[0 1 49 0 75] 
#[1 1 130 0 51 0 89 0 75 2 81 0 82 2 77 0 83] 
#[1 1 130 0 51 0 89 0 75 2 85 0 82 2 77 0 83] 
#[0 1 134 0 51 0 75 0 101] 
#[0 1 138 0 51 0 75 0 101] 
#[1 1 46 0 2 1 46 0 51 1 46 0 75 2 89 0 100 1 46 0 101] 
#[1 1 142 0 12 2 93 0 24 2 97 0 68 2 101 0 89 2 105 0 90] 
#[0 1 146 0 51 0 75 0 101] 
#[0 1 150 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[0 1 154 0 5 0 9 0 12 0 18 0 30 0 33 0 35 0 36 0 37 0 48 0 75] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 109 0 85] 
#[0 1 158 0 51 0 75 0 101] 
#[1 0 51 0 51 2 117 0 84] 
#[0 1 166 0 51 0 75 0 101] 
#[0 1 170 0 51 0 75 0 101] 
#[1 2 121 0 2 1 174 0 51 1 174 0 75 1 174 0 101] 
#[0 1 178 0 12] 
#[0 1 182 0 12 0 18] 
#[1 1 50 0 12 2 125 0 99] 
#[1 1 186 0 12 2 129 0 18] 
#[1 1 161 0 5 1 165 0 9 1 190 0 12 1 190 0 18 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48] 
#[1 2 133 0 55 2 137 0 56] 
#[0 2 141 0 51] 
#[0 1 194 0 51 0 75 0 101] 
#[0 2 145 0 12] 
#[1 2 149 0 24 2 153 0 68] 
#[1 1 65 0 4 1 69 0 11 1 73 0 54 1 77 0 68 1 81 0 69 2 157 0 85] 
#[0 2 161 0 75] 
#[0 2 165 0 57] 
#[1 1 46 0 2 1 46 0 51 1 46 0 75 2 169 0 100 1 46 0 101] 
#[0 1 198 0 12] 
#[0 1 202 0 12 0 18] 
#[1 1 161 0 5 1 165 0 9 1 169 0 30 1 173 0 33 1 177 0 35 1 181 0 36 1 185 0 37 1 189 0 48 2 173 0 75] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 177 0 79 0 25 0 80 0 29 0 81 0 33 0 88 0 37 0 94 2 29 0 102] 
#[0 1 206 0 51 0 75 0 101] 
#[1 2 181 0 2 1 210 0 51 1 210 0 75 1 210 0 101] 
#[1 0 6 0 4 0 6 0 5 0 6 0 6 0 6 0 7 0 6 0 8 0 6 0 9 0 6 0 10 0 6 0 11 0 6 0 12 0 6 0 13 0 6 0 14 0 6 0 15 0 6 0 16 0 6 0 17 0 6 0 18 0 6 0 19 0 6 0 20 0 6 0 21 0 6 0 22 0 6 0 23 0 6 0 24 0 6 0 25 0 6 0 26 0 6 0 27 0 6 0 28 0 6 0 29 0 6 0 30 0 6 0 31 0 6 0 32 0 6 0 33 0 6 0 34 0 6 0 35 0 6 0 36 0 6 0 37 0 6 0 38 0 6 0 39 0 6 0 40 0 6 0 41 0 6 0 42 0 6 0 43 0 6 0 44 0 6 0 45 0 6 0 46 0 6 0 47 0 6 0 48 0 6 0 49 0 6 0 50 0 11 0 51 0 6 0 68 0 6 0 69 0 6 0 70 0 6 0 71 0 6 0 72 0 6 0 75 2 185 0 79 0 25 0 80 0 29 0 81 0 33 0 88 0 37 0 94 2 29 0 102] 
#[1 1 214 0 51 0 89 0 75] 
#[0 1 218 0 51 0 75 0 101] 
#[1 1 222 0 51 0 89 0 75]
	).
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
		using: self
]

{ #category : #testing }
CPPPreprocessorParser >> tryAllTokens [
	^ true
]
