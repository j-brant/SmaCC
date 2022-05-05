Class {
	#name : #GoParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_Go_Parser'
}

{ #category : #generated }
GoParser class >> ambiguousTransitions [
^#(
#[ 0 146 1 145] 
#[ 0 90 0 150] 
#[ 0 150 1 189] 
#[ 0 150 1 10] 
#[ 0 150 1 10 3 161] 
#[ 0 90 1 10] 
#[ 0 158 3 153] 
#[ 1 122 3 213] 
#[ 1 42 1 122] 
#[ 2 142 6 5] 
#[ 0 90 6 17] 
#[ 2 202 3 1] 
#[ 1 2 2 114] 
#[ 2 54 2 254] 
#[ 1 10 3 98] 
#[ 4 10 7 129]
	).
]

{ #category : #'generated-accessing' }
GoParser class >> cacheId [
	^'2022-05-04T13:13:02.270915-05:00'
]

{ #category : #generated }
GoParser class >> definitionComment [
"/*
 [The ""BSD licence""] Copyright (c) 2017 Sasa Coh, Michał Błotniak Copyright (c) 2019 Ivan Kochurkin,
 kvanttt@gmail.com, Positive Technologies Copyright (c) 2019 Dmitry Rassadin,
 flipparassa@gmail.com,Positive Technologies All rights reserved. Copyright (c) 2021 Martin Mirchev,
 mirchevmartin2203@gmail.com

 Redistribution and use in source and binary forms, with or without modification, are permitted
 provided that the following conditions are met: 1. Redistributions of source code must retain the
 above copyright notice, this list of conditions and the following disclaimer. 2. Redistributions in
 binary form must reproduce the above copyright notice, this list of conditions and the following
 disclaimer in the documentation and/or other materials provided with the distribution. 3. The name
 of the author may not be used to endorse or promote products derived from this software without
 specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,
 BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 POSSIBILITY OF SUCH DAMAGE.
 */

/*
 * A Go grammar for ANTLR 4 derived from the Go Language Specification https://golang.org/ref/spec
 */

%glr;
%id <TERMINATOR> <R_CURLY>;
%left <LOGICAL_OR>;
%left <LOGICAL_AND>;
%nonassoc <EQUALS> <NOT_EQUALS> <LESS> <LESS_OR_EQUALS> <GREATER> <GREATER_OR_EQUALS>;
%left <PLUS> <MINUS> <OR> <CARET>;
%left <STAR> <DIV> <MOD> <LSHIFT> <RSHIFT> <AMPERSAND> <BIT_CLEAR>;
/*parser grammar GoParser;*/

/*
 [The ""BSD licence""]
 Copyright (c) 2017 Sasa Coh, Michał Błotniak
 Copyright (c) 2019 Ivan Kochurkin, kvanttt@gmail.com, Positive Technologies
 Copyright (c) 2019 Dmitry Rassadin, flipparassa@gmail.com, Positive Technologies
 Copyright (c) 2021 Martin Mirchev, mirchevmartin2203@gmail.com
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:
 1. Redistributions of source code must retain the above copyright
    notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
    notice, this list of conditions and the following disclaimer in the
    documentation and/or other materials provided with the distribution.
 3. The name of the author may not be used to endorse or promote products
    derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
 IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT,
 INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
 NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
 THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

/*
 * A Go grammar for ANTLR 4 derived from the Go Language Specification
 * https://golang.org/ref/spec
 */

/*lexer grammar GoLexer;*/

# Keywords

<BREAK>                  : break;
<DEFAULT>                : default;
<FUNC>                   : func;
<INTERFACE>              : interface;
<SELECT>                 : select;
<CASE>                   : case;
<DEFER>                  : defer;
<GO>                     : go;
<MAP>                    : map;
<STRUCT>                 : struct;
<CHAN>                   : chan;
<ELSE>                   : else;
<GOTO>                   : goto;
<PACKAGE>                : package;
<SWITCH>                 : switch;
<CONST>                  : const;
<FALLTHROUGH>            : fallthrough;
<IF>                     : if;
<RANGE>                  : range;
<TYPE>                   : type;
<CONTINUE>               : continue;
<FOR>                    : for;
<IMPORT>                 : import;
<RETURN>                 : return;
<VAR>                    : var;

<NIL_LIT>                : nil;

<IDENTIFIER>             : <LETTER> (<LETTER> | <UNICODE_DIGIT>)*;

# Punctuation

<L_PAREN>                : \(;
<R_PAREN>                : \);
<L_CURLY>                : \{;
<R_CURLY>                : \};
<L_BRACKET>              : \[;
<R_BRACKET>              : \];
<ASSIGN>                 : \=;
<COMMA>                  : \,;
<SEMI>                   : \;;
<COLON>                  : \:;
<DOT>                    : \.;
<PLUS_PLUS>              : \+\+;
<MINUS_MINUS>            : \-\-;
<DECLARE_ASSIGN>         : \:\=;
<ELLIPSIS>               : \.\.\.;

# Logical

<LOGICAL_OR>             : \|\|;
<LOGICAL_AND>            : \&\&;

# Relation operators

<EQUALS>                 : \=\=;
<NOT_EQUALS>             : \!\=;
<LESS>                   : \<;
<LESS_OR_EQUALS>         : \<\=;
<GREATER>                : \>;
<GREATER_OR_EQUALS>      : \>\=;

# Arithmetic operators

<OR>                     : \|;
<DIV>                    : \/;
<MOD>                    : \%;
<LSHIFT>                 : \<\<;
<RSHIFT>                 : \>\>;
<BIT_CLEAR>              : \&\^;

# Unary operators

<EXCLAMATION>            : \!;

# Mixed operators

<PLUS>                   : \+;
<MINUS>                  : \-;
<CARET>                  : \^;
<STAR>                   : \*;
<AMPERSAND>              : \&;
<RECEIVE>                : \<\-;

# Number literals

<DECIMAL_LIT>            : 0 | [1-9] (_? [0-9])*;
<BINARY_LIT>             : 0 [bB] (_? <BIN_DIGIT>)+;
<OCTAL_LIT>              : 0 [oO]? (_? <OCTAL_DIGIT>)+;
<HEX_LIT>                : 0 [xX]  (_? <HEX_DIGIT>)+;


<FLOAT_LIT> : <DECIMAL_FLOAT_LIT> | <HEX_FLOAT_LIT>;

<DECIMAL_FLOAT_LIT>      : <DECIMALS> (\. <DECIMALS>? <EXPONENT>? | <EXPONENT>)
                       | \. <DECIMALS> <EXPONENT>?
                       ;

<HEX_FLOAT_LIT>          : 0 [xX] <HEX_MANTISSA> <HEX_EXPONENT>
                       ;

<HEX_MANTISSA>  : (_? <HEX_DIGIT>)+ (\. ( _? <HEX_DIGIT> )*)?
                       | \. <HEX_DIGIT> (_? <HEX_DIGIT>)*;

<HEX_EXPONENT>  : [pP] [\+\-]? <DECIMALS>;


<IMAGINARY_LIT>          : (<DECIMAL_LIT> | <BINARY_LIT> |  <OCTAL_LIT> | <HEX_LIT> | <FLOAT_LIT>) i;

# Rune literals

<RUNE_LIT>               : \' (<UNICODE_VALUE> | <BYTE_VALUE>) \';#: '\'' (~[\n\\] | ESCAPED_VALUE) '\'';



<BYTE_VALUE> : <OCTAL_BYTE_VALUE> | <HEX_BYTE_VALUE>;

<OCTAL_BYTE_VALUE>: \\ <OCTAL_DIGIT> <OCTAL_DIGIT> <OCTAL_DIGIT>;

<HEX_BYTE_VALUE>: \\ x  <HEX_DIGIT> <HEX_DIGIT>;

<LITTLE_U_VALUE>: \\ u <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT>;

<BIG_U_VALUE>: \\ U <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT>;

# String literals

<RAW_STRING_LIT>         : \` [^\`]*                      \`;
<INTERPRETED_STRING_LIT> : \"" ([^\""\\] | <ESCAPED_VALUE>)*  \"";

# Hidden tokens

<whitespace>                     : [\ \t]+             ;
<comment>                : (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/) | \/\/ [^\r\n]*      ;
<TERMINATOR>             : [\r\n]+            /* TODO: -> channel(HIDDEN)*/;

<UNICODE_VALUE>: [^\r\n\'] | <LITTLE_U_VALUE> | <BIG_U_VALUE> | <ESCAPED_VALUE>;

# Fragments

<ESCAPED_VALUE>
    : \\ (u <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT>
           | U <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT> <HEX_DIGIT>
           | [abfnrtv\\\'\""]
           | <OCTAL_DIGIT> <OCTAL_DIGIT> <OCTAL_DIGIT>
           | x <HEX_DIGIT> <HEX_DIGIT>)
    ;

<DECIMALS>
    : [0-9] (_? [0-9])*
    ;

<OCTAL_DIGIT>
    : [0-7]
    ;

<HEX_DIGIT>
    : [0-9a-fA-F]
    ;

<BIN_DIGIT>
    : [01]
    ;

<EXPONENT>
    : [eE] [\+\-]? <DECIMALS>
    ;

<LETTER>
    : <UNICODE_LETTER>
    | _
    ;

<UNICODE_DIGIT>
    : <isDigit>	###
    ;

<UNICODE_LETTER>
    : <isLetter>	###
    ;
<assign_op>
	: ([\+\-\|\^\*\/\%\&] | \<\< | \>\> | \&\^)? \=
	;


sourceFile:
	packageClause eos (importDecl eos)* (
		(functionDecl | methodDecl | declaration) eos
	)* ;

packageClause: <PACKAGE> <IDENTIFIER>;

importDecl:
	<IMPORT> (importSpec | <L_PAREN> (importSpec eos)* <R_PAREN>);

importSpec: (<DOT> | <IDENTIFIER>)? importPath;

importPath: string_;

declaration: constDecl | typeDecl | varDecl;

constDecl: <CONST> (constSpec | <L_PAREN> (constSpec eos)* <R_PAREN>);

constSpec: identifierList (type_? <ASSIGN> expressionList)?;

identifierList: <IDENTIFIER> (<COMMA> <IDENTIFIER>)*;

expressionList: expression (<COMMA> expression)*;

typeDecl: <TYPE> (typeSpec | <L_PAREN> (typeSpec eos)* <R_PAREN>);

typeSpec: <IDENTIFIER> <ASSIGN>? type_;

# Function declarations

functionDecl: <FUNC> <IDENTIFIER> (signature block?);

methodDecl: <FUNC> receiver <IDENTIFIER> ( signature block?);

receiver: parameters;

varDecl: <VAR> (varSpec | <L_PAREN> (varSpec eos)* <R_PAREN>);

varSpec:
	identifierList (
		type_ (<ASSIGN> expressionList)?
		| <ASSIGN> expressionList
	);

block: <L_CURLY> statementList? <R_CURLY>;

statementList: (statement eos)+;

statement:
	declaration
	| labeledStmt
	| simpleStmt
	| goStmt
	| returnStmt
	| breakStmt
	| continueStmt
	| gotoStmt
	| fallthroughStmt
	| block
	| ifStmt
	| switchStmt
	| selectStmt
	| forStmt
	| deferStmt;

simpleStmt:
	sendStmt
	| incDecStmt
	| assignment
	| expressionStmt
	| shortVarDecl
	| emptyStmt;

terminatedSimpleStmt:
	sendStmt <SEMI>
	| incDecStmt <SEMI>
	| assignment <SEMI>
	| expressionStmt <SEMI>
	| shortVarDecl <SEMI>
	| emptyStmt;

expressionStmt: expression;

sendStmt: expression <RECEIVE> expression;

incDecStmt: expression (<PLUS_PLUS> | <MINUS_MINUS>);

assignment: expressionList <assign_op> expressionList;

shortVarDecl: identifierList <DECLARE_ASSIGN> expressionList;

emptyStmt: <SEMI>;

labeledStmt: <IDENTIFIER> <COLON> statement?;

returnStmt: <RETURN> expressionList?;

breakStmt: <BREAK> <IDENTIFIER>?;

continueStmt: <CONTINUE> <IDENTIFIER>?;

gotoStmt: <GOTO> <IDENTIFIER>;

fallthroughStmt: <FALLTHROUGH>;

deferStmt: <DEFER> expression;

ifStmt:
	<IF> terminatedSimpleStmt? expression block (
		<ELSE> (ifStmt | block)
	)?;

switchStmt: exprSwitchStmt | typeSwitchStmt;

exprSwitchStmt:
	<SWITCH> terminatedSimpleStmt? expression? <L_CURLY> exprCaseClause* <R_CURLY>;

exprCaseClause: exprSwitchCase <COLON> statementList?;

exprSwitchCase: <CASE> expressionList | <DEFAULT>;

typeSwitchStmt:
	<SWITCH> terminatedSimpleStmt? typeSwitchGuard <L_CURLY> typeCaseClause* <R_CURLY>;

typeSwitchGuard: (<IDENTIFIER> <DECLARE_ASSIGN>)? primaryExpr <DOT> <L_PAREN> <TYPE> <R_PAREN>;

typeCaseClause: typeSwitchCase <COLON> statementList?;

typeSwitchCase: <CASE> typeList | <DEFAULT>;

typeList: (type_ | <NIL_LIT>) (<COMMA> (type_ | <NIL_LIT>))*;

selectStmt: <SELECT> <L_CURLY> commClause* <R_CURLY>;

commClause: commCase <COLON> statementList?;

commCase: <CASE> (sendStmt | recvStmt) | <DEFAULT>;

recvStmt: (expressionList <ASSIGN> | identifierList <DECLARE_ASSIGN>)? expression;

forStmt: <FOR> (expression | forClause | rangeClause)? block;

forClause:
	terminatedSimpleStmt expression? <SEMI> simpleStmt?;

rangeClause: (
		expressionList <ASSIGN>
		| identifierList <DECLARE_ASSIGN>
	)? <RANGE> expression;

goStmt: <GO> expression;

type_: typeName | typeLit | <L_PAREN> type_ <R_PAREN>;

typeName: qualifiedIdent | <IDENTIFIER>;

typeLit:
	arrayType
	| structType
	| pointerType
	| functionType
	| interfaceType
	| sliceType
	| mapType
	| channelType;

arrayType: <L_BRACKET> arrayLength <R_BRACKET> elementType;

arrayLength: expression;

elementType: type_;

pointerType: <STAR> type_;

interfaceType:
	<INTERFACE> <L_CURLY> ((methodSpec | typeName) eos)* <R_CURLY>;

sliceType: <L_BRACKET> <R_BRACKET> elementType;

# It's possible to replace `type` with more restricted typeLit list and also pay attention to nil maps
mapType: <MAP> <L_BRACKET> type_ <R_BRACKET> elementType;

channelType: (<CHAN> | <CHAN> <RECEIVE> | <RECEIVE> <CHAN>) elementType;

methodSpec:
	/* TODO: {noTerminatorAfterParams(2)}?*/ <IDENTIFIER> parameters result
	| <IDENTIFIER> parameters;

functionType: <FUNC> signature;

signature:
	/* TODO: {noTerminatorAfterParams(1)}?*/ parameters result
	| parameters;

result: parameters | type_;

parameters:
	<L_PAREN> (parameterDecl (<COMMA> parameterDecl)* <COMMA>?)? <R_PAREN>;

parameterDecl: identifierList? <ELLIPSIS>? type_;

expression:
	/* primaryExpr	### already in unaryExpr
	|*/ unaryExpr
	| expression (
		<STAR>
		| <DIV>
		| <MOD>
		| <LSHIFT>
		| <RSHIFT>
		| <AMPERSAND>
		| <BIT_CLEAR>
	) expression
	| expression (<PLUS> | <MINUS> | <OR> | <CARET>) expression
	| expression (
		<EQUALS>
		| <NOT_EQUALS>
		| <LESS>
		| <LESS_OR_EQUALS>
		| <GREATER>
		| <GREATER_OR_EQUALS>
	) expression
	| expression <LOGICAL_AND> expression
	| expression <LOGICAL_OR> expression;

primaryExpr:
	operand
	| conversion
	| methodExpr
	| primaryExpr (
		(<DOT> <IDENTIFIER>)
		| index
		| slice_
		| typeAssertion
		| arguments
	);

unaryExpr:
	primaryExpr
	| (
		<PLUS>
		| <MINUS>
		| <EXCLAMATION>
		| <CARET>
		| <STAR>
		| <AMPERSAND>
		| <RECEIVE>
	) expression;

conversion: type_ <L_PAREN> expression <COMMA>? <R_PAREN>;

operand: literal | operandName | <L_PAREN> expression <R_PAREN>;

literal: basicLit | compositeLit | functionLit;

basicLit:
	<NIL_LIT>
	| integer
	| string_
	| <FLOAT_LIT>
	| <IMAGINARY_LIT>
	| <RUNE_LIT>;

integer:
	<DECIMAL_LIT>
	| <BINARY_LIT>
	| <OCTAL_LIT>
	| <HEX_LIT>
	#| <IMAGINARY_LIT>	### already in basicLit
	#| <RUNE_LIT>	### already in basicLit
	;

operandName: <IDENTIFIER> (<DOT> <IDENTIFIER>)?;

qualifiedIdent: <IDENTIFIER> <DOT> <IDENTIFIER>;

compositeLit: literalType literalValue;

literalType:
	structType
	| arrayType
	| <L_BRACKET> <ELLIPSIS> <R_BRACKET> elementType
	| sliceType
	| mapType
	| typeName;

literalValue: <L_CURLY> (elementList <COMMA>?)? <R_CURLY>;

elementList: keyedElement (<COMMA> keyedElement)*;

keyedElement: (key <COLON>)? element;

key: <IDENTIFIER> | expression | literalValue;

element: expression | literalValue;

structType: <STRUCT> <L_CURLY> (fieldDecl eos)* <R_CURLY>;

fieldDecl: (
		/* TODO: {noTerminatorBetween(2)}?*/ identifierList type_
		| embeddedField
	) string_?;

string_: <RAW_STRING_LIT> | <INTERPRETED_STRING_LIT>;

embeddedField: <STAR>? typeName;

functionLit: <FUNC> signature block; # function

index: <L_BRACKET> expression <R_BRACKET>;

slice_:
	<L_BRACKET> (
		expression? <COLON> expression?
		| expression? <COLON> expression <COLON> expression
	) <R_BRACKET>;

typeAssertion: <DOT> <L_PAREN> type_ <R_PAREN>;

arguments:
	<L_PAREN> (
		(expressionList | type_ (<COMMA> expressionList)?) <ELLIPSIS>? <COMMA>?
	)? <R_PAREN>;

methodExpr: receiverType <DOT> <IDENTIFIER>;

#receiverType: typeName | '(' ('*' typeName | receiverType) ')';

receiverType: type_;

eos:
	<SEMI>
	| <TERMINATOR>	###
###	| 
###	| /* TODO: {lineTerminatorAhead()}*/?
###	| /* TODO: {checkPreviousTokenText(""}"")}*/?
###	| /* TODO: {checkPreviousTokenText("")"")}*/?;
;"
]

{ #category : #'file types' }
GoParser class >> fileExtension [
	^ '.go'
]

{ #category : #generated }
GoParser class >> reduceTable [
^#(
	#(83 2 #reduceFor: 8908801 false) 
	#(208 1 #reduceFor: 15792129 false) 
	#(208 1 #reduceFor: 15792130 false) 
	#(80 0 #reduceFor: 8832001 false) 
	#(82 0 #reduceFor: 8850433 false) 
	#(80 2 #reduceFor: 8832002 false) 
	#(78 4 #reduceFor: 8800257 false) 
	#(86 0 #reduceFor: 8996865 false) 
	#(198 1 #reduceFor: 15170561 false) 
	#(198 1 #reduceFor: 15170562 false) 
	#(84 2 #reduceFor: 8949761 false) 
	#(87 1 #reduceFor: 9028609 false) 
	#(88 1 #reduceFor: 9078785 false) 
	#(82 2 #reduceFor: 8850434 false) 
	#(89 1 #reduceFor: 9101313 false) 
	#(89 1 #reduceFor: 9101314 false) 
	#(89 1 #reduceFor: 9101315 false) 
	#(79 2 #reduceFor: 8832001 false) 
	#(87 2 #reduceFor: 9028611 false) 
	#(87 2 #reduceFor: 9028610 false) 
	#(106 1 #reduceFor: 9652225 false) 
	#(96 0 #reduceFor: 9315329 false) 
	#(92 0 #reduceFor: 9191425 false) 
	#(90 2 #reduceFor: 9148417 false) 
	#(93 1 #reduceFor: 9222145 false) 
	#(102 0 #reduceFor: 9434113 false) 
	#(100 2 #reduceFor: 9394177 false) 
	#(109 0 #reduceFor: 9712641 false) 
	#(107 2 #reduceFor: 9675777 false) 
	#(81 2 #reduceFor: 8850435 false) 
	#(81 2 #reduceFor: 8850433 false) 
	#(81 2 #reduceFor: 8850434 false) 
	#(84 4 #reduceFor: 8949762 false) 
	#(86 2 #reduceFor: 8996866 false) 
	#(104 3 #reduceFor: 9531393 false) 
	#(169 1 #reduceFor: 13038594 false) 
	#(155 1 #reduceFor: 12205058 false) 
	#(171 2 #reduceFor: 13157377 false) 
	#(174 1 #reduceFor: 13245441 false) 
	#(154 1 #reduceFor: 12147713 false) 
	#(154 1 #reduceFor: 12147714 false) 
	#(156 1 #reduceFor: 12248065 false) 
	#(156 1 #reduceFor: 12248067 false) 
	#(156 1 #reduceFor: 12248069 false) 
	#(156 1 #reduceFor: 12248070 false) 
	#(156 1 #reduceFor: 12248071 false) 
	#(156 1 #reduceFor: 12248072 false) 
	#(156 1 #reduceFor: 12248068 false) 
	#(173 0 #reduceFor: 13196289 false) 
	#(155 1 #reduceFor: 12205057 false) 
	#(156 1 #reduceFor: 12248066 false) 
	#(94 2 #reduceFor: 9285633 false) 
	#(103 2 #reduceFor: 9463809 false) 
	#(110 2 #reduceFor: 9741313 false) 
	#(85 2 #reduceFor: 8996865 false) 
	#(104 4 #reduceFor: 9531394 false) 
	#(170 1 #reduceFor: 13127682 false) 
	#(169 2 #reduceFor: 13038593 false) 
	#(170 1 #reduceFor: 13127681 false) 
	#(168 2 #reduceFor: 13004801 false) 
	#(163 0 #reduceFor: 12552193 false) 
	#(196 0 #reduceFor: 15033345 false) 
	#(159 1 #reduceFor: 12463105 false) 
	#(166 2 #reduceFor: 12812289 false) 
	#(181 1 #reduceFor: 14232577 false) 
	#(183 1 #reduceFor: 14486529 false) 
	#(182 1 #reduceFor: 14327809 false) 
	#(182 1 #reduceFor: 14327810 false) 
	#(182 1 #reduceFor: 14327811 false) 
	#(182 1 #reduceFor: 14327812 false) 
	#(181 1 #reduceFor: 14232580 false) 
	#(181 1 #reduceFor: 14232581 false) 
	#(181 1 #reduceFor: 14232582 false) 
	#(207 1 #reduceFor: 15769601 false) 
	#(186 1 #reduceFor: 14630918 false) 
	#(186 1 #reduceFor: 14630914 false) 
	#(186 1 #reduceFor: 14630916 false) 
	#(186 1 #reduceFor: 14630917 false) 
	#(158 1 #reduceFor: 12436481 false) 
	#(177 1 #reduceFor: 13913089 false) 
	#(175 1 #reduceFor: 13297665 false) 
	#(176 1 #reduceFor: 13761538 false) 
	#(176 1 #reduceFor: 13761537 false) 
	#(179 1 #reduceFor: 14114817 false) 
	#(180 1 #reduceFor: 14182401 false) 
	#(181 1 #reduceFor: 14232578 false) 
	#(179 1 #reduceFor: 14114818 false) 
	#(180 1 #reduceFor: 14182402 false) 
	#(186 1 #reduceFor: 14630913 false) 
	#(181 1 #reduceFor: 14232579 false) 
	#(180 1 #reduceFor: 14182403 false) 
	#(176 1 #reduceFor: 13761539 false) 
	#(174 2 #reduceFor: 13245442 false) 
	#(160 2 #reduceFor: 12484609 false) 
	#(174 2 #reduceFor: 13245443 false) 
	#(105 4 #reduceFor: 9587713 false) 
	#(96 2 #reduceFor: 9315330 false) 
	#(90 4 #reduceFor: 9148418 false) 
	#(92 2 #reduceFor: 9191426 false) 
	#(93 3 #reduceFor: 9222146 false) 
	#(99 0 #reduceFor: 9369601 false) 
	#(103 3 #reduceFor: 9463810 false) 
	#(100 4 #reduceFor: 9394178 false) 
	#(102 2 #reduceFor: 9434114 false) 
	#(107 4 #reduceFor: 9675778 false) 
	#(109 2 #reduceFor: 9712642 false) 
	#(110 3 #reduceFor: 9741315 false) 
	#(126 1 #reduceFor: 10743809 false) 
	#(129 1 #reduceFor: 10854401 false) 
	#(127 1 #reduceFor: 10779649 false) 
	#(125 1 #reduceFor: 10703873 false) 
	#(111 2 #reduceFor: 9838593 false) 
	#(123 1 #reduceFor: 10635265 false) 
	#(115 1 #reduceFor: 9918465 false) 
	#(115 1 #reduceFor: 9918474 false) 
	#(114 1 #reduceFor: 9899009 false) 
	#(112 1 #reduceFor: 9883649 false) 
	#(115 1 #reduceFor: 9918467 false) 
	#(116 1 #reduceFor: 10133508 false) 
	#(116 1 #reduceFor: 10133505 false) 
	#(116 1 #reduceFor: 10133506 false) 
	#(116 1 #reduceFor: 10133507 false) 
	#(116 1 #reduceFor: 10133509 false) 
	#(116 1 #reduceFor: 10133510 false) 
	#(115 1 #reduceFor: 9918466 false) 
	#(115 1 #reduceFor: 9918469 false) 
	#(115 1 #reduceFor: 9918470 false) 
	#(115 1 #reduceFor: 9918471 false) 
	#(115 1 #reduceFor: 9918472 false) 
	#(115 1 #reduceFor: 9918473 false) 
	#(115 1 #reduceFor: 9918479 false) 
	#(115 1 #reduceFor: 9918475 false) 
	#(115 1 #reduceFor: 9918476 false) 
	#(132 1 #reduceFor: 11010049 false) 
	#(132 1 #reduceFor: 11010050 false) 
	#(115 1 #reduceFor: 9918477 false) 
	#(115 1 #reduceFor: 9918478 false) 
	#(115 1 #reduceFor: 9918468 false) 
	#(118 1 #reduceFor: 10382337 false) 
	#(166 3 #reduceFor: 12812290 false) 
	#(184 3 #reduceFor: 14537729 false) 
	#(154 3 #reduceFor: 12147715 false) 
	#(164 3 #reduceFor: 12596225 false) 
	#(177 2 #reduceFor: 13913092 false) 
	#(177 2 #reduceFor: 13913090 false) 
	#(177 2 #reduceFor: 13913091 false) 
	#(177 2 #reduceFor: 13913093 false) 
	#(177 2 #reduceFor: 13913094 false) 
	#(177 2 #reduceFor: 13913095 false) 
	#(177 2 #reduceFor: 13913096 false) 
	#(176 2 #reduceFor: 13761541 false) 
	#(176 2 #reduceFor: 13761542 false) 
	#(176 2 #reduceFor: 13761543 false) 
	#(176 2 #reduceFor: 13761544 false) 
	#(185 2 #reduceFor: 14588929 false) 
	#(166 3 #reduceFor: 12812291 false) 
	#(174 3 #reduceFor: 13245444 false) 
	#(171 4 #reduceFor: 13157378 false) 
	#(173 2 #reduceFor: 13196290 false) 
	#(105 5 #reduceFor: 9587714 false) 
	#(95 2 #reduceFor: 9315329 false) 
	#(91 2 #reduceFor: 9191425 false) 
	#(97 2 #reduceFor: 9341953 false) 
	#(93 4 #reduceFor: 9222147 false) 
	#(101 2 #reduceFor: 9434113 false) 
	#(108 2 #reduceFor: 9712641 false) 
	#(110 4 #reduceFor: 9741314 false) 
	#(126 2 #reduceFor: 10743810 false) 
	#(146 0 #reduceFor: 11672577 false) 
	#(130 2 #reduceFor: 10888193 false) 
	#(153 2 #reduceFor: 12121089 false) 
	#(128 2 #reduceFor: 10821633 false) 
	#(134 0 #reduceFor: 11128833 false) 
	#(117 1 #reduceFor: 10234886 false) 
	#(127 2 #reduceFor: 10779650 false) 
	#(150 2 #reduceFor: 11884545 false) 
	#(125 2 #reduceFor: 10703874 false) 
	#(124 2 #reduceFor: 10655745 false) 
	#(111 3 #reduceFor: 9838594 false) 
	#(114 2 #reduceFor: 9899010 false) 
	#(113 2 #reduceFor: 9899009 false) 
	#(120 2 #reduceFor: 10457089 false) 
	#(120 2 #reduceFor: 10457090 false) 
	#(161 4 #reduceFor: 12513281 false) 
	#(163 2 #reduceFor: 12552194 false) 
	#(194 4 #reduceFor: 15001601 false) 
	#(199 1 #reduceFor: 15226881 false) 
	#(196 2 #reduceFor: 15033346 false) 
	#(197 1 #reduceFor: 15063043 false) 
	#(200 3 #reduceFor: 15261697 false) 
	#(183 3 #reduceFor: 14486530 false) 
	#(179 3 #reduceFor: 14114819 false) 
	#(157 4 #reduceFor: 12374017 false) 
	#(175 3 #reduceFor: 13297684 false) 
	#(175 3 #reduceFor: 13297683 false) 
	#(175 3 #reduceFor: 13297677 false) 
	#(175 3 #reduceFor: 13297678 false) 
	#(175 3 #reduceFor: 13297679 false) 
	#(175 3 #reduceFor: 13297680 false) 
	#(175 3 #reduceFor: 13297681 false) 
	#(175 3 #reduceFor: 13297682 false) 
	#(175 3 #reduceFor: 13297675 false) 
	#(175 3 #reduceFor: 13297667 false) 
	#(175 3 #reduceFor: 13297668 false) 
	#(175 3 #reduceFor: 13297669 false) 
	#(175 3 #reduceFor: 13297670 false) 
	#(175 3 #reduceFor: 13297672 false) 
	#(175 3 #reduceFor: 13297673 false) 
	#(175 3 #reduceFor: 13297674 false) 
	#(175 3 #reduceFor: 13297676 false) 
	#(175 3 #reduceFor: 13297666 false) 
	#(175 3 #reduceFor: 13297671 false) 
	#(204 2 #reduceFor: 15538177 false) 
	#(205 0 #reduceFor: 15629313 false) 
	#(176 3 #reduceFor: 13761540 false) 
	#(192 1 #reduceFor: 14914561 false) 
	#(187 2 #reduceFor: 14759937 false) 
	#(193 1 #reduceFor: 14963713 false) 
	#(192 1 #reduceFor: 14914562 false) 
	#(193 1 #reduceFor: 14963714 false) 
	#(192 1 #reduceFor: 14914563 false) 
	#(190 0 #reduceFor: 14848001 false) 
	#(191 1 #reduceFor: 14874625 false) 
	#(206 3 #reduceFor: 15654913 false) 
	#(171 5 #reduceFor: 13157379 false) 
	#(172 2 #reduceFor: 13196289 false) 
	#(99 2 #reduceFor: 9369602 false) 
	#(117 2 #reduceFor: 10234884 false) 
	#(117 2 #reduceFor: 10234881 false) 
	#(117 2 #reduceFor: 10234882 false) 
	#(117 2 #reduceFor: 10234883 false) 
	#(117 2 #reduceFor: 10234885 false) 
	#(138 0 #reduceFor: 11343873 false) 
	#(131 3 #reduceFor: 10920961 false) 
	#(152 2 #reduceFor: 12016641 false) 
	#(151 2 #reduceFor: 11949057 false) 
	#(150 3 #reduceFor: 11884547 false) 
	#(150 3 #reduceFor: 11884548 false) 
	#(150 3 #reduceFor: 11884546 false) 
	#(124 3 #reduceFor: 10655746 false) 
	#(122 3 #reduceFor: 10570753 false) 
	#(121 3 #reduceFor: 10513409 false) 
	#(119 3 #reduceFor: 10412033 false) 
	#(167 2 #reduceFor: 12888066 false) 
	#(162 2 #reduceFor: 12552194 false) 
	#(162 2 #reduceFor: 12552193 false) 
	#(165 5 #reduceFor: 12751873 false) 
	#(199 2 #reduceFor: 15226882 false) 
	#(197 2 #reduceFor: 15063041 false) 
	#(195 2 #reduceFor: 15033345 false) 
	#(197 2 #reduceFor: 15063044 false) 
	#(186 4 #reduceFor: 14630915 false) 
	#(178 4 #reduceFor: 14053377 false) 
	#(205 1 #reduceFor: 15629314 false) 
	#(202 3 #reduceFor: 15356929 false) 
	#(201 3 #reduceFor: 15311873 false) 
	#(187 3 #reduceFor: 14759938 false) 
	#(188 2 #reduceFor: 14821377 false) 
	#(98 2 #reduceFor: 9369601 false) 
	#(148 1 #reduceFor: 11744259 false) 
	#(145 4 #reduceFor: 11640833 false) 
	#(146 2 #reduceFor: 11672578 false) 
	#(136 1 #reduceFor: 11214850 false) 
	#(133 4 #reduceFor: 11057153 false) 
	#(134 2 #reduceFor: 11128834 false) 
	#(131 4 #reduceFor: 10920964 false) 
	#(151 3 #reduceFor: 11949058 false) 
	#(151 3 #reduceFor: 11949059 false) 
	#(167 3 #reduceFor: 12888065 false) 
	#(197 3 #reduceFor: 15063042 false) 
	#(178 5 #reduceFor: 14053378 false) 
	#(204 4 #reduceFor: 15538178 false) 
	#(204 4 #reduceFor: 15538180 false) 
	#(202 4 #reduceFor: 15356930 false) 
	#(202 4 #reduceFor: 15356931 false) 
	#(203 4 #reduceFor: 15488001 false) 
	#(187 4 #reduceFor: 14759939 false) 
	#(190 2 #reduceFor: 14848002 false) 
	#(191 3 #reduceFor: 14874626 false) 
	#(148 2 #reduceFor: 11744257 false) 
	#(148 2 #reduceFor: 11744258 false) 
	#(149 1 #reduceFor: 11798529 false) 
	#(147 2 #reduceFor: 11697153 false) 
	#(136 2 #reduceFor: 11214849 false) 
	#(135 2 #reduceFor: 11157505 false) 
	#(133 5 #reduceFor: 11057155 false) 
	#(141 1 #reduceFor: 11529218 false) 
	#(137 5 #reduceFor: 11268097 false) 
	#(138 2 #reduceFor: 11343874 false) 
	#(133 5 #reduceFor: 11057154 false) 
	#(131 5 #reduceFor: 10920963 false) 
	#(131 5 #reduceFor: 10920962 false) 
	#(152 4 #reduceFor: 12016643 false) 
	#(152 4 #reduceFor: 12016642 false) 
	#(151 4 #reduceFor: 11949060 false) 
	#(204 5 #reduceFor: 15538179 false) 
	#(204 5 #reduceFor: 15538181 false) 
	#(202 5 #reduceFor: 15356932 false) 
	#(189 2 #reduceFor: 14848001 false) 
	#(147 3 #reduceFor: 11697154 false) 
	#(135 3 #reduceFor: 11157506 false) 
	#(137 6 #reduceFor: 11268098 false) 
	#(133 6 #reduceFor: 11057156 false) 
	#(144 0 #reduceFor: 11607041 false) 
	#(141 2 #reduceFor: 11529217 false) 
	#(140 2 #reduceFor: 11471873 false) 
	#(139 5 #reduceFor: 11372545 false) 
	#(131 6 #reduceFor: 10920966 false) 
	#(131 6 #reduceFor: 10920965 false) 
	#(204 6 #reduceFor: 15538182 false) 
	#(202 6 #reduceFor: 15356933 false) 
	#(149 3 #reduceFor: 11798531 false) 
	#(149 3 #reduceFor: 11798530 false) 
	#(142 2 #reduceFor: 11576322 false) 
	#(142 2 #reduceFor: 11576321 false) 
	#(140 3 #reduceFor: 11471874 false) 
	#(204 7 #reduceFor: 15538183 false) 
	#(202 7 #reduceFor: 15356934 false) 
	#(139 7 #reduceFor: 11372546 false) 
	#(144 2 #reduceFor: 11607042 false) 
	#(143 2 #reduceFor: 11607042 false) 
	#(143 2 #reduceFor: 11607041 false)
	).
]

{ #category : #generated }
GoParser class >> scannerClass [
	^GoScanner
]

{ #category : #generated }
GoParser class >> startingStateForsourceFile [
	^ 1
]

{ #category : #generated }
GoParser class >> symbolNames [
	^ #('<BREAK>' '<DEFAULT>' '<FUNC>' '<INTERFACE>' '<SELECT>' '<CASE>' '<DEFER>' '<GO>' '<MAP>' '<STRUCT>' '<CHAN>' '<ELSE>' '<GOTO>' '<PACKAGE>' '<SWITCH>' '<CONST>' '<FALLTHROUGH>' '<IF>' '<RANGE>' '<TYPE>' '<CONTINUE>' '<FOR>' '<IMPORT>' '<RETURN>' '<VAR>' '<NIL_LIT>' '<IDENTIFIER>' '<L_PAREN>' '<R_PAREN>' '<L_CURLY>' '<R_CURLY>' '<L_BRACKET>' '<R_BRACKET>' '<ASSIGN>' '<COMMA>' '<SEMI>' '<COLON>' '<DOT>' '<PLUS_PLUS>' '<MINUS_MINUS>' '<DECLARE_ASSIGN>' '<ELLIPSIS>' '<LOGICAL_OR>' '<LOGICAL_AND>' '<EQUALS>' '<NOT_EQUALS>' '<LESS>' '<LESS_OR_EQUALS>' '<GREATER>' '<GREATER_OR_EQUALS>' '<OR>' '<DIV>' '<MOD>' '<LSHIFT>' '<RSHIFT>' '<BIT_CLEAR>' '<EXCLAMATION>' '<PLUS>' '<MINUS>' '<CARET>' '<STAR>' '<AMPERSAND>' '<RECEIVE>' '<DECIMAL_LIT>' '<BINARY_LIT>' '<OCTAL_LIT>' '<HEX_LIT>' '<FLOAT_LIT>' '<IMAGINARY_LIT>' '<RUNE_LIT>' '<RAW_STRING_LIT>' '<INTERPRETED_STRING_LIT>' '<whitespace>' '<comment>' '<TERMINATOR>' '<assign_op>' 'B e g i n' 'sourceFile' '(importDecl eos)' '(importDecl eos)*' '(
		(functionDecl | methodDecl | declaration) eos
	)' '(
		(functionDecl | methodDecl | declaration) eos
	)*' 'packageClause' 'importDecl' '(importSpec eos)' '(importSpec eos)*' 'importSpec' 'importPath' 'declaration' 'constDecl' '(constSpec eos)' '(constSpec eos)*' 'constSpec' 'identifierList' '(<COMMA> <IDENTIFIER>)' '(<COMMA> <IDENTIFIER>)*' 'expressionList' '(<COMMA> expression)' '(<COMMA> expression)*' 'typeDecl' '(typeSpec eos)' '(typeSpec eos)*' 'typeSpec' 'functionDecl' 'methodDecl' 'receiver' 'varDecl' '(varSpec eos)' '(varSpec eos)*' 'varSpec' 'block' 'statementList' '(statement eos)' '(statement eos)+' 'statement' 'simpleStmt' 'terminatedSimpleStmt' 'expressionStmt' 'sendStmt' 'incDecStmt' 'assignment' 'shortVarDecl' 'emptyStmt' 'labeledStmt' 'returnStmt' 'breakStmt' 'continueStmt' 'gotoStmt' 'fallthroughStmt' 'deferStmt' 'ifStmt' 'switchStmt' 'exprSwitchStmt' 'exprCaseClause*' 'exprCaseClause' 'exprSwitchCase' 'typeSwitchStmt' 'typeCaseClause*' 'typeSwitchGuard' 'typeCaseClause' 'typeSwitchCase' 'typeList' '(<COMMA> (type_ | <NIL_LIT>))' '(<COMMA> (type_ | <NIL_LIT>))*' 'selectStmt' 'commClause*' 'commClause' 'commCase' 'recvStmt' 'forStmt' 'forClause' 'rangeClause' 'goStmt' 'type_' 'typeName' 'typeLit' 'arrayType' 'arrayLength' 'elementType' 'pointerType' 'interfaceType' '((methodSpec | typeName) eos)' '((methodSpec | typeName) eos)*' 'sliceType' 'mapType' 'channelType' 'methodSpec' 'functionType' 'signature' 'result' 'parameters' '(<COMMA> parameterDecl)' '(<COMMA> parameterDecl)*' 'parameterDecl' 'expression' 'primaryExpr' 'unaryExpr' 'conversion' 'operand' 'literal' 'basicLit' 'integer' 'operandName' 'qualifiedIdent' 'compositeLit' 'literalType' 'literalValue' 'elementList' '(<COMMA> keyedElement)' '(<COMMA> keyedElement)*' 'keyedElement' 'key' 'element' 'structType' '(fieldDecl eos)' '(fieldDecl eos)*' 'fieldDecl' 'string_' 'embeddedField' 'functionLit' 'index' 'slice_' 'typeAssertion' 'arguments' '<COMMA>?' 'methodExpr' 'receiverType' 'eos' 'E O F' 'error')
]

{ #category : #generated }
GoParser class >> transitionTable [
^#(
#[1 0 9 0 14 0 13 0 78 0 17 0 83] 
#[0 0 21 0 27] 
#[0 0 0 0 209] 
#[1 0 25 0 36 0 29 0 75 0 33 0 208] 
#[0 0 6 0 36 0 75] 
#[0 0 10 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 13 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 36 0 38 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 209] 
#[0 0 14 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 13 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 36 0 38 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 209] 
#[1 0 18 0 3 0 18 0 16 0 18 0 20 0 18 0 23 0 18 0 25 0 37 0 80 0 18 0 209] 
#[1 0 22 0 3 0 22 0 16 0 22 0 20 0 41 0 23 0 22 0 25 0 45 0 79 0 49 0 82 0 53 0 84 0 22 0 209] 
#[1 0 57 0 27 0 61 0 28 0 65 0 38 0 69 0 71 0 73 0 72 0 77 0 87 0 81 0 88 0 85 0 198] 
#[0 0 26 0 3 0 16 0 20 0 23 0 25 0 209] 
#[1 0 89 0 3 0 93 0 16 0 97 0 20 0 101 0 25 0 105 0 81 0 109 0 89 0 113 0 90 0 117 0 100 0 121 0 104 0 125 0 105 0 129 0 107 0 30 0 209] 
#[1 0 25 0 36 0 29 0 75 0 133 0 208] 
#[1 0 69 0 71 0 73 0 72 0 137 0 88 0 85 0 198] 
#[1 0 34 0 27 0 34 0 29 0 34 0 38 0 34 0 71 0 34 0 72 0 141 0 86] 
#[1 0 69 0 71 0 73 0 72 0 145 0 88 0 85 0 198] 
#[0 0 38 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 0 42 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 0 46 0 36 0 75] 
#[0 0 50 0 36 0 75] 
#[0 0 54 0 36 0 75] 
#[1 0 149 0 27 0 153 0 28 0 157 0 106 0 161 0 171] 
#[1 0 165 0 27 0 169 0 28 0 173 0 93 0 177 0 94] 
#[1 0 181 0 27 0 185 0 28 0 189 0 103] 
#[1 0 165 0 27 0 193 0 28 0 197 0 94 0 201 0 110] 
#[0 0 58 0 3 0 16 0 20 0 25 0 209] 
#[1 0 25 0 36 0 29 0 75 0 205 0 208] 
#[0 0 62 0 36 0 75] 
#[0 0 66 0 36 0 75] 
#[1 0 25 0 36 0 29 0 75 0 209 0 208] 
#[1 0 25 0 36 0 29 0 75 0 213 0 208] 
#[0 0 70 0 36 0 75] 
#[0 0 74 0 3 0 16 0 20 0 23 0 25 0 209] 
#[0 0 78 0 36 0 75] 
#[1 0 57 0 27 0 217 0 29 0 65 0 38 0 69 0 71 0 73 0 72 0 221 0 85 0 225 0 87 0 81 0 88 0 85 0 198] 
#[0 0 82 0 36 0 75] 
#[1 0 153 0 28 0 229 0 169 0 233 0 171] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 1 0 27 1 5 0 28 1 9 0 29 1 13 0 32 1 17 0 42 1 21 0 61 1 25 0 63 1 29 0 94 1 33 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 73 0 174 1 77 0 184 1 81 0 194] 
#[0 1 85 0 27] 
#[0 0 86 0 27] 
#[1 0 90 0 3 0 90 0 4 0 90 0 9 0 90 0 10 0 90 0 11 0 90 0 27 0 90 0 28 0 90 0 32 0 90 0 34 0 90 0 35 0 90 0 36 0 90 0 61 0 90 0 63 0 90 0 75 1 89 0 96] 
#[1 0 94 0 27 0 94 0 29 1 93 0 92] 
#[0 0 98 0 36 0 75] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 101 0 34 0 102 0 36 1 21 0 61 1 25 0 63 0 102 0 75 1 105 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 109 0 34 1 21 0 61 1 25 0 63 1 113 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 0 106 0 27 0 106 0 29 1 117 0 102] 
#[0 0 110 0 36 0 75] 
#[1 0 114 0 27 0 114 0 29 1 121 0 109] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 125 0 34 1 21 0 61 1 25 0 63 1 129 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 0 118 0 36 0 75] 
#[0 0 122 0 3 0 16 0 20 0 25 0 209] 
#[0 0 126 0 3 0 16 0 20 0 25 0 209] 
#[0 0 130 0 3 0 16 0 20 0 25 0 209] 
#[0 0 134 0 36 0 75] 
#[0 0 138 0 27 0 29 0 38 0 71 0 72] 
#[1 0 25 0 36 0 29 0 75 1 133 0 208] 
#[1 1 137 0 30 0 142 0 36 0 142 0 75 1 141 0 111] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 0 7 0 28 0 146 0 29 0 146 0 30 1 13 0 32 0 146 0 33 0 146 0 34 0 146 0 35 0 146 0 36 0 146 0 37 0 146 0 38 0 146 0 42 1 21 0 61 1 25 0 63 0 146 0 71 0 146 0 72 0 146 0 75 1 149 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 153 0 170 1 157 0 171 1 77 0 184 1 81 0 194] 
#[1 0 153 0 28 1 161 0 169 0 233 0 171] 
#[0 1 165 0 30] 
#[0 1 169 0 32] 
#[0 1 173 0 30] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 177 0 63 1 181 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 185 0 159 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 0 90 0 3 0 90 0 4 0 90 0 9 0 90 0 10 0 90 0 11 0 90 0 27 0 90 0 28 0 150 0 29 0 90 0 32 0 11 0 35 0 150 0 36 1 189 0 38 0 90 0 42 0 90 0 61 0 90 0 63 0 150 0 71 0 150 0 72 0 150 0 75 1 89 0 96] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 1 193 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 0 154 0 3 0 4 0 9 0 10 0 11 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 61 0 63 0 71 0 72 0 75] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 217 0 33 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 2 33 0 158 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 45 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 2 109 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 2 113 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 2 117 0 11] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 2 121 0 42 1 21 0 61 1 25 0 63 2 125 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 0 158 0 29 0 35] 
#[0 0 162 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 166 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 170 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 174 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 178 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 182 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 186 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 190 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 194 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 0 198 0 29 0 198 0 35 2 129 0 173] 
#[0 0 202 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 206 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 0 153 0 28 2 133 0 169 0 233 0 171] 
#[1 0 210 0 3 0 210 0 4 0 210 0 9 0 210 0 10 0 210 0 11 0 210 0 27 0 210 0 28 0 210 0 32 0 210 0 34 2 137 0 35 0 210 0 36 0 210 0 41 0 210 0 42 0 210 0 61 0 210 0 63 0 210 0 75 2 141 0 95] 
#[1 0 165 0 27 2 145 0 29 2 149 0 91 2 153 0 93 0 177 0 94] 
#[1 0 150 0 28 0 150 0 29 0 150 0 30 0 150 0 33 0 150 0 34 0 150 0 35 0 150 0 36 0 150 0 37 0 15 0 38 0 150 0 42 0 150 0 71 0 150 0 72 0 150 0 75] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 157 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 2 165 0 34] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 2 169 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 0 214 0 36 0 75] 
#[1 0 181 0 27 2 173 0 29 2 177 0 101 2 181 0 103] 
#[1 0 165 0 27 2 185 0 29 0 197 0 94 2 189 0 108 2 193 0 110] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 197 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 2 201 0 34 0 218 0 36 0 218 0 75] 
#[0 0 222 0 27 0 29 0 38 0 71 0 72] 
#[1 2 205 0 1 1 197 0 3 0 241 0 4 2 209 0 5 2 213 0 7 2 217 0 8 0 245 0 9 0 249 0 10 0 253 0 11 2 221 0 13 2 225 0 15 0 93 0 16 2 229 0 17 2 233 0 18 0 97 0 20 2 237 0 21 2 241 0 22 2 245 0 24 0 101 0 25 1 201 0 26 2 249 0 27 1 209 0 28 1 137 0 30 2 253 0 31 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 5 0 89 0 113 0 90 3 9 0 94 3 13 0 97 0 117 0 100 0 129 0 107 3 17 0 111 3 21 0 112 3 25 0 113 3 29 0 114 3 33 0 115 3 37 0 116 3 41 0 118 3 45 0 119 3 49 0 120 3 53 0 121 3 57 0 122 3 61 0 123 3 65 0 124 3 69 0 125 3 73 0 126 3 77 0 127 3 81 0 128 3 85 0 129 3 89 0 130 3 93 0 131 3 97 0 132 3 101 0 133 3 105 0 137 3 109 0 145 3 113 0 150 3 117 0 153 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 0 226 0 36 0 75] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 1 0 27 1 5 0 28 1 9 0 29 1 13 0 32 1 17 0 42 1 21 0 61 1 25 0 63 1 29 0 94 3 125 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 73 0 174 1 77 0 184 1 81 0 194] 
#[0 0 230 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 234 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 238 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 0 242 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 0 246 0 27 0 246 0 31 3 129 0 163] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 3 133 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 0 250 0 27 0 250 0 31 0 250 0 61 3 137 0 196] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 3 141 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 1 181 0 154 1 37 0 155 1 41 0 156 1 45 0 157 3 145 0 159 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 0 254 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 1 2 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 3 149 0 27] 
#[0 3 153 0 29] 
#[1 0 153 0 28 3 157 0 169 0 233 0 171] 
#[0 1 6 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 0 19 0 28 0 19 0 29 0 19 0 30 1 10 0 31 1 10 0 32 1 10 0 33 1 10 0 34 0 19 0 35 1 10 0 36 1 10 0 37 0 23 0 38 1 10 0 39 1 10 0 40 0 19 0 42 1 10 0 43 1 10 0 44 1 10 0 45 1 10 0 46 1 10 0 47 1 10 0 48 1 10 0 49 1 10 0 50 1 10 0 51 1 10 0 52 1 10 0 53 1 10 0 54 1 10 0 55 1 10 0 56 1 10 0 58 1 10 0 59 1 10 0 60 1 10 0 61 1 10 0 62 1 10 0 63 1 10 0 75 1 10 0 76] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 165 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 169 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 217 0 33 3 173 0 42 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 2 33 0 158 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 45 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 1 181 0 154 1 37 0 155 1 41 0 156 1 45 0 157 3 177 0 159 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 181 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 185 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 189 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 193 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 197 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 201 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 205 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 3 141 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 209 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 1 14 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 18 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 22 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 30 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 34 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 38 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 3 213 0 28 1 42 0 38] 
#[1 0 162 0 28 0 162 0 29 1 46 0 30 0 162 0 35 0 162 0 38 0 162 0 42] 
#[1 0 170 0 28 0 170 0 29 1 50 0 30 0 170 0 35 0 170 0 38 0 170 0 42] 
#[0 3 217 0 33] 
#[1 0 182 0 28 0 182 0 29 1 54 0 30 0 182 0 35 0 182 0 38 0 182 0 42] 
#[1 0 186 0 28 0 186 0 29 1 58 0 30 0 186 0 35 0 186 0 38 0 186 0 42] 
#[1 1 62 0 33 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[1 4 41 0 28 1 66 0 29 1 66 0 30 1 66 0 31 4 45 0 32 1 66 0 33 1 66 0 34 1 66 0 35 1 66 0 36 1 66 0 37 4 49 0 38 1 66 0 39 1 66 0 40 1 66 0 42 1 66 0 43 1 66 0 44 1 66 0 45 1 66 0 46 1 66 0 47 1 66 0 48 1 66 0 49 1 66 0 50 1 66 0 51 1 66 0 52 1 66 0 53 1 66 0 54 1 66 0 55 1 66 0 56 1 66 0 58 1 66 0 59 1 66 0 60 1 66 0 61 1 66 0 62 1 66 0 63 1 66 0 75 1 66 0 76 4 53 0 201 4 57 0 202 4 61 0 203 4 65 0 204] 
#[0 1 70 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 74 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 78 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 82 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 86 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 90 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 94 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 98 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 4 69 0 30 4 73 0 187] 
#[1 0 206 0 28 0 206 0 29 1 102 0 30 0 206 0 35 0 206 0 38 0 206 0 42] 
#[0 1 106 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 110 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 114 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 4 77 0 38] 
#[0 1 118 0 29 0 35] 
#[0 1 122 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 1 181 0 154 1 37 0 155 1 41 0 156 1 45 0 157 4 81 0 159 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 4 85 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 1 126 0 29 0 35] 
#[1 4 89 0 29 4 93 0 35 4 97 0 172] 
#[1 1 137 0 30 1 130 0 36 1 130 0 75 4 101 0 111] 
#[0 4 105 0 27] 
#[0 1 134 0 3 0 4 0 9 0 10 0 11 0 27 0 28 0 32 0 34 0 35 0 36 0 41 0 42 0 61 0 63 0 75] 
#[0 1 138 0 36 0 75] 
#[0 1 142 0 27 0 29] 
#[1 0 25 0 36 0 29 0 75 4 109 0 208] 
#[0 1 146 0 36 0 75] 
#[1 1 150 0 29 1 150 0 30 1 150 0 35 1 150 0 36 1 150 0 37 1 150 0 42 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 1 150 0 75 4 113 0 99] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 4 117 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 1 154 0 36 0 75] 
#[0 1 158 0 36 0 75] 
#[0 1 162 0 27 0 29] 
#[1 0 25 0 36 0 29 0 75 4 121 0 208] 
#[0 1 166 0 36 0 75] 
#[0 1 170 0 27 0 29] 
#[1 0 25 0 36 0 29 0 75 4 125 0 208] 
#[0 1 174 0 36 0 75] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 4 129 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 4 133 0 27 1 178 0 36 1 178 0 75] 
#[0 4 137 0 30] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 4 141 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 4 145 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 149 0 27] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 4 153 0 27 1 209 0 28 4 157 0 30 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 9 0 94 3 13 0 97 4 161 0 117 4 165 0 118 4 169 0 119 4 173 0 120 4 177 0 121 4 181 0 122 4 185 0 123 4 189 0 139 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 4 193 0 175 4 197 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 1 182 0 36 0 75] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 4 201 0 27 1 209 0 28 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 9 0 94 3 13 0 97 4 205 0 117 4 165 0 118 4 169 0 119 4 173 0 120 4 177 0 121 4 181 0 122 4 185 0 123 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 4 209 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 4 213 0 27 1 186 0 36 1 186 0 75] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 4 217 0 19 1 201 0 26 4 201 0 27 1 209 0 28 1 137 0 30 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 4 221 0 94 4 225 0 97 4 229 0 111 4 233 0 117 4 165 0 118 4 169 0 119 4 173 0 120 4 177 0 121 4 181 0 122 4 185 0 123 4 237 0 151 4 241 0 152 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 4 245 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 190 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 1 190 0 75 4 249 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 0 19 0 28 0 150 0 30 1 10 0 32 0 27 0 35 1 10 0 36 4 253 0 37 0 23 0 38 1 10 0 39 1 10 0 40 0 90 0 41 1 10 0 43 1 10 0 44 1 10 0 45 1 10 0 46 1 10 0 47 1 10 0 48 1 10 0 49 1 10 0 50 1 10 0 51 1 10 0 52 1 10 0 53 1 10 0 54 1 10 0 55 1 10 0 56 1 10 0 58 1 10 0 59 1 10 0 60 1 10 0 61 1 10 0 62 1 10 0 63 1 10 0 75 1 10 0 76 1 89 0 96] 
#[0 1 194 0 12 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 1 198 0 3 0 4 0 9 0 10 0 11 0 26 0 27 0 28 0 30 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 75] 
#[0 1 202 0 36 0 75] 
#[0 5 1 0 41] 
#[0 5 5 0 76] 
#[0 1 206 0 36 0 75] 
#[0 5 9 0 31] 
#[0 1 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 13 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[1 2 205 0 1 1 214 0 2 1 197 0 3 0 241 0 4 2 209 0 5 1 214 0 6 2 213 0 7 2 217 0 8 0 245 0 9 0 249 0 10 0 253 0 11 2 221 0 13 2 225 0 15 0 93 0 16 2 229 0 17 2 233 0 18 0 97 0 20 2 237 0 21 2 241 0 22 2 245 0 24 0 101 0 25 1 201 0 26 2 249 0 27 1 209 0 28 1 137 0 30 1 214 0 31 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 5 0 89 0 113 0 90 3 9 0 94 3 13 0 97 0 117 0 100 0 129 0 107 3 17 0 111 5 13 0 113 3 33 0 115 3 37 0 116 3 41 0 118 3 45 0 119 3 49 0 120 3 53 0 121 3 57 0 122 3 61 0 123 3 65 0 124 3 69 0 125 3 73 0 126 3 77 0 127 3 81 0 128 3 85 0 129 3 89 0 130 3 93 0 131 3 97 0 132 3 101 0 133 3 105 0 137 3 109 0 145 3 113 0 150 3 117 0 153 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 0 25 0 36 0 29 0 75 5 17 0 208] 
#[0 1 218 0 36 0 75] 
#[0 1 222 0 30 0 36 0 75] 
#[0 1 226 0 30 0 36 0 75] 
#[0 1 230 0 30 0 36 0 75] 
#[0 1 234 0 30 0 36 0 75] 
#[0 1 238 0 30 0 36 0 75] 
#[0 1 242 0 30 0 36 0 75] 
#[0 1 246 0 36 0 75] 
#[0 1 250 0 36 0 75] 
#[0 1 254 0 36 0 75] 
#[0 2 2 0 36 0 75] 
#[0 2 6 0 36 0 75] 
#[0 2 10 0 36 0 75] 
#[0 2 14 0 36 0 75] 
#[0 2 18 0 36 0 75] 
#[0 2 22 0 36 0 75] 
#[0 2 26 0 36 0 75] 
#[0 2 30 0 36 0 75] 
#[0 2 34 0 36 0 75] 
#[0 2 38 0 36 0 75] 
#[0 2 42 0 36 0 75] 
#[1 2 46 0 30 1 150 0 35 2 46 0 36 5 21 0 39 5 25 0 40 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 5 29 0 63 2 46 0 75 1 150 0 76 4 113 0 99] 
#[1 0 31 0 29 0 158 0 35] 
#[1 5 33 0 27 5 37 0 31 5 41 0 155 5 45 0 162 5 49 0 167 1 77 0 184] 
#[0 5 53 0 33] 
#[1 1 1 0 27 5 57 0 31 5 61 0 61 5 65 0 94 5 69 0 155 1 77 0 184 5 73 0 195 5 77 0 197 5 81 0 199] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 177 0 63 1 181 0 154 1 37 0 155 1 41 0 156 1 45 0 157 5 85 0 159 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 2 50 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 2 54 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 2 58 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 0 242 0 28 0 242 0 29 1 137 0 30 0 242 0 35 0 242 0 38 0 242 0 42 5 89 0 111] 
#[0 5 93 0 27] 
#[1 3 213 0 28 3 153 0 29 1 42 0 38] 
#[1 5 97 0 29 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 5 101 0 33] 
#[0 2 62 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 2 66 0 29 2 66 0 30 2 66 0 31 2 66 0 33 2 66 0 34 2 66 0 35 2 66 0 36 2 66 0 37 2 66 0 39 2 66 0 40 2 66 0 42 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 2 66 0 63 2 66 0 75 2 66 0 76] 
#[1 2 70 0 29 2 70 0 30 2 70 0 31 2 70 0 33 2 70 0 34 2 70 0 35 2 70 0 36 2 70 0 37 2 70 0 39 2 70 0 40 2 70 0 42 2 70 0 43 2 70 0 44 2 70 0 45 2 70 0 46 2 70 0 47 2 70 0 48 2 70 0 49 2 70 0 50 2 70 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 2 70 0 58 2 70 0 59 2 70 0 60 4 33 0 61 4 37 0 62 2 70 0 63 2 70 0 75 2 70 0 76] 
#[1 2 74 0 29 2 74 0 30 2 74 0 31 2 74 0 33 2 74 0 34 2 74 0 35 2 74 0 36 2 74 0 37 2 74 0 39 2 74 0 40 2 74 0 42 2 74 0 43 2 74 0 44 2 74 0 45 2 74 0 46 2 74 0 47 2 74 0 48 2 74 0 49 2 74 0 50 2 74 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 2 74 0 58 2 74 0 59 2 74 0 60 4 33 0 61 4 37 0 62 2 74 0 63 2 74 0 75 2 74 0 76] 
#[1 2 78 0 29 2 78 0 30 2 78 0 31 2 78 0 33 2 78 0 34 2 78 0 35 2 78 0 36 2 78 0 37 2 78 0 39 2 78 0 40 2 78 0 42 2 78 0 43 2 78 0 44 2 78 0 45 2 78 0 46 2 78 0 47 2 78 0 48 2 78 0 49 2 78 0 50 2 78 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 2 78 0 58 2 78 0 59 2 78 0 60 4 33 0 61 4 37 0 62 2 78 0 63 2 78 0 75 2 78 0 76] 
#[1 0 35 0 28 1 122 0 29 1 122 0 35 0 39 0 38 1 122 0 42] 
#[0 2 82 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 2 86 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 2 90 0 29 2 90 0 30 2 90 0 31 2 90 0 33 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 2 90 0 39 2 90 0 40 2 90 0 42 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 2 90 0 63 2 90 0 75 2 90 0 76] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 105 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 1 181 0 154 1 37 0 155 1 41 0 156 1 45 0 157 5 109 0 159 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 113 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 117 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 125 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 129 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 133 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 137 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 141 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 145 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 149 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 153 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 157 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 165 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 169 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 173 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 177 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 181 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 185 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 5 189 0 29 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 5 193 0 97 5 197 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 5 201 0 37 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 205 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 5 209 0 27 5 213 0 28] 
#[0 2 94 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 2 98 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 2 102 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 2 106 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 5 217 0 27 1 209 0 28 4 69 0 30 5 221 0 31 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 225 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 5 229 0 187 5 233 0 188 5 237 0 191 5 241 0 192 5 245 0 193 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 2 110 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 5 249 0 27] 
#[0 2 114 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 2 118 0 29 0 35] 
#[0 2 122 0 3 0 4 0 9 0 10 0 11 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 61 0 63 0 71 0 72 0 75] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 1 0 27 1 5 0 28 5 253 0 29 1 13 0 32 1 17 0 42 1 21 0 61 1 25 0 63 1 29 0 94 1 33 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 6 1 0 174 1 77 0 184 1 81 0 194] 
#[0 2 126 0 29 0 35] 
#[0 2 130 0 36 0 75] 
#[0 2 134 0 3 0 4 0 9 0 10 0 11 0 27 0 28 0 32 0 34 0 35 0 36 0 41 0 42 0 61 0 63 0 75] 
#[0 2 138 0 27 0 29] 
#[1 2 142 0 29 2 142 0 30 2 142 0 34 0 43 0 35 2 142 0 36 2 142 0 37 2 142 0 42 2 142 0 75 2 142 0 76 6 9 0 98] 
#[0 2 146 0 36 0 75] 
#[0 2 150 0 27 0 29] 
#[0 2 154 0 27 0 29] 
#[0 2 158 0 36 0 75] 
#[0 2 162 0 36 0 75] 
#[1 2 166 0 2 2 166 0 6 2 166 0 31 6 13 0 146] 
#[1 2 170 0 36 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 2 170 0 75] 
#[1 2 174 0 36 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 2 174 0 75] 
#[0 2 178 0 36 0 75] 
#[1 0 19 0 28 0 19 0 30 1 10 0 32 0 27 0 35 1 10 0 36 0 23 0 38 1 10 0 39 1 10 0 40 0 47 0 41 1 10 0 43 1 10 0 44 1 10 0 45 1 10 0 46 1 10 0 47 1 10 0 48 1 10 0 49 1 10 0 50 1 10 0 51 1 10 0 52 1 10 0 53 1 10 0 54 1 10 0 55 1 10 0 56 1 10 0 58 1 10 0 59 1 10 0 60 1 10 0 61 1 10 0 62 1 10 0 63 1 10 0 76 1 89 0 96] 
#[1 2 182 0 2 2 182 0 6 2 182 0 31 6 21 0 134] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 6 25 0 27 1 209 0 28 6 29 0 30 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 6 33 0 139 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 6 37 0 175 4 197 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 6 41 0 36] 
#[0 6 45 0 36] 
#[0 6 49 0 36] 
#[0 6 53 0 36] 
#[0 6 57 0 36] 
#[0 2 186 0 3 0 4 0 9 0 10 0 11 0 26 0 27 0 28 0 30 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[0 6 61 0 30] 
#[1 6 65 0 30 1 150 0 35 2 46 0 36 5 21 0 39 5 25 0 40 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 5 29 0 63 1 150 0 76 4 113 0 99] 
#[1 4 41 0 28 1 66 0 30 4 45 0 32 1 66 0 35 1 66 0 36 6 69 0 38 1 66 0 39 1 66 0 40 1 66 0 43 1 66 0 44 1 66 0 45 1 66 0 46 1 66 0 47 1 66 0 48 1 66 0 49 1 66 0 50 1 66 0 51 1 66 0 52 1 66 0 53 1 66 0 54 1 66 0 55 1 66 0 56 1 66 0 58 1 66 0 59 1 66 0 60 1 66 0 61 1 66 0 62 1 66 0 63 1 66 0 76 4 53 0 201 4 57 0 202 4 61 0 203 4 65 0 204] 
#[1 0 19 0 28 0 19 0 30 1 10 0 32 1 10 0 34 0 27 0 35 1 10 0 36 1 10 0 37 0 23 0 38 1 10 0 39 1 10 0 40 0 90 0 41 1 10 0 43 1 10 0 44 1 10 0 45 1 10 0 46 1 10 0 47 1 10 0 48 1 10 0 49 1 10 0 50 1 10 0 51 1 10 0 52 1 10 0 53 1 10 0 54 1 10 0 55 1 10 0 56 1 10 0 58 1 10 0 59 1 10 0 60 1 10 0 61 1 10 0 62 1 10 0 63 1 10 0 76 1 89 0 96] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 6 73 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 137 0 30 1 150 0 35 2 46 0 36 5 21 0 39 5 25 0 40 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 5 29 0 63 1 150 0 76 4 113 0 99 6 77 0 111] 
#[0 2 190 0 36 0 75] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 6 81 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 6 85 0 41] 
#[1 6 89 0 34 5 5 0 76] 
#[0 2 194 0 36 0 75] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 6 93 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 6 97 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 137 0 30 6 101 0 111] 
#[1 1 137 0 30 6 105 0 111] 
#[1 1 137 0 30 1 150 0 34 1 150 0 35 2 46 0 36 5 21 0 39 5 25 0 40 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 5 29 0 63 1 150 0 76 4 113 0 99 6 109 0 111] 
#[0 2 198 0 36 0 75] 
#[1 2 205 0 1 1 197 0 3 0 241 0 4 2 209 0 5 2 213 0 7 2 217 0 8 0 245 0 9 0 249 0 10 0 253 0 11 2 221 0 13 2 225 0 15 0 93 0 16 2 229 0 17 2 233 0 18 0 97 0 20 2 237 0 21 2 241 0 22 2 245 0 24 0 101 0 25 1 201 0 26 2 249 0 27 1 209 0 28 1 137 0 30 1 213 0 32 0 51 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 202 0 75 3 5 0 89 0 113 0 90 3 9 0 94 3 13 0 97 0 117 0 100 0 129 0 107 3 17 0 111 6 113 0 115 3 37 0 116 3 41 0 118 3 45 0 119 3 49 0 120 3 53 0 121 3 57 0 122 3 61 0 123 3 65 0 124 3 69 0 125 3 73 0 126 3 77 0 127 3 81 0 128 3 85 0 129 3 89 0 130 3 93 0 131 3 97 0 132 3 101 0 133 3 105 0 137 3 109 0 145 3 113 0 150 3 117 0 153 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 6 117 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 6 121 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 2 206 0 12 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 2 210 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 13 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[0 2 214 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 13 0 15 0 16 0 17 0 18 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 31 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[0 2 218 0 30 0 36 0 75] 
#[0 2 222 0 30 0 36 0 75] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 6 125 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 0 153 0 28 0 150 0 36 1 189 0 38 0 150 0 75 6 129 0 171] 
#[0 2 226 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 0 25 0 36 0 29 0 75 6 133 0 208] 
#[0 2 230 0 27 0 31] 
#[1 0 25 0 36 0 29 0 75 6 137 0 208] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 1 181 0 154 1 37 0 155 1 41 0 156 1 45 0 157 6 141 0 159 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 2 234 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 1 97 0 27 6 145 0 155 1 77 0 184] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 6 149 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 2 238 0 36 0 71 0 72 0 75] 
#[0 2 242 0 27 0 31 0 61] 
#[1 0 25 0 36 0 29 0 75 6 153 0 208] 
#[1 2 246 0 36 0 69 0 71 0 73 0 72 2 246 0 75 6 157 0 198] 
#[0 0 55 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 2 250 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 0 59 0 28 0 59 0 29 0 59 0 30 2 254 0 31 2 254 0 32 2 254 0 33 2 254 0 34 0 59 0 35 2 254 0 36 2 254 0 37 0 59 0 38 2 254 0 39 2 254 0 40 0 59 0 42 2 254 0 43 2 254 0 44 2 254 0 45 2 254 0 46 2 254 0 47 2 254 0 48 2 254 0 49 2 254 0 50 2 254 0 51 2 254 0 52 2 254 0 53 2 254 0 54 2 254 0 55 2 254 0 56 2 254 0 58 2 254 0 59 2 254 0 60 2 254 0 61 2 254 0 62 2 254 0 63 2 254 0 75 2 254 0 76] 
#[0 3 2 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 1 181 0 154 1 37 0 155 1 41 0 156 1 45 0 157 6 161 0 159 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 6 165 0 29 6 169 0 35 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 3 6 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[1 3 10 0 29 3 10 0 30 3 10 0 31 3 10 0 33 3 10 0 34 3 10 0 35 3 10 0 36 3 10 0 37 3 10 0 39 3 10 0 40 3 10 0 42 3 10 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 10 0 63 3 10 0 75 3 10 0 76] 
#[1 3 14 0 29 3 14 0 30 3 14 0 31 3 14 0 33 3 14 0 34 3 14 0 35 3 14 0 36 3 14 0 37 3 14 0 39 3 14 0 40 3 14 0 42 3 14 0 43 3 14 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 14 0 63 3 14 0 75 3 14 0 76] 
#[1 3 18 0 29 3 18 0 30 3 18 0 31 3 18 0 33 3 18 0 34 3 18 0 35 3 18 0 36 3 18 0 37 3 18 0 39 3 18 0 40 3 18 0 42 3 18 0 43 3 18 0 44 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 18 0 63 3 18 0 75 3 18 0 76] 
#[1 3 22 0 29 3 22 0 30 3 22 0 31 3 22 0 33 3 22 0 34 3 22 0 35 3 22 0 36 3 22 0 37 3 22 0 39 3 22 0 40 3 22 0 42 3 22 0 43 3 22 0 44 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 22 0 63 3 22 0 75 3 22 0 76] 
#[1 3 26 0 29 3 26 0 30 3 26 0 31 3 26 0 33 3 26 0 34 3 26 0 35 3 26 0 36 3 26 0 37 3 26 0 39 3 26 0 40 3 26 0 42 3 26 0 43 3 26 0 44 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 26 0 63 3 26 0 75 3 26 0 76] 
#[1 3 30 0 29 3 30 0 30 3 30 0 31 3 30 0 33 3 30 0 34 3 30 0 35 3 30 0 36 3 30 0 37 3 30 0 39 3 30 0 40 3 30 0 42 3 30 0 43 3 30 0 44 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 30 0 63 3 30 0 75 3 30 0 76] 
#[1 3 34 0 29 3 34 0 30 3 34 0 31 3 34 0 33 3 34 0 34 3 34 0 35 3 34 0 36 3 34 0 37 3 34 0 39 3 34 0 40 3 34 0 42 3 34 0 43 3 34 0 44 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 34 0 63 3 34 0 75 3 34 0 76] 
#[1 3 38 0 29 3 38 0 30 3 38 0 31 3 38 0 33 3 38 0 34 3 38 0 35 3 38 0 36 3 38 0 37 3 38 0 39 3 38 0 40 3 38 0 42 3 38 0 43 3 38 0 44 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 38 0 63 3 38 0 75 3 38 0 76] 
#[1 3 42 0 29 3 42 0 30 3 42 0 31 3 42 0 33 3 42 0 34 3 42 0 35 3 42 0 36 3 42 0 37 3 42 0 39 3 42 0 40 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 46 3 42 0 47 3 42 0 48 3 42 0 49 3 42 0 50 3 42 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 3 42 0 58 3 42 0 59 3 42 0 60 4 33 0 61 4 37 0 62 3 42 0 63 3 42 0 75 3 42 0 76] 
#[0 3 46 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 3 50 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 3 54 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 3 58 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 3 62 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 3 66 0 29 3 66 0 30 3 66 0 31 3 66 0 33 3 66 0 34 3 66 0 35 3 66 0 36 3 66 0 37 3 66 0 39 3 66 0 40 3 66 0 42 3 66 0 43 3 66 0 44 3 66 0 45 3 66 0 46 3 66 0 47 3 66 0 48 3 66 0 49 3 66 0 50 3 66 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 3 66 0 58 3 66 0 59 3 66 0 60 4 33 0 61 4 37 0 62 3 66 0 63 3 66 0 75 3 66 0 76] 
#[1 3 70 0 29 3 70 0 30 3 70 0 31 3 70 0 33 3 70 0 34 3 70 0 35 3 70 0 36 3 70 0 37 3 70 0 39 3 70 0 40 3 70 0 42 3 70 0 43 3 70 0 44 3 70 0 45 3 70 0 46 3 70 0 47 3 70 0 48 3 70 0 49 3 70 0 50 3 70 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 3 70 0 58 3 70 0 59 3 70 0 60 4 33 0 61 4 37 0 62 3 70 0 63 3 70 0 75 3 70 0 76] 
#[1 3 74 0 29 3 74 0 30 3 74 0 31 3 74 0 33 3 74 0 34 3 74 0 35 3 74 0 36 3 74 0 37 3 74 0 39 3 74 0 40 3 74 0 42 3 74 0 43 3 74 0 44 3 74 0 45 3 74 0 46 3 74 0 47 3 74 0 48 3 74 0 49 3 74 0 50 3 74 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 3 74 0 58 3 74 0 59 3 74 0 60 4 33 0 61 4 37 0 62 3 74 0 63 3 74 0 75 3 74 0 76] 
#[0 3 78 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 3 82 0 29 0 30 0 31 0 33 0 34 0 35 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 3 86 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 3 90 0 29 6 173 0 35 6 177 0 42 6 181 0 205] 
#[1 3 213 0 28 3 90 0 29 6 185 0 35 1 42 0 38 6 189 0 42 6 193 0 205] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 6 197 0 33 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 6 201 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 6 205 0 33 6 209 0 37 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 3 94 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 6 213 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 0 19 0 28 0 150 0 30 1 10 0 31 1 10 0 32 1 10 0 35 0 63 0 37 0 23 0 38 1 10 0 43 1 10 0 44 1 10 0 45 1 10 0 46 1 10 0 47 1 10 0 48 1 10 0 49 1 10 0 50 1 10 0 51 1 10 0 52 1 10 0 53 1 10 0 54 1 10 0 55 1 10 0 56 1 10 0 58 1 10 0 59 1 10 0 60 1 10 0 61 1 10 0 62] 
#[0 3 102 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 3 106 0 31 3 106 0 35 3 110 0 37 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[1 3 114 0 31 3 114 0 35 3 118 0 37] 
#[1 6 217 0 31 6 221 0 35] 
#[1 3 122 0 31 3 122 0 35 6 225 0 190] 
#[0 6 229 0 37] 
#[0 3 126 0 31 0 35] 
#[0 3 130 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 3 134 0 3 0 4 0 9 0 10 0 11 0 27 0 28 0 29 0 30 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 61 0 63 0 71 0 72 0 75] 
#[0 3 138 0 29 0 35] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 6 233 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 3 142 0 29 0 30 0 34 0 35 0 36 0 37 0 42 0 75 0 76] 
#[1 6 237 0 2 6 241 0 6 6 245 0 31 6 249 0 147 6 253 0 148] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 21 0 61 1 25 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 7 1 0 176 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 7 5 0 2 7 9 0 6 7 13 0 31 7 17 0 135 7 21 0 136] 
#[1 0 19 0 28 0 19 0 30 1 10 0 32 0 23 0 38 6 17 0 41 1 10 0 43 1 10 0 44 1 10 0 45 1 10 0 46 1 10 0 47 1 10 0 48 1 10 0 49 1 10 0 50 1 10 0 51 1 10 0 52 1 10 0 53 1 10 0 54 1 10 0 55 1 10 0 56 1 10 0 58 1 10 0 59 1 10 0 60 1 10 0 61 1 10 0 62] 
#[1 2 182 0 2 2 182 0 6 2 182 0 31 7 25 0 134] 
#[0 7 29 0 30] 
#[1 7 33 0 30 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 3 146 0 3 0 4 0 9 0 10 0 11 0 26 0 27 0 28 0 30 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[0 3 150 0 3 0 4 0 9 0 10 0 11 0 26 0 27 0 28 0 30 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[0 3 154 0 3 0 4 0 9 0 10 0 11 0 26 0 27 0 28 0 30 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[0 3 158 0 3 0 4 0 9 0 10 0 11 0 26 0 27 0 28 0 30 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[0 3 162 0 3 0 4 0 9 0 10 0 11 0 26 0 27 0 28 0 30 0 32 0 36 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72] 
#[1 3 166 0 2 3 166 0 6 3 166 0 31 7 37 0 138] 
#[1 2 182 0 2 2 182 0 6 2 182 0 31 7 41 0 134] 
#[1 5 209 0 27 7 45 0 28] 
#[1 1 137 0 30 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 7 49 0 111] 
#[1 7 53 0 12 3 170 0 36 3 170 0 75] 
#[1 3 174 0 30 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 7 57 0 19 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 6 117 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 7 61 0 19] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 4 201 0 27 1 209 0 28 3 178 0 30 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 9 0 94 3 13 0 97 7 65 0 116 3 41 0 118 3 45 0 119 3 49 0 120 3 53 0 121 3 57 0 122 3 61 0 123 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 7 69 0 36 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 3 182 0 36 0 75] 
#[0 3 186 0 36 0 75] 
#[0 3 190 0 36 0 75] 
#[0 3 194 0 36 0 75] 
#[0 3 198 0 30 0 36 0 75] 
#[0 3 202 0 30 0 36 0 75] 
#[1 3 206 0 30 3 206 0 36 3 206 0 37 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 3 206 0 75] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 97 0 27 1 145 0 28 1 13 0 32 3 210 0 36 1 21 0 61 1 25 0 63 3 210 0 75 1 149 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 7 73 0 170 1 157 0 171 1 77 0 184 1 81 0 194] 
#[0 3 214 0 27 0 31] 
#[0 3 218 0 27 0 31] 
#[0 3 222 0 28 0 29 0 30 0 33 0 34 0 35 0 36 0 37 0 38 0 42 0 71 0 72 0 75] 
#[0 3 226 0 36 0 71 0 72 0 75] 
#[1 3 230 0 36 0 69 0 71 0 73 0 72 3 230 0 75 7 77 0 198] 
#[0 3 234 0 27 0 31 0 61] 
#[0 3 238 0 36 0 75] 
#[0 3 242 0 30] 
#[0 3 246 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 7 81 0 29] 
#[0 3 250 0 29] 
#[1 3 90 0 29 6 173 0 35 7 85 0 205] 
#[0 7 89 0 29] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 3 250 0 29 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 7 93 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 3 90 0 29 6 173 0 35 7 97 0 205] 
#[0 7 101 0 29] 
#[0 3 254 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 7 105 0 33 7 109 0 37 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 4 2 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 7 113 0 33 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 7 117 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 7 121 0 29] 
#[0 4 6 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 7 125 0 31] 
#[1 4 10 0 31 0 67 0 35 7 133 0 189] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 4 69 0 30 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 7 137 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 7 141 0 187 7 145 0 193 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 4 14 0 29 4 14 0 30 4 14 0 34 4 14 0 35 4 14 0 36 4 14 0 37 4 14 0 42 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 4 14 0 75 4 14 0 76] 
#[0 4 18 0 37] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 4 201 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 7 149 0 94 7 153 0 97 7 157 0 119 7 161 0 149 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 7 165 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 22 0 36 0 75] 
#[0 4 26 0 2 0 6 0 31] 
#[0 7 169 0 37] 
#[1 4 41 0 28 4 45 0 32 7 173 0 38 4 53 0 201 4 57 0 202 4 61 0 203 4 65 0 204] 
#[0 4 30 0 37] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 7 177 0 97 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 2 161 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 34 0 36 0 75] 
#[0 4 38 0 2 0 6 0 31] 
#[0 7 181 0 37] 
#[1 7 5 0 2 7 9 0 6 7 185 0 31 7 17 0 135 7 21 0 136] 
#[1 3 166 0 2 3 166 0 6 3 166 0 31 7 189 0 138] 
#[1 2 182 0 2 2 182 0 6 2 182 0 31 7 193 0 134] 
#[1 7 197 0 2 7 201 0 6 7 205 0 31 7 209 0 140 7 213 0 141] 
#[1 7 5 0 2 7 9 0 6 7 217 0 31 7 17 0 135 7 21 0 136] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 7 221 0 20 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 6 213 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[1 7 225 0 12 4 42 0 36 4 42 0 75] 
#[1 2 233 0 18 1 137 0 30 7 229 0 111 7 233 0 131] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 7 237 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 7 241 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 46 0 30] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 4 201 0 27 1 209 0 28 4 50 0 30 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 9 0 94 3 13 0 97 7 245 0 116 3 41 0 118 3 45 0 119 3 49 0 120 3 53 0 121 3 57 0 122 3 61 0 123 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 54 0 36 0 75] 
#[0 4 58 0 36 0 75] 
#[0 4 62 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 7 249 0 29] 
#[0 4 66 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 3 90 0 29 6 173 0 35 7 253 0 42 8 1 0 205] 
#[0 8 5 0 29] 
#[0 4 70 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 4 74 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 8 9 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 78 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 8 13 0 33 8 17 0 37 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 4 82 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 4 86 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 5 217 0 27 1 209 0 28 4 69 0 30 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 5 225 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 5 229 0 187 8 21 0 191 5 241 0 192 5 245 0 193 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 90 0 31 0 35] 
#[1 3 106 0 31 3 106 0 35 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 3 114 0 31 0 35] 
#[0 4 94 0 31 0 35] 
#[0 8 25 0 41] 
#[0 8 29 0 34] 
#[0 4 98 0 37] 
#[0 4 102 0 37] 
#[1 1 150 0 34 1 150 0 35 4 106 0 37 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62 5 29 0 63 4 113 0 99] 
#[1 2 205 0 1 4 110 0 2 1 197 0 3 0 241 0 4 2 209 0 5 4 110 0 6 2 213 0 7 2 217 0 8 0 245 0 9 0 249 0 10 0 253 0 11 2 221 0 13 2 225 0 15 0 93 0 16 2 229 0 17 2 233 0 18 0 97 0 20 2 237 0 21 2 241 0 22 2 245 0 24 0 101 0 25 1 201 0 26 2 249 0 27 1 209 0 28 1 137 0 30 4 110 0 31 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 5 0 89 0 113 0 90 3 9 0 94 3 13 0 97 0 117 0 100 0 129 0 107 3 17 0 111 8 33 0 112 3 25 0 113 3 29 0 114 3 33 0 115 3 37 0 116 3 41 0 118 3 45 0 119 3 49 0 120 3 53 0 121 3 57 0 122 3 61 0 123 3 65 0 124 3 69 0 125 3 73 0 126 3 77 0 127 3 81 0 128 3 85 0 129 3 89 0 130 3 93 0 131 3 97 0 132 3 101 0 133 3 105 0 137 3 109 0 145 3 113 0 150 3 117 0 153 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 5 209 0 27 8 37 0 28] 
#[0 4 114 0 37] 
#[1 2 205 0 1 4 118 0 2 1 197 0 3 0 241 0 4 2 209 0 5 4 118 0 6 2 213 0 7 2 217 0 8 0 245 0 9 0 249 0 10 0 253 0 11 2 221 0 13 2 225 0 15 0 93 0 16 2 229 0 17 2 233 0 18 0 97 0 20 2 237 0 21 2 241 0 22 2 245 0 24 0 101 0 25 1 201 0 26 2 249 0 27 1 209 0 28 1 137 0 30 4 118 0 31 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 5 0 89 0 113 0 90 3 9 0 94 3 13 0 97 0 117 0 100 0 129 0 107 3 17 0 111 8 41 0 112 3 25 0 113 3 29 0 114 3 33 0 115 3 37 0 116 3 41 0 118 3 45 0 119 3 49 0 120 3 53 0 121 3 57 0 122 3 61 0 123 3 65 0 124 3 69 0 125 3 73 0 126 3 77 0 127 3 81 0 128 3 85 0 129 3 89 0 130 3 93 0 131 3 97 0 132 3 101 0 133 3 105 0 137 3 109 0 145 3 113 0 150 3 117 0 153 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 122 0 36 0 75] 
#[1 7 197 0 2 7 201 0 6 8 45 0 31 7 209 0 140 7 213 0 141] 
#[1 7 5 0 2 7 9 0 6 8 49 0 31 7 17 0 135 7 21 0 136] 
#[0 4 126 0 37] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 8 53 0 26 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 8 57 0 142 8 61 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 4 130 0 36 0 75] 
#[0 4 134 0 2 0 6 0 31] 
#[0 8 65 0 37] 
#[0 4 138 0 36 0 75] 
#[0 8 69 0 29] 
#[1 2 233 0 18 1 137 0 30 8 73 0 111 8 77 0 131] 
#[0 4 142 0 36 0 75] 
#[0 4 146 0 36 0 75] 
#[1 4 150 0 30 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[1 4 154 0 30 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 4 158 0 30] 
#[0 4 162 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 3 90 0 29 6 173 0 35 8 81 0 205] 
#[0 8 85 0 29] 
#[0 4 166 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 8 89 0 33 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 4 170 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 8 93 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 174 0 31 0 35] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 8 97 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[1 1 197 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 1 201 0 26 1 205 0 27 1 209 0 28 1 213 0 32 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 8 101 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 178 0 2 0 6 0 31] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 8 105 0 20 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 6 213 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 4 182 0 2 0 6 0 31] 
#[0 4 186 0 36 0 75] 
#[0 4 190 0 36 0 75] 
#[1 4 194 0 35 4 194 0 37 8 109 0 144] 
#[0 4 198 0 37] 
#[1 4 194 0 35 4 194 0 37 8 113 0 144] 
#[1 2 205 0 1 4 202 0 2 1 197 0 3 0 241 0 4 2 209 0 5 4 202 0 6 2 213 0 7 2 217 0 8 0 245 0 9 0 249 0 10 0 253 0 11 2 221 0 13 2 225 0 15 0 93 0 16 2 229 0 17 2 233 0 18 0 97 0 20 2 237 0 21 2 241 0 22 2 245 0 24 0 101 0 25 1 201 0 26 2 249 0 27 1 209 0 28 1 137 0 30 4 202 0 31 1 213 0 32 3 1 0 36 1 221 0 57 1 225 0 58 1 229 0 59 1 233 0 60 1 237 0 61 1 241 0 62 1 245 0 63 1 249 0 64 1 253 0 65 2 1 0 66 2 5 0 67 2 9 0 68 2 13 0 69 2 17 0 70 0 69 0 71 0 73 0 72 3 5 0 89 0 113 0 90 3 9 0 94 3 13 0 97 0 117 0 100 0 129 0 107 3 17 0 111 8 117 0 112 3 25 0 113 3 29 0 114 3 33 0 115 3 37 0 116 3 41 0 118 3 45 0 119 3 49 0 120 3 53 0 121 3 57 0 122 3 61 0 123 3 65 0 124 3 69 0 125 3 73 0 126 3 77 0 127 3 81 0 128 3 85 0 129 3 89 0 130 3 93 0 131 3 97 0 132 3 101 0 133 3 105 0 137 3 109 0 145 3 113 0 150 3 117 0 153 2 21 0 154 2 25 0 155 1 41 0 156 2 29 0 157 1 49 0 160 1 53 0 161 2 37 0 164 2 41 0 165 1 65 0 166 1 69 0 168 3 121 0 175 2 49 0 176 2 53 0 177 2 57 0 178 2 61 0 179 2 65 0 180 2 69 0 181 2 73 0 182 2 77 0 183 1 77 0 184 2 81 0 185 2 85 0 186 2 89 0 194 2 93 0 198 2 97 0 200 2 101 0 206 2 105 0 207] 
#[0 4 206 0 30] 
#[0 4 210 0 36 0 75] 
#[0 4 214 0 36 0 75] 
#[0 8 121 0 29] 
#[0 4 218 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 4 222 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[1 8 125 0 33 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[1 4 226 0 37 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[1 4 230 0 37 3 221 0 43 3 225 0 44 3 229 0 45 3 233 0 46 3 237 0 47 3 241 0 48 3 245 0 49 3 249 0 50 3 253 0 51 4 1 0 52 4 5 0 53 4 9 0 54 4 13 0 55 4 17 0 56 4 21 0 58 4 25 0 59 4 29 0 60 4 33 0 61 4 37 0 62] 
#[0 8 129 0 29] 
#[1 8 133 0 35 4 234 0 37 8 137 0 143] 
#[1 8 133 0 35 4 238 0 37 8 137 0 143] 
#[0 4 242 0 2 0 6 0 31] 
#[0 4 246 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 4 250 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 75 0 76] 
#[0 4 254 0 30] 
#[1 0 237 0 3 0 241 0 4 0 245 0 9 0 249 0 10 0 253 0 11 8 141 0 26 1 97 0 27 1 5 0 28 1 13 0 32 1 21 0 61 1 25 0 63 8 145 0 154 1 37 0 155 1 41 0 156 1 45 0 157 1 49 0 160 1 53 0 161 1 57 0 164 1 61 0 165 1 65 0 166 1 69 0 168 1 77 0 184 1 81 0 194] 
#[0 5 2 0 35 0 37] 
#[0 5 6 0 35 0 37] 
#[0 5 10 0 35 0 37]
	).
]

{ #category : #private }
GoParser >> actionsForCurrentToken [
	| actions |
	[ actions := super actionsForCurrentToken.
	actions isEmpty and: [ currentToken ids first = scanner TERMINATORId ] ]
		whileTrue:
			[ currentToken := nil.
			self getNextToken ].
	(actions isEmpty and: [ currentToken ids first = scanner R_CURLYId ])
		ifTrue:
			[ self addActionsFor: scanner TERMINATORId to: actions.
			actions notEmpty
				ifTrue:
					[ self position: currentToken startPosition - 1.
					currentToken := currentToken class
						value: String lf
						start: 0
						ids: {scanner TERMINATORId} ] ].
	(actions isEmpty and: [ currentToken ids first = scanner emptySymbolTokenId ])
		ifTrue:
			[ self addActionsFor: scanner TERMINATORId to: actions.
			actions notEmpty
				ifTrue:
					[ currentToken := currentToken class
						value: String lf
						start: 0
						ids: {scanner TERMINATORId} ] ].
	^ actions
]

{ #category : #testing }
GoParser >> tryAllTokens [
	^ true
]

{ #category : #testing }
GoParser >> useAllTokenIds [
	^ false
]
