Class {
	#name : #CPPParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_CPP_Parser'
}

{ #category : #generated }
CPPParser class >> ambiguousTransitions [
^#(
#[ 0 10 0 37] 
#[ 0 10 0 45] 
#[ 0 29 0 38] 
#[ 0 38 0 85] 
#[ 0 38 2 45] 
#[ 0 50 0 54] 
#[ 0 54 0 58 0 62] 
#[ 0 50 0 66] 
#[ 0 29 0 94] 
#[ 0 37 0 94] 
#[ 0 45 0 94] 
#[ 0 85 0 94] 
#[ 0 94 2 249] 
#[ 0 22 3 121] 
#[ 0 22 3 125] 
#[ 0 142 3 253] 
#[ 0 37 0 146] 
#[ 0 50 4 53] 
#[ 0 50 4 57] 
#[ 0 54 0 158] 
#[ 0 37 0 162] 
#[ 0 45 0 162] 
#[ 0 54 0 66] 
#[ 0 54 0 58 0 62 0 186] 
#[ 0 66 0 186] 
#[ 0 58 5 225] 
#[ 0 194 5 241] 
#[ 0 194 5 245] 
#[ 0 29 0 202] 
#[ 0 37 0 202] 
#[ 0 45 0 202] 
#[ 0 85 0 202] 
#[ 0 202 2 249] 
#[ 0 9 0 206] 
#[ 0 13 0 206] 
#[ 0 21 0 206] 
#[ 0 14 0 41] 
#[ 0 14 0 133] 
#[ 0 14 6 93] 
#[ 0 54 6 145] 
#[ 0 54 6 149] 
#[ 0 37 0 234] 
#[ 0 45 0 234] 
#[ 0 37 1 34] 
#[ 0 54 0 186] 
#[ 0 85 1 78] 
#[ 1 78 2 9] 
#[ 1 138 9 201] 
#[ 1 170 10 5] 
#[ 0 102 10 41] 
#[ 0 102 10 57] 
#[ 1 186 6 145] 
#[ 0 66 1 186] 
#[ 0 58 10 153] 
#[ 0 37 1 210] 
#[ 0 45 1 210] 
#[ 0 9 1 214] 
#[ 0 13 1 214] 
#[ 0 21 1 214] 
#[ 0 26 10 229] 
#[ 1 226 10 253] 
#[ 1 238 6 145] 
#[ 0 66 1 238] 
#[ 1 238 6 149] 
#[ 0 37 1 54] 
#[ 0 45 1 54] 
#[ 0 158 1 246] 
#[ 1 246 11 69] 
#[ 0 54 2 50] 
#[ 0 10 1 78] 
#[ 0 37 1 78] 
#[ 0 18 2 70] 
#[ 2 74 2 78] 
#[ 0 70 1 90] 
#[ 1 182 2 38] 
#[ 0 37 1 50] 
#[ 0 50 0 54 12 121] 
#[ 0 37 0 50 0 54] 
#[ 0 45 0 50 0 54] 
#[ 0 54 1 186] 
#[ 1 186 6 149] 
#[ 0 54 0 58 0 62 1 186] 
#[ 1 90 2 170] 
#[ 2 186 13 33] 
#[ 2 186 13 37] 
#[ 2 186 13 41] 
#[ 0 9 2 230] 
#[ 0 13 2 230] 
#[ 0 21 2 230] 
#[ 3 2 10 1] 
#[ 3 2 10 5] 
#[ 3 2 3 253] 
#[ 3 14 3 253] 
#[ 3 2 10 253] 
#[ 3 58 10 253] 
#[ 3 62 11 69] 
#[ 0 58 0 62] 
#[ 0 37 3 158] 
#[ 0 37 3 166] 
#[ 0 29 3 170] 
#[ 0 37 3 170] 
#[ 0 85 3 170] 
#[ 2 249 3 170] 
#[ 3 174 10 1] 
#[ 3 174 10 5] 
#[ 0 122 0 254] 
#[ 3 202 11 69] 
#[ 0 54 3 202] 
#[ 3 202 6 145] 
#[ 0 66 3 202] 
#[ 2 202 4 125] 
#[ 0 9 4 18] 
#[ 0 13 4 18] 
#[ 0 21 4 18] 
#[ 4 50 9 201] 
#[ 0 37 4 78] 
#[ 4 234 18 5] 
#[ 0 37 4 238] 
#[ 0 37 4 254] 
#[ 0 37 5 2] 
#[ 3 178 5 10] 
#[ 0 178 5 110] 
#[ 0 150 0 178] 
#[ 0 242 18 185] 
#[ 0 174 9 13] 
#[ 0 37 5 114] 
#[ 0 37 5 122] 
#[ 0 37 5 174] 
#[ 0 37 5 218] 
#[ 1 62 3 189] 
#[ 1 62 2 206] 
#[ 0 37 5 238] 
#[ 0 37 5 242] 
#[ 6 10 19 205] 
#[ 0 37 6 38] 
#[ 0 37 6 46] 
#[ 3 78 20 37] 
#[ 0 37 6 58] 
#[ 0 37 6 62] 
#[ 0 37 6 98] 
#[ 0 37 6 110]
	).
]

{ #category : #'generated-accessing' }
CPPParser class >> cacheId [
	^'2019-03-28T12:01:25.700981-05:00'
]

{ #category : #generated }
CPPParser class >> definitionComment [
"# Converted to SmaCC from https://github.com/antlr/grammars-v4/blob/master/cpp/CPP14.g4 commit 548a723a161a1a32f922c48be7d54e7d486b108c
/*******************************************************************************
 * The MIT License (MIT)
 *
 * Copyright (c) 2015 Camilo Sanchez (Camiloasc1)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the ""Software""), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED ""AS IS"", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 ******************************************************************************/
%glr;
/*grammar CPP14;*/
/*Basic concepts*/

%prefix CPP;
#%root Program;
%suffix Node;

%hierarchy Capture (InitializedCapture);
%hierarchy Expression (
        AlignofExpression
        AssignmentExpression
        BinaryExpression
        CallExpression
        CastExpression
        CommaExpression
        ConditionalExpression
        ConversionExpression
        DeleteExpression
        LambdaExpression
        Literal
        MemberExpression
        NewExpression
        NoexceptExpression
        PostfixExpression
        PrefixExpression
        SizeofExpression
        SubscriptExpression
        ThisExpression
        ThrowExpression
        TypeidExpression
        Variable
    );
%hierarchy Statement (
        BreakStatement
        CaseLabeledStatement
        CompoundStatement
        ContinueStatement
        DefaultLabeledStatement
        DoWhileStatement
        ExpressionStatement
        ForStatement
        GotoStatement
        IfStatement
        LabeledStatement
        RangeForStatement
        ReturnStatement
        SwitchStatement
        TryStatement
        WhileStatement
    );


translationunit
   : declarationseq? {{TranslationUnit}} 
   ;
/*Expressions*/


primaryexpression
   : literal 'value' {{Literal}}
   | <This> 'thisToken' {{ThisExpression}}
   | ""("" 'leftParen' expression "")"" 'rightParen' {{Expression}}
   | idexpression
   | lambdaexpression
   ;

idexpression
   : unqualifiedid
   | qualifiedid
   ;

unqualifiedid
   : <Identifier> {{Variable}}
   | operatorfunctionid
   | conversionfunctionid
   | literaloperatorid
   | ""~"" classname
   | ""~"" decltypespecifier
   | templateid
   ;

qualifiedid
   : nestednamespecifier <Template> 'templateToken'? unqualifiedid
   ;

nestednamespecifier
   : ""::"" 'colonColon'
   | thetypename ""::"" 'colonColon'
   | namespacename ""::"" 'colonColon'
   | decltypespecifier ""::"" 'colonColon'
   | nestednamespecifier <Identifier> ""::"" 'colonColon'
   | nestednamespecifier <Template> 'templateToken'? simpletemplateid ""::"" 'colonColon'
   ;

lambdaexpression
   : lambdaintroducer lambdadeclarator? compoundstatement 'statement' {{LambdaExpression}}
   ;

lambdaintroducer
   : ""["" 'leftBracket' lambdacapture? ""]"" 'rightBracket'
   ;

lambdacapture
   : capturedefault
   | capturelist
   | capturedefault "","" 'comma' capturelist
   ;

capturedefault
   : ""&""
   | ""=""
   ;

capturelist
   : capture 'capture' ""..."" 'dotDotDot'?
   | capturelist "","" 'comma' capture 'capture' ""..."" 'dotDotDot'?
   ;

capture
   : simplecapture
   | initcapture
   ;

simplecapture
   : <Identifier> 'name' {{Capture}}
   | ""&"" 'ampToken' <Identifier> 'name' {{Capture}}
   | <This> 'name' {{Capture}}
   ;

initcapture
   : <Identifier> 'name' initializer {{InitializedCapture}}
   | ""&"" 'ampToken' <Identifier> 'name' initializer 'initializer' {{InitializedCapture}}
   ;

lambdadeclarator
   : ""("" 'leftParen' parameterdeclarationclause "")"" 'rightParen' <Mutable> 'mutableToken'? exceptionspecification 'exceptionSpecification'? attributespecifierseq? trailingreturntype?
   ;

postfixexpression
   : primaryexpression
   | postfixexpression 'expression' ""["" 'leftBracket' expression ""]"" 'rightBracket' {{SubscriptExpression}}
   | postfixexpression 'expression' ""["" 'leftBracket' bracedinitlist ""]"" 'rightBracket' {{SubscriptExpression}}
   | postfixexpression 'expression' ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{CallExpression}}
   | simpletypespecifier ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{CallExpression}}
   | typenamespecifier ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{CallExpression}}
   | simpletypespecifier bracedinitlist
   | typenamespecifier bracedinitlist
   | postfixexpression 'expression' ""."" <Template> 'templateToken'? idexpression {{MemberExpression}}
   | postfixexpression 'expression' ""->"" <Template> 'templateToken'? idexpression {{MemberExpression}}
   | postfixexpression 'expression' ""."" pseudodestructorname {{MemberExpression}}
   | postfixexpression 'expression' ""->"" pseudodestructorname {{MemberExpression}}
   | postfixexpression 'expression' ""++"" 'operator' {{PostfixExpression}}
   | postfixexpression 'expression' ""--"" 'operator' {{PostfixExpression}}
   | <Dynamic_cast> 'castToken' ""<"" 'ltToken' thetypeid "">"" 'gtToken' ""("" 'leftParen' expression "")"" 'rightParen' {{ConversionExpression}}
   | <Static_cast> 'castToken' ""<"" 'ltToken' thetypeid "">"" 'gtToken' ""("" 'leftParen' expression "")"" 'rightParen' {{ConversionExpression}}
   | <Reinterpret_cast> 'castToken' ""<"" 'ltToken' thetypeid "">"" 'gtToken' ""("" 'leftParen' expression "")"" 'rightParen' {{ConversionExpression}}
   | <Const_cast> 'castToken' ""<"" 'ltToken' thetypeid "">"" 'gtToken' ""("" 'leftParen' expression "")"" 'rightParen' {{ConversionExpression}}
   | typeidofthetypeid ""("" 'leftParen' expression "")"" 'rightParen' {{TypeidExpression}}
   | typeidofthetypeid ""("" 'leftParen' thetypeid "")"" 'rightParen' {{TypeidExpression}}
   ;

typeidofthetypeid
   : <Typeid_> 'typeidToken'
   ;

expressionlist
   : initializerlist
   ;

pseudodestructorname
   : nestednamespecifier? thetypename ""::"" 'colonColon' ""~"" thetypename
   | nestednamespecifier <Template> 'templateToken' simpletemplateid ""::"" 'colonColon' ""~"" thetypename
   | nestednamespecifier? ""~"" thetypename
   | ""~"" decltypespecifier
   ;

unaryexpression
   : postfixexpression
   | ""++"" 'operator' castexpression 'expression' {{PrefixExpression}}
   | ""--"" 'operator' castexpression 'expression' {{PrefixExpression}}
   | unaryoperator 'operator' castexpression 'expression' {{PrefixExpression}}
   | <Sizeof> 'sizeofToken' unaryexpression 'expression' {{PrefixExpression}}
   | <Sizeof> 'sizeofToken' ""("" 'leftParen' thetypeid "")"" 'rightParen' {{SizeofExpression}}
   | <Sizeof> 'sizeofToken' ""..."" 'dotDotDot' ""("" 'leftParen' <Identifier> "")"" 'rightParen' {{SizeofExpression}}
   | <Alignof> 'alignofToken' ""("" 'leftParen' thetypeid "")"" 'rightParen' {{AlignofExpression}}
   | noexceptexpression
   | newexpression
   | deleteexpression
   ;

unaryoperator
   : ""|""
   | ""*""
   | ""&""
   | ""+""
   | ""!""
   | ""~""
   | ""-""
   | ""not""
   ;

newexpression
   : ""::"" 'colonColon'? <New> 'newToken' newplacement? newtypeid newinitializer? {{NewExpression}}
   | ""::"" 'colonColon'? <New> 'newToken' newplacement? ""("" 'leftParen' thetypeid "")"" 'rightParen' newinitializer? {{NewExpression}}
   ;

newplacement
   : ""("" 'leftParen' expressionlist "")"" 'rightParen'
   ;

newtypeid
   : typespecifierseq newdeclarator?
   ;

newdeclarator
   : ptroperator newdeclarator?
   | noptrnewdeclarator
   ;

noptrnewdeclarator
   : ""["" 'leftBracket' expression ""]"" 'rightBracket' attributespecifierseq?
   | noptrnewdeclarator ""["" 'leftBracket' constantexpression ""]"" 'rightBracket' attributespecifierseq?
   ;

newinitializer
   : ""("" 'leftParen' expressionlist? "")"" 'rightParen'
   | bracedinitlist
   ;

deleteexpression
   : ""::"" 'colonColon'? <Delete> 'deleteToken' castexpression 'expression' {{DeleteExpression}}
   | ""::"" 'colonColon'? <Delete> 'deleteToken' ""["" 'leftBracket' ""]"" 'rightBracket' castexpression 'expression' {{DeleteExpression}}
   ;

noexceptexpression
   : <Noexcept> 'noexceptToken' ""("" 'leftParen' expression "")"" 'rightParen' {{NoexceptExpression}}
   ;

castexpression
   : unaryexpression
   | ""("" 'leftParen' thetypeid "")"" 'rightParen' castexpression 'expression' {{CastExpression}}
   ;

pmexpression
   : castexpression
   | pmexpression 'left' "".*"" 'operator' castexpression 'right' {{BinaryExpression}}
   | pmexpression 'left' ""->*"" 'operator' castexpression 'right' {{BinaryExpression}}
   ;

multiplicativeexpression
   : pmexpression
   | multiplicativeexpression 'left' ""*"" 'operator' pmexpression 'right' {{BinaryExpression}}
   | multiplicativeexpression 'left' ""/"" 'operator' pmexpression 'right' {{BinaryExpression}}
   | multiplicativeexpression 'left' ""%"" 'operator' pmexpression 'right' {{BinaryExpression}}
   ;

additiveexpression
   : multiplicativeexpression
   | additiveexpression 'left' ""+"" 'operator' multiplicativeexpression 'right' {{BinaryExpression}}
   | additiveexpression 'left' ""-"" 'operator' multiplicativeexpression 'right' {{BinaryExpression}}
   ;

shiftexpression
   : additiveexpression
   | shiftexpression 'left'  shiftoperator 'operator' additiveexpression 'right' {{BinaryExpression}}
   ;

shiftoperator
  : <RightShift>
  | <LeftShift>
  ;

relationalexpression
   : shiftexpression
   | relationalexpression 'left' ""<"" 'operator' shiftexpression 'right'  {{BinaryExpression}}
   | relationalexpression 'left' "">"" 'operator' shiftexpression 'right'  {{BinaryExpression}}
   | relationalexpression 'left' ""<="" 'operator' shiftexpression 'right'  {{BinaryExpression}}
   | relationalexpression 'left' "">="" 'operator' shiftexpression 'right'  {{BinaryExpression}}
   ;

equalityexpression
   : relationalexpression
   | equalityexpression 'left' ""=="" 'operator' relationalexpression 'right' {{BinaryExpression}}
   | equalityexpression 'left' ""!="" relationalexpression 'right' {{BinaryExpression}}
   ;

andexpression
   : equalityexpression
   | andexpression 'left' ""&"" 'operator' equalityexpression 'right' {{BinaryExpression}}
   ;

exclusiveorexpression
   : andexpression
   | exclusiveorexpression 'left' ""^"" 'operator' andexpression 'left' {{BinaryExpression}}
   ;

inclusiveorexpression
   : exclusiveorexpression
   | inclusiveorexpression 'left' ""|"" 'operator' exclusiveorexpression 'right' {{BinaryExpression}}
   ;

logicalandexpression
   : inclusiveorexpression
   | logicalandexpression 'left' ""&&"" 'operator' inclusiveorexpression 'right' {{BinaryExpression}}
   | logicalandexpression 'left' ""and"" 'operator' inclusiveorexpression 'right' {{BinaryExpression}}
   ;

logicalorexpression
   : logicalandexpression
   | logicalorexpression 'left' ""||"" 'operator' logicalandexpression 'right' {{BinaryExpression}}
   | logicalorexpression 'left' ""or"" 'operator' logicalandexpression 'right' {{BinaryExpression}}
   ;

conditionalexpression
   : logicalorexpression
   | logicalorexpression 'booleanExpression' ""?"" 'questionMark' expression 'trueExpression' "":"" 'colon' assignmentexpression 'falseExpression' {{ConditionalExpression}}
   ;

assignmentexpression
   : conditionalexpression
   | logicalorexpression 'lhs' assignmentoperator 'operator' initializerclause {{AssignmentExpression}}
   | throwexpression
   ;

assignmentoperator
   : ""=""
   | ""*=""
   | ""/=""
   | ""%=""
   | ""+=""
   | ""-=""
   | <RightShiftAssign>
   | <LeftShiftAssign>
   | ""&=""
   | ""^=""
   | ""|=""
   ;

expression
   : assignmentexpression
   | expression "","" 'comma' assignmentexpression 'right' {{CommaExpression}}
   ;

constantexpression
   : conditionalexpression
   ;
/*Statements*/


statement
   : labeledstatement
   | attributespecifierseq? expressionstatement {{}}
   | attributespecifierseq? compoundstatement {{}}
   | attributespecifierseq? selectionstatement
   | attributespecifierseq? iterationstatement
   | attributespecifierseq? jumpstatement
   | declarationstatement
   | attributespecifierseq? tryblock
   ;

labeledstatement
   : attributespecifierseq? <Identifier> "":"" statement 'statement' {{LabeledStatement}}
   | attributespecifierseq? <Case> 'caseToken' constantexpression "":"" statement 'statement' {{CaseLabeledStatement}}
   | attributespecifierseq? <Default> 'defaultToken' "":"" statement 'statement' {{DefaultLabeledStatement}}
   ;

expressionstatement
   : expression? "";"" 'semicolon' {{ExpressionStatement}}
   ;

compoundstatement
   : ""{"" 'leftBrace' statementseq? ""}"" 'rightBrace' {{CompoundStatement}}
   ;

statementseq
   : statement 'statement'
   | statementseq statement 'statement'
   ;

selectionstatement
   : <If> 'ifToken' ""("" 'leftParen' condition "")"" 'rightParen' statement 'statement' {{IfStatement}}
   | <If> 'ifToken' ""("" 'leftParen' condition "")"" 'rightParen' statement 'thenStatement' <Else> 'elseToken' statement 'elseStatement' {{IfStatement}}
   | <Switch> 'switchToken' ""("" 'leftParen' condition "")"" 'rightParen' statement 'statement' {{SwitchStatement}}
   ;

condition
   : expression
   | attributespecifierseq? declspecifierseq declarator ""="" initializerclause
   | attributespecifierseq? declspecifierseq declarator bracedinitlist
   ;

iterationstatement
   : <While> 'whileToken' ""("" 'leftParen' condition "")"" 'rightParen' statement 'statement' {{WhileStatement}}
   | <Do> 'doToken' statement 'statement' <While> 'whileToken' ""("" 'leftParen' expression "")"" 'rightParen' "";"" 'semicolon' {{DoWhileStatement}}
   | <For> 'forToken' ""("" 'leftParen' forinitstatement condition? "";"" 'semicolon' expression? "")"" 'rightParen' statement 'statement' {{ForStatement}}
   | <For> 'forToken' ""("" 'leftParen' forrangedeclaration "":"" forrangeinitializer "")"" 'rightParen' statement 'statement' {{RangeForStatement}}
   ;

forinitstatement
   : expressionstatement
   | simpledeclaration
   ;

forrangedeclaration
   : attributespecifierseq? declspecifierseq declarator
   ;

forrangeinitializer
   : expression
   | bracedinitlist
   ;

jumpstatement
   : <Break> 'breakToken' "";"" 'semicolon' {{BreakStatement}}
   | <Continue> 'continueToken' "";"" 'semicolon' {{ContinueStatement}}
   | <Return> 'returnToken' expression? "";"" 'semicolon' {{ReturnStatement}}
   | <Return> 'returnToken' bracedinitlist "";"" 'semicolon' {{ReturnStatement}}
   | <Goto> 'gotoToken' <Identifier> "";"" 'semicolon' {{GotoStatement}}
   ;

declarationstatement
   : blockdeclaration
   ;
/*Declarations*/


declarationseq
   : declaration
   | declarationseq declaration
   ;

declaration
   : blockdeclaration
   | functiondefinition
   | templatedeclaration
   | explicitinstantiation
   | explicitspecialization
   | linkagespecification
   | namespacedefinition
#   | emptydeclaration  # already handled by simpledeclaration
   | attributedeclaration
   ;

blockdeclaration
   : simpledeclaration
   | asmdefinition
   | namespacealiasdefinition
   | usingdeclaration
   | usingdirective
   | static_assertdeclaration
   | aliasdeclaration
   | opaqueenumdeclaration
   ;

aliasdeclaration
   : <Using> 'usingToken' <Identifier> attributespecifierseq? ""="" thetypeid "";"" 'semicolon'
   ;

simpledeclaration
   : declspecifierseq? initdeclaratorlist? "";"" 'semicolon'
   | attributespecifierseq declspecifierseq? initdeclaratorlist "";"" 'semicolon'
   ;

static_assertdeclaration
   : <Static_assert> 'static_assertToken' ""("" 'leftParen' constantexpression "","" 'comma' <Stringliteral> "")"" 'rightParen' "";"" 'semicolon'
   ;

#emptydeclaration
#   : "";"" 'semicolon'
#   ;

attributedeclaration
   : attributespecifierseq "";"" 'semicolon'
   ;

declspecifier
   : storageclassspecifier
   | typespecifier
   | functionspecifier
   | <Friend> 'friendToken'
   | <Typedef> 'typedefToken'
   | <Constexpr> 'constexprToken'
   ;

declspecifierseq
   : declspecifier attributespecifierseq?
   | declspecifier declspecifierseq
   ;

storageclassspecifier
   : <Register> 'registerToken'
   | <Static> 'staticToken'
   | <Thread_local> 'thread_localToken'
   | <Extern> 'externToken'
   | <Mutable> 'mutableToken'
   ;

functionspecifier
   : <Inline> 'inlineToken'
   | <Virtual> 'virtualToken'
   | <Explicit> 'explicitToken'
   ;

#typedefname
#   : <Identifier>
#   ;

typespecifier
   : trailingtypespecifier
   | classspecifier
   | enumspecifier
   ;

trailingtypespecifier
   : simpletypespecifier
   | elaboratedtypespecifier
   | typenamespecifier
   | cvqualifier
   ;

typespecifierseq
   : typespecifier attributespecifierseq?
   | typespecifier typespecifierseq
   ;

trailingtypespecifierseq
   : trailingtypespecifier attributespecifierseq?
   | trailingtypespecifier trailingtypespecifierseq
   ;

simpletypespecifier
   : nestednamespecifier? thetypename
   | nestednamespecifier <Template> 'templateToken' simpletemplateid
   | <Char> 'name'
   | <Char16> 'name'
   | <Char32> 'name'
   | <Wchar> 'name'
   | <Bool> 'name'
   | <Short> 'name'
   | <Int> 'name'
   | <Long> 'name'
   | <Signed> 'signedToken'
   | <Unsigned> 'unsignedToken'
   | <Float> 'name'
   | <Double> 'name'
   | <Void> 'name'
   | <Auto> 'autoToken'
   | decltypespecifier
   ;

thetypename
   : classname
#   | enumname
#   | typedefname
#   | simpletemplateid
   ;

decltypespecifier
   : <Decltype> 'decltypeToken' ""("" 'leftParen' expression "")"" 'rightParen'
   | <Decltype> 'decltypeToken' ""("" 'leftParen' <Auto> 'autoToken' "")"" 'rightParen'
   ;

elaboratedtypespecifier
   : classkey attributespecifierseq? nestednamespecifier? <Identifier>
   | classkey simpletemplateid
   | classkey nestednamespecifier <Template> 'templateToken'? simpletemplateid
   | <Enum> 'enumToken' nestednamespecifier? <Identifier>
   ;

#enumname
#   : <Identifier>
#   ;

enumspecifier
   : enumhead ""{"" 'leftBrace' enumeratorlist? ""}"" 'rightBrace'
   | enumhead ""{"" 'leftBrace' enumeratorlist "","" 'comma' ""}"" 'rightBrace'
   ;

enumhead
   : enumkey attributespecifierseq? <Identifier>? enumbase?
   | enumkey attributespecifierseq? nestednamespecifier <Identifier> enumbase?
   ;

opaqueenumdeclaration
   : enumkey attributespecifierseq? <Identifier> enumbase? "";"" 'semicolon'
   ;

enumkey
   : <Enum> 'enumToken'
   | <Enum> 'enumToken' <Class> 'classToken'
   | <Enum> 'enumToken' <Struct> 'structToken'
   ;

enumbase
   : "":"" typespecifierseq
   ;

enumeratorlist
   : enumeratordefinition
   | enumeratorlist "","" 'comma' enumeratordefinition
   ;

enumeratordefinition
   : enumerator
   | enumerator ""="" constantexpression
   ;

enumerator
   : <Identifier>
   ;

namespacename
   : originalnamespacename
   | namespacealias
   ;

originalnamespacename
   : <Identifier>
   ;

namespacedefinition
   : namednamespacedefinition
   | unnamednamespacedefinition
   ;

namednamespacedefinition
   : originalnamespacedefinition
   | extensionnamespacedefinition
   ;

originalnamespacedefinition
   : <Inline> 'inlineToken'? <Namespace> 'namespaceToken' <Identifier> ""{"" 'leftBrace' namespacebody ""}"" 'rightBrace'
   ;

extensionnamespacedefinition
   : <Inline> 'inlineToken'? <Namespace> 'namespaceToken' originalnamespacename ""{"" 'leftBrace' namespacebody ""}"" 'rightBrace'
   ;

unnamednamespacedefinition
   : <Inline> 'inlineToken'? <Namespace> 'namespaceToken' ""{"" 'leftBrace' namespacebody ""}"" 'rightBrace'
   ;

namespacebody
   : declarationseq?
   ;

namespacealias
   : <Identifier>
   ;

namespacealiasdefinition
   : <Namespace> 'namespaceToken' <Identifier> ""="" qualifiednamespacespecifier "";"" 'semicolon'
   ;

qualifiednamespacespecifier
   : nestednamespecifier? namespacename
   ;

usingdeclaration
   : <Using> 'usingToken' <Typename_> 'typenameToken'? nestednamespecifier unqualifiedid "";"" 'semicolon'
   | <Using> 'usingToken' ""::"" 'colonColon' unqualifiedid "";"" 'semicolon'
   ;

usingdirective
   : attributespecifierseq? <Using> 'usingToken' <Namespace> 'namespaceToken' nestednamespecifier? namespacename "";"" 'semicolon'
   ;

asmdefinition
   : <Asm> 'asmToken' ""("" 'leftParen' <Stringliteral> "")"" 'rightParen' "";"" 'semicolon'
   ;

linkagespecification
   : <Extern> 'externToken' <Stringliteral> ""{"" 'leftBrace' declarationseq? ""}"" 'rightBrace'
   | <Extern> 'externToken' <Stringliteral> declaration
   ;

attributespecifierseq
   : attributespecifier 'specifier'
   | attributespecifierseq attributespecifier 'specifier'
   ;

attributespecifier
   : ""["" 'leftBracket' ""["" 'leftBracket' attributelist ""]"" 'rightBracket' ""]"" 'rightBracket' {{AttributeSpecifier}}
   | alignmentspecifier
   ;

alignmentspecifier
   : <Alignas> 'alignasToken' ""("" 'leftParen' thetypeid ""..."" 'dotDotDot'? "")"" 'rightParen' {{AlignmentSpecifier}}
   | <Alignas> 'alignasToken' ""("" 'leftParen' constantexpression ""..."" 'dotDotDot'? "")"" 'rightParen' {{AlignmentSpecifier}}
   ;

attributelist
   : attribute?
   | attributelist "","" 'comma' attribute?
   | attribute ""..."" 'dotDotDot'
   | attributelist "","" 'comma' attribute ""..."" 'dotDotDot'
   ;

attribute
   : attributetoken attributeargumentclause?
   ;

attributetoken
   : <Identifier>
   | attributescopedtoken
   ;

attributescopedtoken
   : attributenamespace ""::"" 'colonColon' <Identifier>
   ;

attributenamespace
   : <Identifier>
   ;

attributeargumentclause
   : ""("" 'leftParen' balancedtokenseq "")"" 'rightParen'
   ;

balancedtokenseq
   : balancedtoken?
   | balancedtokenseq balancedtoken
   ;

balancedtoken
   : ""("" 'leftParen' balancedtokenseq "")"" 'rightParen'
   | ""["" 'leftBracket' balancedtokenseq ""]"" 'rightBracket'
   | ""{"" 'leftBrace' balancedtokenseq ""}"" 'rightBrace'
   ;
/*Declarators*/


initdeclaratorlist
   : initdeclarator
   | initdeclaratorlist "","" 'comma' initdeclarator
   ;

initdeclarator
   : declarator initializer?
   ;

declarator
   : ptrdeclarator
   | noptrdeclarator parametersandqualifiers trailingreturntype
   ;

ptrdeclarator
   : noptrdeclarator
   | ptroperator ptrdeclarator
   ;

noptrdeclarator
   : declaratorid attributespecifierseq?
   | noptrdeclarator parametersandqualifiers
   | noptrdeclarator ""["" 'leftBracket' constantexpression? ""]"" 'rightBracket' attributespecifierseq?
   | ""("" 'leftParen' ptrdeclarator "")"" 'rightParen'
   ;

parametersandqualifiers
   : ""("" 'leftParen' parameterdeclarationclause "")"" 'rightParen' cvqualifierseq? refqualifier? exceptionspecification 'exceptionSpecification'? attributespecifierseq?
   ;

trailingreturntype
   : ""->"" trailingtypespecifierseq abstractdeclarator?
   ;

ptroperator
   : ""*"" attributespecifierseq? cvqualifierseq?
   | ""&"" attributespecifierseq?
   | ""&&"" attributespecifierseq?
   | nestednamespecifier ""*"" attributespecifierseq? cvqualifierseq?
   ;

cvqualifierseq
   : cvqualifier cvqualifierseq?
   ;

cvqualifier
   : <Const> 'constToken'
   | <Volatile> 'volatileToken'
   ;

refqualifier
   : ""&""
   | ""&&""
   ;

declaratorid
   : ""..."" 'dotDotDot'? idexpression
   ;

thetypeid
   : typespecifierseq abstractdeclarator?
   ;

abstractdeclarator
   : ptrabstractdeclarator
   | noptrabstractdeclarator? parametersandqualifiers trailingreturntype
   | abstractpackdeclarator
   ;

ptrabstractdeclarator
   : noptrabstractdeclarator
   | ptroperator ptrabstractdeclarator?
   ;

noptrabstractdeclarator
   : noptrabstractdeclarator parametersandqualifiers
   | parametersandqualifiers
   | noptrabstractdeclarator ""["" 'leftBracket' constantexpression? ""]"" 'rightBracket' attributespecifierseq?
   | ""["" 'leftBracket' constantexpression? ""]"" 'rightBracket' attributespecifierseq?
   | ""("" 'leftParen' ptrabstractdeclarator "")"" 'rightParen'
   ;

abstractpackdeclarator
   : noptrabstractpackdeclarator
   | ptroperator abstractpackdeclarator
   ;

noptrabstractpackdeclarator
   : noptrabstractpackdeclarator parametersandqualifiers
   | noptrabstractpackdeclarator ""["" 'leftBracket' constantexpression? ""]"" 'rightBracket' attributespecifierseq?
   | ""..."" 'dotDotDot'
   ;

parameterdeclarationclause
   : parameterdeclarationlist? ""..."" 'dotDotDot'?
   | parameterdeclarationlist "","" 'comma' ""..."" 'dotDotDot'
   ;

parameterdeclarationlist
   : parameterdeclaration
   | parameterdeclarationlist "","" 'comma' parameterdeclaration
   ;

parameterdeclaration
   : attributespecifierseq? declspecifierseq declarator
   | attributespecifierseq? declspecifierseq declarator ""="" initializerclause
   | attributespecifierseq? declspecifierseq abstractdeclarator?
   | attributespecifierseq? declspecifierseq abstractdeclarator? ""="" initializerclause
   ;

functiondefinition
   : attributespecifierseq? declspecifierseq? declarator virtspecifierseq? functionbody
   ;

functionbody
   : ctorinitializer? compoundstatement 'statement'
   | functiontryblock
   | ""="" <Default> 'defaultToken' "";"" 'semicolon'
   | ""="" <Delete> 'deleteToken' "";"" 'semicolon'
   ;

initializer
   : braceorequalinitializer
   | ""("" 'leftParen' expressionlist "")"" 'rightParen'
   ;

braceorequalinitializer
   : ""="" initializerclause
   | bracedinitlist
   ;

initializerclause
   : assignmentexpression
   | bracedinitlist
   ;

initializerlist
   : initializerclause ""..."" 'dotDotDot'?
   | initializerlist "","" 'comma' initializerclause ""..."" 'dotDotDot'?
   ;

bracedinitlist
   : ""{"" 'leftBrace' initializerlist "","" 'comma'? ""}"" 'rightBrace'
   | ""{"" 'leftBrace' ""}"" 'rightBrace'
   ;
/*Classes*/


classname
   : <Identifier>
   | simpletemplateid
   ;

classspecifier
   : classhead ""{"" 'leftBrace' memberspecification? ""}"" 'rightBrace'
   ;

classhead
   : classkey attributespecifierseq? classheadname classvirtspecifier? baseclause?
   | classkey attributespecifierseq? baseclause?
   ;

classheadname
   : nestednamespecifier? classname
   ;

classvirtspecifier
   : <Final> 'finalToken'
   ;

classkey
   : <Class> 'classToken'
   | <Struct> 'structToken'
   | <Union> 'unionToken'
   ;

memberspecification
   : memberdeclaration memberspecification?
   | accessspecifier "":"" memberspecification?
   ;

memberdeclaration
   : attributespecifierseq? declspecifierseq? memberdeclaratorlist? "";"" 'semicolon'
   | functiondefinition
   | usingdeclaration
   | static_assertdeclaration
   | templatedeclaration
   | aliasdeclaration
#   | emptydeclaration  # already handled above
   ;

memberdeclaratorlist
   : memberdeclarator
   | memberdeclaratorlist "","" 'comma' memberdeclarator
   ;

memberdeclarator
   : declarator virtspecifierseq? purespecifier?
   | declarator braceorequalinitializer?
   | <Identifier>? attributespecifierseq? "":"" constantexpression
   ;

virtspecifierseq
   : virtspecifier 'virtualSpecifierToken'
   | virtspecifierseq virtspecifier 'virtualSpecifierToken'
   ;

virtspecifier
   : <Override>
   | <Final>
   ;

purespecifier
   : <Assign> 'equalToken' <Octalliteral> 'zero'  #value should be zero
   ;
/*Derived classes*/


baseclause
   : "":"" basespecifierlist
   ;

basespecifierlist
   : basespecifier ""..."" 'dotDotDot'?
   | basespecifierlist "","" 'comma' basespecifier ""..."" 'dotDotDot'?
   ;

basespecifier
   : attributespecifierseq? basetypespecifier
   | attributespecifierseq? <Virtual> 'virtualToken' accessspecifier? basetypespecifier
   | attributespecifierseq? accessspecifier <Virtual> 'virtualToken'? basetypespecifier
   ;

classordecltype
   : nestednamespecifier? classname
   | decltypespecifier
   ;

basetypespecifier
   : classordecltype
   ;

accessspecifier
   : <Private> 'privateToken'
   | <Protected> 'protectedToken'
   | <Public> 'publicToken'
   ;
/*Special member functions*/


conversionfunctionid
   : <Operator> 'operatorToken' conversiontypeid
   ;

conversiontypeid
   : typespecifierseq conversiondeclarator?
   ;

conversiondeclarator
   : ptroperator conversiondeclarator?
   ;

ctorinitializer
   : "":"" 'colon' meminitializerlist {{CtorInitializer}}
   ;

meminitializerlist
   : meminitializer 'initializer' ""..."" 'dotDotDot'?
   | meminitializer 'initializer' ""..."" 'dotDotDot'? "","" 'comma' meminitializerlist
   ;

meminitializer
   : meminitializerid ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{MemInitializer}}
   | meminitializerid bracedinitlist {{MemInitializer}}
   ;

meminitializerid
   : classordecltype
   | <Identifier>
   ;
/*Overloading*/


operatorfunctionid
   : <Operator> 'operatorToken' theoperator 'name'
   ;

literaloperatorid
   : <Operator> 'operatorToken' <Stringliteral> <Identifier>
   | <Operator> 'operatorToken' <Userdefinedstringliteral>
   ;
/*Templates*/


templatedeclaration
   : <Template> 'templateToken' ""<"" 'ltToken' templateparameterlist "">"" 'gtToken' declaration
   ;

templateparameterlist
   : templateparameter
   | templateparameterlist "","" 'comma' templateparameter
   ;

templateparameter
   : typeparameter
   | parameterdeclaration
   ;

typeparameter
   : <Class> 'classToken' ""..."" 'dotDotDot'? <Identifier>?
   | <Class> 'classToken' <Identifier>? ""="" thetypeid
   | <Typename_> 'typenameToken' ""..."" 'dotDotDot'? <Identifier>?
   | <Typename_> 'typenameToken' <Identifier>? ""="" thetypeid
   | <Template> 'templateToken' ""<"" 'ltToken' templateparameterlist "">"" 'gtToken' <Class> 'classToken' ""..."" 'dotDotDot'? <Identifier>?
   | <Template> 'templateToken' ""<"" 'ltToken' templateparameterlist "">"" 'gtToken' <Class> 'classToken' <Identifier>? ""="" idexpression
   ;

simpletemplateid
   : templatename ""<"" 'ltToken' templateargumentlist? "">"" 'gtToken'
   ;

templateid
   : simpletemplateid
   | operatorfunctionid ""<"" 'ltToken' templateargumentlist? "">"" 'gtToken'
   | literaloperatorid ""<"" 'ltToken' templateargumentlist? "">"" 'gtToken'
   ;

templatename
   : <Identifier>
   ;

templateargumentlist
   : templateargument ""..."" 'dotDotDot'?
   | templateargumentlist "","" 'comma' templateargument ""..."" 'dotDotDot'?
   ;

templateargument
   : thetypeid
   | constantexpression
   | idexpression
   ;

typenamespecifier
   : <Typename_> 'typenameToken' nestednamespecifier <Identifier>
   | <Typename_> 'typenameToken' nestednamespecifier <Template> 'templateToken'? simpletemplateid
   ;

explicitinstantiation
   : <Extern> 'externToken'? <Template> 'templateToken' declaration
   ;

explicitspecialization
   : <Template> 'templateToken' ""<"" 'ltToken' "">"" 'gtToken' declaration
   ;
/*Exception handling*/


tryblock
   : <Try> 'tryToken' compoundstatement 'statement' handlerseq {{TryStatement}}
   ;

functiontryblock
   : <Try> 'tryToken' ctorinitializer? compoundstatement 'statement' handlerseq {{TryStatement}}
   ;

handlerseq
   : handler 'handler' handlerseq?
   ;

handler
   : <Catch> 'catchToken' ""("" 'leftParen' exceptiondeclaration "")"" 'rightParen' compoundstatement 'statement' {{CatchHandler}}
   ;

exceptiondeclaration
   : attributespecifierseq? typespecifierseq declarator
   | attributespecifierseq? typespecifierseq abstractdeclarator?
   | ""..."" 'dotDotDot'
   ;

throwexpression
   : <Throw> 'throwToken' assignmentexpression 'expression'? {{ThrowExpression}}
   ;

exceptionspecification
   : dynamicexceptionspecification
   | noexceptspecification
   ;

dynamicexceptionspecification
   : <Throw> 'throwToken' ""("" 'leftParen' typeidlist? "")"" 'rightParen' {{DynamicExceptionSpecification}}
   ;

typeidlist
   : thetypeid ""..."" 'dotDotDot'?
   | typeidlist "","" 'comma' thetypeid ""..."" 'dotDotDot'?
   ;

noexceptspecification
   : <Noexcept> 'noexceptToken' ""("" 'leftParen' constantexpression "")"" 'rightParen' {{NoExceptionSpecificiation}}
   | <Noexcept> 'noexceptToken' {{NoExceptionSpecificiation}}
   ;
/*Preprocessing directives*/
<directive>
	: \# ([^\\\r\n]* (\\(\r\n?|\n))?)*
;
/*Lexer*/

/*Keywords*/


<Alignas>
   : alignas
   ;

<Alignof>
   : alignof
   ;

<Asm>
   : asm
   ;

<Auto>
   : auto
   ;

<Bool>
   : bool
   ;

<Break>
   : break
   ;

<Case>
   : case
   ;

<Catch>
   : catch
   ;

<Char>
   : char
   ;

<Char16>
   : char16_t
   ;

<Char32>
   : char32_t
   ;

<Class>
   : class
   ;

<Const>
   : const
   ;

<Constexpr>
   : constexpr
   ;

<Const_cast>
   : const_cast
   ;

<Continue>
   : continue
   ;

<Decltype>
   : decltype
   ;

<Default>
   : default
   ;

<Delete>
   : delete
   ;

<Do>
   : do
   ;

<Double>
   : double
   ;

<Dynamic_cast>
   : dynamic_cast
   ;

<Else>
   : else
   ;

<Enum>
   : enum
   ;

<Explicit>
   : explicit
   ;

<Extern>
   : extern
   ;

<False>
   : false
   ;

<Final>
   : final
   ;

<Float>
   : float
   ;

<For>
   : for
   ;

<Friend>
   : friend
   ;

<Goto>
   : goto
   ;

<If>
   : if
   ;

<Inline>
   : inline
   ;

<Int>
   : int
   ;

<Long>
   : long
   ;

<Mutable>
   : mutable
   ;

<Namespace>
   : namespace
   ;

<New>
   : new
   ;

<Noexcept>
   : noexcept
   ;

<Nullptr>
   : nullptr
   ;

<Operator>
   : operator
   ;

<Override>
   : override
   ;

<Private>
   : private
   ;

<Protected>
   : protected
   ;

<Public>
   : public
   ;

<Register>
   : register
   ;

<Reinterpret_cast>
   : reinterpret_cast
   ;

<Return>
   : return
   ;

<Short>
   : short
   ;

<Signed>
   : signed
   ;

<Sizeof>
   : sizeof
   ;

<Static>
   : static
   ;

<Static_assert>
   : static_assert
   ;

<Static_cast>
   : static_cast
   ;

<Struct>
   : struct
   ;

<Switch>
   : switch
   ;

<Template>
   : template
   ;

<This>
   : this
   ;

<Thread_local>
   : thread_local
   ;

<Throw>
   : throw
   ;

<True>
   : true
   ;

<Try>
   : try
   ;

<Typedef>
   : typedef
   ;

<Typeid_>
   : typeid
   ;

<Typename_>
   : typename
   ;

<Union>
   : union
   ;

<Unsigned>
   : unsigned
   ;

<Using>
   : using
   ;

<Virtual>
   : virtual
   ;

<Void>
   : void
   ;

<Volatile>
   : volatile
   ;

<Wchar>
   : wchar_t
   ;

<While>
   : while
   ;
/*Operators*/

<Assign>
   : \=
   ;

<LeftShift>
   : \<\<
   ;

<RightShift>
   :
   \>\>
   ;

<LeftShiftAssign>
   : \<\<\=
   ;

<RightShiftAssign>
   :
   \>\>\=
   ;

theoperator
   : <New> 'newToken'
   | <Delete> 'deleteToken'
   | <New> 'newToken' ""["" 'leftBracket' ""]"" 'rightBracket'
   | <Delete> 'deleteToken' ""["" 'leftBracket' ""]"" 'rightBracket'
   | ""+""
   | ""-""
   | ""*""
   | ""/""
   | ""%""
   | ""^""
   | ""&""
   | ""|""
   | ""~""
   | ""!""
   | ""not""
   | ""=""
   | ""<""
   | "">""
   | ""+=""
   | ""-=""
   | ""*=""
   | ""/=""
   | ""%=""
   | ""^=""
   | ""&=""
   | ""|=""
   | <LeftShift>
   | <RightShift>
   | <RightShiftAssign>
   | <LeftShiftAssign>
   | ""==""
   | ""!=""
   | ""<=""
   | "">=""
   | ""&&""
   | ""and""
   | ""||""
   | ""or""
   | ""++""
   | ""--""
   | "","" 'comma'
   | ""->*""
   | ""->""
   | ""("" 'leftParen' "")"" 'rightParen'
   | ""["" 'leftBracket' ""]"" 'rightBracket'
   ;
/*Lexer*/


<Hexquad>
   : <HEXADECIMALDIGIT> <HEXADECIMALDIGIT> <HEXADECIMALDIGIT> <HEXADECIMALDIGIT>
   ;

<Universalcharactername>
   : \\u <Hexquad>
   | \\U <Hexquad> <Hexquad>
   ;

<Identifier>
   :
/*
   Identifiernondigit
   | Identifier Identifiernondigit
   | Identifier DIGIT
   */
   <Identifiernondigit> (<Identifiernondigit> | <DIGIT>)*
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

literal
   : <Integerliteral>
   | <Characterliteral>
   | <Floatingliteral>
   | <Stringliteral>
   | booleanliteral 
   | pointerliteral
   | userdefinedliteral
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

<Octalliteral>
   : 0 (\'? <OCTALDIGIT>)*
   ;

<Hexadecimalliteral>
   : (0x | 0X) <HEXADECIMALDIGIT> (\'? <HEXADECIMALDIGIT>)*
   ;

<Binaryliteral>
   : (0b | 0B) <BINARYDIGIT> (\'? <BINARYDIGIT>)*
   ;

<NONZERODIGIT>
   : [1-9]
   ;

<OCTALDIGIT>
   : [0-7]
   ;

<HEXADECIMALDIGIT>
   : [0-9a-fA-F]
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

<Exponentpart>
   : e <SIGN>? <Digitsequence>
   | E <SIGN>? <Digitsequence>
   ;

<SIGN>
   : [\+\-]
   ;

<Digitsequence>
   : <DIGIT> (\'? <DIGIT>)*
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
   : \"" .*/* TODO: ? */ \( .*/* TODO: ? */ \) .*/* TODO: ? */ \""
   ;

booleanliteral
   : <False> 'value'
   | <True> 'value'
   ;

pointerliteral
   : <Nullptr> 
   ;

userdefinedliteral
   : <Userdefinedintegerliteral>
   | <Userdefinedfloatingliteral>
   | <Userdefinedstringliteral>
   | <Userdefinedcharacterliteral>
   ;

<Userdefinedintegerliteral>
   : <Decimalliteral> <Udsuffix>
   | <Octalliteral> <Udsuffix>
   | <Hexadecimalliteral> <Udsuffix>
   | <Binaryliteral> <Udsuffix>
   ;

<Userdefinedfloatingliteral>
   : <Fractionalconstant> <Exponentpart>? <Udsuffix>
   | <Digitsequence> <Exponentpart> <Udsuffix>
   ;

<Userdefinedstringliteral>
   : <Stringliteral> <Udsuffix>
   ;

<Userdefinedcharacterliteral>
   : <Characterliteral> <Udsuffix>
   ;

<Udsuffix>
   : <Identifier>
   ;

<whitespace>
   : [\ \t\r\n]+
   ;

<comment>
   : \/\/ [^\r\n]*
   | (\/\* [^\*]* \*+ ([^\/\*] [^\*]* \*+)* \/)
   ;"
]

{ #category : #'file types' }
CPPParser class >> fileExtension [
	^ '.cpp'
]

{ #category : #'file types' }
CPPParser class >> fileExtensions [
	^ #('.cpp' '.c')
]

{ #category : #generated }
CPPParser class >> reduceTable [
^#(
	#(142 0 #reduceFor:) 
	#(262 1 #reduceFor:) 
	#(147 1 #reduceFor:) 
	#(206 1 #reduceFor:) 
	#(217 1 #reduceFor:) 
	#(288 1 #reduceFor:) 
	#(264 1 #reduceFor:) 
	#(209 1 #reduceFor:) 
	#(224 1 #reduceFor:) 
	#(212 1 #reduceFor:) 
	#(211 1 #reduceFor:) 
	#(145 1 #reduceFor:) 
	#(283 1 #reduceFor:) 
	#(230 1 #reduceFor:) 
	#(237 1 #reduceFor:) 
	#(317 1 #reduceFor:) 
	#(266 1 #reduceFor:) 
	#(144 1 #reduceFor:) 
	#(142 1 #reduceFor:) 
	#(202 1 #reduceFor:) 
	#(203 1 #reduceFor:) 
	#(204 1 #reduceFor:) 
	#(210 1 #reduceFor:) 
	#(213 1 #reduceFor:) 
	#(214 1 #reduceFor:) 
	#(222 1 #reduceFor:) 
	#(229 1 #reduceFor:) 
	#(231 1 #reduceFor:) 
	#(232 1 #reduceFor:) 
	#(244 1 #reduceFor:) 
	#(245 1 #reduceFor:) 
	#(255 1 #reduceFor:) 
	#(256 1 #reduceFor:) 
	#(257 1 #reduceFor:) 
	#(258 1 #reduceFor:) 
	#(259 1 #reduceFor:) 
	#(218 1 #reduceFor:) 
	#(285 1 #reduceFor:) 
	#(316 1 #reduceFor:) 
	#(262 2 #reduceFor:) 
	#(263 1 #reduceFor:) 
	#(266 2 #reduceFor:) 
	#(247 0 #reduceFor:) 
	#(145 2 #reduceFor:) 
	#(224 2 #reduceFor:) 
	#(220 2 #reduceFor:) 
	#(236 0 #reduceFor:) 
	#(333 1 #reduceFor:) 
	#(310 2 #reduceFor:) 
	#(215 1 #reduceFor:) 
	#(303 1 #reduceFor:) 
	#(302 2 #reduceFor:) 
	#(309 2 #reduceFor:) 
	#(321 2 #reduceFor:) 
	#(146 2 #reduceFor:) 
	#(217 2 #reduceFor:) 
	#(202 2 #reduceFor:) 
	#(210 2 #reduceFor:) 
	#(206 2 #reduceFor:) 
	#(147 2 #reduceFor:) 
	#(222 2 #reduceFor:) 
	#(208 2 #reduceFor:) 
	#(244 2 #reduceFor:) 
	#(294 1 #reduceFor:) 
	#(277 1 #reduceFor:) 
	#(276 2 #reduceFor:) 
	#(256 2 #reduceFor:) 
	#(278 1 #reduceFor:) 
	#(279 1 #reduceFor:) 
	#(293 1 #reduceFor:) 
	#(273 0 #reduceFor:) 
	#(259 2 #reduceFor:) 
	#(258 2 #reduceFor:) 
	#(285 2 #reduceFor:) 
	#(286 1 #reduceFor:) 
	#(259 3 #reduceFor:) 
	#(262 3 #reduceFor:) 
	#(263 2 #reduceFor:) 
	#(249 1 #reduceFor:) 
	#(251 1 #reduceFor:) 
	#(247 1 #reduceFor:) 
	#(248 1 #reduceFor:) 
	#(162 1 #reduceFor:) 
	#(335 1 #reduceFor:) 
	#(336 1 #reduceFor:) 
	#(143 1 #reduceFor:) 
	#(158 1 #reduceFor:) 
	#(334 1 #reduceFor:) 
	#(337 1 #reduceFor:) 
	#(157 1 #reduceFor:) 
	#(161 1 #reduceFor:) 
	#(171 1 #reduceFor:) 
	#(172 1 #reduceFor:) 
	#(173 1 #reduceFor:) 
	#(174 1 #reduceFor:) 
	#(175 1 #reduceFor:) 
	#(177 1 #reduceFor:) 
	#(178 1 #reduceFor:) 
	#(179 1 #reduceFor:) 
	#(180 1 #reduceFor:) 
	#(181 1 #reduceFor:) 
	#(182 1 #reduceFor:) 
	#(183 1 #reduceFor:) 
	#(184 1 #reduceFor:) 
	#(188 1 #reduceFor:) 
	#(267 1 #reduceFor:) 
	#(328 1 #reduceFor:) 
	#(185 1 #reduceFor:) 
	#(187 1 #reduceFor:) 
	#(220 3 #reduceFor:) 
	#(321 3 #reduceFor:) 
	#(243 3 #reduceFor:) 
	#(236 1 #reduceFor:) 
	#(333 2 #reduceFor:) 
	#(310 3 #reduceFor:) 
	#(215 2 #reduceFor:) 
	#(304 1 #reduceFor:) 
	#(303 2 #reduceFor:) 
	#(314 1 #reduceFor:) 
	#(275 1 #reduceFor:) 
	#(313 1 #reduceFor:) 
	#(312 1 #reduceFor:) 
	#(320 3 #reduceFor:) 
	#(146 3 #reduceFor:) 
	#(217 3 #reduceFor:) 
	#(147 3 #reduceFor:) 
	#(206 3 #reduceFor:) 
	#(276 3 #reduceFor:) 
	#(221 3 #reduceFor:) 
	#(228 1 #reduceFor:) 
	#(226 1 #reduceFor:) 
	#(227 1 #reduceFor:) 
	#(225 2 #reduceFor:) 
	#(223 3 #reduceFor:) 
	#(222 3 #reduceFor:) 
	#(255 3 #reduceFor:) 
	#(280 1 #reduceFor:) 
	#(281 1 #reduceFor:) 
	#(159 1 #reduceFor:) 
	#(308 1 #reduceFor:) 
	#(299 1 #reduceFor:) 
	#(305 2 #reduceFor:) 
	#(306 1 #reduceFor:) 
	#(279 2 #reduceFor:) 
	#(191 1 #reduceFor:) 
	#(192 2 #reduceFor:) 
	#(282 2 #reduceFor:) 
	#(193 1 #reduceFor:) 
	#(189 1 #reduceFor:) 
	#(201 1 #reduceFor:) 
	#(293 2 #reduceFor:) 
	#(277 2 #reduceFor:) 
	#(273 1 #reduceFor:) 
	#(274 1 #reduceFor:) 
	#(257 3 #reduceFor:) 
	#(290 1 #reduceFor:) 
	#(284 3 #reduceFor:) 
	#(301 1 #reduceFor:) 
	#(292 1 #reduceFor:) 
	#(289 1 #reduceFor:) 
	#(291 1 #reduceFor:) 
	#(296 2 #reduceFor:) 
	#(297 1 #reduceFor:) 
	#(300 1 #reduceFor:) 
	#(298 1 #reduceFor:) 
	#(286 2 #reduceFor:) 
	#(285 3 #reduceFor:) 
	#(287 1 #reduceFor:) 
	#(316 3 #reduceFor:) 
	#(319 1 #reduceFor:) 
	#(318 1 #reduceFor:) 
	#(315 3 #reduceFor:) 
	#(247 2 #reduceFor:) 
	#(253 0 #reduceFor:) 
	#(248 2 #reduceFor:) 
	#(161 2 #reduceFor:) 
	#(151 1 #reduceFor:) 
	#(149 2 #reduceFor:) 
	#(154 1 #reduceFor:) 
	#(150 1 #reduceFor:) 
	#(152 1 #reduceFor:) 
	#(153 1 #reduceFor:) 
	#(169 2 #reduceFor:) 
	#(163 2 #reduceFor:) 
	#(165 1 #reduceFor:) 
	#(148 2 #reduceFor:) 
	#(157 2 #reduceFor:) 
	#(176 1 #reduceFor:) 
	#(246 4 #reduceFor:) 
	#(272 1 #reduceFor:) 
	#(270 1 #reduceFor:) 
	#(269 1 #reduceFor:) 
	#(267 2 #reduceFor:) 
	#(268 1 #reduceFor:) 
	#(271 1 #reduceFor:) 
	#(219 4 #reduceFor:) 
	#(328 2 #reduceFor:) 
	#(186 1 #reduceFor:) 
	#(243 4 #reduceFor:) 
	#(235 4 #reduceFor:) 
	#(239 1 #reduceFor:) 
	#(333 3 #reduceFor:) 
	#(304 2 #reduceFor:) 
	#(322 4 #reduceFor:) 
	#(314 2 #reduceFor:) 
	#(275 2 #reduceFor:) 
	#(320 4 #reduceFor:) 
	#(240 4 #reduceFor:) 
	#(241 4 #reduceFor:) 
	#(262 4 #reduceFor:) 
	#(147 4 #reduceFor:) 
	#(276 4 #reduceFor:) 
	#(221 4 #reduceFor:) 
	#(223 4 #reduceFor:) 
	#(222 4 #reduceFor:) 
	#(206 4 #reduceFor:) 
	#(278 3 #reduceFor:) 
	#(281 2 #reduceFor:) 
	#(299 2 #reduceFor:) 
	#(306 2 #reduceFor:) 
	#(307 2 #reduceFor:) 
	#(277 3 #reduceFor:) 
	#(200 2 #reduceFor:) 
	#(191 2 #reduceFor:) 
	#(192 3 #reduceFor:) 
	#(193 2 #reduceFor:) 
	#(189 2 #reduceFor:) 
	#(282 3 #reduceFor:) 
	#(324 3 #reduceFor:) 
	#(325 1 #reduceFor:) 
	#(260 3 #reduceFor:) 
	#(273 2 #reduceFor:) 
	#(259 4 #reduceFor:) 
	#(216 1 #reduceFor:) 
	#(261 2 #reduceFor:) 
	#(292 2 #reduceFor:) 
	#(290 2 #reduceFor:) 
	#(284 4 #reduceFor:) 
	#(289 2 #reduceFor:) 
	#(298 2 #reduceFor:) 
	#(297 2 #reduceFor:) 
	#(220 4 #reduceFor:) 
	#(285 4 #reduceFor:) 
	#(316 4 #reduceFor:) 
	#(318 2 #reduceFor:) 
	#(315 4 #reduceFor:) 
	#(247 3 #reduceFor:) 
	#(245 5 #reduceFor:) 
	#(253 1 #reduceFor:) 
	#(250 3 #reduceFor:) 
	#(143 3 #reduceFor:) 
	#(169 3 #reduceFor:) 
	#(163 3 #reduceFor:) 
	#(154 2 #reduceFor:) 
	#(155 2 #reduceFor:) 
	#(149 3 #reduceFor:) 
	#(152 2 #reduceFor:) 
	#(168 1 #reduceFor:) 
	#(165 2 #reduceFor:) 
	#(166 1 #reduceFor:) 
	#(148 3 #reduceFor:) 
	#(157 3 #reduceFor:) 
	#(172 3 #reduceFor:) 
	#(173 3 #reduceFor:) 
	#(174 3 #reduceFor:) 
	#(175 3 #reduceFor:) 
	#(177 3 #reduceFor:) 
	#(178 3 #reduceFor:) 
	#(179 3 #reduceFor:) 
	#(180 3 #reduceFor:) 
	#(181 3 #reduceFor:) 
	#(182 3 #reduceFor:) 
	#(183 3 #reduceFor:) 
	#(246 5 #reduceFor:) 
	#(270 2 #reduceFor:) 
	#(268 2 #reduceFor:) 
	#(269 2 #reduceFor:) 
	#(271 2 #reduceFor:) 
	#(272 2 #reduceFor:) 
	#(242 5 #reduceFor:) 
	#(185 3 #reduceFor:) 
	#(187 3 #reduceFor:) 
	#(243 5 #reduceFor:) 
	#(235 5 #reduceFor:) 
	#(239 2 #reduceFor:) 
	#(238 5 #reduceFor:) 
	#(233 5 #reduceFor:) 
	#(234 5 #reduceFor:) 
	#(314 3 #reduceFor:) 
	#(275 3 #reduceFor:) 
	#(312 3 #reduceFor:) 
	#(311 5 #reduceFor:) 
	#(241 5 #reduceFor:) 
	#(240 5 #reduceFor:) 
	#(205 5 #reduceFor:) 
	#(221 5 #reduceFor:) 
	#(226 3 #reduceFor:) 
	#(227 3 #reduceFor:) 
	#(223 5 #reduceFor:) 
	#(222 5 #reduceFor:) 
	#(276 5 #reduceFor:) 
	#(281 3 #reduceFor:) 
	#(306 3 #reduceFor:) 
	#(307 3 #reduceFor:) 
	#(190 3 #reduceFor:) 
	#(197 1 #reduceFor:) 
	#(200 3 #reduceFor:) 
	#(195 1 #reduceFor:) 
	#(323 3 #reduceFor:) 
	#(282 4 #reduceFor:) 
	#(325 2 #reduceFor:) 
	#(324 4 #reduceFor:) 
	#(265 1 #reduceFor:) 
	#(332 1 #reduceFor:) 
	#(260 4 #reduceFor:) 
	#(329 1 #reduceFor:) 
	#(273 3 #reduceFor:) 
	#(274 3 #reduceFor:) 
	#(259 5 #reduceFor:) 
	#(216 2 #reduceFor:) 
	#(261 3 #reduceFor:) 
	#(292 3 #reduceFor:) 
	#(290 3 #reduceFor:) 
	#(295 2 #reduceFor:) 
	#(291 3 #reduceFor:) 
	#(289 3 #reduceFor:) 
	#(298 3 #reduceFor:) 
	#(297 3 #reduceFor:) 
	#(285 5 #reduceFor:) 
	#(318 3 #reduceFor:) 
	#(247 4 #reduceFor:) 
	#(252 3 #reduceFor:) 
	#(253 2 #reduceFor:) 
	#(171 4 #reduceFor:) 
	#(163 4 #reduceFor:) 
	#(155 3 #reduceFor:) 
	#(150 3 #reduceFor:) 
	#(152 3 #reduceFor:) 
	#(161 4 #reduceFor:) 
	#(169 4 #reduceFor:) 
	#(164 3 #reduceFor:) 
	#(168 2 #reduceFor:) 
	#(166 2 #reduceFor:) 
	#(170 4 #reduceFor:) 
	#(156 3 #reduceFor:) 
	#(157 4 #reduceFor:) 
	#(160 2 #reduceFor:) 
	#(270 3 #reduceFor:) 
	#(268 3 #reduceFor:) 
	#(272 3 #reduceFor:) 
	#(233 6 #reduceFor:) 
	#(234 6 #reduceFor:) 
	#(314 4 #reduceFor:) 
	#(275 4 #reduceFor:) 
	#(205 6 #reduceFor:) 
	#(241 6 #reduceFor:) 
	#(281 4 #reduceFor:) 
	#(306 4 #reduceFor:) 
	#(307 4 #reduceFor:) 
	#(190 4 #reduceFor:) 
	#(198 2 #reduceFor:) 
	#(327 1 #reduceFor:) 
	#(260 5 #reduceFor:) 
	#(292 4 #reduceFor:) 
	#(290 4 #reduceFor:) 
	#(298 4 #reduceFor:) 
	#(297 4 #reduceFor:) 
	#(318 4 #reduceFor:) 
	#(254 3 #reduceFor:) 
	#(169 5 #reduceFor:) 
	#(163 5 #reduceFor:) 
	#(152 4 #reduceFor:) 
	#(168 3 #reduceFor:) 
	#(167 3 #reduceFor:) 
	#(161 5 #reduceFor:) 
	#(156 4 #reduceFor:) 
	#(160 3 #reduceFor:) 
	#(184 5 #reduceFor:) 
	#(270 4 #reduceFor:) 
	#(272 4 #reduceFor:) 
	#(207 7 #reduceFor:) 
	#(314 5 #reduceFor:) 
	#(275 5 #reduceFor:) 
	#(199 1 #reduceFor:) 
	#(198 3 #reduceFor:) 
	#(194 5 #reduceFor:) 
	#(195 3 #reduceFor:) 
	#(196 5 #reduceFor:) 
	#(190 5 #reduceFor:) 
	#(327 2 #reduceFor:) 
	#(330 3 #reduceFor:) 
	#(331 1 #reduceFor:) 
	#(260 6 #reduceFor:) 
	#(163 6 #reduceFor:) 
	#(167 4 #reduceFor:) 
	#(156 5 #reduceFor:) 
	#(160 4 #reduceFor:) 
	#(270 5 #reduceFor:) 
	#(272 5 #reduceFor:) 
	#(314 6 #reduceFor:) 
	#(196 6 #reduceFor:) 
	#(195 4 #reduceFor:) 
	#(327 3 #reduceFor:) 
	#(326 5 #reduceFor:) 
	#(332 4 #reduceFor:) 
	#(331 2 #reduceFor:) 
	#(330 4 #reduceFor:) 
	#(260 7 #reduceFor:) 
	#(163 7 #reduceFor:) 
	#(157 7 #reduceFor:) 
	#(167 5 #reduceFor:) 
	#(156 6 #reduceFor:) 
	#(160 5 #reduceFor:) 
	#(314 7 #reduceFor:) 
	#(196 7 #reduceFor:) 
	#(194 7 #reduceFor:) 
	#(195 5 #reduceFor:) 
	#(331 3 #reduceFor:) 
	#(156 7 #reduceFor:) 
	#(160 6 #reduceFor:) 
	#(314 8 #reduceFor:) 
	#(196 8 #reduceFor:) 
	#(331 4 #reduceFor:)
	).
]

{ #category : #'generated-accessing' }
CPPParser class >> scannerClass [
	^CPPScanner
]

{ #category : #generated }
CPPParser class >> startingStateFortranslationunit [
	^ 1
]

{ #category : #generated }
CPPParser class >> symbolNames [
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"->*"' '"."' '".*"' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<="' '"="' '"=="' '">"' '">="' '"?"' '"["' '"]"' '"^"' '"^="' '"and"' '"not"' '"or"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<directive>' '<Alignas>' '<Alignof>' '<Asm>' '<Auto>' '<Bool>' '<Break>' '<Case>' '<Catch>' '<Char>' '<Char16>' '<Char32>' '<Class>' '<Const>' '<Constexpr>' '<Const_cast>' '<Continue>' '<Decltype>' '<Default>' '<Delete>' '<Do>' '<Double>' '<Dynamic_cast>' '<Else>' '<Enum>' '<Explicit>' '<Extern>' '<False>' '<Final>' '<Float>' '<For>' '<Friend>' '<Goto>' '<If>' '<Inline>' '<Int>' '<Long>' '<Mutable>' '<Namespace>' '<New>' '<Noexcept>' '<Nullptr>' '<Operator>' '<Override>' '<Private>' '<Protected>' '<Public>' '<Register>' '<Reinterpret_cast>' '<Return>' '<Short>' '<Signed>' '<Sizeof>' '<Static>' '<Static_assert>' '<Static_cast>' '<Struct>' '<Switch>' '<Template>' '<This>' '<Thread_local>' '<Throw>' '<True>' '<Try>' '<Typedef>' '<Typeid_>' '<Typename_>' '<Union>' '<Unsigned>' '<Using>' '<Virtual>' '<Void>' '<Volatile>' '<Wchar>' '<While>' '<Assign>' '<LeftShift>' '<RightShift>' '<LeftShiftAssign>' '<RightShiftAssign>' '<Identifier>' '<Integerliteral>' '<Octalliteral>' '<Characterliteral>' '<Floatingliteral>' '<Stringliteral>' '<Userdefinedintegerliteral>' '<Userdefinedfloatingliteral>' '<Userdefinedstringliteral>' '<Userdefinedcharacterliteral>' '<whitespace>' '<comment>' 'B e g i n' 'translationunit' 'primaryexpression' 'idexpression' 'unqualifiedid' 'qualifiedid' 'nestednamespecifier' 'lambdaexpression' 'lambdaintroducer' 'lambdacapture' 'capturedefault' 'capturelist' 'capture' 'simplecapture' 'initcapture' 'lambdadeclarator' 'postfixexpression' 'typeidofthetypeid' 'expressionlist' 'pseudodestructorname' 'unaryexpression' 'unaryoperator' 'newexpression' 'newplacement' 'newtypeid' 'newdeclarator' 'noptrnewdeclarator' 'newinitializer' 'deleteexpression' 'noexceptexpression' 'castexpression' 'pmexpression' 'multiplicativeexpression' 'additiveexpression' 'shiftexpression' 'shiftoperator' 'relationalexpression' 'equalityexpression' 'andexpression' 'exclusiveorexpression' 'inclusiveorexpression' 'logicalandexpression' 'logicalorexpression' 'conditionalexpression' 'assignmentexpression' 'assignmentoperator' 'expression' 'constantexpression' 'statement' 'labeledstatement' 'expressionstatement' 'compoundstatement' 'statementseq' 'selectionstatement' 'condition' 'iterationstatement' 'forinitstatement' 'forrangedeclaration' 'forrangeinitializer' 'jumpstatement' 'declarationstatement' 'declarationseq' 'declaration' 'blockdeclaration' 'aliasdeclaration' 'simpledeclaration' 'static_assertdeclaration' 'attributedeclaration' 'declspecifier' 'declspecifierseq' 'storageclassspecifier' 'functionspecifier' 'typespecifier' 'trailingtypespecifier' 'typespecifierseq' 'trailingtypespecifierseq' 'simpletypespecifier' 'thetypename' 'decltypespecifier' 'elaboratedtypespecifier' 'enumspecifier' 'enumhead' 'opaqueenumdeclaration' 'enumkey' 'enumbase' 'enumeratorlist' 'enumeratordefinition' 'enumerator' 'namespacename' 'originalnamespacename' 'namespacedefinition' 'namednamespacedefinition' 'originalnamespacedefinition' 'extensionnamespacedefinition' 'unnamednamespacedefinition' 'namespacebody' 'namespacealias' 'namespacealiasdefinition' 'qualifiednamespacespecifier' 'usingdeclaration' 'usingdirective' 'asmdefinition' 'linkagespecification' 'attributespecifierseq' 'attributespecifier' 'alignmentspecifier' 'attributelist' 'attribute' 'attributetoken' 'attributescopedtoken' 'attributenamespace' 'attributeargumentclause' 'balancedtokenseq' 'balancedtoken' 'initdeclaratorlist' 'initdeclarator' 'declarator' 'ptrdeclarator' 'noptrdeclarator' 'parametersandqualifiers' 'trailingreturntype' 'ptroperator' 'cvqualifierseq' 'cvqualifier' 'refqualifier' 'declaratorid' 'thetypeid' 'abstractdeclarator' 'ptrabstractdeclarator' 'noptrabstractdeclarator' 'abstractpackdeclarator' 'noptrabstractpackdeclarator' 'parameterdeclarationclause' 'parameterdeclarationlist' 'parameterdeclaration' 'functiondefinition' 'functionbody' 'initializer' 'braceorequalinitializer' 'initializerclause' 'initializerlist' 'bracedinitlist' 'classname' 'classspecifier' 'classhead' 'classheadname' 'classvirtspecifier' 'classkey' 'memberspecification' 'memberdeclaration' 'memberdeclaratorlist' 'memberdeclarator' 'virtspecifierseq' 'virtspecifier' 'purespecifier' 'baseclause' 'basespecifierlist' 'basespecifier' 'classordecltype' 'basetypespecifier' 'accessspecifier' 'conversionfunctionid' 'conversiontypeid' 'conversiondeclarator' 'ctorinitializer' 'meminitializerlist' 'meminitializer' 'meminitializerid' 'operatorfunctionid' 'literaloperatorid' 'templatedeclaration' 'templateparameterlist' 'templateparameter' 'typeparameter' 'simpletemplateid' 'templateid' 'templatename' 'templateargumentlist' 'templateargument' 'typenamespecifier' 'explicitinstantiation' 'explicitspecialization' 'tryblock' 'functiontryblock' 'handlerseq' 'handler' 'exceptiondeclaration' 'throwexpression' 'exceptionspecification' 'dynamicexceptionspecification' 'typeidlist' 'noexceptspecification' 'theoperator' 'literal' 'booleanliteral' 'pointerliteral' 'userdefinedliteral' 'E O F' 'error')
]

{ #category : #generated }
CPPParser class >> transitionTable [
^#(
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 209 0 142 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 0 229 0 202 0 233 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66 0 6 1 82] 
#[1 0 10 0 2 0 10 0 3 0 10 0 4 0 10 0 5 0 10 0 6 0 10 0 7 0 10 0 8 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 24 0 10 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 29 0 10 0 30 0 10 0 31 0 10 0 32 0 10 0 33 0 10 0 34 0 10 0 35 0 7 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 44 0 10 0 45 0 10 0 46 0 10 0 47 0 10 0 48 0 11 0 50 0 10 0 66 0 10 0 77 0 10 0 91 0 10 0 92 0 10 0 112 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 127 0 10 0 128 0 10 0 129 1 213 0 244 1 113 0 245 1 117 0 246] 
#[1 0 10 0 2 0 10 0 3 0 10 0 4 0 10 0 5 0 10 0 6 0 10 0 7 0 10 0 8 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 24 0 10 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 29 0 10 0 30 0 10 0 31 0 10 0 32 0 10 0 33 0 10 0 34 0 10 0 35 0 7 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 44 0 10 0 45 0 10 0 46 0 10 0 47 0 10 0 48 0 11 0 50 0 10 0 66 0 10 0 77 0 10 0 91 0 10 0 92 0 10 0 112 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 127 0 10 0 128 0 10 0 129 1 217 0 244 1 113 0 245 1 117 0 246] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 233 1 2 1 237 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 10 0 2 0 10 0 3 0 10 0 4 0 10 0 5 0 10 0 6 0 10 0 7 0 10 0 8 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 24 0 10 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 29 0 10 0 30 0 10 0 31 0 10 0 32 0 10 0 33 0 10 0 34 0 10 0 35 0 7 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 40 0 10 0 42 0 10 0 43 0 10 0 44 0 10 0 45 0 10 0 46 0 10 0 47 0 10 0 48 0 11 0 50 0 77 0 62 0 10 0 66 0 10 0 77 0 10 0 91 0 10 0 92 0 10 0 112 0 197 0 121 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 127 0 10 0 128 0 10 0 129 1 241 0 244 1 113 0 245 1 117 0 246 1 245 1 7 1 249 1 8] 
#[1 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 1 253 0 144 0 217 0 145 0 221 0 146 2 1 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 0 14 0 10 0 48 0 91 0 107 0 129] 
#[0 0 18 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 2 5 0 36] 
#[1 0 85 0 66 2 9 0 129 2 13 0 219 2 17 1 27 2 21 1 59 1 197 1 61] 
#[0 2 25 0 8] 
#[0 2 29 0 8] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 26 0 26 0 27 0 36 0 43 0 50 0 66 0 129] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 89 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 110 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 34 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 2 33 0 8] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 0 38 0 26 0 15 0 27 0 38 0 36 0 38 0 43 0 38 0 50 2 37 0 61 0 19 0 66 2 41 0 105 0 23 0 129 2 49 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 0 42 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[1 0 46 0 5 0 46 0 6 0 46 0 8 0 46 0 10 0 46 0 23 0 46 0 27 0 46 0 28 0 46 0 36 0 46 0 48 0 46 0 50 0 46 0 53 0 46 0 54 0 46 0 58 0 46 0 59 0 46 0 60 0 46 0 61 0 46 0 62 0 46 0 63 0 46 0 66 0 46 0 70 0 46 0 73 0 46 0 74 0 46 0 75 0 46 0 78 0 46 0 80 0 46 0 83 0 46 0 84 0 46 0 85 0 46 0 86 0 46 0 91 0 46 0 96 0 46 0 99 0 46 0 100 0 46 0 102 0 46 0 105 2 53 0 107 0 46 0 109 0 46 0 113 0 46 0 115 0 46 0 116 0 46 0 117 0 46 0 119 0 46 0 120 0 46 0 121 0 46 0 122 0 46 0 129 2 57 0 134] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 34 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[1 0 42 0 5 0 42 0 6 0 42 0 8 0 42 0 10 0 42 0 23 0 42 0 27 0 42 0 28 0 42 0 36 0 42 0 48 0 42 0 50 0 42 0 53 0 42 0 54 0 42 0 58 0 42 0 59 0 42 0 60 0 42 0 61 0 42 0 62 0 42 0 63 0 42 0 66 0 42 0 70 0 42 0 73 0 42 0 74 0 42 0 75 0 42 0 78 0 42 0 80 0 42 0 83 0 42 0 84 0 42 0 85 0 42 0 86 2 61 0 87 0 42 0 91 0 42 0 96 0 42 0 99 0 42 0 100 0 42 0 102 0 42 0 105 0 42 0 109 0 42 0 113 0 42 0 115 0 42 0 116 0 42 0 117 0 42 0 119 0 42 0 120 0 42 0 121 0 42 0 122 0 42 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 46 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[1 2 65 0 43 2 69 0 129 2 73 0 230] 
#[1 2 77 0 1 2 81 0 2 2 85 0 3 2 89 0 4 2 93 0 5 2 97 0 6 2 101 0 7 2 105 0 8 2 109 0 10 2 113 0 11 2 117 0 12 2 121 0 13 2 125 0 14 2 129 0 15 2 133 0 16 2 137 0 17 2 141 0 18 2 145 0 19 2 149 0 20 2 153 0 24 2 157 0 25 0 29 0 27 2 161 0 29 2 165 0 30 2 169 0 31 2 173 0 32 2 177 0 33 2 181 0 34 2 185 0 36 2 189 0 38 2 193 0 39 2 197 0 40 2 201 0 41 2 205 0 42 2 209 0 44 2 213 0 45 2 217 0 46 2 221 0 48 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 2 225 0 68 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 2 229 0 88 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 233 0 125 2 237 0 126 2 241 0 127 2 245 0 128 2 249 0 129 2 253 0 134 3 1 0 137 3 5 0 147 3 9 0 213 1 21 0 214 3 13 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 3 21 1 47 2 21 1 59 1 197 1 61 1 201 1 64 3 25 1 77] 
#[0 0 46 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 46 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 3 29 0 8] 
#[0 0 26 0 26 0 27 0 36 0 43 0 50 0 66 0 129] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 3 33 0 29 0 37 0 36 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 3 37 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[0 0 46 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 0 34 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 3 41 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 0 26 0 26 0 27 0 36 0 43 0 50 0 66 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 3 45 0 27 0 85 0 66 3 49 0 87 3 53 0 115 3 57 0 129 3 61 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 0 42 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 89 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 110 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 0 50 0 2 0 50 0 3 0 50 0 4 0 27 0 5 0 27 0 6 0 50 0 7 0 27 0 8 0 27 0 9 0 27 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 27 0 15 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 50 0 21 0 50 0 22 0 27 0 23 0 50 0 24 0 50 0 25 0 50 0 26 0 31 0 27 0 27 0 28 0 35 0 29 0 50 0 30 0 27 0 31 0 50 0 32 0 27 0 33 0 50 0 34 0 50 0 35 0 27 0 36 0 50 0 37 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 42 0 27 0 43 0 50 0 44 0 50 0 45 0 50 0 46 0 50 0 47 0 54 0 48 0 27 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 50 0 77 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 50 0 92 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 50 0 112 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 50 0 124 0 50 0 125 0 50 0 126 0 50 0 127 0 50 0 128 0 54 0 129] 
#[0 0 0 1 82] 
#[0 0 70 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 92 0 112 0 124] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 3 65 0 10 0 41 0 48 0 133 0 91 3 69 0 107 3 73 0 129 3 77 0 145 3 81 0 218 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 3 85 1 59 1 193 1 60 1 197 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 3 89 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66 0 78 1 82] 
#[0 0 82 0 5 0 6 0 8 0 10 0 23 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 0 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 0 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 0 94 0 5 0 94 0 6 0 94 0 8 0 94 0 9 0 94 0 10 0 94 0 15 0 94 0 23 0 94 0 26 0 39 0 27 0 94 0 28 0 94 0 31 0 94 0 33 0 43 0 36 0 94 0 48 0 47 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 51 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 94 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 55 0 129 3 5 0 147 1 1 0 209 3 101 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 3 105 0 244 1 113 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 3 109 0 28 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 3 113 0 255 1 125 1 0 3 117 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 0 34 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 0 34 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 0 34 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 0 22 0 2 0 22 0 3 0 22 0 4 0 22 0 5 0 22 0 6 0 22 0 7 0 22 0 8 0 22 0 9 0 22 0 10 0 22 0 11 0 22 0 12 0 22 0 13 0 22 0 14 0 22 0 15 0 22 0 16 0 22 0 17 0 22 0 18 0 22 0 19 0 22 0 20 0 22 0 21 0 22 0 22 0 22 0 23 0 22 0 24 0 22 0 25 0 22 0 26 0 59 0 27 0 22 0 28 0 22 0 29 0 22 0 30 0 22 0 31 0 22 0 32 0 22 0 33 0 22 0 34 0 22 0 35 0 22 0 36 0 22 0 37 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 42 0 22 0 43 0 22 0 44 0 22 0 45 0 22 0 46 0 22 0 47 0 22 0 48 0 22 0 50 0 22 0 53 0 22 0 54 0 22 0 58 0 22 0 59 0 22 0 60 0 22 0 61 0 22 0 62 0 22 0 63 0 22 0 66 0 22 0 70 0 22 0 73 0 22 0 74 0 22 0 75 0 22 0 77 0 22 0 78 0 22 0 80 0 22 0 83 0 22 0 84 0 22 0 85 0 22 0 86 0 22 0 91 0 22 0 92 0 22 0 96 0 22 0 99 0 22 0 100 0 22 0 102 0 22 0 105 0 22 0 109 0 22 0 112 0 22 0 113 0 22 0 115 0 22 0 116 0 22 0 117 0 22 0 119 0 22 0 120 0 22 0 121 0 22 0 122 0 22 0 124 0 22 0 125 0 22 0 126 0 22 0 127 0 22 0 128 0 22 0 129] 
#[1 0 22 0 2 0 22 0 3 0 22 0 4 0 22 0 5 0 22 0 6 0 22 0 7 0 22 0 8 0 22 0 9 0 22 0 10 0 22 0 11 0 22 0 12 0 22 0 13 0 22 0 14 0 22 0 15 0 22 0 16 0 22 0 17 0 22 0 18 0 22 0 19 0 22 0 20 0 22 0 21 0 22 0 22 0 22 0 23 0 22 0 24 0 22 0 25 0 22 0 26 0 63 0 27 0 22 0 28 0 22 0 29 0 22 0 30 0 22 0 31 0 22 0 32 0 22 0 33 0 22 0 34 0 22 0 35 0 22 0 36 0 22 0 37 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 42 0 22 0 43 0 22 0 44 0 22 0 45 0 22 0 46 0 22 0 47 0 22 0 48 0 22 0 50 0 22 0 53 0 22 0 54 0 22 0 58 0 22 0 59 0 22 0 60 0 22 0 61 0 22 0 62 0 22 0 63 0 22 0 66 0 22 0 70 0 22 0 73 0 22 0 74 0 22 0 75 0 22 0 77 0 22 0 78 0 22 0 80 0 22 0 83 0 22 0 84 0 22 0 85 0 22 0 86 0 22 0 91 0 22 0 92 0 22 0 96 0 22 0 99 0 22 0 100 0 22 0 102 0 22 0 105 0 22 0 109 0 22 0 112 0 22 0 113 0 22 0 115 0 22 0 116 0 22 0 117 0 22 0 119 0 22 0 120 0 22 0 121 0 22 0 122 0 22 0 124 0 22 0 125 0 22 0 126 0 22 0 127 0 22 0 128 0 22 0 129] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 3 129 0 43] 
#[0 0 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[1 3 133 0 26 0 29 0 27 0 37 0 36 0 106 0 43 0 45 0 50 0 85 0 66 3 137 0 129 3 141 0 147 1 225 0 218 1 229 0 219 3 145 0 225 1 57 0 229 1 61 0 230 1 85 0 237 3 149 0 244 1 113 0 245 1 117 0 246 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 3 153 0 27] 
#[0 0 110 0 27 0 28] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 118 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 118 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 110 0 27 0 28] 
#[0 0 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 0 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 0 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 0 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 3 157 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 3 161 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 1 1 0 209 3 165 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 3 173 0 255 1 125 1 0 3 177 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64] 
#[0 0 122 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 0 126 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 3 181 0 15 3 185 0 28] 
#[0 0 130 0 15 0 28] 
#[1 3 189 0 8 0 134 0 15 3 193 0 26 0 134 0 28 3 197 0 31 3 201 0 43 3 205 0 77 3 209 0 92 3 213 0 112 3 217 0 192 3 221 1 21 3 225 1 22 3 229 1 23 3 233 1 26 3 237 1 37 3 241 1 38 3 245 1 49 3 249 1 68] 
#[0 0 138 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[1 0 67 0 8 0 142 0 9 0 142 0 15 0 142 0 23 0 142 0 26 0 142 0 28 0 142 0 31 0 142 0 33 4 1 0 36 0 142 0 43 0 142 0 77 0 142 0 92 0 142 0 112 0 142 0 124 4 5 1 4] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 4 9 1 2 1 237 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 0 146 0 8 0 146 0 9 0 146 0 15 0 146 0 23 0 146 0 26 0 146 0 28 0 146 0 31 0 146 0 33 0 71 0 36 0 146 0 43 0 45 0 50 0 146 0 77 0 146 0 92 0 146 0 112 0 146 0 124 4 13 0 244 1 113 0 245 1 117 0 246] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 4 17 0 43] 
#[1 4 21 0 26 0 29 0 27 0 37 0 36 0 154 0 43 0 45 0 50 0 85 0 66 4 25 0 129 4 29 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 4 33 0 244 1 113 0 245 1 117 0 246 4 37 1 27 4 41 1 30 4 45 1 40 4 49 1 59 1 197 1 61] 
#[0 0 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 0 50 0 2 0 50 0 3 0 50 0 4 0 50 0 5 0 50 0 6 0 50 0 7 0 50 0 8 0 50 0 9 0 50 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 50 0 15 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 50 0 21 0 50 0 22 0 50 0 23 0 50 0 24 0 50 0 25 0 50 0 26 0 50 0 28 0 75 0 29 0 50 0 30 0 50 0 31 0 50 0 32 0 50 0 33 0 50 0 34 0 50 0 35 0 50 0 36 0 50 0 37 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 42 0 50 0 43 0 50 0 44 0 50 0 45 0 50 0 46 0 50 0 47 0 50 0 50 0 50 0 77 0 50 0 92 0 50 0 112 0 50 0 124 0 50 0 125 0 50 0 126 0 50 0 127 0 50 0 128] 
#[1 0 50 0 2 0 50 0 3 0 50 0 4 0 50 0 5 0 50 0 6 0 50 0 7 0 50 0 8 0 50 0 9 0 50 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 50 0 15 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 50 0 21 0 50 0 22 0 50 0 23 0 50 0 24 0 50 0 25 0 50 0 26 0 50 0 28 0 79 0 29 0 50 0 30 0 50 0 31 0 50 0 32 0 50 0 33 0 50 0 34 0 50 0 35 0 50 0 36 0 50 0 37 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 42 0 50 0 43 0 50 0 44 0 50 0 45 0 50 0 46 0 50 0 47 0 50 0 50 0 50 0 77 0 50 0 92 0 50 0 112 0 50 0 124 0 50 0 125 0 50 0 126 0 50 0 127 0 50 0 128] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 83 0 5 0 83 0 6 0 158 0 7 0 83 0 8 0 83 0 9 0 83 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 83 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 83 0 23 0 158 0 24 0 158 0 25 0 83 0 26 0 54 0 27 0 83 0 28 0 158 0 29 0 158 0 30 0 83 0 31 0 158 0 32 0 83 0 33 0 158 0 34 0 158 0 35 0 83 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 40 0 158 0 42 0 83 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 54 0 48 0 83 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 158 0 77 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 158 0 92 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 158 0 112 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128 0 54 0 129] 
#[0 0 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 4 61 0 29] 
#[0 0 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 0 162 0 2 0 162 0 3 0 162 0 4 0 162 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 19 0 162 0 20 0 162 0 21 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 87 0 36 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 40 0 162 0 42 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 91 0 50 0 162 0 66 0 162 0 77 0 162 0 91 0 162 0 92 0 162 0 112 0 162 0 124 0 162 0 125 0 162 0 126 0 162 0 127 0 162 0 128 0 162 0 129 3 169 0 245 1 117 0 246] 
#[1 0 162 0 2 0 162 0 3 0 162 0 4 0 162 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 19 0 162 0 20 0 162 0 21 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 87 0 36 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 40 0 162 0 42 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 91 0 50 0 162 0 66 0 162 0 77 0 162 0 91 0 162 0 92 0 162 0 112 0 162 0 124 0 162 0 125 0 162 0 126 0 162 0 127 0 162 0 128 0 162 0 129 3 169 0 245 1 117 0 246] 
#[1 3 65 0 10 0 41 0 48 0 133 0 91 4 65 0 107 4 69 0 129 3 77 0 145 1 173 1 46 1 177 1 53 1 181 1 54 4 73 1 59 1 193 1 60 1 197 1 61] 
#[0 3 121 0 27] 
#[0 3 125 0 27] 
#[0 4 77 0 9] 
#[1 0 67 0 8 0 142 0 9 0 142 0 15 0 142 0 23 0 142 0 26 0 142 0 28 0 142 0 31 0 142 0 33 4 1 0 36 0 142 0 43 0 142 0 77 0 142 0 92 0 142 0 112 0 142 0 124 4 81 1 4] 
#[1 0 162 0 2 0 162 0 3 0 162 0 4 0 162 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 19 0 162 0 20 0 162 0 21 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 87 0 36 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 40 0 162 0 42 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 91 0 50 0 77 0 62 0 162 0 66 0 162 0 77 0 162 0 91 0 162 0 92 0 162 0 112 0 197 0 121 0 162 0 124 0 162 0 125 0 162 0 126 0 162 0 127 0 162 0 128 0 162 0 129 3 169 0 245 1 117 0 246 4 85 1 7 1 249 1 8] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 66 0 77 0 91 0 92 0 112 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 18 0 166 0 19 0 166 0 20 0 166 0 21 0 166 0 22 0 166 0 23 0 166 0 24 0 166 0 25 0 166 0 26 0 166 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 166 0 37 0 166 0 38 0 166 0 39 0 166 0 40 0 166 0 42 0 166 0 43 0 166 0 44 0 166 0 45 0 166 0 46 0 166 0 47 0 166 0 48 0 166 0 50 0 77 0 62 0 166 0 66 0 166 0 77 0 166 0 89 0 166 0 91 0 166 0 92 0 166 0 110 0 166 0 112 0 197 0 121 0 166 0 124 0 166 0 125 0 166 0 126 0 166 0 127 0 166 0 128 0 166 0 129 4 89 1 7 1 249 1 8] 
#[0 0 170 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 92 0 112 0 124] 
#[1 0 41 0 48 0 133 0 91 4 65 0 107 4 69 0 129 3 77 0 145 1 173 1 46 1 177 1 53 1 181 1 54 4 73 1 59 1 193 1 60 1 197 1 61] 
#[1 0 174 0 15 0 174 0 37 4 93 0 129 4 97 0 247 4 101 0 248 4 105 0 249 4 109 0 250 4 113 0 251] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 15 0 54 0 16 0 54 0 17 0 54 0 18 0 54 0 19 0 54 0 20 0 54 0 21 0 54 0 22 0 54 0 23 0 54 0 24 0 54 0 25 0 54 0 26 0 54 0 28 0 95 0 29 0 54 0 30 0 54 0 31 0 54 0 32 0 54 0 33 0 54 0 34 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 40 0 54 0 42 0 54 0 43 0 54 0 44 0 54 0 45 0 54 0 46 0 54 0 47 0 54 0 50 0 54 0 77 0 54 0 92 0 54 0 112 0 54 0 124 0 54 0 125 0 54 0 126 0 54 0 127 0 54 0 128] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 5 101 0 188 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 5 113 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 5 137 0 134] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 5 141 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 5 161 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 0 182 0 26 0 27 0 36 0 43 0 50 0 66 0 129] 
#[0 0 182 0 26 0 27 0 36 0 43 0 50 0 66 0 129] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 5 0 186 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 19 0 186 0 20 0 186 0 21 0 186 0 22 0 186 0 23 0 186 0 24 0 186 0 25 0 186 0 26 0 99 0 27 0 186 0 28 0 103 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 42 0 186 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 50 0 186 0 53 0 186 0 54 0 186 0 58 0 186 0 59 0 186 0 60 0 186 0 61 0 186 0 62 0 186 0 63 0 186 0 66 0 186 0 70 0 186 0 73 0 186 0 74 0 186 0 75 0 186 0 77 0 186 0 78 0 186 0 80 0 186 0 83 0 186 0 84 0 186 0 85 0 186 0 86 0 186 0 91 0 186 0 92 0 186 0 96 0 186 0 99 0 186 0 100 0 186 0 102 0 186 0 105 0 186 0 109 0 186 0 112 0 186 0 113 0 186 0 115 0 186 0 116 0 186 0 117 0 186 0 119 0 186 0 120 0 186 0 121 0 186 0 122 0 186 0 124 0 186 0 125 0 186 0 126 0 186 0 127 0 186 0 128 0 186 0 129] 
#[1 5 177 0 107 5 181 0 129 5 185 1 59 1 197 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 189 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 5 193 0 43 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 197 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[1 5 201 0 43 5 205 0 129 5 209 0 230] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 190 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 213 0 202 0 233 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 5 217 0 236 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[1 5 221 0 31 0 107 0 43] 
#[0 5 229 0 43] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 5 233 0 9] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 5 237 0 37] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 18 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 111 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 50 0 194 0 77 0 194 0 92 0 194 0 112 0 194 0 124 0 194 0 125 0 194 0 126 0 194 0 127 0 194 0 128] 
#[1 0 194 0 2 0 194 0 3 0 194 0 4 0 194 0 5 0 194 0 6 0 194 0 7 0 194 0 8 0 194 0 9 0 194 0 10 0 194 0 11 0 194 0 12 0 194 0 13 0 194 0 14 0 194 0 15 0 194 0 16 0 194 0 17 0 194 0 18 0 194 0 19 0 194 0 20 0 194 0 21 0 194 0 22 0 194 0 23 0 194 0 24 0 194 0 25 0 194 0 26 0 194 0 28 0 194 0 29 0 194 0 30 0 194 0 31 0 194 0 32 0 194 0 33 0 194 0 34 0 194 0 35 0 115 0 36 0 194 0 37 0 194 0 38 0 194 0 39 0 194 0 40 0 194 0 42 0 194 0 43 0 194 0 44 0 194 0 45 0 194 0 46 0 194 0 47 0 194 0 50 0 194 0 77 0 194 0 92 0 194 0 112 0 194 0 124 0 194 0 125 0 194 0 126 0 194 0 127 0 194 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 15 0 54 0 16 0 54 0 17 0 54 0 18 0 54 0 19 0 54 0 20 0 54 0 21 0 54 0 22 0 54 0 23 0 54 0 24 0 54 0 25 0 54 0 26 0 31 0 27 0 31 0 28 0 95 0 29 0 54 0 30 0 54 0 31 0 54 0 32 0 54 0 33 0 54 0 34 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 40 0 54 0 42 0 54 0 43 0 54 0 44 0 54 0 45 0 54 0 46 0 54 0 47 0 54 0 48 0 54 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 54 0 92 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 54 0 112 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 54 0 124 0 54 0 125 0 54 0 126 0 54 0 127 0 54 0 128 0 54 0 129] 
#[0 5 249 0 129] 
#[0 0 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 5 253 0 107 6 1 0 129 3 81 0 218 1 157 1 27 6 5 1 59 1 197 1 61] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 15 0 202 0 16 0 202 0 17 0 202 0 18 0 202 0 19 0 202 0 20 0 202 0 21 0 202 0 22 0 202 0 23 0 202 0 24 0 202 0 25 0 202 0 26 0 119 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 123 0 36 0 202 0 37 0 202 0 38 0 202 0 39 0 202 0 40 0 202 0 42 0 202 0 43 0 202 0 44 0 202 0 45 0 202 0 46 0 202 0 47 0 202 0 48 0 127 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 131 0 66 0 89 0 70 0 93 0 73 0 202 0 77 0 105 0 78 0 117 0 84 0 121 0 85 0 202 0 91 0 202 0 92 0 141 0 99 0 145 0 100 0 157 0 105 0 202 0 112 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 202 0 124 0 202 0 125 0 202 0 126 0 202 0 127 0 202 0 128 0 135 0 129 3 5 0 147 3 9 0 213 1 21 0 214 6 9 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 13 0 244 1 113 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 139 0 5 0 143 0 6 0 206 0 7 0 206 0 8 0 206 0 9 0 147 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 15 0 206 0 16 0 206 0 17 0 206 0 18 0 206 0 19 0 206 0 20 0 206 0 21 0 206 0 22 0 206 0 23 0 206 0 24 0 206 0 25 0 206 0 26 0 29 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 0 206 0 37 0 206 0 38 0 206 0 39 0 206 0 40 0 206 0 42 0 206 0 43 0 206 0 44 0 206 0 45 0 206 0 46 0 206 0 47 0 206 0 50 0 85 0 66 0 206 0 77 0 206 0 92 0 206 0 112 0 206 0 124 0 206 0 125 0 206 0 126 0 206 0 127 0 206 0 128 2 249 0 129 6 17 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 6 21 1 6 1 157 1 27 6 25 1 48 2 21 1 59 1 197 1 61] 
#[1 3 133 0 26 0 29 0 27 0 37 0 36 0 106 0 43 0 45 0 50 0 85 0 66 6 29 0 129 3 141 0 147 1 225 0 218 1 229 0 219 3 145 0 225 1 57 0 229 1 61 0 230 1 85 0 237 6 33 0 244 1 113 0 245 1 117 0 246 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 0 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 6 37 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 0 29 0 27 6 41 0 33 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 6 45 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 6 49 0 107 0 165 0 109 0 169 0 113 6 53 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 1 145 1 8 6 65 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 6 69 1 56 6 73 1 57 6 77 1 58 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 0 218 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 6 81 0 107 6 85 0 129 6 89 1 59 1 197 1 61] 
#[1 0 151 0 48 0 155 0 91 0 14 0 107 0 159 0 129 6 97 0 145 1 173 1 46 1 177 1 53 1 181 1 54 6 101 1 59 1 193 1 60 1 197 1 61] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 6 105 0 147 1 225 0 218 1 229 0 219 6 109 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 6 113 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 0 31 0 27 0 66 0 29 6 117 0 31 0 37 0 36 0 45 0 50 6 121 0 244 1 113 0 245 1 117 0 246] 
#[1 0 41 0 48 0 133 0 91 5 177 0 107 4 69 0 129 6 125 0 145 1 173 1 46 1 177 1 53 1 181 1 54 4 73 1 59 1 193 1 60 1 197 1 61] 
#[1 0 162 0 2 0 162 0 3 0 162 0 4 0 162 0 5 0 162 0 6 0 162 0 7 0 162 0 8 0 162 0 9 0 162 0 10 0 162 0 11 0 162 0 12 0 162 0 13 0 162 0 14 0 162 0 15 0 162 0 16 0 162 0 17 0 162 0 18 0 162 0 19 0 162 0 20 0 162 0 21 0 162 0 22 0 162 0 23 0 162 0 24 0 162 0 25 0 162 0 26 0 162 0 27 0 162 0 28 0 162 0 29 0 162 0 30 0 162 0 31 0 162 0 32 0 162 0 33 0 162 0 34 0 162 0 35 0 87 0 36 0 162 0 37 0 162 0 38 0 162 0 39 0 162 0 40 0 162 0 42 0 162 0 43 0 162 0 44 0 162 0 45 0 162 0 46 0 162 0 47 0 162 0 48 0 91 0 50 0 77 0 62 0 162 0 66 0 162 0 77 0 162 0 91 0 162 0 92 0 162 0 112 0 197 0 121 0 162 0 124 0 162 0 125 0 162 0 126 0 162 0 127 0 162 0 128 0 162 0 129 6 129 0 244 1 113 0 245 1 117 0 246 6 133 1 7 1 249 1 8] 
#[1 0 41 0 48 0 133 0 91 6 93 0 129 6 137 0 145 1 173 1 46 1 177 1 53 1 181 1 54 6 141 1 59 1 193 1 60 1 197 1 61] 
#[1 0 50 0 2 0 50 0 3 0 50 0 4 0 27 0 5 0 27 0 6 0 50 0 7 0 27 0 8 0 27 0 9 0 27 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 27 0 15 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 50 0 21 0 50 0 22 0 27 0 23 0 50 0 24 0 50 0 25 0 27 0 26 0 163 0 27 0 27 0 28 0 35 0 29 0 50 0 30 0 27 0 31 0 50 0 32 0 27 0 33 0 50 0 34 0 50 0 35 0 27 0 36 0 50 0 37 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 42 0 27 0 43 0 50 0 44 0 50 0 45 0 50 0 46 0 50 0 47 0 54 0 48 0 27 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 50 0 77 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 50 0 92 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 50 0 112 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 50 0 124 0 50 0 125 0 50 0 126 0 50 0 127 0 50 0 128 0 54 0 129] 
#[0 0 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 83 0 5 0 83 0 6 0 158 0 7 0 83 0 8 0 83 0 9 0 83 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 83 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 83 0 23 0 158 0 24 0 158 0 25 0 83 0 26 0 167 0 27 0 83 0 28 0 158 0 29 0 158 0 30 0 83 0 31 0 158 0 32 0 83 0 33 0 158 0 34 0 158 0 35 0 83 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 40 0 158 0 42 0 83 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 54 0 48 0 83 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 158 0 77 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 158 0 92 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 158 0 112 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128 0 54 0 129] 
#[0 0 230 0 5 0 6 0 8 0 10 0 23 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 0 46 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 0 42 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 96 0 99 0 100 0 102 0 105 0 109 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129] 
#[0 0 234 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 48 0 50 0 66 0 91 0 129] 
#[1 0 234 0 5 0 234 0 6 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 15 0 234 0 23 0 234 0 26 0 234 0 27 0 234 0 28 0 234 0 31 0 234 0 33 0 171 0 36 0 234 0 48 0 175 0 50 0 234 0 66 0 234 0 91 0 234 0 129 3 169 0 245 1 117 0 246] 
#[0 0 238 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[1 3 181 0 15 6 153 0 28] 
#[1 3 189 0 8 0 134 0 15 3 193 0 26 0 134 0 28 3 197 0 31 3 201 0 43 3 205 0 77 3 209 0 92 3 213 0 112 3 217 0 192 6 157 1 21 3 225 1 22 3 229 1 23 3 233 1 26 6 161 1 37 3 241 1 38 3 245 1 49 3 249 1 68] 
#[0 0 242 0 10 0 48 0 91 0 107 0 129] 
#[0 0 242 0 10 0 48 0 91 0 107 0 129] 
#[1 6 165 0 47 6 169 0 129 6 173 0 226 6 177 0 227 6 181 0 228] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 6 185 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 3 133 0 26 0 31 0 27 6 189 0 28 0 66 0 29 0 246 0 43 6 193 0 225] 
#[1 5 177 0 107 6 197 0 129 5 185 1 59 1 197 1 61] 
#[0 0 246 0 43] 
#[1 3 133 0 26 0 29 0 27 0 37 0 36 0 246 0 43 0 45 0 50 0 85 0 66 6 201 0 129 6 205 0 147 1 225 0 218 1 229 0 219 6 209 0 225 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 0 242 0 10 0 48 0 91 0 107 0 129] 
#[0 0 250 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 6 213 0 87] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 6 217 0 255 1 125 1 0 6 221 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 0 254 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 3 181 0 15 6 225 0 28] 
#[1 3 189 0 8 0 134 0 15 3 193 0 26 0 134 0 28 3 197 0 31 3 201 0 43 3 205 0 77 3 209 0 92 3 213 0 112 3 217 0 192 6 229 1 21 3 225 1 22 3 229 1 23 3 233 1 26 6 233 1 37 3 241 1 38 3 245 1 49 3 249 1 68] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 6 237 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 0 238 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 6 249 0 159 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 1 1 24 7 5 1 25 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 0 29 0 27 0 85 0 66 7 13 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 7 29 1 43 7 33 1 50 7 37 1 51 7 41 1 52 2 21 1 59 1 197 1 61] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 7 45 0 67 7 49 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 53 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 3 201 0 43 4 161 0 44 7 77 0 47 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 7 141 0 185 7 145 0 187 7 149 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 165 0 193 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 7 1 1 24 7 197 1 25 7 9 1 26 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 1 2 0 15 0 26 0 28 0 31 0 43 0 77 0 92 0 112 0 124] 
#[0 1 2 0 15 0 26 0 28 0 31 0 43 0 77 0 92 0 112 0 124] 
#[1 3 193 0 26 7 205 0 43 7 209 0 192 7 213 1 49] 
#[0 1 6 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 1 10 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 1 14 0 15 0 28] 
#[0 1 18 0 15 0 23 0 28 0 37] 
#[0 1 22 0 15 0 23 0 28 0 37] 
#[1 3 193 0 26 7 217 0 31 7 205 0 43 3 205 0 77 3 209 0 92 3 213 0 112 3 217 0 192 7 221 1 21 7 225 1 38 3 245 1 49 3 249 1 68] 
#[0 1 26 0 15 0 26 0 28 0 31 0 43 0 77 0 92 0 112 0 124] 
#[1 7 205 0 43 7 229 0 192] 
#[0 1 6 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 1 30 0 9 7 233 0 23 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 1 145 1 8 7 237 1 17 7 241 1 18 7 245 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 7 249 0 37 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 7 253 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 1 34 0 8 1 34 0 9 1 34 0 15 8 1 0 19 1 34 0 23 1 34 0 26 1 34 0 28 1 34 0 31 1 34 0 33 1 34 0 36 1 34 0 43 1 34 0 77 1 34 0 92 1 34 0 112 1 34 0 124 8 5 1 5] 
#[0 1 38 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[1 1 34 0 8 1 34 0 9 1 34 0 15 1 34 0 23 1 34 0 26 1 34 0 28 1 34 0 31 1 34 0 33 0 179 0 36 1 34 0 43 0 45 0 50 1 34 0 77 1 34 0 92 1 34 0 112 1 34 0 124 3 169 0 245 1 117 0 246] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 9 0 26 0 29 0 27 8 13 0 28 0 37 0 36 8 17 0 47 0 41 0 48 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 133 0 91 8 21 0 93 8 25 0 94 8 29 0 95 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 8 33 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 8 37 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 8 41 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 8 45 0 205 8 49 0 207 1 1 0 209 8 53 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 8 57 0 240 8 61 0 244 1 113 0 245 1 117 0 246 8 65 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 8 69 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 8 73 1 33 8 77 1 34 8 81 1 35 8 85 1 36 8 89 1 45 1 173 1 46 1 177 1 53 1 181 1 54 8 93 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 85 0 66 8 21 0 93 8 25 0 94 8 29 0 95 8 97 0 119 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 8 101 0 244 1 113 0 245 1 117 0 246 7 25 1 27 8 105 1 41 8 109 1 42 8 113 1 43 8 117 1 44 8 121 1 45 2 21 1 59 1 197 1 61] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 5 0 186 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 19 0 186 0 20 0 186 0 21 0 186 0 22 0 186 0 23 0 186 0 24 0 186 0 25 0 183 0 26 0 99 0 27 0 186 0 28 0 103 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 42 0 183 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 50 0 186 0 53 0 186 0 54 0 186 0 58 0 186 0 59 0 186 0 60 0 186 0 61 0 186 0 62 0 186 0 63 0 186 0 66 0 186 0 70 0 186 0 73 0 186 0 74 0 186 0 75 0 183 0 77 0 186 0 78 0 186 0 80 0 186 0 83 0 186 0 84 0 186 0 85 0 186 0 86 0 186 0 91 0 186 0 92 0 186 0 96 0 186 0 99 0 186 0 100 0 186 0 102 0 186 0 105 0 186 0 109 0 186 0 112 0 186 0 113 0 186 0 115 0 186 0 116 0 186 0 117 0 186 0 119 0 186 0 120 0 186 0 121 0 186 0 122 0 186 0 124 0 186 0 125 0 186 0 126 0 186 0 127 0 186 0 128 0 186 0 129] 
#[1 8 125 0 107 8 129 0 129 8 133 1 27 8 137 1 59 1 197 1 61] 
#[1 4 21 0 26 0 29 0 27 0 37 0 36 1 42 0 43 0 45 0 50 0 85 0 66 8 141 0 129 8 145 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 4 37 1 27 8 149 1 30 8 153 1 40 2 21 1 59 1 197 1 61] 
#[1 1 46 0 26 0 150 0 27 1 46 0 43 1 46 0 77] 
#[1 4 21 0 26 1 42 0 43 8 157 0 77 8 161 1 31 8 165 1 40] 
#[0 1 42 0 43] 
#[1 0 186 0 2 0 186 0 3 0 186 0 4 0 186 0 5 0 186 0 6 0 186 0 7 0 186 0 8 0 186 0 9 0 186 0 10 0 186 0 11 0 186 0 12 0 186 0 13 0 186 0 14 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 18 0 186 0 19 0 186 0 20 0 186 0 21 0 186 0 22 0 186 0 23 0 186 0 24 0 186 0 25 0 183 0 26 0 183 0 27 0 186 0 28 0 186 0 29 0 186 0 30 0 186 0 31 0 186 0 32 0 186 0 33 0 186 0 34 0 186 0 35 0 186 0 36 0 186 0 37 0 186 0 38 0 186 0 39 0 186 0 40 0 186 0 42 0 183 0 43 0 186 0 44 0 186 0 45 0 186 0 46 0 186 0 47 0 186 0 48 0 186 0 50 0 186 0 53 0 186 0 54 0 186 0 58 0 186 0 59 0 186 0 60 0 186 0 61 0 186 0 62 0 186 0 63 0 186 0 66 0 186 0 70 0 186 0 73 0 186 0 74 0 186 0 75 0 183 0 77 0 186 0 78 0 186 0 80 0 186 0 83 0 186 0 84 0 186 0 85 0 186 0 86 0 186 0 91 0 186 0 92 0 186 0 96 0 186 0 99 0 186 0 100 0 186 0 102 0 186 0 105 0 186 0 109 0 186 0 112 0 186 0 113 0 186 0 115 0 186 0 116 0 186 0 117 0 186 0 119 0 186 0 120 0 186 0 121 0 186 0 122 0 186 0 124 0 186 0 125 0 186 0 126 0 186 0 127 0 186 0 128 0 186 0 129] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 8 169 0 33 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 8 173 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 8 177 0 188 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 8 181 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 8 185 1 62 8 189 1 63 5 117 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 8 193 0 33 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 8 173 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 8 177 0 188 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 8 181 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 8 197 1 62 8 189 1 63 5 117 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 8 201 0 33 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 8 173 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 8 177 0 188 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 8 181 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 8 205 1 62 8 189 1 63 5 117 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 0 41 0 48 0 133 0 91 6 93 0 129 6 137 0 145 1 173 1 46 1 177 1 53 1 181 1 54 8 209 1 59 1 193 1 60 1 197 1 61] 
#[1 0 50 0 2 0 50 0 3 0 50 0 4 0 50 0 5 0 50 0 6 0 50 0 7 0 50 0 8 0 50 0 9 0 50 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 50 0 15 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 50 0 21 0 50 0 22 0 50 0 23 0 50 0 24 0 50 0 25 0 50 0 26 6 145 0 27 0 50 0 28 0 35 0 29 0 50 0 30 0 50 0 31 0 50 0 32 0 50 0 33 0 50 0 34 0 50 0 35 0 50 0 36 0 50 0 37 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 42 0 50 0 43 0 50 0 44 0 50 0 45 0 50 0 46 0 50 0 47 0 50 0 50 0 50 0 77 0 50 0 92 0 50 0 112 0 50 0 124 0 50 0 125 0 50 0 126 0 50 0 127 0 50 0 128] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 6 149 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 40 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 50 0 158 0 77 0 158 0 92 0 158 0 112 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128] 
#[0 1 50 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 77 0 92 0 112 0 124] 
#[0 1 34 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 77 0 92 0 112 0 124] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 66 0 77 0 91 0 92 0 112 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 66 0 77 0 89 0 91 0 92 0 110 0 112 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 1 62 0 8 1 62 0 15 1 62 0 23 1 66 0 27 1 62 0 37] 
#[1 8 213 0 15 8 217 0 37] 
#[1 1 70 0 15 8 221 0 23 1 70 0 37] 
#[1 8 225 0 8 1 74 0 15 1 74 0 23 1 74 0 37 8 229 0 252] 
#[0 1 62 0 8 0 15 0 23 0 37] 
#[0 8 233 0 27] 
#[0 1 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 1 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 8 237 0 187 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 8 241 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 1 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 1 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 8 245 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 1 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 8 249 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 0 14 0 10 0 14 0 48 8 253 0 68 9 1 0 88 0 14 0 91 0 14 0 107 0 14 0 129] 
#[1 9 5 0 5 9 9 0 31 9 13 0 37 9 17 0 108 9 21 0 129 9 25 0 150 9 29 0 151 9 33 0 152 9 37 0 153 9 41 0 154 9 45 0 155] 
#[0 1 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 1 78 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 1 78 0 1 1 78 0 5 1 78 0 8 1 78 0 10 1 78 0 12 1 78 0 13 1 78 0 16 1 78 0 17 1 78 0 27 1 78 0 36 1 78 0 41 1 78 0 44 1 78 0 48 1 78 0 51 1 78 0 53 1 78 0 54 1 78 0 58 1 78 0 59 1 78 0 60 1 78 0 64 0 187 0 66 1 78 0 68 1 78 0 70 1 78 0 71 1 78 0 76 1 78 0 78 1 78 0 84 1 78 0 85 1 78 0 88 1 78 0 89 1 78 0 90 1 78 0 91 1 78 0 97 1 78 0 99 1 78 0 100 1 78 0 101 1 78 0 104 1 78 0 108 1 78 0 111 1 78 0 114 1 78 0 115 1 78 0 117 1 78 0 120 1 78 0 122 0 191 0 129 1 78 0 130 1 78 0 132 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 1 78 0 137 1 78 0 138 2 13 0 219 2 17 1 27 2 21 1 59 1 197 1 61] 
#[0 9 49 0 8] 
#[0 9 53 0 29] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 9 57 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 9 61 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 9 65 0 29] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 9 69 0 8 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 9 73 0 164 9 77 0 165 3 9 0 213 1 21 0 214 9 81 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 9 85 0 8] 
#[0 1 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 9 89 0 29] 
#[1 4 117 0 1 4 121 0 5 9 93 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 9 97 0 23 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 9 101 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 9 105 0 29] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 94 0 8] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 0 41 0 48 0 133 0 91 3 69 0 107 3 73 0 129 3 77 0 145 3 81 0 218 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 3 85 1 59 1 193 1 60 1 197 1 61] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 9 109 0 8 7 205 0 43 9 113 0 156 9 117 0 192] 
#[1 1 110 0 2 1 110 0 3 1 110 0 4 1 110 0 5 1 110 0 6 1 110 0 7 9 121 0 8 1 110 0 9 1 110 0 10 1 110 0 11 1 110 0 12 9 125 0 13 1 110 0 14 1 110 0 15 1 110 0 16 9 129 0 17 1 110 0 18 9 133 0 19 1 110 0 20 9 137 0 21 1 110 0 22 1 110 0 23 1 110 0 24 1 110 0 25 1 110 0 26 1 110 0 28 1 110 0 29 1 110 0 30 1 110 0 31 1 110 0 32 1 110 0 33 1 110 0 34 1 110 0 35 9 141 0 36 1 110 0 37 1 110 0 38 1 110 0 39 1 110 0 40 1 110 0 42 1 110 0 44 1 110 0 45 1 110 0 46 1 110 0 47 1 110 0 125 1 110 0 126 1 110 0 127 1 110 0 128] 
#[0 9 145 0 8] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 9 149 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 118 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 1 122 0 2 1 122 0 3 1 122 0 4 1 122 0 5 1 122 0 6 1 122 0 7 1 122 0 9 1 122 0 10 1 122 0 11 1 122 0 12 1 122 0 14 1 122 0 15 1 122 0 16 1 122 0 18 9 153 0 20 9 157 0 22 1 122 0 23 1 122 0 24 1 122 0 25 1 122 0 26 1 122 0 28 1 122 0 29 1 122 0 30 1 122 0 31 1 122 0 32 1 122 0 33 1 122 0 34 1 122 0 35 1 122 0 37 1 122 0 38 1 122 0 39 1 122 0 40 1 122 0 42 1 122 0 44 1 122 0 45 1 122 0 46 1 122 0 47 1 122 0 125 1 122 0 126 1 122 0 127 1 122 0 128] 
#[1 1 126 0 2 9 161 0 3 1 126 0 4 1 126 0 5 1 126 0 6 1 126 0 7 1 126 0 9 9 165 0 10 1 126 0 11 1 126 0 12 1 126 0 14 1 126 0 15 1 126 0 16 1 126 0 18 1 126 0 23 9 169 0 24 1 126 0 25 1 126 0 26 1 126 0 28 1 126 0 29 1 126 0 30 1 126 0 31 1 126 0 32 1 126 0 33 1 126 0 34 1 126 0 35 1 126 0 37 1 126 0 38 1 126 0 39 1 126 0 40 1 126 0 42 1 126 0 44 1 126 0 45 1 126 0 46 1 126 0 47 1 126 0 125 1 126 0 126 1 126 0 127 1 126 0 128] 
#[1 1 130 0 2 1 130 0 4 1 130 0 5 1 130 0 6 1 130 0 7 1 130 0 9 1 130 0 11 9 173 0 12 1 130 0 14 1 130 0 15 9 177 0 16 1 130 0 18 1 130 0 23 1 130 0 25 1 130 0 26 1 130 0 28 1 130 0 29 1 130 0 30 1 130 0 31 1 130 0 32 1 130 0 33 1 130 0 34 1 130 0 35 1 130 0 37 1 130 0 38 1 130 0 39 1 130 0 40 1 130 0 42 1 130 0 44 1 130 0 45 1 130 0 46 1 130 0 47 1 130 0 125 1 130 0 126 1 130 0 127 1 130 0 128] 
#[1 1 134 0 2 1 134 0 4 1 134 0 5 1 134 0 6 1 134 0 7 1 134 0 9 1 134 0 11 1 134 0 14 1 134 0 15 1 134 0 18 1 134 0 23 1 134 0 25 1 134 0 26 1 134 0 28 1 134 0 29 1 134 0 30 1 134 0 31 1 134 0 32 1 134 0 33 1 134 0 34 1 134 0 35 1 134 0 37 1 134 0 38 1 134 0 39 1 134 0 40 1 134 0 42 1 134 0 44 1 134 0 45 1 134 0 46 1 134 0 47 9 181 0 125 9 185 0 126 1 134 0 127 1 134 0 128 9 189 0 176] 
#[1 1 138 0 2 1 138 0 4 1 138 0 5 1 138 0 6 1 138 0 7 1 138 0 9 1 138 0 11 1 138 0 14 1 138 0 15 1 138 0 18 1 138 0 23 1 138 0 25 1 138 0 26 1 138 0 28 9 193 0 29 9 197 0 30 1 138 0 31 1 138 0 32 0 195 0 33 9 205 0 34 1 138 0 35 1 138 0 37 1 138 0 38 1 138 0 39 1 138 0 40 1 138 0 42 1 138 0 44 1 138 0 45 1 138 0 46 1 138 0 47 1 138 0 127 1 138 0 128] 
#[1 9 209 0 2 1 142 0 4 1 142 0 5 1 142 0 6 1 142 0 7 1 142 0 9 1 142 0 11 1 142 0 14 1 142 0 15 1 142 0 18 1 142 0 23 1 142 0 25 1 142 0 26 1 142 0 28 1 142 0 31 9 213 0 32 1 142 0 33 1 142 0 35 1 142 0 37 1 142 0 38 1 142 0 39 1 142 0 40 1 142 0 42 1 142 0 44 1 142 0 45 1 142 0 46 1 142 0 47 1 142 0 127 1 142 0 128] 
#[1 1 146 0 4 9 217 0 5 1 146 0 6 1 146 0 7 1 146 0 9 1 146 0 11 1 146 0 14 1 146 0 15 1 146 0 18 1 146 0 23 1 146 0 25 1 146 0 26 1 146 0 28 1 146 0 31 1 146 0 33 1 146 0 35 1 146 0 37 1 146 0 38 1 146 0 39 1 146 0 40 1 146 0 42 1 146 0 44 1 146 0 45 1 146 0 46 1 146 0 47 1 146 0 127 1 146 0 128] 
#[1 1 150 0 4 1 150 0 6 1 150 0 7 1 150 0 9 1 150 0 11 1 150 0 14 1 150 0 15 1 150 0 18 1 150 0 23 1 150 0 25 1 150 0 26 1 150 0 28 1 150 0 31 1 150 0 33 1 150 0 35 1 150 0 37 9 221 0 38 1 150 0 39 1 150 0 40 1 150 0 42 1 150 0 44 1 150 0 45 1 150 0 46 1 150 0 47 1 150 0 127 1 150 0 128] 
#[1 1 154 0 4 1 154 0 6 1 154 0 7 1 154 0 9 1 154 0 11 1 154 0 14 1 154 0 15 1 154 0 18 1 154 0 23 1 154 0 25 1 154 0 26 1 154 0 28 1 154 0 31 1 154 0 33 1 154 0 35 1 154 0 37 1 154 0 39 1 154 0 40 1 154 0 42 9 225 0 44 1 154 0 45 1 154 0 46 1 154 0 47 1 154 0 127 1 154 0 128] 
#[1 1 158 0 4 9 229 0 6 1 158 0 7 1 158 0 9 1 158 0 11 1 158 0 14 1 158 0 15 1 158 0 18 1 158 0 23 1 158 0 25 1 158 0 26 1 158 0 28 1 158 0 31 1 158 0 33 1 158 0 35 1 158 0 37 1 158 0 39 9 233 0 40 1 158 0 42 1 158 0 45 1 158 0 46 1 158 0 47 1 158 0 127 1 158 0 128] 
#[1 1 162 0 9 1 162 0 15 1 162 0 23 1 162 0 26 1 162 0 28 1 162 0 33 9 237 0 35 1 162 0 37 9 241 0 42 9 245 0 46 1 162 0 47] 
#[0 1 166 0 9 0 15 0 23 0 26 0 28 0 33 0 37 0 47] 
#[1 9 249 0 9 9 253 0 23] 
#[1 0 9 0 5 0 13 0 6 10 1 0 8 1 170 0 9 0 21 0 10 1 170 0 15 0 199 0 23 0 29 0 27 1 170 0 28 1 170 0 33 10 9 0 36 0 85 0 66 2 249 0 129 6 17 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 10 13 1 4 10 17 1 6 10 21 1 12 10 25 1 13 10 29 1 14 10 33 1 15 10 37 1 16 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 0 102 0 5 0 102 0 6 0 203 0 8 0 102 0 9 0 102 0 10 0 102 0 15 0 102 0 23 0 102 0 27 0 102 0 28 0 102 0 33 0 102 0 36 6 245 0 43 0 102 0 48 0 102 0 50 0 102 0 53 0 102 0 54 0 102 0 58 0 102 0 59 0 102 0 60 0 102 0 61 0 102 0 62 0 102 0 63 0 102 0 66 0 102 0 70 0 102 0 73 0 102 0 74 0 102 0 75 0 102 0 78 0 102 0 80 0 102 0 83 0 102 0 84 0 102 0 85 0 102 0 86 0 102 0 91 0 102 0 96 0 102 0 99 0 102 0 100 0 102 0 102 0 102 0 105 0 102 0 109 0 102 0 113 0 102 0 115 0 102 0 116 0 102 0 117 0 102 0 119 0 102 0 120 0 102 0 121 0 102 0 122 0 102 0 129 10 45 1 26] 
#[1 10 49 0 9 10 53 0 23] 
#[1 0 102 0 5 0 102 0 6 0 207 0 8 0 102 0 9 0 102 0 10 0 102 0 15 0 102 0 23 0 102 0 27 0 102 0 28 0 102 0 33 0 102 0 36 6 245 0 43 0 102 0 48 0 102 0 50 0 102 0 53 0 102 0 54 0 102 0 58 0 102 0 59 0 102 0 60 0 102 0 61 0 102 0 62 0 102 0 63 0 102 0 66 0 102 0 70 0 102 0 73 0 102 0 74 0 102 0 75 0 102 0 78 0 102 0 80 0 102 0 83 0 102 0 84 0 102 0 85 0 102 0 86 0 102 0 91 0 102 0 96 0 102 0 99 0 102 0 100 0 102 0 102 0 102 0 105 0 102 0 109 0 102 0 113 0 102 0 115 0 102 0 116 0 102 0 117 0 102 0 119 0 102 0 120 0 102 0 121 0 102 0 122 0 102 0 129 10 61 1 26] 
#[0 1 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 10 65 0 9] 
#[1 0 22 0 8 10 69 0 9 0 22 0 43] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 1 174 0 9 4 129 0 10 4 133 0 12 4 137 0 13 1 174 0 15 4 141 0 16 4 145 0 17 1 174 0 23 1 174 0 26 4 149 0 27 1 174 0 28 1 174 0 33 4 153 0 36 1 174 0 37 4 157 0 41 4 161 0 44 1 174 0 47 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 10 73 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 10 77 0 4 10 81 0 7 1 162 0 9 10 85 0 11 10 89 0 14 1 162 0 15 10 93 0 18 1 162 0 23 10 97 0 25 1 162 0 26 1 162 0 28 10 101 0 31 1 162 0 33 9 237 0 35 1 162 0 37 10 105 0 39 9 241 0 42 10 109 0 45 9 245 0 46 1 162 0 47 10 113 0 127 10 117 0 128 10 121 0 186] 
#[0 1 178 0 9 0 15 0 23 0 26 0 28 0 33 0 37 0 47] 
#[0 1 182 0 9 0 15 0 26 0 28 0 37] 
#[1 10 125 0 9 10 129 0 15] 
#[1 10 41 0 8 6 245 0 43 10 45 1 26] 
#[1 10 57 0 8 6 245 0 43 10 61 1 26] 
#[0 1 178 0 9 0 15 0 23 0 26 0 28 0 33 0 37 0 47] 
#[1 10 133 0 129 10 137 1 59 1 197 1 61] 
#[1 1 186 0 2 1 186 0 3 1 186 0 4 1 186 0 5 1 186 0 6 1 186 0 7 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 1 186 0 17 1 186 0 18 1 186 0 19 1 186 0 20 1 186 0 21 1 186 0 22 1 186 0 23 1 186 0 24 1 186 0 25 1 186 0 26 0 211 0 27 1 186 0 28 0 215 0 29 1 186 0 30 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 34 1 186 0 35 1 186 0 36 1 186 0 37 1 186 0 38 1 186 0 39 1 186 0 40 1 186 0 42 1 186 0 43 1 186 0 44 1 186 0 45 1 186 0 46 1 186 0 47 1 186 0 48 1 186 0 50 1 186 0 53 1 186 0 54 1 186 0 58 1 186 0 59 1 186 0 60 1 186 0 61 1 186 0 62 1 186 0 63 1 186 0 66 1 186 0 70 1 186 0 73 1 186 0 74 1 186 0 75 1 186 0 77 1 186 0 78 1 186 0 80 1 186 0 83 1 186 0 84 1 186 0 85 1 186 0 86 1 186 0 91 1 186 0 92 1 186 0 96 1 186 0 99 1 186 0 100 1 186 0 102 1 186 0 105 1 186 0 109 1 186 0 112 1 186 0 113 1 186 0 115 1 186 0 116 1 186 0 117 1 186 0 119 1 186 0 120 1 186 0 121 1 186 0 122 1 186 0 124 1 186 0 125 1 186 0 126 1 186 0 127 1 186 0 128 1 186 0 129] 
#[0 6 149 0 27] 
#[0 1 190 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 10 141 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 10 145 0 202 0 233 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[0 1 194 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 190 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 213 0 202 0 233 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 10 149 0 236 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[0 0 219 0 43] 
#[0 10 157 0 43] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 1 198 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 3 89 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[0 10 161 0 47] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 10 165 0 147 1 225 0 218 1 229 0 219 10 169 0 229 1 61 0 230 1 85 0 237 10 173 0 239 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 190 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 213 0 202 0 233 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 10 177 0 236 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 190 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 213 0 202 0 233 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 10 181 0 236 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 10 185 0 37] 
#[0 10 189 0 37] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 10 133 0 129 10 193 1 59 1 197 1 61] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 15 0 54 0 16 0 54 0 17 0 54 0 18 0 54 0 19 0 54 0 20 0 54 0 21 0 54 0 22 0 54 0 23 0 54 0 24 0 54 0 25 0 54 0 26 0 163 0 27 0 54 0 28 0 95 0 29 0 54 0 30 0 54 0 31 0 54 0 32 0 54 0 33 0 54 0 34 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 40 0 54 0 42 0 54 0 43 0 54 0 44 0 54 0 45 0 54 0 46 0 54 0 47 0 54 0 48 0 54 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 54 0 92 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 54 0 112 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 54 0 124 0 54 0 125 0 54 0 126 0 54 0 127 0 54 0 128 0 54 0 129] 
#[1 0 54 0 2 0 54 0 3 0 54 0 4 0 54 0 5 0 54 0 6 0 54 0 7 0 54 0 8 0 54 0 9 0 54 0 10 0 54 0 11 0 54 0 12 0 54 0 13 0 54 0 14 0 54 0 15 0 54 0 16 0 54 0 17 0 54 0 18 0 54 0 19 0 54 0 20 0 54 0 21 0 54 0 22 0 54 0 23 0 54 0 24 0 54 0 25 0 54 0 26 0 167 0 27 0 54 0 28 0 54 0 29 0 54 0 30 0 54 0 31 0 54 0 32 0 54 0 33 0 54 0 34 0 54 0 35 0 54 0 36 0 54 0 37 0 54 0 38 0 54 0 39 0 54 0 40 0 54 0 42 0 54 0 43 0 54 0 44 0 54 0 45 0 54 0 46 0 54 0 47 0 54 0 48 0 54 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 54 0 77 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 54 0 92 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 54 0 112 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 54 0 124 0 54 0 125 0 54 0 126 0 54 0 127 0 54 0 128 0 54 0 129] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 66 0 77 0 91 0 92 0 112 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 1 210 0 2 1 210 0 3 1 210 0 4 1 210 0 5 1 210 0 6 1 210 0 7 1 210 0 8 1 210 0 9 1 210 0 10 1 210 0 11 1 210 0 12 1 210 0 13 1 210 0 14 1 210 0 15 1 210 0 16 1 210 0 17 1 210 0 18 1 210 0 19 1 210 0 20 1 210 0 21 1 210 0 22 1 210 0 23 1 210 0 24 1 210 0 25 1 210 0 26 1 210 0 27 1 210 0 28 1 210 0 29 1 210 0 30 1 210 0 31 1 210 0 32 1 210 0 33 1 210 0 34 1 210 0 35 0 223 0 36 1 210 0 37 1 210 0 38 1 210 0 39 1 210 0 40 1 210 0 42 1 210 0 43 1 210 0 44 1 210 0 45 1 210 0 46 1 210 0 47 1 210 0 48 0 227 0 50 1 210 0 66 1 210 0 77 1 210 0 91 1 210 0 92 1 210 0 112 1 210 0 124 1 210 0 125 1 210 0 126 1 210 0 127 1 210 0 128 1 210 0 129 3 169 0 245 1 117 0 246] 
#[1 3 65 0 10 5 177 0 107 10 197 0 129 5 185 1 59 1 197 1 61] 
#[1 1 214 0 2 1 214 0 3 1 214 0 4 0 231 0 5 0 235 0 6 1 214 0 7 1 214 0 8 1 214 0 9 0 239 0 10 1 214 0 11 1 214 0 12 1 214 0 13 1 214 0 14 1 214 0 15 1 214 0 16 1 214 0 17 1 214 0 18 1 214 0 19 1 214 0 20 1 214 0 21 1 214 0 22 1 214 0 23 1 214 0 24 1 214 0 25 1 214 0 26 0 29 0 27 1 214 0 28 1 214 0 29 1 214 0 30 1 214 0 31 1 214 0 32 1 214 0 33 1 214 0 34 1 214 0 35 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 39 1 214 0 40 1 214 0 42 1 214 0 43 1 214 0 44 1 214 0 45 1 214 0 46 1 214 0 47 1 214 0 50 0 85 0 66 1 214 0 77 1 214 0 92 1 214 0 112 1 214 0 124 1 214 0 125 1 214 0 126 1 214 0 127 1 214 0 128 2 249 0 129 6 17 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 6 21 1 6 1 157 1 27 10 201 1 48 2 21 1 59 1 197 1 61] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 3 133 0 26 0 31 0 27 0 66 0 29 0 246 0 43 10 205 0 225] 
#[1 3 133 0 26 0 29 0 27 0 37 0 36 0 246 0 43 0 45 0 50 0 85 0 66 10 209 0 129 6 205 0 147 1 225 0 218 1 229 0 219 6 209 0 225 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 10 213 0 15] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 10 217 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[1 1 222 0 15 10 221 0 23 0 26 0 26 0 26 0 27 10 225 0 31 1 222 0 33 0 26 0 36 0 26 0 43 0 26 0 50 0 26 0 66 0 243 0 129] 
#[0 10 233 0 29] 
#[1 1 222 0 15 10 237 0 23 0 29 0 27 10 241 0 31 1 222 0 33 0 85 0 66 10 245 0 129 3 41 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 0 9 0 5 0 13 0 6 10 249 0 8 1 226 0 9 0 21 0 10 1 226 0 15 0 247 0 23 0 29 0 27 11 1 0 31 1 226 0 33 10 9 0 36 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 11 5 1 1 1 133 1 2 1 137 1 3 10 13 1 4 11 9 1 6 1 149 1 10 11 13 1 12 10 25 1 13 10 29 1 14 10 33 1 15 10 37 1 16 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 11 17 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 1 230 0 15 0 33] 
#[1 11 21 0 15 11 25 0 33] 
#[0 1 234 0 15 0 33] 
#[0 1 230 0 15 0 33] 
#[1 10 133 0 129 11 29 1 59 1 197 1 61] 
#[1 1 238 0 2 1 238 0 3 1 238 0 4 1 238 0 5 1 238 0 6 1 238 0 7 1 238 0 8 1 238 0 9 1 238 0 10 1 238 0 11 1 238 0 12 1 238 0 13 1 238 0 14 1 238 0 15 1 238 0 16 1 238 0 17 1 238 0 18 1 238 0 19 1 238 0 20 1 238 0 21 1 238 0 22 1 238 0 23 1 238 0 24 1 238 0 25 1 238 0 26 0 251 0 27 1 238 0 28 0 255 0 29 1 238 0 30 1 238 0 31 1 238 0 32 1 238 0 33 1 238 0 34 1 238 0 35 1 238 0 36 1 238 0 37 1 238 0 38 1 238 0 39 1 238 0 40 1 238 0 42 1 238 0 43 1 238 0 44 1 238 0 45 1 238 0 46 1 238 0 47 1 238 0 48 1 238 0 50 1 238 0 53 1 238 0 54 1 238 0 58 1 238 0 59 1 238 0 60 1 238 0 61 1 238 0 62 1 238 0 63 1 238 0 66 1 238 0 70 1 238 0 73 1 238 0 74 1 238 0 75 1 238 0 77 1 238 0 78 1 238 0 80 1 238 0 83 1 238 0 84 1 238 0 85 1 238 0 86 1 238 0 91 1 238 0 92 1 238 0 96 1 238 0 99 1 238 0 100 1 238 0 102 1 238 0 105 1 238 0 109 1 238 0 112 1 238 0 113 1 238 0 115 1 238 0 116 1 238 0 117 1 238 0 119 1 238 0 120 1 238 0 121 1 238 0 122 1 238 0 124 1 238 0 125 1 238 0 126 1 238 0 127 1 238 0 128 1 238 0 129] 
#[1 1 238 0 2 1 238 0 3 1 238 0 4 1 238 0 5 1 238 0 6 1 238 0 7 1 238 0 8 1 238 0 9 1 238 0 10 1 238 0 11 1 238 0 12 1 238 0 13 1 238 0 14 1 238 0 15 1 238 0 16 1 238 0 17 1 238 0 18 1 238 0 19 1 238 0 20 1 238 0 21 1 238 0 22 1 238 0 23 1 238 0 24 1 238 0 25 1 238 0 26 1 3 0 27 1 238 0 28 1 238 0 29 1 238 0 30 1 238 0 31 1 238 0 32 1 238 0 33 1 238 0 34 1 238 0 35 1 238 0 36 1 238 0 37 1 238 0 38 1 238 0 39 1 238 0 40 1 238 0 42 1 238 0 43 1 238 0 44 1 238 0 45 1 238 0 46 1 238 0 47 1 238 0 48 1 238 0 50 1 238 0 53 1 238 0 54 1 238 0 58 1 238 0 59 1 238 0 60 1 238 0 61 1 238 0 62 1 238 0 63 1 238 0 66 1 238 0 70 1 238 0 73 1 238 0 74 1 238 0 75 1 238 0 77 1 238 0 78 1 238 0 80 1 238 0 83 1 238 0 84 1 238 0 85 1 238 0 86 1 238 0 91 1 238 0 92 1 238 0 96 1 238 0 99 1 238 0 100 1 238 0 102 1 238 0 105 1 238 0 109 1 238 0 112 1 238 0 113 1 238 0 115 1 238 0 116 1 238 0 117 1 238 0 119 1 238 0 120 1 238 0 121 1 238 0 122 1 238 0 124 1 238 0 125 1 238 0 126 1 238 0 127 1 238 0 128 1 238 0 129] 
#[1 0 50 0 2 0 50 0 3 0 50 0 4 0 50 0 5 0 50 0 6 0 50 0 7 0 50 0 8 0 50 0 9 0 50 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 50 0 15 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 50 0 21 0 50 0 22 0 50 0 23 0 50 0 24 0 50 0 25 0 50 0 26 0 50 0 28 0 35 0 29 0 50 0 30 0 50 0 31 0 50 0 32 0 50 0 33 0 50 0 34 0 50 0 35 0 50 0 36 0 50 0 37 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 42 0 50 0 43 0 50 0 44 0 50 0 45 0 50 0 46 0 50 0 47 0 50 0 50 0 50 0 77 0 50 0 92 0 50 0 112 0 50 0 124 0 50 0 125 0 50 0 126 0 50 0 127 0 50 0 128] 
#[0 11 33 0 28] 
#[0 0 158 0 28] 
#[1 5 177 0 107 11 37 0 129 11 41 0 229 1 61 0 230 1 85 0 237 5 185 1 59 1 197 1 61] 
#[1 3 153 0 27 11 45 0 28] 
#[1 0 41 0 48 0 133 0 91 5 177 0 107 4 69 0 129 11 49 0 145 1 173 1 46 1 177 1 53 1 181 1 54 4 73 1 59 1 193 1 60 1 197 1 61] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 11 53 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 11 57 0 31 0 37 0 36 0 45 0 50 3 169 0 245 1 117 0 246] 
#[0 11 61 0 28] 
#[1 1 54 0 2 1 54 0 3 1 54 0 4 1 54 0 5 1 54 0 6 1 54 0 7 1 54 0 8 1 54 0 9 1 54 0 10 1 54 0 11 1 54 0 12 1 54 0 13 1 54 0 14 1 54 0 15 1 54 0 16 1 54 0 17 1 54 0 18 1 54 0 19 1 54 0 20 1 54 0 21 1 54 0 22 1 54 0 23 1 54 0 24 1 54 0 25 1 54 0 26 1 54 0 27 1 54 0 28 1 54 0 29 1 54 0 30 1 54 0 31 1 54 0 32 1 54 0 33 1 54 0 34 1 54 0 35 1 7 0 36 1 54 0 37 1 54 0 38 1 54 0 39 1 54 0 40 1 54 0 42 1 54 0 43 1 54 0 44 1 54 0 45 1 54 0 46 1 54 0 47 1 54 0 48 1 11 0 50 0 77 0 62 1 54 0 66 1 54 0 77 1 54 0 91 1 54 0 92 1 54 0 112 0 197 0 121 1 54 0 124 1 54 0 125 1 54 0 126 1 54 0 127 1 54 0 128 1 54 0 129 3 169 0 245 1 117 0 246 11 65 1 7 1 249 1 8] 
#[0 1 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 66 0 77 0 91 0 92 0 112 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 1 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 1 15 0 5 1 15 0 6 0 158 0 7 1 15 0 8 1 15 0 9 1 15 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 1 15 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 1 15 0 23 0 158 0 24 0 158 0 25 1 15 0 26 1 19 0 27 1 15 0 28 0 158 0 29 0 158 0 30 1 15 0 31 0 158 0 32 1 15 0 33 0 158 0 34 0 158 0 35 1 15 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 40 0 158 0 42 1 15 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 1 246 0 48 1 15 0 50 1 246 0 53 1 246 0 54 1 246 0 58 1 246 0 59 1 246 0 60 1 246 0 61 1 246 0 62 1 246 0 63 1 246 0 66 1 246 0 70 1 246 0 73 1 246 0 74 1 246 0 75 0 158 0 77 1 246 0 78 1 246 0 80 1 246 0 83 1 246 0 84 1 246 0 85 1 246 0 86 1 246 0 91 0 158 0 92 1 246 0 96 1 246 0 99 1 246 0 100 1 246 0 102 1 246 0 105 1 246 0 109 0 158 0 112 1 246 0 113 1 246 0 115 1 246 0 116 1 246 0 117 1 246 0 119 1 246 0 120 1 246 0 121 1 246 0 122 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128 1 246 0 129] 
#[0 1 250 0 10 0 48 0 91 0 107 0 129] 
#[0 1 250 0 10 0 48 0 91 0 107 0 129] 
#[0 1 254 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 2 2 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 3 193 0 26 7 217 0 31 7 205 0 43 3 205 0 77 3 209 0 92 3 213 0 112 3 217 0 192 11 73 1 21 7 225 1 38 3 245 1 49 3 249 1 68] 
#[0 2 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 2 10 0 15 0 31 0 47] 
#[1 11 77 0 15 11 81 0 47] 
#[0 2 14 0 15 0 47] 
#[1 2 18 0 15 11 85 0 31 2 18 0 47] 
#[0 2 22 0 28 0 43] 
#[0 2 26 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[1 11 89 0 28 2 30 0 43] 
#[1 3 133 0 26 6 145 0 27 0 66 0 29 2 30 0 43 11 93 0 225] 
#[1 3 133 0 26 0 31 0 27 11 97 0 28 0 66 0 29 2 30 0 43 11 101 0 225] 
#[1 5 177 0 107 11 105 0 129 5 185 1 59 1 197 1 61] 
#[0 2 30 0 43] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 11 109 0 147 1 225 0 218 1 229 0 219 11 113 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 3 181 0 15 11 117 0 28] 
#[1 3 189 0 8 0 134 0 15 3 193 0 26 0 134 0 28 3 197 0 31 3 201 0 43 3 205 0 77 3 209 0 92 3 213 0 112 3 217 0 192 11 121 1 21 3 225 1 22 3 229 1 23 3 233 1 26 11 125 1 37 3 241 1 38 3 245 1 49 3 249 1 68] 
#[0 1 254 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 2 2 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 3 193 0 26 7 217 0 31 7 205 0 43 3 205 0 77 3 209 0 92 3 213 0 112 3 217 0 192 11 129 1 21 7 225 1 38 3 245 1 49 3 249 1 68] 
#[0 2 34 0 15 0 28] 
#[1 3 189 0 8 0 134 0 15 0 134 0 28 11 133 0 31 6 245 0 43 3 225 1 22 3 229 1 23 3 233 1 26] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 11 137 0 47 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 1 1 24 7 197 1 25 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 11 141 0 9] 
#[0 2 38 0 9 0 15 0 23 0 26 0 28 0 33 0 37 0 47] 
#[1 2 42 0 9 2 42 0 15 11 145 0 23 2 42 0 47] 
#[1 2 46 0 9 11 149 0 15] 
#[0 2 38 0 9 0 15 0 23 0 26 0 28 0 33 0 37 0 47] 
#[1 1 23 0 8 0 31 0 27 0 66 0 29 1 23 0 43] 
#[1 5 177 0 107 6 1 0 129 11 153 1 27 6 5 1 59 1 197 1 61] 
#[1 2 54 0 8 2 54 0 15 2 54 0 23 3 125 0 27 2 54 0 43] 
#[1 2 54 0 8 2 54 0 15 2 54 0 23 0 150 0 27 2 54 0 43] 
#[0 2 50 0 8 0 43] 
#[0 2 58 0 43] 
#[1 11 157 0 15 11 161 0 23 2 62 0 43] 
#[1 11 165 0 8 6 245 0 43 11 169 1 26] 
#[0 11 173 0 28] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 11 177 0 28 9 57 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 9 61 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 66 0 15 0 23 0 28 0 37] 
#[1 1 78 0 1 1 27 0 5 0 10 0 6 1 27 0 8 1 27 0 10 1 78 0 12 1 78 0 13 1 78 0 16 1 78 0 17 0 10 0 23 1 27 0 27 1 31 0 36 1 78 0 41 1 78 0 44 1 27 0 48 0 45 0 50 1 78 0 51 1 78 0 53 1 78 0 54 1 78 0 58 1 78 0 59 1 78 0 60 1 78 0 64 1 27 0 66 1 78 0 68 1 78 0 70 1 78 0 71 1 78 0 76 1 78 0 78 1 78 0 84 1 78 0 85 1 78 0 88 1 78 0 89 1 78 0 90 1 27 0 91 1 78 0 97 1 78 0 99 1 78 0 100 1 78 0 101 1 78 0 104 1 78 0 108 1 78 0 111 1 78 0 114 1 78 0 115 1 78 0 117 1 78 0 120 1 78 0 122 1 27 0 129 1 78 0 130 1 78 0 132 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 1 78 0 137 1 78 0 138 1 213 0 244 1 113 0 245 1 117 0 246] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 8 237 0 187 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 233 1 2 1 237 1 3 1 141 1 6 1 145 1 8 1 149 1 10 8 241 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 1 78 0 1 1 27 0 5 0 10 0 6 1 27 0 8 1 27 0 10 1 78 0 12 1 78 0 13 1 78 0 16 1 78 0 17 0 10 0 23 1 27 0 27 1 31 0 36 1 78 0 41 1 78 0 44 1 27 0 48 0 45 0 50 1 78 0 51 1 78 0 53 1 78 0 54 1 78 0 58 1 78 0 59 1 78 0 60 0 77 0 62 1 78 0 64 1 27 0 66 1 78 0 68 1 78 0 70 1 78 0 71 1 78 0 76 1 78 0 78 1 78 0 84 1 78 0 85 1 78 0 88 1 78 0 89 1 78 0 90 1 27 0 91 1 78 0 97 1 78 0 99 1 78 0 100 1 78 0 101 1 78 0 104 1 78 0 108 1 78 0 111 1 78 0 114 1 78 0 115 1 78 0 117 1 78 0 120 0 197 0 121 1 78 0 122 1 27 0 129 1 78 0 130 1 78 0 132 1 78 0 133 1 78 0 134 1 78 0 135 1 78 0 136 1 78 0 137 1 78 0 138 1 241 0 244 1 113 0 245 1 117 0 246 1 245 1 7 1 249 1 8] 
#[0 1 35 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 9 5 0 5 9 9 0 31 2 5 0 36 9 13 0 37 9 17 0 108 9 21 0 129 9 25 0 150 9 29 0 151 9 33 0 152 9 37 0 153 9 41 0 154 9 45 0 155] 
#[1 2 74 0 1 2 74 0 5 2 74 0 6 2 74 0 8 2 74 0 10 2 74 0 12 2 74 0 13 2 78 0 15 2 74 0 16 2 74 0 17 1 39 0 23 2 74 0 26 2 74 0 27 1 39 0 28 2 74 0 36 2 74 0 41 2 74 0 43 2 74 0 44 1 39 0 47 2 74 0 48 2 74 0 50 2 74 0 51 2 74 0 52 2 74 0 53 2 74 0 54 2 74 0 55 2 74 0 56 2 74 0 58 2 74 0 59 2 74 0 60 2 74 0 61 2 74 0 62 2 74 0 63 2 74 0 64 2 74 0 65 2 74 0 66 2 74 0 67 2 74 0 68 2 74 0 69 2 74 0 70 2 74 0 71 2 74 0 73 2 74 0 74 2 74 0 75 2 74 0 76 2 74 0 78 2 74 0 79 2 74 0 80 2 74 0 81 2 74 0 82 2 74 0 83 2 74 0 84 2 74 0 85 2 74 0 86 2 74 0 87 2 74 0 88 2 74 0 89 2 74 0 90 2 74 0 91 2 74 0 93 2 74 0 94 2 74 0 95 2 74 0 96 2 74 0 97 2 74 0 98 2 74 0 99 2 74 0 100 2 74 0 101 2 74 0 102 2 74 0 103 2 74 0 104 2 74 0 105 2 74 0 106 2 74 0 107 2 74 0 108 2 74 0 109 2 74 0 110 2 74 0 111 2 74 0 112 2 74 0 113 2 74 0 114 2 74 0 115 2 74 0 116 2 74 0 117 2 74 0 118 2 74 0 119 2 74 0 120 2 74 0 121 2 74 0 122 2 74 0 123 2 74 0 129 2 74 0 130 2 74 0 132 2 74 0 133 2 74 0 134 2 74 0 135 2 74 0 136 2 74 0 137 2 74 0 138 2 74 1 82] 
#[0 11 181 0 28] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 11 185 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 11 189 0 28] 
#[0 11 193 0 26] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 11 197 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 11 201 0 8] 
#[0 11 205 0 129] 
#[0 11 209 0 8] 
#[0 11 213 0 129] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 11 217 0 28 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 11 221 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 11 225 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 11 229 0 8] 
#[1 7 205 0 43 11 233 0 192] 
#[0 11 237 0 8] 
#[1 0 50 0 2 0 50 0 3 0 50 0 4 0 27 0 5 0 27 0 6 0 50 0 7 0 27 0 8 0 27 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 50 0 15 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 50 0 21 0 50 0 22 0 27 0 23 0 50 0 24 0 50 0 25 11 241 0 26 0 31 0 27 0 27 0 28 0 35 0 29 0 50 0 30 0 50 0 31 0 50 0 32 0 50 0 33 0 50 0 34 0 50 0 35 0 27 0 36 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 42 0 27 0 43 0 50 0 44 0 50 0 45 0 50 0 46 0 50 0 47 0 54 0 48 0 27 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 50 0 125 0 50 0 126 0 50 0 127 0 50 0 128 0 54 0 129] 
#[1 1 90 0 2 1 90 0 3 1 90 0 4 1 90 0 5 1 90 0 6 1 90 0 7 1 43 0 8 1 43 0 9 1 90 0 10 1 90 0 11 1 90 0 12 1 90 0 13 1 90 0 14 1 43 0 15 1 90 0 16 1 90 0 17 1 90 0 18 1 90 0 19 1 90 0 20 1 90 0 21 1 90 0 22 1 90 0 23 1 90 0 24 1 90 0 25 1 43 0 28 1 90 0 29 1 90 0 30 1 43 0 31 1 90 0 32 1 90 0 33 1 90 0 34 1 90 0 35 1 43 0 36 1 90 0 38 1 90 0 39 1 90 0 40 1 90 0 42 0 70 0 43 1 90 0 44 1 90 0 45 1 90 0 46 1 90 0 47 0 70 0 50 1 90 0 125 1 90 0 126 1 90 0 127 1 90 0 128] 
#[1 1 47 0 15 2 38 0 23 1 182 0 28 2 38 0 47] 
#[1 10 129 0 15 11 245 0 28] 
#[0 2 82 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 11 249 0 47 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 11 253 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 3 109 0 28 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 3 113 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 12 1 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 53 0 53 0 57 0 54 7 81 0 55 12 5 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 12 9 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 3 161 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 12 13 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 12 17 0 191 12 21 0 192 12 25 0 194 12 29 0 196 12 33 0 200 1 1 0 209 12 37 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 3 173 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 12 41 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 12 45 0 15 12 49 0 47] 
#[0 2 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 12 53 0 47 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 7 149 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 165 0 193 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 12 57 0 57 12 61 1 69 12 65 1 70] 
#[1 7 205 0 43 12 69 0 192] 
#[1 7 45 0 67 12 73 0 68] 
#[0 2 2 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 2 94 0 15 0 26 0 28 0 31 0 43 0 77 0 92 0 112 0 124] 
#[0 2 98 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 2 102 0 9] 
#[0 12 77 0 9] 
#[1 2 102 0 9 12 81 0 15 12 85 0 23] 
#[0 2 106 0 9 0 15 0 23] 
#[1 1 50 0 8 1 50 0 9 1 50 0 15 1 50 0 23 1 50 0 26 1 50 0 28 1 50 0 31 1 50 0 33 1 51 0 36 1 50 0 43 0 45 0 50 1 50 0 77 1 50 0 92 1 50 0 112 1 50 0 124 12 89 0 244 1 113 0 245 1 117 0 246] 
#[0 12 93 0 37] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 12 97 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 12 101 0 214 12 105 0 216 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 1 157 1 27 12 109 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 2 110 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 12 113 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 2 122 0 26 0 27 0 66 0 119 0 129] 
#[0 2 122 0 26 0 27 0 66 0 119 0 129] 
#[0 2 122 0 26 0 27 0 66 0 119 0 129] 
#[0 12 117 0 29] 
#[1 3 45 0 27 0 85 0 66 3 53 0 115 3 57 0 129 3 61 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 0 54 0 5 0 54 0 6 0 27 0 8 0 54 0 10 0 50 0 15 0 54 0 23 1 55 0 26 0 31 0 27 0 27 0 28 0 66 0 29 0 50 0 31 1 59 0 36 0 50 0 43 0 54 0 48 1 63 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 50 0 77 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 50 0 92 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 50 0 112 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 50 0 124 0 54 0 129 12 125 0 244 1 113 0 245 1 117 0 246] 
#[0 2 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[0 2 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 9 0 26 0 29 0 27 12 129 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 85 0 66 0 133 0 91 8 41 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 12 133 0 244 1 113 0 245 1 117 0 246 12 137 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 12 141 1 35 8 85 1 36 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 2 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 12 145 0 26 0 29 0 27 12 149 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 8 41 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 1 1 0 209 12 153 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 12 133 0 244 12 157 0 245 1 117 0 246 12 161 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 12 165 1 35 8 85 1 36 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64] 
#[1 2 126 0 15 3 193 0 26 2 126 0 28 3 197 0 31 3 201 0 43 3 205 0 77 3 209 0 92 3 213 0 112 12 169 0 124 3 217 0 192 3 221 1 21 12 173 1 23 3 233 1 26 12 177 1 37 3 241 1 38 12 181 1 39 3 245 1 49 3 249 1 68] 
#[0 2 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[0 12 185 0 47] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 9 0 26 0 29 0 27 8 13 0 28 0 37 0 36 2 130 0 47 0 41 0 48 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 133 0 91 8 21 0 93 8 25 0 94 8 29 0 95 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 8 33 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 8 37 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 8 41 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 8 45 0 205 8 49 0 207 1 1 0 209 8 53 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 8 57 0 240 8 61 0 244 1 113 0 245 1 117 0 246 8 65 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 8 69 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 12 189 1 33 8 77 1 34 8 81 1 35 8 85 1 36 8 89 1 45 1 173 1 46 1 177 1 53 1 181 1 54 8 93 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64] 
#[1 12 193 0 15 12 197 0 28] 
#[0 2 134 0 15 0 28] 
#[0 12 201 0 26] 
#[0 2 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[1 0 29 0 27 0 85 0 66 8 21 0 93 8 25 0 94 8 29 0 95 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 8 113 1 43 12 205 1 44 12 209 1 45 2 21 1 59 1 197 1 61] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 85 0 66 8 21 0 93 8 25 0 94 8 29 0 95 12 213 0 119 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 7 25 1 27 8 113 1 43 12 217 1 44 12 221 1 45 2 21 1 59 1 197 1 61] 
#[1 12 225 0 15 2 138 0 43] 
#[1 2 142 0 15 12 229 0 23 2 142 0 43] 
#[0 2 146 0 15 0 23 0 43] 
#[0 2 150 0 15 0 23 0 43] 
#[1 0 29 0 27 0 85 0 66 12 233 0 119 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 8 113 1 43 12 237 1 44 2 21 1 59 1 197 1 61] 
#[1 10 133 0 129 12 241 1 59 1 197 1 61] 
#[1 1 186 0 2 1 186 0 3 1 186 0 4 1 186 0 5 1 186 0 6 1 186 0 7 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 1 186 0 17 1 186 0 18 1 186 0 19 1 186 0 20 1 186 0 21 1 186 0 22 1 186 0 23 1 186 0 24 1 186 0 25 1 67 0 26 0 211 0 27 1 186 0 28 0 215 0 29 1 186 0 30 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 34 1 186 0 35 1 186 0 36 1 186 0 37 1 186 0 38 1 186 0 39 1 186 0 40 1 186 0 42 1 67 0 43 1 186 0 44 1 186 0 45 1 186 0 46 1 186 0 47 1 186 0 48 1 186 0 50 1 186 0 53 1 186 0 54 1 186 0 58 1 186 0 59 1 186 0 60 1 186 0 61 1 186 0 62 1 186 0 63 1 186 0 66 1 186 0 70 1 186 0 73 1 186 0 74 1 186 0 75 1 67 0 77 1 186 0 78 1 186 0 80 1 186 0 83 1 186 0 84 1 186 0 85 1 186 0 86 1 186 0 91 1 186 0 92 1 186 0 96 1 186 0 99 1 186 0 100 1 186 0 102 1 186 0 105 1 186 0 109 1 186 0 112 1 186 0 113 1 186 0 115 1 186 0 116 1 186 0 117 1 186 0 119 1 186 0 120 1 186 0 121 1 186 0 122 1 186 0 124 1 186 0 125 1 186 0 126 1 186 0 127 1 186 0 128 1 186 0 129] 
#[0 2 154 0 26 0 43 0 77] 
#[1 1 186 0 2 1 186 0 3 1 186 0 4 1 186 0 5 1 186 0 6 1 186 0 7 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 1 186 0 17 1 186 0 18 1 186 0 19 1 186 0 20 1 186 0 21 1 186 0 22 1 186 0 23 1 186 0 24 1 186 0 25 1 67 0 26 1 71 0 27 1 186 0 28 1 186 0 29 1 186 0 30 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 34 1 186 0 35 1 186 0 36 1 186 0 37 1 186 0 38 1 186 0 39 1 186 0 40 1 186 0 42 1 67 0 43 1 186 0 44 1 186 0 45 1 186 0 46 1 186 0 47 1 186 0 48 1 186 0 50 1 186 0 53 1 186 0 54 1 186 0 58 1 186 0 59 1 186 0 60 1 186 0 61 1 186 0 62 1 186 0 63 1 186 0 66 1 186 0 70 1 186 0 73 1 186 0 74 1 186 0 75 1 67 0 77 1 186 0 78 1 186 0 80 1 186 0 83 1 186 0 84 1 186 0 85 1 186 0 86 1 186 0 91 1 186 0 92 1 186 0 96 1 186 0 99 1 186 0 100 1 186 0 102 1 186 0 105 1 186 0 109 1 186 0 112 1 186 0 113 1 186 0 115 1 186 0 116 1 186 0 117 1 186 0 119 1 186 0 120 1 186 0 121 1 186 0 122 1 186 0 124 1 186 0 125 1 186 0 126 1 186 0 127 1 186 0 128 1 186 0 129] 
#[1 1 186 0 2 1 186 0 3 1 186 0 4 1 186 0 5 1 186 0 6 1 186 0 7 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 11 1 186 0 12 1 186 0 13 1 186 0 14 1 186 0 15 1 186 0 16 1 186 0 17 1 186 0 18 1 186 0 19 1 186 0 20 1 186 0 21 1 186 0 22 1 186 0 23 1 186 0 24 1 186 0 25 1 67 0 26 1 75 0 27 1 186 0 28 0 215 0 29 1 186 0 30 1 186 0 31 1 186 0 32 1 186 0 33 1 186 0 34 1 186 0 35 1 186 0 36 1 186 0 37 1 186 0 38 1 186 0 39 1 186 0 40 1 186 0 42 1 67 0 43 1 186 0 44 1 186 0 45 1 186 0 46 1 186 0 47 1 186 0 48 1 186 0 50 1 186 0 53 1 186 0 54 1 186 0 58 1 186 0 59 1 186 0 60 1 186 0 61 1 186 0 62 1 186 0 63 1 186 0 66 1 186 0 70 1 186 0 73 1 186 0 74 1 186 0 75 1 67 0 77 1 186 0 78 1 186 0 80 1 186 0 83 1 186 0 84 1 186 0 85 1 186 0 86 1 186 0 91 1 186 0 92 1 186 0 96 1 186 0 99 1 186 0 100 1 186 0 102 1 186 0 105 1 186 0 109 1 186 0 112 1 186 0 113 1 186 0 115 1 186 0 116 1 186 0 117 1 186 0 119 1 186 0 120 1 186 0 121 1 186 0 122 1 186 0 124 1 186 0 125 1 186 0 126 1 186 0 127 1 186 0 128 1 186 0 129] 
#[1 5 177 0 107 12 245 0 129 8 133 1 27 6 5 1 59 1 197 1 61] 
#[1 4 21 0 26 2 158 0 43 8 157 0 77 12 249 1 31 12 253 1 40] 
#[0 2 158 0 43] 
#[0 2 162 0 26 0 43] 
#[1 4 21 0 26 2 158 0 43 13 1 1 40] 
#[0 2 158 0 43] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 1 90 0 2 1 90 0 3 1 90 0 5 1 90 0 6 1 90 0 8 1 90 0 10 1 90 0 12 1 90 0 13 1 79 0 15 1 90 0 16 1 90 0 17 1 90 0 19 1 90 0 20 1 90 0 21 1 90 0 22 1 79 0 23 1 90 0 24 1 90 0 29 1 90 0 30 1 90 0 32 1 79 0 33 1 90 0 34 1 90 0 35 1 90 0 36 1 90 0 38 1 90 0 40 1 90 0 42 1 90 0 44 1 90 0 46 1 90 0 125 1 90 0 126] 
#[0 2 170 0 15 0 23 0 33] 
#[0 2 170 0 15 0 23 0 33] 
#[1 13 5 0 15 13 9 0 33] 
#[1 2 174 0 15 13 13 0 23 2 174 0 33] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 13 5 0 15 13 17 0 33] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 13 5 0 15 13 21 0 33] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 11 69 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 40 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 50 0 158 0 77 0 158 0 92 0 158 0 112 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128] 
#[1 2 182 0 15 2 182 0 37 4 93 0 129 13 25 0 248 4 105 0 249 4 109 0 250 4 113 0 251] 
#[0 13 29 0 37] 
#[0 2 182 0 15 0 37] 
#[1 1 83 0 8 2 186 0 9 1 87 0 36 1 91 0 43 13 45 0 253 13 49 0 254] 
#[0 2 190 0 15 0 23 0 37] 
#[0 13 53 0 129] 
#[1 13 57 0 9 10 129 0 15] 
#[0 13 61 0 9] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 13 65 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 13 69 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 13 73 0 8 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 13 77 0 164 13 81 0 165 3 9 0 213 1 21 0 214 9 81 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 2 198 0 15 2 198 0 37 13 85 0 129] 
#[0 2 198 0 15 0 37] 
#[0 2 202 0 8 0 43] 
#[0 2 206 0 15 0 23 0 37] 
#[1 3 189 0 8 2 206 0 15 2 206 0 23 11 133 0 31 2 206 0 37 6 245 0 43 13 89 1 22 3 229 1 23 3 233 1 26] 
#[0 13 93 0 37] 
#[1 13 97 0 15 2 210 0 37] 
#[1 13 101 0 15 2 210 0 37] 
#[1 2 214 0 15 13 105 0 23 2 214 0 37] 
#[0 2 218 0 15 0 23 0 37] 
#[0 2 218 0 15 0 23 0 37] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 13 109 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 13 113 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 9 5 0 5 9 9 0 31 13 117 0 37 9 17 0 108 9 21 0 129 9 25 0 150 9 29 0 151 9 33 0 152 9 37 0 153 9 41 0 154 9 45 0 155] 
#[0 2 222 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 13 121 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 13 125 0 159 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 13 129 1 11 7 1 1 24 7 5 1 25 7 9 1 26 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 13 133 0 8 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 13 137 0 165 3 9 0 213 1 21 0 214 9 81 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 2 226 0 2 2 226 0 3 2 226 0 4 2 226 0 5 2 226 0 6 2 226 0 7 13 141 0 8 2 226 0 9 2 226 0 10 2 226 0 11 2 226 0 12 2 226 0 14 2 226 0 15 2 226 0 16 2 226 0 18 2 226 0 20 2 226 0 22 2 226 0 23 2 226 0 24 2 226 0 25 2 226 0 26 2 226 0 28 2 226 0 29 2 226 0 30 2 226 0 31 2 226 0 32 2 226 0 33 2 226 0 34 2 226 0 35 2 226 0 37 2 226 0 38 2 226 0 39 2 226 0 40 2 226 0 42 6 245 0 43 2 226 0 44 2 226 0 45 2 226 0 46 2 226 0 47 2 226 0 125 2 226 0 126 2 226 0 127 2 226 0 128 13 145 0 168 13 149 1 26] 
#[1 2 230 0 2 2 230 0 3 2 230 0 4 1 95 0 5 1 99 0 6 2 230 0 7 2 230 0 8 2 230 0 9 1 103 0 10 2 230 0 11 2 230 0 12 2 230 0 14 2 230 0 15 2 230 0 16 2 230 0 18 2 230 0 20 2 230 0 22 2 230 0 23 2 230 0 24 2 230 0 25 2 230 0 26 0 29 0 27 2 230 0 28 2 230 0 29 2 230 0 30 2 230 0 31 2 230 0 32 2 230 0 33 2 230 0 34 2 230 0 35 13 153 0 36 2 230 0 37 2 230 0 38 2 230 0 39 2 230 0 40 2 230 0 42 2 230 0 43 2 230 0 44 2 230 0 45 2 230 0 46 2 230 0 47 0 85 0 66 2 230 0 125 2 230 0 126 2 230 0 127 2 230 0 128 2 249 0 129 6 17 0 147 13 157 0 166 13 161 0 167 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 13 165 1 6 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 13 169 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 13 173 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 8 237 0 187 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 13 177 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 13 181 0 8] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 13 185 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 1 30 0 9 7 233 0 23 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 1 145 1 8 13 189 1 17 7 241 1 18 7 245 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 7 205 0 43 13 193 0 192] 
#[0 2 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 13 197 0 9 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 13 201 0 159 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 1 1 24 7 5 1 25 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 0 29 0 27 13 205 0 48 0 85 0 66 0 133 0 91 13 209 0 107 0 205 0 129 13 213 0 144 0 217 0 145 0 221 0 146 13 217 0 147 13 221 0 160 13 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 29 0 27 13 205 0 48 0 85 0 66 0 133 0 91 13 229 0 107 0 205 0 129 13 233 0 144 0 217 0 145 0 221 0 146 13 217 0 147 13 237 0 160 13 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 13 241 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 13 245 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 13 249 0 187 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 13 253 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 14 1 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 14 5 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 14 9 0 172 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 14 13 0 172 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 14 17 0 172 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 14 21 0 173 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 14 25 0 173 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 14 29 0 174 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 14 33 0 175 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 14 37 0 175 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 14 41 0 175 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 14 45 0 175 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 14 49 0 177 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 14 53 0 177 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 14 57 0 178 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 14 61 0 179 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 14 65 0 180 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 14 69 0 181 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 14 73 0 181 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 14 77 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 14 81 0 182 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 14 85 0 182 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 14 89 0 9] 
#[1 0 9 0 5 0 13 0 6 10 1 0 8 1 30 0 9 0 21 0 10 7 233 0 23 0 29 0 27 14 93 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 14 97 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 14 101 1 4 14 105 1 6 1 145 1 8 14 109 1 13 14 113 1 14 7 237 1 17 7 241 1 18 7 245 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 2 250 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 77 0 92 0 112 0 124] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 14 117 0 37 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 14 121 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 2 254 0 8 2 254 0 9 2 254 0 15 8 1 0 19 2 254 0 23 2 254 0 26 2 254 0 28 2 254 0 31 2 254 0 33 2 254 0 36 2 254 0 43 2 254 0 77 2 254 0 92 2 254 0 112 2 254 0 124 14 125 1 5] 
#[1 0 9 0 5 0 13 0 6 1 107 0 8 3 2 0 9 0 21 0 10 3 2 0 15 1 111 0 23 3 2 0 26 0 29 0 27 3 2 0 28 3 2 0 31 3 2 0 33 10 9 0 36 3 2 0 43 0 85 0 66 3 2 0 77 3 2 0 92 3 2 0 112 3 2 0 124 2 249 0 129 6 17 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 14 101 1 4 10 17 1 6 14 129 1 13 14 113 1 14 14 133 1 15 10 37 1 16 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 3 6 0 9 0 15 0 23 0 28 0 33] 
#[0 3 10 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[1 1 115 0 8 3 2 0 9 3 2 0 15 3 2 0 23 3 2 0 26 3 2 0 28 3 2 0 31 3 2 0 33 14 137 0 36 3 2 0 43 3 2 0 77 3 2 0 92 3 2 0 112 3 2 0 124 14 141 1 4] 
#[0 3 10 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[1 1 119 0 8 3 14 0 9 3 14 0 15 3 14 0 23 3 14 0 26 3 14 0 28 3 14 0 31 3 14 0 33 14 145 0 36 3 14 0 43 3 14 0 77 3 14 0 92 3 14 0 112 3 14 0 124 14 149 1 4] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 14 153 0 9 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 14 157 0 159 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 1 1 24 7 5 1 25 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 2 246 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 14 161 0 9] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 14 165 0 9 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 14 169 0 159 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 1 1 24 7 5 1 25 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 14 173 0 28] 
#[0 3 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 3 22 0 9 0 15 0 23 0 26 0 28 0 33 0 37 0 47] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 26 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 36 0 41 0 43 0 44 0 48 0 51 0 53 0 54 0 58 0 59 0 60 0 64 0 66 0 68 0 70 0 71 0 76 0 78 0 84 0 85 0 88 0 89 0 90 0 91 0 97 0 99 0 100 0 101 0 104 0 108 0 110 0 111 0 114 0 115 0 117 0 120 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 14 177 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 14 181 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 0 66 0 29] 
#[0 11 69 0 27] 
#[0 3 30 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 14 185 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 3 89 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[0 14 189 0 47] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 190 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 213 0 202 0 233 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 14 193 0 236 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 190 0 47 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 213 0 202 0 233 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 14 197 0 236 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[0 3 34 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 5 177 0 107 11 37 0 129 14 201 0 229 1 61 0 230 1 85 0 237 5 185 1 59 1 197 1 61] 
#[1 3 153 0 27 3 38 0 28] 
#[0 14 205 0 28] 
#[0 14 209 0 47] 
#[0 14 213 0 47] 
#[0 3 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 3 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[1 1 246 0 2 1 246 0 3 1 246 0 4 1 246 0 5 1 246 0 6 1 246 0 7 1 246 0 8 1 246 0 9 1 246 0 10 1 246 0 11 1 246 0 12 1 246 0 13 1 246 0 14 1 246 0 15 1 246 0 16 1 246 0 17 1 246 0 18 1 246 0 19 1 246 0 20 1 246 0 21 1 246 0 22 1 246 0 23 1 246 0 24 1 246 0 25 1 246 0 26 1 19 0 27 1 246 0 28 1 246 0 29 1 246 0 30 1 246 0 31 1 246 0 32 1 246 0 33 1 246 0 34 1 246 0 35 1 246 0 36 1 246 0 37 1 246 0 38 1 246 0 39 1 246 0 40 1 246 0 42 1 246 0 43 1 246 0 44 1 246 0 45 1 246 0 46 1 246 0 47 1 246 0 48 1 246 0 50 1 246 0 53 1 246 0 54 1 246 0 58 1 246 0 59 1 246 0 60 1 246 0 61 1 246 0 62 1 246 0 63 1 246 0 66 1 246 0 70 1 246 0 73 1 246 0 74 1 246 0 75 1 246 0 77 1 246 0 78 1 246 0 80 1 246 0 83 1 246 0 84 1 246 0 85 1 246 0 86 1 246 0 91 1 246 0 92 1 246 0 96 1 246 0 99 1 246 0 100 1 246 0 102 1 246 0 105 1 246 0 109 1 246 0 112 1 246 0 113 1 246 0 115 1 246 0 116 1 246 0 117 1 246 0 119 1 246 0 120 1 246 0 121 1 246 0 122 1 246 0 124 1 246 0 125 1 246 0 126 1 246 0 127 1 246 0 128 1 246 0 129] 
#[1 6 145 0 27 0 66 0 29] 
#[0 3 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 2 30 0 43] 
#[1 3 133 0 26 0 31 0 27 0 66 0 29 2 30 0 43 14 217 0 225] 
#[0 14 221 0 134] 
#[0 3 50 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 3 54 0 15 3 54 0 33 14 225 0 129] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 14 229 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 3 54 0 15 14 233 0 31 3 54 0 33] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 6 45 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 6 49 0 107 0 165 0 109 0 169 0 113 6 53 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 1 145 1 8 6 65 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 14 237 1 56 6 73 1 57 6 77 1 58 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 3 54 0 15 3 54 0 33 14 241 0 129] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 14 245 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 3 54 0 15 0 31 0 27 0 66 0 29 14 249 0 31 3 54 0 33] 
#[1 0 9 0 5 0 13 0 6 10 249 0 8 1 30 0 9 0 21 0 10 14 253 0 23 0 29 0 27 14 93 0 36 0 41 0 48 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 1 233 1 2 1 237 1 3 14 101 1 4 15 1 1 6 1 145 1 8 1 149 1 10 14 109 1 13 14 113 1 14 7 237 1 17 7 241 1 18 7 245 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64] 
#[1 2 250 0 8 2 250 0 9 2 250 0 15 2 250 0 23 0 29 0 27 2 250 0 31 2 250 0 33 2 250 0 36 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 1 253 0 144 0 217 0 145 0 221 0 146 2 1 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 15 5 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 3 58 0 9 3 58 0 15 3 58 0 23 15 9 0 31 3 58 0 33] 
#[1 0 9 0 5 0 13 0 6 10 249 0 8 3 2 0 9 0 21 0 10 3 2 0 15 1 123 0 23 0 29 0 27 3 2 0 31 3 2 0 33 10 9 0 36 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 4 9 1 2 1 237 1 3 14 101 1 4 11 9 1 6 1 149 1 10 14 129 1 13 14 113 1 14 14 133 1 15 10 37 1 16 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 3 58 0 9 3 58 0 15 3 58 0 23 15 13 0 31 3 58 0 33] 
#[1 0 9 0 5 0 13 0 6 10 249 0 8 3 58 0 9 0 21 0 10 3 58 0 15 1 127 0 23 0 29 0 27 15 17 0 31 3 58 0 33 10 9 0 36 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 15 21 1 1 1 133 1 2 1 137 1 3 10 13 1 4 11 9 1 6 1 149 1 10 15 25 1 12 10 25 1 13 10 29 1 14 10 33 1 15 10 37 1 16 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 6 45 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 6 49 0 107 0 165 0 109 0 169 0 113 6 53 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 1 145 1 8 6 65 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 15 29 1 57 6 77 1 58 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 49 0 52 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 0 101 0 75 0 105 0 78 0 109 0 80 0 113 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 129 0 87 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 0 161 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 15 33 0 203 0 237 0 204 0 241 0 205 0 245 0 206 0 249 0 207 0 253 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 65 0 231 1 69 0 232 1 73 0 233 1 77 0 234 1 81 0 235 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 1 105 0 243 1 109 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 1 129 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 153 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 185 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64 1 205 1 65 1 209 1 66] 
#[1 3 62 0 2 3 62 0 3 3 62 0 4 3 62 0 5 3 62 0 6 3 62 0 7 3 62 0 8 3 62 0 9 3 62 0 10 3 62 0 11 3 62 0 12 3 62 0 13 3 62 0 14 3 62 0 15 3 62 0 16 3 62 0 17 3 62 0 18 3 62 0 19 3 62 0 20 3 62 0 21 3 62 0 22 3 62 0 23 3 62 0 24 3 62 0 25 3 62 0 26 1 131 0 27 3 62 0 28 3 62 0 29 3 62 0 30 3 62 0 31 3 62 0 32 3 62 0 33 3 62 0 34 3 62 0 35 3 62 0 36 3 62 0 37 3 62 0 38 3 62 0 39 3 62 0 40 3 62 0 42 3 62 0 43 3 62 0 44 3 62 0 45 3 62 0 46 3 62 0 47 3 62 0 48 3 62 0 50 3 62 0 53 3 62 0 54 3 62 0 58 3 62 0 59 3 62 0 60 3 62 0 61 3 62 0 62 3 62 0 63 3 62 0 66 3 62 0 70 3 62 0 73 3 62 0 74 3 62 0 75 3 62 0 77 3 62 0 78 3 62 0 80 3 62 0 83 3 62 0 84 3 62 0 85 3 62 0 86 3 62 0 91 3 62 0 92 3 62 0 96 3 62 0 99 3 62 0 100 3 62 0 102 3 62 0 105 3 62 0 109 3 62 0 112 3 62 0 113 3 62 0 115 3 62 0 116 3 62 0 117 3 62 0 119 3 62 0 120 3 62 0 121 3 62 0 122 3 62 0 124 3 62 0 125 3 62 0 126 3 62 0 127 3 62 0 128 3 62 0 129] 
#[0 3 66 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[1 6 145 0 27 1 135 0 28 0 66 0 29] 
#[0 15 37 0 28] 
#[0 3 70 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 15 41 0 28] 
#[0 15 45 0 28] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 15 49 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 3 66 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 3 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 66 0 77 0 91 0 92 0 112 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 3 78 0 10 0 48 0 91 0 107 0 129] 
#[0 3 82 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 15 53 0 47 6 169 0 129 15 57 0 227 6 181 0 228] 
#[0 3 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 15 61 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 3 94 0 43] 
#[0 3 90 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[1 15 65 0 28 3 94 0 43] 
#[1 3 133 0 26 6 145 0 27 0 66 0 29 3 94 0 43 15 69 0 225] 
#[1 5 177 0 107 11 37 0 129 15 73 0 229 1 61 0 230 1 85 0 237 5 185 1 59 1 197 1 61] 
#[1 3 153 0 27 15 77 0 28] 
#[0 3 98 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 3 82 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 3 193 0 26 7 217 0 31 7 205 0 43 3 205 0 77 3 209 0 92 3 213 0 112 3 217 0 192 15 81 1 21 7 225 1 38 3 245 1 49 3 249 1 68] 
#[0 3 82 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 53 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 2 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 3 102 0 15 0 23 0 28 0 37] 
#[0 3 106 0 9 0 15 0 47] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 15 85 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 110 0 8 0 15 0 23 0 43] 
#[1 0 29 0 27 0 85 0 66 7 13 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 7 29 1 43 15 89 1 50 7 37 1 51 7 41 1 52 2 21 1 59 1 197 1 61] 
#[1 15 93 0 15 3 114 0 43] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 15 97 0 9 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 15 101 0 159 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 1 1 24 7 5 1 25 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 118 0 15 0 23 0 43] 
#[0 3 122 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 3 122 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 3 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 15 105 0 26] 
#[0 3 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 15 109 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 15 113 0 123] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 4 209 0 104 0 157 0 105 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 15 117 0 191 15 121 0 197 15 125 0 198 15 129 0 206 1 1 0 209 15 133 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 15 137 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 15 141 0 28] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 7 73 0 36 4 157 0 41 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 4 209 0 104 0 157 0 105 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 15 145 0 187 15 149 0 195 1 1 0 209 15 153 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 15 157 0 244 1 113 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 5 221 0 31] 
#[0 3 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 10 129 0 15 15 161 0 28] 
#[0 15 165 0 28] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 7 73 0 36 4 157 0 41 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 4 209 0 104 0 157 0 105 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 15 145 0 187 15 169 0 195 1 1 0 209 15 153 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 15 157 0 244 1 113 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 12 57 0 57 15 173 1 69 12 65 1 70] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 7 73 0 36 4 157 0 41 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 4 209 0 104 0 157 0 105 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 15 145 0 187 15 177 0 195 1 1 0 209 15 153 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 15 157 0 244 1 113 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 15 181 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 130 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 3 138 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 2 70 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 15 185 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 15 189 0 26] 
#[1 0 50 0 2 0 50 0 3 0 50 0 4 0 27 0 5 0 27 0 6 0 50 0 7 0 27 0 8 0 27 0 10 0 50 0 11 0 50 0 12 0 50 0 13 0 50 0 14 0 50 0 15 0 50 0 16 0 50 0 17 0 50 0 18 0 50 0 19 0 50 0 20 0 50 0 21 0 50 0 22 0 54 0 23 0 50 0 24 0 50 0 25 15 193 0 26 0 31 0 27 0 50 0 28 0 35 0 29 0 50 0 30 0 50 0 31 0 50 0 32 0 50 0 33 0 50 0 34 0 50 0 35 0 27 0 36 0 50 0 38 0 50 0 39 0 50 0 40 0 50 0 42 0 27 0 43 0 50 0 44 0 50 0 45 0 50 0 46 0 54 0 48 0 27 0 50 0 54 0 53 0 54 0 54 0 54 0 58 0 54 0 59 0 54 0 60 0 54 0 61 0 54 0 62 0 54 0 63 0 54 0 66 0 54 0 70 0 54 0 73 0 54 0 74 0 54 0 75 0 54 0 78 0 54 0 80 0 54 0 83 0 54 0 84 0 54 0 85 0 54 0 86 0 54 0 91 0 54 0 96 0 54 0 99 0 54 0 100 0 54 0 102 0 54 0 105 0 54 0 109 0 54 0 113 0 54 0 115 0 54 0 116 0 54 0 117 0 54 0 119 0 54 0 120 0 54 0 121 0 54 0 122 0 50 0 125 0 50 0 126 0 50 0 127 0 50 0 128 0 54 0 129] 
#[0 3 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 3 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 6 217 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 3 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 15 197 0 47 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 15 85 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 2 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 15 201 0 8] 
#[0 3 150 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 3 154 0 1 3 154 0 5 3 154 0 6 3 154 0 8 3 154 0 10 3 154 0 12 3 154 0 13 3 154 0 16 3 154 0 17 3 154 0 23 3 154 0 26 3 154 0 27 3 154 0 28 3 154 0 36 3 154 0 41 3 154 0 43 3 154 0 44 3 154 0 47 3 154 0 48 3 154 0 50 3 154 0 51 3 154 0 52 3 154 0 53 3 154 0 54 3 154 0 55 3 154 0 56 12 57 0 57 3 154 0 58 3 154 0 59 3 154 0 60 3 154 0 61 3 154 0 62 3 154 0 63 3 154 0 64 3 154 0 65 3 154 0 66 3 154 0 67 3 154 0 68 3 154 0 69 3 154 0 70 3 154 0 71 3 154 0 72 3 154 0 73 3 154 0 74 3 154 0 75 3 154 0 76 3 154 0 78 3 154 0 79 3 154 0 80 3 154 0 81 3 154 0 82 3 154 0 83 3 154 0 84 3 154 0 85 3 154 0 86 3 154 0 87 3 154 0 88 3 154 0 89 3 154 0 90 3 154 0 91 3 154 0 93 3 154 0 94 3 154 0 95 3 154 0 96 3 154 0 97 3 154 0 98 3 154 0 99 3 154 0 100 3 154 0 101 3 154 0 102 3 154 0 103 3 154 0 104 3 154 0 105 3 154 0 106 3 154 0 107 3 154 0 108 3 154 0 109 3 154 0 110 3 154 0 111 3 154 0 112 3 154 0 113 3 154 0 114 3 154 0 115 3 154 0 116 3 154 0 117 3 154 0 118 3 154 0 119 3 154 0 120 3 154 0 121 3 154 0 122 3 154 0 123 3 154 0 129 3 154 0 130 3 154 0 132 3 154 0 133 3 154 0 134 3 154 0 135 3 154 0 136 3 154 0 137 3 154 0 138 15 205 1 69 12 65 1 70 3 154 1 82] 
#[1 12 57 0 57 15 209 1 69 12 65 1 70] 
#[0 11 177 0 28] 
#[1 15 213 0 5 15 217 0 6 3 158 0 8 3 158 0 9 3 158 0 15 3 158 0 19 3 158 0 23 3 158 0 26 3 158 0 28 3 158 0 31 3 158 0 33 1 139 0 36 3 158 0 43 0 45 0 50 0 77 0 62 3 158 0 77 15 221 0 89 3 158 0 92 15 225 0 110 3 158 0 112 0 197 0 121 3 158 0 124 15 229 0 244 1 113 0 245 1 117 0 246 15 233 1 7 1 249 1 8 15 237 1 9 15 241 1 73 15 245 1 74 15 249 1 76] 
#[1 15 253 0 23 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 1 145 1 8 16 1 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 3 162 0 9] 
#[1 3 166 0 8 3 166 0 9 3 166 0 15 3 166 0 23 3 166 0 26 3 166 0 28 3 166 0 31 3 166 0 33 1 143 0 36 3 166 0 43 0 45 0 50 3 166 0 77 3 166 0 92 3 166 0 112 3 166 0 124 3 169 0 245 1 117 0 246] 
#[1 3 166 0 8 3 166 0 9 3 166 0 15 3 166 0 23 3 166 0 26 3 166 0 28 3 166 0 31 3 166 0 33 1 143 0 36 3 166 0 43 0 45 0 50 3 166 0 77 3 166 0 92 3 166 0 112 3 166 0 124 16 5 0 244 1 113 0 245 1 117 0 246] 
#[1 0 29 0 27 0 85 0 66 2 45 0 129 2 49 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 3 170 0 5 3 170 0 6 3 170 0 8 3 170 0 9 3 170 0 10 3 170 0 15 3 170 0 23 3 170 0 26 1 147 0 27 3 170 0 28 3 170 0 31 3 170 0 33 1 151 0 36 3 170 0 43 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 1 155 0 66 0 89 0 70 12 97 0 73 3 170 0 77 0 105 0 78 0 117 0 84 0 121 0 85 3 170 0 92 0 141 0 99 0 145 0 100 0 157 0 105 3 170 0 112 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 3 170 0 124 1 159 0 129 3 5 0 147 12 101 0 214 16 9 0 216 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 57 0 229 1 61 0 230 1 85 0 237 16 13 0 244 1 113 0 245 1 117 0 246 1 145 1 8 1 157 1 27 12 109 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 0 9 0 5 0 13 0 6 1 163 0 8 3 174 0 9 0 21 0 10 3 174 0 15 1 167 0 23 3 174 0 26 0 29 0 27 3 174 0 28 3 174 0 31 3 174 0 33 10 9 0 36 3 174 0 43 0 85 0 66 3 174 0 77 3 174 0 92 3 174 0 112 3 174 0 124 2 249 0 129 6 17 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 10 13 1 4 10 17 1 6 16 17 1 12 10 25 1 13 10 29 1 14 10 33 1 15 10 37 1 16 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 85 0 66 4 25 0 129 16 21 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 16 25 0 244 1 113 0 245 1 117 0 246 1 157 1 27 4 49 1 59 1 197 1 61] 
#[0 3 178 0 15 0 28] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 6 45 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 6 49 0 107 0 165 0 109 0 169 0 113 6 53 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 6 57 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 6 61 0 244 1 113 0 245 1 117 0 246 1 145 1 8 6 65 1 19 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 6 69 1 56 6 73 1 57 6 77 1 58 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 16 29 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 16 33 0 26 0 37 0 36 0 45 0 50 3 169 0 245 1 117 0 246] 
#[0 3 182 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[1 16 37 0 26 0 37 0 36 0 45 0 50 3 169 0 245 1 117 0 246] 
#[1 2 126 0 15 3 193 0 26 2 126 0 28 3 197 0 31 3 201 0 43 3 205 0 77 3 209 0 92 3 213 0 112 12 169 0 124 3 217 0 192 6 157 1 21 12 173 1 23 3 233 1 26 16 41 1 37 3 241 1 38 12 181 1 39 3 245 1 49 3 249 1 68] 
#[1 12 193 0 15 16 45 0 28] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 16 49 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 182 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 9 0 26 0 29 0 27 16 53 0 28 0 37 0 36 0 41 0 48 0 45 0 50 0 85 0 66 0 133 0 91 8 41 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 12 133 0 244 1 113 0 245 1 117 0 246 16 57 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 16 61 1 35 8 85 1 36 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 254 0 5 0 254 0 6 0 254 0 8 0 254 0 10 0 254 0 23 1 171 0 26 0 254 0 27 0 254 0 28 1 171 0 36 0 254 0 48 1 171 0 50 0 254 0 53 0 254 0 54 0 254 0 58 0 254 0 59 0 254 0 60 0 254 0 61 0 254 0 62 0 254 0 63 0 254 0 66 0 254 0 70 0 254 0 73 0 254 0 74 0 254 0 75 0 254 0 78 0 254 0 80 0 254 0 83 0 254 0 84 0 254 0 85 0 254 0 86 0 254 0 91 0 254 0 96 0 254 0 99 0 254 0 100 0 254 0 102 0 254 0 105 0 254 0 109 0 254 0 113 0 254 0 115 0 254 0 116 0 254 0 117 0 254 0 119 0 254 0 120 0 254 0 121 0 254 0 122 0 254 0 129] 
#[1 2 126 0 15 3 193 0 26 2 126 0 28 3 197 0 31 3 201 0 43 3 205 0 77 3 209 0 92 3 213 0 112 12 169 0 124 3 217 0 192 6 229 1 21 12 173 1 23 3 233 1 26 16 65 1 37 3 241 1 38 12 181 1 39 3 245 1 49 3 249 1 68] 
#[1 12 193 0 15 16 69 0 28] 
#[0 16 73 0 131] 
#[0 3 178 0 15 0 28] 
#[1 3 178 0 15 3 193 0 26 3 178 0 28 7 217 0 31 7 205 0 43 3 205 0 77 3 209 0 92 3 213 0 112 12 169 0 124 3 217 0 192 7 221 1 21 7 225 1 38 16 77 1 39 3 245 1 49 3 249 1 68] 
#[0 3 178 0 15 0 28] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 3 190 0 47] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 9 0 26 0 29 0 27 0 37 0 36 0 41 0 48 0 45 0 50 0 85 0 66 0 133 0 91 8 41 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 12 133 0 244 1 113 0 245 1 117 0 246 16 81 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 16 85 1 36 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 3 182 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 9 0 26 0 29 0 27 8 13 0 28 0 37 0 36 3 190 0 47 0 41 0 48 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 133 0 91 8 21 0 93 8 25 0 94 8 29 0 95 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 153 0 103 0 157 0 105 8 33 0 107 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 8 37 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 8 41 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 8 45 0 205 8 49 0 207 1 1 0 209 8 53 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 8 57 0 240 8 61 0 244 1 113 0 245 1 117 0 246 8 65 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 8 69 1 20 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 16 89 1 33 8 77 1 34 8 81 1 35 8 85 1 36 8 89 1 45 1 173 1 46 1 177 1 53 1 181 1 54 8 93 1 55 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64] 
#[0 3 194 0 15 0 23 0 43] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 8 113 1 43 16 93 1 44 2 21 1 59 1 197 1 61] 
#[1 0 29 0 27 0 85 0 66 8 21 0 93 8 25 0 94 8 29 0 95 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 8 113 1 43 16 97 1 44 16 101 1 45 2 21 1 59 1 197 1 61] 
#[0 3 194 0 15 0 23 0 43] 
#[1 0 29 0 27 0 85 0 66 16 105 0 119 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 8 113 1 43 16 109 1 44 2 21 1 59 1 197 1 61] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 85 0 66 8 21 0 93 8 25 0 94 8 29 0 95 8 97 0 119 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 8 101 0 244 1 113 0 245 1 117 0 246 7 25 1 27 16 113 1 42 8 113 1 43 8 117 1 44 8 121 1 45 2 21 1 59 1 197 1 61] 
#[0 3 198 0 15 0 43] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 8 113 1 43 16 117 1 44 2 21 1 59 1 197 1 61] 
#[0 3 194 0 15 0 23 0 43] 
#[1 3 202 0 2 3 202 0 3 3 202 0 4 3 202 0 5 3 202 0 6 3 202 0 7 3 202 0 8 3 202 0 9 3 202 0 10 3 202 0 11 3 202 0 12 3 202 0 13 3 202 0 14 3 202 0 15 3 202 0 16 3 202 0 17 3 202 0 18 3 202 0 19 3 202 0 20 3 202 0 21 3 202 0 22 3 202 0 23 3 202 0 24 3 202 0 25 3 202 0 26 1 175 0 27 3 202 0 28 3 202 0 29 3 202 0 30 3 202 0 31 3 202 0 32 3 202 0 33 3 202 0 34 3 202 0 35 3 202 0 36 3 202 0 37 3 202 0 38 3 202 0 39 3 202 0 40 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 48 3 202 0 50 3 202 0 53 3 202 0 54 3 202 0 58 3 202 0 59 3 202 0 60 3 202 0 61 3 202 0 62 3 202 0 63 3 202 0 66 3 202 0 70 3 202 0 73 3 202 0 74 3 202 0 75 3 202 0 77 3 202 0 78 3 202 0 80 3 202 0 83 3 202 0 84 3 202 0 85 3 202 0 86 3 202 0 91 3 202 0 92 3 202 0 96 3 202 0 99 3 202 0 100 3 202 0 102 3 202 0 105 3 202 0 109 3 202 0 112 3 202 0 113 3 202 0 115 3 202 0 116 3 202 0 117 3 202 0 119 3 202 0 120 3 202 0 121 3 202 0 122 3 202 0 124 3 202 0 125 3 202 0 126 3 202 0 127 3 202 0 128 3 202 0 129] 
#[1 3 202 0 2 3 202 0 3 3 202 0 4 3 202 0 5 3 202 0 6 3 202 0 7 3 202 0 8 3 202 0 9 3 202 0 10 3 202 0 11 3 202 0 12 3 202 0 13 3 202 0 14 3 202 0 15 3 202 0 16 3 202 0 17 3 202 0 18 3 202 0 19 3 202 0 20 3 202 0 21 3 202 0 22 3 202 0 23 3 202 0 24 3 202 0 25 1 179 0 26 1 183 0 27 3 202 0 28 1 187 0 29 3 202 0 30 3 202 0 31 3 202 0 32 3 202 0 33 3 202 0 34 3 202 0 35 3 202 0 36 3 202 0 37 3 202 0 38 3 202 0 39 3 202 0 40 3 202 0 42 1 179 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 3 202 0 48 3 202 0 50 3 202 0 53 3 202 0 54 3 202 0 58 3 202 0 59 3 202 0 60 3 202 0 61 3 202 0 62 3 202 0 63 3 202 0 66 3 202 0 70 3 202 0 73 3 202 0 74 3 202 0 75 1 179 0 77 3 202 0 78 3 202 0 80 3 202 0 83 3 202 0 84 3 202 0 85 3 202 0 86 3 202 0 91 3 202 0 92 3 202 0 96 3 202 0 99 3 202 0 100 3 202 0 102 3 202 0 105 3 202 0 109 3 202 0 112 3 202 0 113 3 202 0 115 3 202 0 116 3 202 0 117 3 202 0 119 3 202 0 120 3 202 0 121 3 202 0 122 3 202 0 124 3 202 0 125 3 202 0 126 3 202 0 127 3 202 0 128 3 202 0 129] 
#[1 4 21 0 26 3 206 0 43 16 121 1 40] 
#[0 3 206 0 43] 
#[0 3 206 0 43] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 8 173 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 8 177 0 188 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 8 181 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 16 125 1 63 5 117 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 3 214 0 15 0 33] 
#[0 3 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 50 0 77 0 92 0 112 0 124 0 125 0 126 0 127 0 128] 
#[0 3 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[1 3 222 0 15 16 129 0 23 3 222 0 37] 
#[0 3 226 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 1 83 0 8 2 186 0 9 1 87 0 36 1 91 0 43 16 133 0 253 13 49 0 254] 
#[1 1 83 0 8 1 87 0 36 2 186 0 37 1 91 0 43 16 137 0 253 13 49 0 254] 
#[1 1 83 0 8 1 87 0 36 1 91 0 43 2 186 0 47 16 141 0 253 13 49 0 254] 
#[1 13 33 0 8 16 145 0 9 13 37 0 36 13 41 0 43 16 149 0 254] 
#[0 3 230 0 8 0 9 0 36 0 37 0 43 0 47] 
#[0 3 234 0 8 0 15 0 23 0 37] 
#[0 3 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 16 153 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 9 5 0 5 9 9 0 31 16 157 0 37 9 17 0 108 9 21 0 129 9 25 0 150 9 29 0 151 9 33 0 152 9 37 0 153 9 41 0 154 9 45 0 155] 
#[0 3 242 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 0 157 0 105 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 13 125 0 159 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 3 9 0 213 1 21 0 214 5 105 0 215 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 16 161 1 11 7 1 1 24 7 5 1 25 7 9 1 26 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 16 165 0 8 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 16 169 0 165 3 9 0 213 1 21 0 214 9 81 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 3 246 0 2 3 246 0 3 3 246 0 4 3 246 0 5 3 246 0 6 3 246 0 7 13 141 0 8 3 246 0 9 3 246 0 10 3 246 0 11 3 246 0 12 3 246 0 14 3 246 0 15 3 246 0 16 3 246 0 18 3 246 0 20 3 246 0 22 3 246 0 23 3 246 0 24 3 246 0 25 3 246 0 26 3 246 0 28 3 246 0 29 3 246 0 30 3 246 0 31 3 246 0 32 3 246 0 33 3 246 0 34 3 246 0 35 3 246 0 37 3 246 0 38 3 246 0 39 3 246 0 40 3 246 0 42 6 245 0 43 3 246 0 44 3 246 0 45 3 246 0 46 3 246 0 47 3 246 0 125 3 246 0 126 3 246 0 127 3 246 0 128 16 173 0 168 13 149 1 26] 
#[1 3 189 0 8 3 250 0 15 3 250 0 23 11 133 0 31 3 250 0 37 6 245 0 43 16 177 1 22 3 229 1 23 3 233 1 26] 
#[0 3 254 0 15 0 23 0 37] 
#[0 4 2 0 8 0 43] 
#[1 16 181 0 5 9 17 0 108 9 21 0 129 16 185 0 152 9 37 0 153 9 41 0 154 9 45 0 155] 
#[1 16 181 0 5 9 17 0 108 9 21 0 129 16 189 0 153 9 41 0 154 9 45 0 155] 
#[0 4 6 0 15 0 37] 
#[0 16 193 0 9] 
#[0 16 197 0 33] 
#[1 4 117 0 1 4 121 0 5 1 191 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 2 202 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 16 201 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 16 205 0 33] 
#[0 16 209 0 9] 
#[0 16 213 0 9] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 16 217 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 3 246 0 2 3 246 0 3 3 246 0 4 3 246 0 5 3 246 0 6 3 246 0 7 13 141 0 8 3 246 0 9 3 246 0 10 3 246 0 11 3 246 0 12 3 246 0 14 3 246 0 15 3 246 0 16 3 246 0 18 3 246 0 20 3 246 0 22 3 246 0 23 3 246 0 24 3 246 0 25 3 246 0 26 3 246 0 28 3 246 0 29 3 246 0 30 3 246 0 31 3 246 0 32 3 246 0 33 3 246 0 34 3 246 0 35 3 246 0 37 3 246 0 38 3 246 0 39 3 246 0 40 3 246 0 42 6 245 0 43 3 246 0 44 3 246 0 45 3 246 0 46 3 246 0 47 3 246 0 125 3 246 0 126 3 246 0 127 3 246 0 128 16 221 0 168 13 149 1 26] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 16 225 0 9 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 16 229 0 159 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 1 1 24 7 5 1 25 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 3 246 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 4 10 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 16 233 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 4 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 18 0 2 4 18 0 3 4 18 0 4 4 18 0 5 4 18 0 6 4 18 0 7 4 18 0 8 4 18 0 9 4 18 0 10 4 18 0 11 4 18 0 12 4 18 0 14 4 18 0 15 4 18 0 16 4 18 0 18 4 18 0 20 4 18 0 22 4 18 0 23 4 18 0 24 4 18 0 25 4 18 0 26 4 18 0 28 4 18 0 29 4 18 0 30 4 18 0 31 4 18 0 32 4 18 0 33 4 18 0 34 4 18 0 35 16 237 0 36 4 18 0 37 4 18 0 38 4 18 0 39 4 18 0 40 4 18 0 42 4 18 0 43 4 18 0 44 4 18 0 45 4 18 0 46 4 18 0 47 4 18 0 125 4 18 0 126 4 18 0 127 4 18 0 128] 
#[1 4 18 0 2 4 18 0 3 4 18 0 4 1 195 0 5 1 199 0 6 4 18 0 7 4 18 0 8 4 18 0 9 1 203 0 10 4 18 0 11 4 18 0 12 4 18 0 14 4 18 0 15 4 18 0 16 4 18 0 18 4 18 0 20 4 18 0 22 4 18 0 23 4 18 0 24 4 18 0 25 4 18 0 26 0 29 0 27 4 18 0 28 4 18 0 29 4 18 0 30 4 18 0 31 4 18 0 32 4 18 0 33 4 18 0 34 4 18 0 35 13 153 0 36 4 18 0 37 4 18 0 38 4 18 0 39 4 18 0 40 4 18 0 42 4 18 0 43 4 18 0 44 4 18 0 45 4 18 0 46 4 18 0 47 0 85 0 66 4 18 0 125 4 18 0 126 4 18 0 127 4 18 0 128 2 249 0 129 6 17 0 147 16 241 0 166 13 161 0 167 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 13 165 1 6 1 157 1 27 2 21 1 59 1 197 1 61] 
#[1 16 245 0 9 10 129 0 15] 
#[0 16 249 0 33] 
#[0 16 253 0 9] 
#[0 17 1 0 129] 
#[0 17 5 0 33] 
#[0 17 9 0 9] 
#[0 4 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 17 13 0 9] 
#[1 0 85 0 66 2 9 0 129 17 17 0 218 17 21 0 219 17 25 1 27 2 21 1 59 1 197 1 61] 
#[1 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 17 29 0 144 0 217 0 145 0 221 0 146 2 1 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 17 33 0 48 0 133 0 91 17 37 0 107 3 73 0 129 3 77 0 145 17 41 0 218 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 3 85 1 59 1 193 1 60 1 197 1 61] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 17 45 0 27] 
#[1 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 17 49 0 144 0 217 0 145 0 221 0 146 2 1 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 10 129 0 15 17 53 0 37] 
#[0 17 57 0 37] 
#[1 17 61 0 9 10 129 0 15] 
#[0 17 65 0 9] 
#[0 4 30 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 4 30 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 34 0 2 4 34 0 3 4 34 0 4 4 34 0 5 4 34 0 6 4 34 0 7 4 34 0 9 4 34 0 10 4 34 0 11 4 34 0 12 4 34 0 14 4 34 0 15 4 34 0 16 4 34 0 18 9 153 0 20 9 157 0 22 4 34 0 23 4 34 0 24 4 34 0 25 4 34 0 26 4 34 0 28 4 34 0 29 4 34 0 30 4 34 0 31 4 34 0 32 4 34 0 33 4 34 0 34 4 34 0 35 4 34 0 37 4 34 0 38 4 34 0 39 4 34 0 40 4 34 0 42 4 34 0 44 4 34 0 45 4 34 0 46 4 34 0 47 4 34 0 125 4 34 0 126 4 34 0 127 4 34 0 128] 
#[1 4 34 0 2 4 34 0 3 4 34 0 4 4 34 0 5 4 34 0 6 4 34 0 7 4 34 0 9 4 34 0 10 4 34 0 11 4 34 0 12 4 34 0 14 4 34 0 15 4 34 0 16 4 34 0 18 9 153 0 20 9 157 0 22 4 34 0 23 4 34 0 24 4 34 0 25 4 34 0 26 4 34 0 28 4 34 0 29 4 34 0 30 4 34 0 31 4 34 0 32 4 34 0 33 4 34 0 34 4 34 0 35 4 34 0 37 4 34 0 38 4 34 0 39 4 34 0 40 4 34 0 42 4 34 0 44 4 34 0 45 4 34 0 46 4 34 0 47 4 34 0 125 4 34 0 126 4 34 0 127 4 34 0 128] 
#[1 4 34 0 2 4 34 0 3 4 34 0 4 4 34 0 5 4 34 0 6 4 34 0 7 4 34 0 9 4 34 0 10 4 34 0 11 4 34 0 12 4 34 0 14 4 34 0 15 4 34 0 16 4 34 0 18 9 153 0 20 9 157 0 22 4 34 0 23 4 34 0 24 4 34 0 25 4 34 0 26 4 34 0 28 4 34 0 29 4 34 0 30 4 34 0 31 4 34 0 32 4 34 0 33 4 34 0 34 4 34 0 35 4 34 0 37 4 34 0 38 4 34 0 39 4 34 0 40 4 34 0 42 4 34 0 44 4 34 0 45 4 34 0 46 4 34 0 47 4 34 0 125 4 34 0 126 4 34 0 127 4 34 0 128] 
#[1 4 38 0 2 9 161 0 3 4 38 0 4 4 38 0 5 4 38 0 6 4 38 0 7 4 38 0 9 9 165 0 10 4 38 0 11 4 38 0 12 4 38 0 14 4 38 0 15 4 38 0 16 4 38 0 18 4 38 0 23 9 169 0 24 4 38 0 25 4 38 0 26 4 38 0 28 4 38 0 29 4 38 0 30 4 38 0 31 4 38 0 32 4 38 0 33 4 38 0 34 4 38 0 35 4 38 0 37 4 38 0 38 4 38 0 39 4 38 0 40 4 38 0 42 4 38 0 44 4 38 0 45 4 38 0 46 4 38 0 47 4 38 0 125 4 38 0 126 4 38 0 127 4 38 0 128] 
#[1 4 38 0 2 9 161 0 3 4 38 0 4 4 38 0 5 4 38 0 6 4 38 0 7 4 38 0 9 9 165 0 10 4 38 0 11 4 38 0 12 4 38 0 14 4 38 0 15 4 38 0 16 4 38 0 18 4 38 0 23 9 169 0 24 4 38 0 25 4 38 0 26 4 38 0 28 4 38 0 29 4 38 0 30 4 38 0 31 4 38 0 32 4 38 0 33 4 38 0 34 4 38 0 35 4 38 0 37 4 38 0 38 4 38 0 39 4 38 0 40 4 38 0 42 4 38 0 44 4 38 0 45 4 38 0 46 4 38 0 47 4 38 0 125 4 38 0 126 4 38 0 127 4 38 0 128] 
#[1 4 42 0 2 4 42 0 4 4 42 0 5 4 42 0 6 4 42 0 7 4 42 0 9 4 42 0 11 9 173 0 12 4 42 0 14 4 42 0 15 9 177 0 16 4 42 0 18 4 42 0 23 4 42 0 25 4 42 0 26 4 42 0 28 4 42 0 29 4 42 0 30 4 42 0 31 4 42 0 32 4 42 0 33 4 42 0 34 4 42 0 35 4 42 0 37 4 42 0 38 4 42 0 39 4 42 0 40 4 42 0 42 4 42 0 44 4 42 0 45 4 42 0 46 4 42 0 47 4 42 0 125 4 42 0 126 4 42 0 127 4 42 0 128] 
#[1 4 46 0 2 4 46 0 4 4 46 0 5 4 46 0 6 4 46 0 7 4 46 0 9 4 46 0 11 4 46 0 14 4 46 0 15 4 46 0 18 4 46 0 23 4 46 0 25 4 46 0 26 4 46 0 28 4 46 0 29 4 46 0 30 4 46 0 31 4 46 0 32 4 46 0 33 4 46 0 34 4 46 0 35 4 46 0 37 4 46 0 38 4 46 0 39 4 46 0 40 4 46 0 42 4 46 0 44 4 46 0 45 4 46 0 46 4 46 0 47 9 181 0 125 9 185 0 126 4 46 0 127 4 46 0 128 9 189 0 176] 
#[1 4 46 0 2 4 46 0 4 4 46 0 5 4 46 0 6 4 46 0 7 4 46 0 9 4 46 0 11 4 46 0 14 4 46 0 15 4 46 0 18 4 46 0 23 4 46 0 25 4 46 0 26 4 46 0 28 4 46 0 29 4 46 0 30 4 46 0 31 4 46 0 32 4 46 0 33 4 46 0 34 4 46 0 35 4 46 0 37 4 46 0 38 4 46 0 39 4 46 0 40 4 46 0 42 4 46 0 44 4 46 0 45 4 46 0 46 4 46 0 47 9 181 0 125 9 185 0 126 4 46 0 127 4 46 0 128 9 189 0 176] 
#[1 4 46 0 2 4 46 0 4 4 46 0 5 4 46 0 6 4 46 0 7 4 46 0 9 4 46 0 11 4 46 0 14 4 46 0 15 4 46 0 18 4 46 0 23 4 46 0 25 4 46 0 26 4 46 0 28 4 46 0 29 4 46 0 30 4 46 0 31 4 46 0 32 4 46 0 33 4 46 0 34 4 46 0 35 4 46 0 37 4 46 0 38 4 46 0 39 4 46 0 40 4 46 0 42 4 46 0 44 4 46 0 45 4 46 0 46 4 46 0 47 9 181 0 125 9 185 0 126 4 46 0 127 4 46 0 128 9 189 0 176] 
#[1 4 46 0 2 4 46 0 4 4 46 0 5 4 46 0 6 4 46 0 7 4 46 0 9 4 46 0 11 4 46 0 14 4 46 0 15 4 46 0 18 4 46 0 23 4 46 0 25 4 46 0 26 4 46 0 28 4 46 0 29 4 46 0 30 4 46 0 31 4 46 0 32 4 46 0 33 4 46 0 34 4 46 0 35 4 46 0 37 4 46 0 38 4 46 0 39 4 46 0 40 4 46 0 42 4 46 0 44 4 46 0 45 4 46 0 46 4 46 0 47 9 181 0 125 9 185 0 126 4 46 0 127 4 46 0 128 9 189 0 176] 
#[1 4 50 0 2 4 50 0 4 4 50 0 5 4 50 0 6 4 50 0 7 4 50 0 9 4 50 0 11 4 50 0 14 4 50 0 15 4 50 0 18 4 50 0 23 4 50 0 25 4 50 0 26 4 50 0 28 9 193 0 29 9 197 0 30 4 50 0 31 4 50 0 32 1 207 0 33 9 205 0 34 4 50 0 35 4 50 0 37 4 50 0 38 4 50 0 39 4 50 0 40 4 50 0 42 4 50 0 44 4 50 0 45 4 50 0 46 4 50 0 47 4 50 0 127 4 50 0 128] 
#[1 4 50 0 2 4 50 0 4 4 50 0 5 4 50 0 6 4 50 0 7 4 50 0 9 4 50 0 11 4 50 0 14 4 50 0 15 4 50 0 18 4 50 0 23 4 50 0 25 4 50 0 26 4 50 0 28 9 193 0 29 9 197 0 30 4 50 0 31 4 50 0 32 1 207 0 33 9 205 0 34 4 50 0 35 4 50 0 37 4 50 0 38 4 50 0 39 4 50 0 40 4 50 0 42 4 50 0 44 4 50 0 45 4 50 0 46 4 50 0 47 4 50 0 127 4 50 0 128] 
#[1 9 209 0 2 4 54 0 4 4 54 0 5 4 54 0 6 4 54 0 7 4 54 0 9 4 54 0 11 4 54 0 14 4 54 0 15 4 54 0 18 4 54 0 23 4 54 0 25 4 54 0 26 4 54 0 28 4 54 0 31 9 213 0 32 4 54 0 33 4 54 0 35 4 54 0 37 4 54 0 38 4 54 0 39 4 54 0 40 4 54 0 42 4 54 0 44 4 54 0 45 4 54 0 46 4 54 0 47 4 54 0 127 4 54 0 128] 
#[1 4 58 0 4 9 217 0 5 4 58 0 6 4 58 0 7 4 58 0 9 4 58 0 11 4 58 0 14 4 58 0 15 4 58 0 18 4 58 0 23 4 58 0 25 4 58 0 26 4 58 0 28 4 58 0 31 4 58 0 33 4 58 0 35 4 58 0 37 4 58 0 38 4 58 0 39 4 58 0 40 4 58 0 42 4 58 0 44 4 58 0 45 4 58 0 46 4 58 0 47 4 58 0 127 4 58 0 128] 
#[1 4 62 0 4 4 62 0 6 4 62 0 7 4 62 0 9 4 62 0 11 4 62 0 14 4 62 0 15 4 62 0 18 4 62 0 23 4 62 0 25 4 62 0 26 4 62 0 28 4 62 0 31 4 62 0 33 4 62 0 35 4 62 0 37 9 221 0 38 4 62 0 39 4 62 0 40 4 62 0 42 4 62 0 44 4 62 0 45 4 62 0 46 4 62 0 47 4 62 0 127 4 62 0 128] 
#[1 4 66 0 4 4 66 0 6 4 66 0 7 4 66 0 9 4 66 0 11 4 66 0 14 4 66 0 15 4 66 0 18 4 66 0 23 4 66 0 25 4 66 0 26 4 66 0 28 4 66 0 31 4 66 0 33 4 66 0 35 4 66 0 37 4 66 0 39 4 66 0 40 4 66 0 42 9 225 0 44 4 66 0 45 4 66 0 46 4 66 0 47 4 66 0 127 4 66 0 128] 
#[1 4 66 0 4 4 66 0 6 4 66 0 7 4 66 0 9 4 66 0 11 4 66 0 14 4 66 0 15 4 66 0 18 4 66 0 23 4 66 0 25 4 66 0 26 4 66 0 28 4 66 0 31 4 66 0 33 4 66 0 35 4 66 0 37 4 66 0 39 4 66 0 40 4 66 0 42 9 225 0 44 4 66 0 45 4 66 0 46 4 66 0 47 4 66 0 127 4 66 0 128] 
#[1 10 129 0 15 17 69 0 26] 
#[1 4 70 0 4 9 229 0 6 4 70 0 7 4 70 0 9 4 70 0 11 4 70 0 14 4 70 0 15 4 70 0 18 4 70 0 23 4 70 0 25 4 70 0 26 4 70 0 28 4 70 0 31 4 70 0 33 4 70 0 35 4 70 0 37 4 70 0 39 9 233 0 40 4 70 0 42 4 70 0 45 4 70 0 46 4 70 0 47 4 70 0 127 4 70 0 128] 
#[1 4 70 0 4 9 229 0 6 4 70 0 7 4 70 0 9 4 70 0 11 4 70 0 14 4 70 0 15 4 70 0 18 4 70 0 23 4 70 0 25 4 70 0 26 4 70 0 28 4 70 0 31 4 70 0 33 4 70 0 35 4 70 0 37 4 70 0 39 9 233 0 40 4 70 0 42 4 70 0 45 4 70 0 46 4 70 0 47 4 70 0 127 4 70 0 128] 
#[0 4 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 17 73 0 36 14 117 0 37 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 14 121 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 3 65 0 10 5 253 0 107 6 1 0 129 3 81 0 218 1 157 1 27 6 5 1 59 1 197 1 61] 
#[0 2 254 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 77 0 92 0 112 0 124] 
#[1 0 9 0 5 0 13 0 6 10 1 0 8 3 2 0 9 0 21 0 10 0 29 0 27 10 9 0 36 0 85 0 66 2 249 0 129 6 17 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 14 101 1 4 14 105 1 6 14 129 1 13 14 113 1 14 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 17 77 0 9] 
#[1 1 115 0 8 3 2 0 9 3 2 0 15 3 2 0 23 3 2 0 26 3 2 0 28 3 2 0 31 3 2 0 33 14 137 0 36 3 2 0 43 3 2 0 77 3 2 0 92 3 2 0 112 3 2 0 124 17 81 1 4] 
#[1 4 78 0 8 4 78 0 9 4 78 0 15 4 78 0 23 4 78 0 26 4 78 0 28 4 78 0 31 4 78 0 33 1 211 0 36 4 78 0 43 0 45 0 50 4 78 0 77 4 78 0 92 4 78 0 112 4 78 0 124 17 85 0 244 1 113 0 245 1 117 0 246] 
#[0 17 89 0 37] 
#[0 4 82 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[0 4 86 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[0 4 90 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 17 93 0 37 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 17 97 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 78 0 8 4 78 0 9 4 78 0 15 8 1 0 19 4 78 0 23 4 78 0 26 4 78 0 28 4 78 0 31 4 78 0 33 4 78 0 36 4 78 0 43 4 78 0 77 4 78 0 92 4 78 0 112 4 78 0 124 17 101 1 5] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 17 105 0 37 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 17 109 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 4 94 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 77 0 92 0 112 0 124] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 17 113 0 9] 
#[0 4 74 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 51 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 17 117 0 9] 
#[0 4 98 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 4 102 0 9 0 15 0 23 0 26 0 28 0 33 0 37 0 47] 
#[0 4 106 0 9 0 15 0 26 0 28 0 37] 
#[0 4 110 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 4 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 17 121 0 47] 
#[0 17 125 0 47] 
#[0 4 118 0 28] 
#[0 4 122 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 4 126 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 4 130 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 3 94 0 43] 
#[0 17 129 0 9] 
#[0 4 134 0 15 0 33] 
#[0 4 134 0 15 0 33] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 17 133 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 11 21 0 15 17 137 0 33] 
#[0 4 134 0 15 0 33] 
#[0 4 134 0 15 0 33] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 17 141 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 2 102 0 9 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 1 253 0 144 0 217 0 145 0 221 0 146 2 1 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 9 0 5 0 13 0 6 10 249 0 8 3 2 0 9 0 21 0 10 0 25 0 23 0 29 0 27 10 9 0 36 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 4 9 1 2 1 237 1 3 14 101 1 4 15 1 1 6 1 149 1 10 14 129 1 13 14 113 1 14 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 4 138 0 9 0 15 0 23 0 33] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 17 145 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 17 149 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 17 153 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 138 0 9 4 138 0 15 4 138 0 23 17 157 0 31 4 138 0 33] 
#[1 4 138 0 9 4 138 0 15 4 138 0 23 17 161 0 31 4 138 0 33] 
#[0 4 142 0 15 0 33] 
#[0 4 146 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 4 150 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 4 158 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 17 165 0 28] 
#[0 4 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 77 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 92 0 96 0 99 0 100 0 102 0 105 0 109 0 112 0 113 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 124 0 125 0 126 0 127 0 128 0 129] 
#[0 4 166 0 15 0 47] 
#[0 4 170 0 15 0 47] 
#[0 4 174 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 4 178 0 43] 
#[0 17 169 0 28] 
#[0 4 150 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 4 182 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[1 4 186 0 9 4 186 0 15 17 173 0 23 4 186 0 47] 
#[0 4 190 0 43] 
#[1 0 29 0 27 0 85 0 66 7 13 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 7 29 1 43 17 177 1 50 7 37 1 51 7 41 1 52 2 21 1 59 1 197 1 61] 
#[0 4 194 0 15 0 23 0 43] 
#[0 17 181 0 9] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 17 185 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 4 198 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 17 189 0 8] 
#[0 4 202 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 28 0 36 0 41 0 44 0 48 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 71 0 73 0 74 0 75 0 76 0 78 0 80 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 96 0 97 0 99 0 100 0 101 0 102 0 104 0 105 0 108 0 109 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 17 193 0 28 7 73 0 36 4 157 0 41 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 4 209 0 104 0 157 0 105 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 15 145 0 187 17 197 0 195 1 1 0 209 15 153 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 15 157 0 244 1 113 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 17 201 0 26] 
#[0 4 202 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 28 0 36 0 41 0 44 0 48 0 50 0 51 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 66 0 68 0 70 0 71 0 73 0 74 0 75 0 76 0 78 0 80 0 83 0 84 0 85 0 86 0 88 0 89 0 90 0 91 0 96 0 97 0 99 0 100 0 101 0 102 0 104 0 105 0 108 0 109 0 110 0 111 0 113 0 114 0 115 0 116 0 117 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 3 109 0 28 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 3 113 0 255 1 125 1 0 17 205 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 37 0 36 0 41 0 48 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 133 0 91 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 1 1 0 209 17 209 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 3 173 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 1 201 1 64] 
#[0 4 206 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 210 0 9 10 129 0 15 4 210 0 28] 
#[0 17 213 0 9] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 17 217 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 0 85 0 66 0 89 0 70 0 93 0 73 0 97 0 74 3 93 0 75 0 105 0 78 0 109 0 80 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 0 137 0 96 0 141 0 99 0 145 0 100 0 149 0 102 0 157 0 105 0 165 0 109 0 169 0 113 0 173 0 115 0 177 0 116 0 181 0 117 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 1 1 0 209 17 221 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 4 206 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 206 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 17 225 0 9] 
#[0 4 214 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 17 229 0 9] 
#[0 4 198 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 17 233 0 26] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 17 237 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 17 241 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 4 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 17 245 0 23 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 17 249 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 17 253 0 244 1 113 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64 18 1 1 71] 
#[0 4 222 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 4 226 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 4 230 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 89 0 92 0 110 0 112 0 124] 
#[0 4 230 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 89 0 92 0 110 0 112 0 124] 
#[1 1 215 0 8 4 234 0 9 4 234 0 15 4 234 0 19 4 234 0 23 4 234 0 26 4 234 0 28 4 234 0 31 4 234 0 33 4 234 0 36 4 234 0 43 4 234 0 50 4 234 0 77 4 234 0 92 4 234 0 112 4 234 0 124] 
#[0 18 9 0 8] 
#[1 4 238 0 8 4 238 0 9 4 238 0 15 4 238 0 19 4 238 0 23 4 238 0 26 4 238 0 28 4 238 0 31 4 238 0 33 1 219 0 36 4 238 0 43 0 45 0 50 4 238 0 77 4 238 0 92 4 238 0 112 4 238 0 124 3 169 0 245 1 117 0 246] 
#[1 15 213 0 5 15 217 0 6 4 238 0 8 4 238 0 9 4 238 0 15 4 238 0 19 4 238 0 23 4 238 0 26 4 238 0 28 4 238 0 31 4 238 0 33 1 219 0 36 4 238 0 43 0 45 0 50 4 238 0 77 15 221 0 89 4 238 0 92 15 225 0 110 4 238 0 112 4 238 0 124 18 13 0 244 1 113 0 245 1 117 0 246 18 17 1 9 18 21 1 73 15 245 1 74 15 249 1 76] 
#[1 4 238 0 8 4 238 0 9 4 238 0 15 4 238 0 19 4 238 0 23 4 238 0 26 4 238 0 28 4 238 0 31 4 238 0 33 1 219 0 36 4 238 0 43 0 45 0 50 4 238 0 77 15 221 0 89 4 238 0 92 15 225 0 110 4 238 0 112 4 238 0 124 18 25 0 244 1 113 0 245 1 117 0 246 18 29 1 73 15 245 1 74 15 249 1 76] 
#[1 4 238 0 8 4 238 0 9 4 238 0 15 4 238 0 19 4 238 0 23 4 238 0 26 4 238 0 28 4 238 0 31 4 238 0 33 1 219 0 36 4 238 0 43 0 45 0 50 4 238 0 77 4 238 0 92 4 238 0 112 4 238 0 124 18 33 0 244 1 113 0 245 1 117 0 246] 
#[0 4 242 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 92 0 112 0 124] 
#[0 4 242 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 92 0 112 0 124] 
#[0 4 246 0 9] 
#[0 4 250 0 9 0 15 0 23] 
#[1 4 254 0 8 4 254 0 9 4 254 0 15 4 254 0 23 4 254 0 26 4 254 0 28 4 254 0 31 4 254 0 33 1 223 0 36 4 254 0 43 0 45 0 50 4 254 0 77 4 254 0 92 4 254 0 112 4 254 0 124 3 169 0 245 1 117 0 246] 
#[0 5 2 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 33 0 36 0 43 0 66 0 77 0 92 0 112 0 124 0 129] 
#[1 5 2 0 5 5 2 0 6 5 2 0 8 5 2 0 9 5 2 0 10 5 2 0 15 5 2 0 23 5 2 0 26 5 2 0 27 5 2 0 28 5 2 0 31 5 2 0 33 1 227 0 36 5 2 0 43 0 45 0 50 5 2 0 66 5 2 0 77 5 2 0 92 5 2 0 112 5 2 0 124 5 2 0 129 3 169 0 245 1 117 0 246] 
#[0 5 6 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[1 8 125 0 107 18 37 0 129 18 41 1 59 1 197 1 61] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 85 0 66 8 141 0 129 18 45 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 5 10 0 15 0 28] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 18 49 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 18 53 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 3 178 0 15 3 193 0 26 3 178 0 28 7 217 0 31 7 205 0 43 3 205 0 77 3 209 0 92 3 213 0 112 12 169 0 124 3 217 0 192 11 73 1 21 7 225 1 38 16 77 1 39 3 245 1 49 3 249 1 68] 
#[0 5 14 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[0 1 231 0 15 0 28] 
#[0 5 14 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[1 2 126 0 15 3 193 0 26 2 126 0 28 3 197 0 31 3 201 0 43 3 205 0 77 3 209 0 92 3 213 0 112 12 169 0 124 3 217 0 192 11 121 1 21 12 173 1 23 3 233 1 26 18 57 1 37 3 241 1 38 12 181 1 39 3 245 1 49 3 249 1 68] 
#[1 12 193 0 15 18 61 0 28] 
#[1 3 178 0 15 3 193 0 26 3 178 0 28 7 217 0 31 7 205 0 43 3 205 0 77 3 209 0 92 3 213 0 112 12 169 0 124 3 217 0 192 11 129 1 21 7 225 1 38 16 77 1 39 3 245 1 49 3 249 1 68] 
#[0 5 14 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[0 5 18 0 15 0 28] 
#[0 5 10 0 15 0 28] 
#[1 2 126 0 15 2 126 0 28 11 133 0 31 6 245 0 43 3 205 0 77 3 209 0 92 12 169 0 124 12 173 1 23 3 233 1 26 18 65 1 37 3 241 1 38 12 181 1 39] 
#[0 5 22 0 15 0 28] 
#[0 5 26 0 47] 
#[0 5 30 0 15 0 23 0 43] 
#[0 5 30 0 15 0 23 0 43] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 8 113 1 43 18 69 1 44 2 21 1 59 1 197 1 61] 
#[1 0 29 0 27 0 85 0 66 2 249 0 129 7 17 0 147 1 225 0 218 7 21 0 219 1 57 0 229 1 61 0 230 1 85 0 237 7 25 1 27 8 113 1 43 18 73 1 44 2 21 1 59 1 197 1 61] 
#[0 5 30 0 15 0 23 0 43] 
#[1 5 34 0 15 18 77 0 23 5 34 0 43] 
#[0 5 30 0 15 0 23 0 43] 
#[0 5 38 0 43] 
#[1 5 42 0 15 18 81 0 23 5 42 0 33] 
#[0 5 46 0 15 0 37] 
#[1 13 33 0 8 18 85 0 9 13 37 0 36 13 41 0 43 16 149 0 254] 
#[1 13 33 0 8 13 37 0 36 18 89 0 37 13 41 0 43 16 149 0 254] 
#[1 13 33 0 8 13 37 0 36 13 41 0 43 18 93 0 47 16 149 0 254] 
#[0 5 50 0 15 0 23 0 37] 
#[0 5 54 0 8 0 9 0 36 0 37 0 43 0 47] 
#[0 5 58 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 1 191 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 2 202 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 18 97 0 171 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 18 101 0 9] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 18 105 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 5 62 0 2 5 62 0 3 5 62 0 4 5 62 0 5 5 62 0 6 5 62 0 7 13 141 0 8 5 62 0 9 5 62 0 10 5 62 0 11 5 62 0 12 5 62 0 14 5 62 0 15 5 62 0 16 5 62 0 18 5 62 0 20 5 62 0 22 5 62 0 23 5 62 0 24 5 62 0 25 5 62 0 26 5 62 0 28 5 62 0 29 5 62 0 30 5 62 0 31 5 62 0 32 5 62 0 33 5 62 0 34 5 62 0 35 5 62 0 37 5 62 0 38 5 62 0 39 5 62 0 40 5 62 0 42 6 245 0 43 5 62 0 44 5 62 0 45 5 62 0 46 5 62 0 47 5 62 0 125 5 62 0 126 5 62 0 127 5 62 0 128 18 109 0 168 13 149 1 26] 
#[0 5 62 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 66 0 15 0 23 0 37] 
#[0 13 85 0 129] 
#[1 13 101 0 15 5 70 0 37] 
#[1 5 74 0 15 18 113 0 23 5 74 0 37] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 18 117 0 8] 
#[0 5 82 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 18 121 0 8] 
#[0 5 86 0 8 0 27 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 66 0 70 0 73 0 78 0 84 0 85 0 99 0 100 0 105 0 115 0 116 0 117 0 120 0 121 0 122 0 129] 
#[1 5 62 0 2 5 62 0 3 5 62 0 4 5 62 0 5 5 62 0 6 5 62 0 7 13 141 0 8 5 62 0 9 5 62 0 10 5 62 0 11 5 62 0 12 5 62 0 14 5 62 0 15 5 62 0 16 5 62 0 18 5 62 0 20 5 62 0 22 5 62 0 23 5 62 0 24 5 62 0 25 5 62 0 26 5 62 0 28 5 62 0 29 5 62 0 30 5 62 0 31 5 62 0 32 5 62 0 33 5 62 0 34 5 62 0 35 5 62 0 37 5 62 0 38 5 62 0 39 5 62 0 40 5 62 0 42 6 245 0 43 5 62 0 44 5 62 0 45 5 62 0 46 5 62 0 47 5 62 0 125 5 62 0 126 5 62 0 127 5 62 0 128 18 125 0 168 13 149 1 26] 
#[0 18 129 0 9] 
#[0 5 62 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 90 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 18 133 0 9] 
#[1 10 129 0 15 18 137 0 37] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 18 141 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 98 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 18 145 0 8] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 18 149 0 9] 
#[0 18 153 0 8] 
#[1 8 1 0 19 0 37 0 36 5 102 0 43 0 45 0 50 18 157 0 86 15 221 0 89 15 225 0 110 18 161 0 244 1 113 0 245 1 117 0 246 18 165 1 5 18 169 1 73 15 245 1 74 15 249 1 76] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 235 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 1 239 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 0 85 0 66 2 9 0 129 18 173 0 218 2 13 0 219 17 25 1 27 2 21 1 59 1 197 1 61] 
#[1 0 41 0 48 0 133 0 91 6 93 0 129 6 137 0 145 1 173 1 46 1 177 1 53 1 181 1 54 18 177 1 59 1 193 1 60 1 197 1 61] 
#[0 18 181 0 27] 
#[1 1 243 0 48 0 242 0 91 0 242 0 107 0 242 0 129] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 18 189 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 9 5 0 5 0 174 0 15 9 9 0 31 1 247 0 37 9 17 0 108 18 193 0 129 9 25 0 150 9 29 0 151 9 33 0 152 9 37 0 153 9 41 0 154 9 45 0 155 4 97 0 247 4 101 0 248 4 105 0 249 4 109 0 250 4 113 0 251] 
#[0 5 114 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 77 0 92 0 112 0 124] 
#[0 4 78 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 77 0 92 0 112 0 124] 
#[1 5 114 0 8 5 114 0 9 5 114 0 15 5 114 0 23 5 114 0 26 5 114 0 28 5 114 0 31 5 114 0 33 1 251 0 36 5 114 0 43 0 45 0 50 5 114 0 77 5 114 0 92 5 114 0 112 5 114 0 124 3 169 0 245 1 117 0 246] 
#[1 5 114 0 8 5 114 0 9 5 114 0 15 5 114 0 23 5 114 0 26 5 114 0 28 5 114 0 31 5 114 0 33 1 251 0 36 5 114 0 43 0 45 0 50 5 114 0 77 5 114 0 92 5 114 0 112 5 114 0 124 18 197 0 244 1 113 0 245 1 117 0 246] 
#[1 5 114 0 8 5 114 0 9 5 114 0 15 5 114 0 23 5 114 0 26 5 114 0 28 5 114 0 31 5 114 0 33 1 251 0 36 5 114 0 43 0 45 0 50 5 114 0 77 5 114 0 92 5 114 0 112 5 114 0 124 18 201 0 244 1 113 0 245 1 117 0 246] 
#[0 18 205 0 37] 
#[0 5 118 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 33 0 43 0 77 0 92 0 112 0 124] 
#[1 5 122 0 8 5 122 0 9 5 122 0 15 5 122 0 23 5 122 0 26 5 122 0 28 5 122 0 31 5 122 0 33 1 255 0 36 5 122 0 43 0 45 0 50 5 122 0 77 5 122 0 92 5 122 0 112 5 122 0 124 18 209 0 244 1 113 0 245 1 117 0 246] 
#[0 18 213 0 37] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 126 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 5 130 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 52 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 87 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 1 82] 
#[0 18 217 0 28] 
#[0 5 134 0 15 0 33] 
#[0 18 221 0 61] 
#[0 5 134 0 15 0 33] 
#[0 5 138 0 9 0 15 0 23 0 33] 
#[0 5 138 0 9 0 15 0 23 0 33] 
#[0 5 138 0 9 0 15 0 23 0 33] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 18 225 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 18 229 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 5 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 5 146 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 5 150 0 9 0 15 0 47] 
#[0 5 154 0 43] 
#[0 5 158 0 15 0 23 0 43] 
#[0 5 162 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 18 233 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 18 237 0 9 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 18 241 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 18 245 0 28] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 18 249 0 187 18 253 0 199 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 19 1 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 3 189 0 8 0 134 0 15 5 166 0 26 0 134 0 28 11 133 0 31 6 245 0 43 3 225 1 22 3 229 1 23 3 233 1 26] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 6 217 0 255 1 125 1 0 19 5 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 19 9 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 19 13 0 31 6 245 0 43 19 17 1 26] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 19 21 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 149 1 10 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 19 25 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 19 29 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 19 33 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 5 162 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 5 162 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 5 170 0 9] 
#[1 0 9 0 5 0 13 0 6 10 249 0 8 5 170 0 9 0 21 0 10 10 253 0 23 0 29 0 27 10 9 0 36 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 19 37 1 1 1 133 1 2 1 137 1 3 10 13 1 4 11 9 1 6 1 149 1 10 19 41 1 12 10 25 1 13 10 29 1 14 10 33 1 15 10 37 1 16 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 0 29 0 27 0 37 0 36 0 45 0 50 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 19 45 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 3 169 0 245 1 117 0 246 1 145 1 8 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[0 19 49 0 9] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 93 0 183 5 97 0 184 19 53 0 188 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 19 57 0 9 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 19 61 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64 19 65 1 75] 
#[1 5 174 0 8 5 174 0 9 5 174 0 15 5 174 0 19 5 174 0 23 5 174 0 26 5 174 0 28 5 174 0 31 5 174 0 33 2 3 0 36 5 174 0 43 0 45 0 50 5 174 0 77 5 174 0 92 5 174 0 112 5 174 0 124 3 169 0 245 1 117 0 246] 
#[1 5 174 0 8 5 174 0 9 5 174 0 15 5 174 0 19 5 174 0 23 5 174 0 26 5 174 0 28 5 174 0 31 5 174 0 33 2 3 0 36 5 174 0 43 0 45 0 50 5 174 0 77 15 221 0 89 5 174 0 92 15 225 0 110 5 174 0 112 5 174 0 124 19 69 0 244 1 113 0 245 1 117 0 246 19 73 1 73 15 245 1 74 15 249 1 76] 
#[1 5 174 0 8 5 174 0 9 5 174 0 15 5 174 0 19 5 174 0 23 5 174 0 26 5 174 0 28 5 174 0 31 5 174 0 33 2 3 0 36 5 174 0 43 0 45 0 50 5 174 0 77 5 174 0 92 5 174 0 112 5 174 0 124 19 77 0 244 1 113 0 245 1 117 0 246] 
#[1 5 174 0 8 5 174 0 9 5 174 0 15 5 174 0 19 5 174 0 23 5 174 0 26 5 174 0 28 5 174 0 31 5 174 0 33 2 3 0 36 5 174 0 43 0 45 0 50 5 174 0 77 5 174 0 92 5 174 0 112 5 174 0 124 3 169 0 245 1 117 0 246] 
#[1 5 174 0 8 5 174 0 9 5 174 0 15 5 174 0 19 5 174 0 23 5 174 0 26 5 174 0 28 5 174 0 31 5 174 0 33 2 3 0 36 5 174 0 43 0 45 0 50 5 174 0 77 5 174 0 92 5 174 0 112 5 174 0 124 19 81 0 244 1 113 0 245 1 117 0 246] 
#[1 5 174 0 8 5 174 0 9 5 174 0 15 5 174 0 19 5 174 0 23 5 174 0 26 5 174 0 28 5 174 0 31 5 174 0 33 2 3 0 36 5 174 0 43 0 45 0 50 5 174 0 77 5 174 0 92 5 174 0 112 5 174 0 124 3 169 0 245 1 117 0 246] 
#[1 1 186 0 5 1 186 0 6 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 15 1 186 0 23 1 186 0 26 0 211 0 27 1 186 0 28 0 66 0 29 1 186 0 31 1 186 0 33 1 186 0 36 1 186 0 43 1 186 0 50 1 186 0 53 1 186 0 54 1 186 0 58 1 186 0 59 1 186 0 60 1 186 0 61 1 186 0 62 1 186 0 66 1 186 0 70 1 186 0 73 1 186 0 77 1 186 0 78 1 186 0 84 1 186 0 85 1 186 0 92 1 186 0 99 1 186 0 100 1 186 0 105 1 186 0 112 1 186 0 115 1 186 0 116 1 186 0 117 1 186 0 120 1 186 0 121 1 186 0 122 1 186 0 124 1 186 0 129] 
#[1 1 186 0 5 1 186 0 6 1 186 0 8 1 186 0 9 1 186 0 10 1 186 0 15 1 186 0 23 1 186 0 26 1 71 0 27 1 186 0 28 1 186 0 31 1 186 0 33 1 186 0 36 1 186 0 43 1 186 0 50 1 186 0 53 1 186 0 54 1 186 0 58 1 186 0 59 1 186 0 60 1 186 0 61 1 186 0 62 1 186 0 66 1 186 0 70 1 186 0 73 1 186 0 77 1 186 0 78 1 186 0 84 1 186 0 85 1 186 0 92 1 186 0 99 1 186 0 100 1 186 0 105 1 186 0 112 1 186 0 115 1 186 0 116 1 186 0 117 1 186 0 120 1 186 0 121 1 186 0 122 1 186 0 124 1 186 0 129] 
#[1 5 177 0 107 19 85 0 129 5 185 1 59 1 197 1 61] 
#[0 5 178 0 15 0 28] 
#[0 5 10 0 15 0 28] 
#[1 3 178 0 15 3 193 0 26 3 178 0 28 7 217 0 31 7 205 0 43 3 205 0 77 3 209 0 92 3 213 0 112 12 169 0 124 3 217 0 192 15 81 1 21 7 225 1 38 16 77 1 39 3 245 1 49 3 249 1 68] 
#[0 5 182 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 36 0 47 0 48 0 50 0 53 0 54 0 58 0 59 0 60 0 61 0 62 0 63 0 66 0 70 0 73 0 74 0 75 0 78 0 80 0 83 0 84 0 85 0 86 0 91 0 93 0 94 0 95 0 96 0 99 0 100 0 102 0 103 0 105 0 107 0 109 0 113 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129] 
#[1 3 178 0 15 3 178 0 28 3 205 0 77 3 209 0 92 12 169 0 124 7 225 1 38 16 77 1 39] 
#[0 5 186 0 15 0 23 0 43] 
#[0 5 186 0 15 0 23 0 43] 
#[0 5 190 0 15 0 43] 
#[0 5 194 0 15 0 33] 
#[0 5 198 0 8 0 9 0 36 0 37 0 43 0 47] 
#[0 5 198 0 8 0 9 0 36 0 37 0 43 0 47] 
#[0 5 198 0 8 0 9 0 36 0 37 0 43 0 47] 
#[0 5 202 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 5 206 0 2 5 206 0 3 5 206 0 4 5 206 0 5 5 206 0 6 5 206 0 7 13 141 0 8 5 206 0 9 5 206 0 10 5 206 0 11 5 206 0 12 5 206 0 14 5 206 0 15 5 206 0 16 5 206 0 18 5 206 0 20 5 206 0 22 5 206 0 23 5 206 0 24 5 206 0 25 5 206 0 26 5 206 0 28 5 206 0 29 5 206 0 30 5 206 0 31 5 206 0 32 5 206 0 33 5 206 0 34 5 206 0 35 5 206 0 37 5 206 0 38 5 206 0 39 5 206 0 40 5 206 0 42 6 245 0 43 5 206 0 44 5 206 0 45 5 206 0 46 5 206 0 47 5 206 0 125 5 206 0 126 5 206 0 127 5 206 0 128 19 89 0 168 13 149 1 26] 
#[0 19 93 0 9] 
#[0 5 206 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 5 210 0 15 0 37] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 19 97 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 19 101 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 5 206 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 5 206 0 2 5 206 0 3 5 206 0 4 5 206 0 5 5 206 0 6 5 206 0 7 13 141 0 8 5 206 0 9 5 206 0 10 5 206 0 11 5 206 0 12 5 206 0 14 5 206 0 15 5 206 0 16 5 206 0 18 5 206 0 20 5 206 0 22 5 206 0 23 5 206 0 24 5 206 0 25 5 206 0 26 5 206 0 28 5 206 0 29 5 206 0 30 5 206 0 31 5 206 0 32 5 206 0 33 5 206 0 34 5 206 0 35 5 206 0 37 5 206 0 38 5 206 0 39 5 206 0 40 5 206 0 42 6 245 0 43 5 206 0 44 5 206 0 45 5 206 0 46 5 206 0 47 5 206 0 125 5 206 0 126 5 206 0 127 5 206 0 128 19 105 0 168 13 149 1 26] 
#[0 5 214 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 5 218 0 2 5 218 0 3 5 218 0 4 5 218 0 5 5 218 0 6 5 218 0 7 5 218 0 8 5 218 0 9 5 218 0 10 5 218 0 11 5 218 0 12 5 218 0 14 5 218 0 15 5 218 0 16 5 218 0 18 5 218 0 20 5 218 0 22 5 218 0 23 5 218 0 24 5 218 0 25 5 218 0 26 5 218 0 28 5 218 0 29 5 218 0 30 5 218 0 31 5 218 0 32 5 218 0 33 5 218 0 34 5 218 0 35 2 7 0 36 5 218 0 37 5 218 0 38 5 218 0 39 5 218 0 40 5 218 0 42 5 218 0 43 5 218 0 44 5 218 0 45 5 218 0 46 5 218 0 47 0 45 0 50 5 218 0 125 5 218 0 126 5 218 0 127 5 218 0 128 19 109 0 244 1 113 0 245 1 117 0 246] 
#[0 19 113 0 37] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 19 117 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 5 222 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 19 121 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 8 1 0 19 0 37 0 36 5 226 0 43 0 45 0 50 15 221 0 89 15 225 0 110 19 125 0 244 1 113 0 245 1 117 0 246 19 129 1 5 19 133 1 73 15 245 1 74 15 249 1 76] 
#[1 8 1 0 19 0 37 0 36 5 226 0 43 0 45 0 50 3 169 0 245 1 117 0 246 19 137 1 5] 
#[0 5 226 0 43] 
#[1 8 1 0 19 0 37 0 36 5 226 0 43 0 45 0 50 19 141 0 244 1 113 0 245 1 117 0 246 19 145 1 5] 
#[0 5 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 19 149 0 27 0 158 0 28 0 158 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 40 0 158 0 42 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128] 
#[0 19 153 0 48] 
#[1 2 9 0 129 19 157 0 218 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 5 234 0 9 0 15 0 23 0 26 0 28 0 33 0 37 0 47] 
#[1 2 11 0 8 2 15 0 15 2 15 0 23 1 66 0 27 11 133 0 31 2 15 0 37 6 245 0 43 13 89 1 22 3 229 1 23 3 233 1 26] 
#[1 5 238 0 8 5 238 0 9 5 238 0 15 5 238 0 23 5 238 0 26 5 238 0 28 5 238 0 31 5 238 0 33 2 19 0 36 5 238 0 43 0 45 0 50 5 238 0 77 5 238 0 92 5 238 0 112 5 238 0 124 3 169 0 245 1 117 0 246] 
#[1 5 238 0 8 5 238 0 9 5 238 0 15 5 238 0 23 5 238 0 26 5 238 0 28 5 238 0 31 5 238 0 33 2 19 0 36 5 238 0 43 0 45 0 50 5 238 0 77 5 238 0 92 5 238 0 112 5 238 0 124 3 169 0 245 1 117 0 246] 
#[1 5 238 0 8 5 238 0 9 5 238 0 15 5 238 0 23 5 238 0 26 5 238 0 28 5 238 0 31 5 238 0 33 2 19 0 36 5 238 0 43 0 45 0 50 5 238 0 77 5 238 0 92 5 238 0 112 5 238 0 124 19 161 0 244 1 113 0 245 1 117 0 246] 
#[1 5 242 0 8 5 242 0 9 5 242 0 15 5 242 0 23 5 242 0 26 5 242 0 28 5 242 0 31 5 242 0 33 2 23 0 36 5 242 0 43 0 45 0 50 5 242 0 77 5 242 0 92 5 242 0 112 5 242 0 124 3 169 0 245 1 117 0 246] 
#[1 5 242 0 8 5 242 0 9 5 242 0 15 5 242 0 23 5 242 0 26 5 242 0 28 5 242 0 31 5 242 0 33 2 23 0 36 5 242 0 43 0 45 0 50 5 242 0 77 5 242 0 92 5 242 0 112 5 242 0 124 19 165 0 244 1 113 0 245 1 117 0 246] 
#[0 5 246 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[1 5 250 0 15 19 169 0 23 19 173 0 31 5 250 0 33 19 177 0 129] 
#[0 5 254 0 9 0 15 0 23 0 33] 
#[0 5 254 0 9 0 15 0 23 0 33] 
#[1 19 181 0 9 10 129 0 15] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 19 185 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 19 189 0 9 10 129 0 15] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 19 193 0 9 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 19 197 0 187 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 6 2 0 9 10 129 0 15] 
#[0 19 201 0 9] 
#[0 6 2 0 9] 
#[1 3 189 0 8 0 134 0 15 6 6 0 26 0 134 0 28 11 133 0 31 6 245 0 43 3 225 1 22 3 229 1 23 3 233 1 26] 
#[1 6 10 0 1 6 10 0 5 6 10 0 6 6 10 0 8 6 10 0 10 6 10 0 12 6 10 0 13 6 10 0 16 6 10 0 17 6 10 0 23 6 10 0 27 6 10 0 28 6 10 0 36 6 10 0 41 6 10 0 43 6 10 0 44 6 10 0 47 6 10 0 48 6 10 0 50 6 10 0 51 6 10 0 52 6 10 0 53 6 10 0 54 6 10 0 55 6 10 0 56 6 10 0 58 6 10 0 59 6 10 0 60 6 10 0 61 6 10 0 62 6 10 0 63 6 10 0 64 6 10 0 65 6 10 0 66 6 10 0 67 6 10 0 68 6 10 0 69 6 10 0 70 6 10 0 71 2 27 0 72 6 10 0 73 6 10 0 74 6 10 0 75 6 10 0 76 6 10 0 78 6 10 0 79 6 10 0 80 6 10 0 81 6 10 0 82 6 10 0 83 6 10 0 84 6 10 0 85 6 10 0 86 6 10 0 87 6 10 0 88 6 10 0 89 6 10 0 90 6 10 0 91 6 10 0 96 6 10 0 97 6 10 0 98 6 10 0 99 6 10 0 100 6 10 0 101 6 10 0 102 6 10 0 103 6 10 0 104 6 10 0 105 6 10 0 106 6 10 0 108 6 10 0 109 6 10 0 110 6 10 0 111 6 10 0 112 6 10 0 113 6 10 0 114 6 10 0 115 6 10 0 116 6 10 0 117 6 10 0 118 6 10 0 119 6 10 0 120 6 10 0 121 6 10 0 122 6 10 0 123 6 10 0 129 6 10 0 130 6 10 0 132 6 10 0 133 6 10 0 134 6 10 0 135 6 10 0 136 6 10 0 137 6 10 0 138] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 19 209 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 6 14 0 9 0 28] 
#[1 19 213 0 31 6 245 0 43 19 217 1 26] 
#[0 6 10 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 6 18 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 6 22 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 6 26 0 9] 
#[0 6 26 0 9] 
#[1 0 9 0 5 0 13 0 6 10 249 0 8 6 26 0 9 0 21 0 10 10 253 0 23 0 29 0 27 10 9 0 36 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 0 213 0 144 0 217 0 145 0 221 0 146 1 221 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 19 221 1 1 1 133 1 2 1 137 1 3 10 13 1 4 11 9 1 6 1 149 1 10 19 225 1 12 10 25 1 13 10 29 1 14 10 33 1 15 10 37 1 16 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 7 205 0 43 19 229 0 192] 
#[0 19 233 0 9] 
#[0 6 30 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 92 0 112 0 124] 
#[1 6 34 0 9 6 34 0 15 19 237 0 23] 
#[1 19 241 0 9 19 245 0 15] 
#[1 6 38 0 8 6 38 0 9 6 38 0 15 6 38 0 19 6 38 0 23 6 38 0 26 6 38 0 28 6 38 0 31 6 38 0 33 2 31 0 36 6 38 0 43 0 45 0 50 6 38 0 77 6 38 0 92 6 38 0 112 6 38 0 124 3 169 0 245 1 117 0 246] 
#[1 6 38 0 8 6 38 0 9 6 38 0 15 6 38 0 19 6 38 0 23 6 38 0 26 6 38 0 28 6 38 0 31 6 38 0 33 2 31 0 36 6 38 0 43 0 45 0 50 6 38 0 77 6 38 0 92 6 38 0 112 6 38 0 124 19 249 0 244 1 113 0 245 1 117 0 246] 
#[1 6 38 0 8 6 38 0 9 6 38 0 15 6 38 0 19 6 38 0 23 6 38 0 26 6 38 0 28 6 38 0 31 6 38 0 33 2 31 0 36 6 38 0 43 0 45 0 50 6 38 0 77 6 38 0 92 6 38 0 112 6 38 0 124 3 169 0 245 1 117 0 246] 
#[1 6 38 0 8 6 38 0 9 6 38 0 15 6 38 0 19 6 38 0 23 6 38 0 26 6 38 0 28 6 38 0 31 6 38 0 33 2 31 0 36 6 38 0 43 0 45 0 50 6 38 0 77 6 38 0 92 6 38 0 112 6 38 0 124 3 169 0 245 1 117 0 246] 
#[1 3 202 0 5 3 202 0 6 3 202 0 8 3 202 0 9 3 202 0 10 3 202 0 15 3 202 0 23 3 202 0 26 1 183 0 27 3 202 0 28 0 66 0 29 3 202 0 31 3 202 0 33 3 202 0 36 3 202 0 43 3 202 0 50 3 202 0 53 3 202 0 54 3 202 0 58 3 202 0 59 3 202 0 60 3 202 0 61 3 202 0 62 3 202 0 66 3 202 0 70 3 202 0 73 3 202 0 77 3 202 0 78 3 202 0 84 3 202 0 85 3 202 0 92 3 202 0 99 3 202 0 100 3 202 0 105 3 202 0 112 3 202 0 115 3 202 0 116 3 202 0 117 3 202 0 120 3 202 0 121 3 202 0 122 3 202 0 124 3 202 0 129] 
#[0 6 42 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 6 42 0 2 6 42 0 3 6 42 0 4 6 42 0 5 6 42 0 6 6 42 0 7 13 141 0 8 6 42 0 9 6 42 0 10 6 42 0 11 6 42 0 12 6 42 0 14 6 42 0 15 6 42 0 16 6 42 0 18 6 42 0 20 6 42 0 22 6 42 0 23 6 42 0 24 6 42 0 25 6 42 0 26 6 42 0 28 6 42 0 29 6 42 0 30 6 42 0 31 6 42 0 32 6 42 0 33 6 42 0 34 6 42 0 35 6 42 0 37 6 42 0 38 6 42 0 39 6 42 0 40 6 42 0 42 6 245 0 43 6 42 0 44 6 42 0 45 6 42 0 46 6 42 0 47 6 42 0 125 6 42 0 126 6 42 0 127 6 42 0 128 19 253 0 168 13 149 1 26] 
#[1 20 1 0 9 10 129 0 15] 
#[1 20 5 0 9 10 129 0 15] 
#[0 6 42 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 6 46 0 2 6 46 0 3 6 46 0 4 6 46 0 5 6 46 0 6 6 46 0 7 6 46 0 8 6 46 0 9 6 46 0 10 6 46 0 11 6 46 0 12 6 46 0 14 6 46 0 15 6 46 0 16 6 46 0 18 6 46 0 20 6 46 0 22 6 46 0 23 6 46 0 24 6 46 0 25 6 46 0 26 6 46 0 28 6 46 0 29 6 46 0 30 6 46 0 31 6 46 0 32 6 46 0 33 6 46 0 34 6 46 0 35 2 35 0 36 6 46 0 37 6 46 0 38 6 46 0 39 6 46 0 40 6 46 0 42 6 46 0 43 6 46 0 44 6 46 0 45 6 46 0 46 6 46 0 47 0 45 0 50 6 46 0 125 6 46 0 126 6 46 0 127 6 46 0 128 3 169 0 245 1 117 0 246] 
#[1 6 46 0 2 6 46 0 3 6 46 0 4 6 46 0 5 6 46 0 6 6 46 0 7 6 46 0 8 6 46 0 9 6 46 0 10 6 46 0 11 6 46 0 12 6 46 0 14 6 46 0 15 6 46 0 16 6 46 0 18 6 46 0 20 6 46 0 22 6 46 0 23 6 46 0 24 6 46 0 25 6 46 0 26 6 46 0 28 6 46 0 29 6 46 0 30 6 46 0 31 6 46 0 32 6 46 0 33 6 46 0 34 6 46 0 35 2 35 0 36 6 46 0 37 6 46 0 38 6 46 0 39 6 46 0 40 6 46 0 42 6 46 0 43 6 46 0 44 6 46 0 45 6 46 0 46 6 46 0 47 0 45 0 50 6 46 0 125 6 46 0 126 6 46 0 127 6 46 0 128 20 9 0 244 1 113 0 245 1 117 0 246] 
#[1 20 13 0 9 10 129 0 15] 
#[1 20 17 0 9 10 129 0 15] 
#[1 8 1 0 19 0 37 0 36 6 50 0 43 0 45 0 50 3 169 0 245 1 117 0 246 20 21 1 5] 
#[0 6 50 0 43] 
#[1 8 1 0 19 0 37 0 36 6 50 0 43 0 45 0 50 20 25 0 244 1 113 0 245 1 117 0 246 20 29 1 5] 
#[0 6 50 0 43] 
#[1 8 1 0 19 0 37 0 36 6 50 0 43 0 45 0 50 3 169 0 245 1 117 0 246 20 33 1 5] 
#[0 6 50 0 43] 
#[1 2 39 0 48 3 78 0 91 3 78 0 107 3 78 0 129] 
#[1 2 9 0 129 20 41 0 218 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 6 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 6 58 0 8 6 58 0 9 6 58 0 15 6 58 0 23 6 58 0 26 6 58 0 28 6 58 0 31 6 58 0 33 2 43 0 36 6 58 0 43 0 45 0 50 6 58 0 77 6 58 0 92 6 58 0 112 6 58 0 124 3 169 0 245 1 117 0 246] 
#[1 6 62 0 8 6 62 0 9 6 62 0 15 6 62 0 23 6 62 0 26 6 62 0 28 6 62 0 31 6 62 0 33 2 47 0 36 6 62 0 43 0 45 0 50 6 62 0 77 6 62 0 92 6 62 0 112 6 62 0 124 3 169 0 245 1 117 0 246] 
#[1 6 66 0 15 6 66 0 33 20 45 0 129] 
#[1 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 20 49 0 144 0 217 0 145 0 221 0 146 2 1 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[1 6 66 0 15 20 53 0 31 6 66 0 33] 
#[0 20 57 0 28] 
#[0 6 70 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 20 61 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 20 65 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 20 69 0 9 10 129 0 15] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 20 73 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 20 77 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 6 74 0 9 0 28] 
#[1 4 117 0 1 4 121 0 5 4 125 0 8 4 129 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 4 149 0 27 4 153 0 36 4 157 0 41 6 245 0 43 4 161 0 44 4 165 0 48 4 169 0 51 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 4 173 0 64 0 85 0 66 4 177 0 68 0 89 0 70 4 181 0 71 4 185 0 76 0 105 0 78 0 117 0 84 0 121 0 85 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 4 201 0 97 0 141 0 99 0 145 0 100 4 205 0 101 4 209 0 104 4 213 0 108 5 145 0 110 4 217 0 111 4 221 0 114 0 173 0 115 0 181 0 117 0 193 0 120 0 201 0 122 0 205 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 5 5 0 144 0 217 0 145 0 221 0 146 5 9 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 6 253 0 185 5 165 0 217 1 29 0 218 1 33 0 219 1 57 0 229 1 61 0 230 1 85 0 237 20 81 1 24 7 9 1 26 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 169 1 64 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 6 74 0 9 0 28] 
#[0 6 78 0 9] 
#[0 6 78 0 9] 
#[0 6 82 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 82] 
#[0 6 86 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 92 0 112 0 124] 
#[0 6 90 0 9 0 15] 
#[0 6 94 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 33 0 36 0 43 0 50 0 77 0 92 0 112 0 124] 
#[1 0 29 0 27 0 53 0 53 0 57 0 54 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 85 0 66 0 89 0 70 0 93 0 73 0 105 0 78 0 117 0 84 0 121 0 85 0 141 0 99 0 145 0 100 0 157 0 105 0 173 0 115 0 177 0 116 0 181 0 117 0 193 0 120 0 197 0 121 0 201 0 122 2 249 0 129 3 5 0 147 3 9 0 213 1 21 0 214 5 105 0 215 1 25 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 3 17 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 145 1 8 20 85 1 11 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 2 21 1 59 1 197 1 61 1 201 1 64] 
#[1 6 98 0 8 6 98 0 9 6 98 0 15 6 98 0 19 6 98 0 23 6 98 0 26 6 98 0 28 6 98 0 31 6 98 0 33 2 51 0 36 6 98 0 43 0 45 0 50 6 98 0 77 6 98 0 92 6 98 0 112 6 98 0 124 3 169 0 245 1 117 0 246] 
#[0 6 102 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 6 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 6 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[1 6 110 0 2 6 110 0 3 6 110 0 4 6 110 0 5 6 110 0 6 6 110 0 7 6 110 0 8 6 110 0 9 6 110 0 10 6 110 0 11 6 110 0 12 6 110 0 14 6 110 0 15 6 110 0 16 6 110 0 18 6 110 0 20 6 110 0 22 6 110 0 23 6 110 0 24 6 110 0 25 6 110 0 26 6 110 0 28 6 110 0 29 6 110 0 30 6 110 0 31 6 110 0 32 6 110 0 33 6 110 0 34 6 110 0 35 2 55 0 36 6 110 0 37 6 110 0 38 6 110 0 39 6 110 0 40 6 110 0 42 6 110 0 43 6 110 0 44 6 110 0 45 6 110 0 46 6 110 0 47 0 45 0 50 6 110 0 125 6 110 0 126 6 110 0 127 6 110 0 128 3 169 0 245 1 117 0 246] 
#[0 6 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 6 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 6 114 0 43] 
#[1 8 1 0 19 0 37 0 36 6 114 0 43 0 45 0 50 3 169 0 245 1 117 0 246 20 89 1 5] 
#[0 6 114 0 43] 
#[0 6 114 0 43] 
#[1 2 9 0 129 20 93 0 218 1 157 1 27 2 21 1 59 1 197 1 61] 
#[0 6 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 6 122 0 15 0 33] 
#[0 6 122 0 15 0 33] 
#[1 0 29 0 27 0 41 0 48 0 85 0 66 0 133 0 91 0 205 0 129 20 97 0 144 0 217 0 145 0 221 0 146 2 1 0 147 1 225 0 218 1 229 0 219 1 57 0 229 1 61 0 230 1 85 0 237 1 157 1 27 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61] 
#[0 6 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 6 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 6 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 4 117 0 1 7 57 0 5 0 13 0 6 7 61 0 8 7 65 0 10 4 133 0 12 4 137 0 13 4 141 0 16 4 145 0 17 0 25 0 23 4 149 0 27 7 69 0 28 7 73 0 36 4 157 0 41 7 205 0 43 4 161 0 44 4 165 0 48 0 45 0 50 4 169 0 51 0 49 0 52 0 53 0 53 0 57 0 54 7 81 0 55 7 85 0 56 0 61 0 58 0 65 0 59 0 69 0 60 0 73 0 61 0 77 0 62 0 81 0 63 4 173 0 64 7 89 0 65 0 85 0 66 7 93 0 67 4 177 0 68 7 97 0 69 0 89 0 70 4 181 0 71 0 93 0 73 0 97 0 74 3 93 0 75 4 185 0 76 0 105 0 78 7 101 0 79 0 109 0 80 7 105 0 81 7 109 0 82 3 97 0 83 0 117 0 84 0 121 0 85 0 125 0 86 7 113 0 87 4 189 0 88 4 193 0 89 4 197 0 90 0 133 0 91 0 137 0 96 4 201 0 97 7 117 0 98 0 141 0 99 0 145 0 100 4 205 0 101 0 149 0 102 0 153 0 103 4 209 0 104 0 157 0 105 7 121 0 106 4 213 0 108 0 165 0 109 5 145 0 110 4 217 0 111 7 125 0 112 0 169 0 113 4 221 0 114 0 173 0 115 0 177 0 116 0 181 0 117 0 185 0 118 0 189 0 119 0 193 0 120 0 197 0 121 0 201 0 122 7 129 0 123 7 133 0 129 4 225 0 130 4 229 0 132 4 233 0 133 4 237 0 134 4 241 0 135 4 245 0 136 4 249 0 137 4 253 0 138 5 1 0 143 7 137 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 13 0 148 5 17 0 149 5 21 0 157 5 25 0 158 5 29 0 161 5 33 0 162 5 37 0 163 5 41 0 169 5 45 0 170 5 49 0 171 5 53 0 172 5 57 0 173 5 61 0 174 5 65 0 175 5 69 0 177 5 73 0 178 5 77 0 179 5 81 0 180 5 85 0 181 5 89 0 182 5 149 0 183 5 153 0 184 5 157 0 185 7 145 0 187 20 101 0 189 7 153 0 190 7 157 0 191 7 161 0 192 7 169 0 194 7 173 0 196 7 177 0 200 7 181 0 201 7 185 0 204 0 241 0 205 0 245 0 206 0 249 0 207 1 1 0 209 7 189 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 5 109 0 217 1 29 0 218 1 33 0 219 1 37 0 220 1 41 0 221 1 45 0 222 1 49 0 223 1 53 0 224 1 57 0 229 1 61 0 230 1 85 0 237 1 89 0 238 1 93 0 240 1 97 0 241 1 101 0 242 7 193 0 244 1 113 0 245 1 117 0 246 1 121 0 255 1 125 1 0 6 241 1 1 1 133 1 2 1 137 1 3 1 141 1 6 1 145 1 8 1 149 1 10 1 157 1 27 1 161 1 28 1 165 1 29 1 169 1 32 1 173 1 46 1 177 1 53 1 181 1 54 1 189 1 59 1 193 1 60 1 197 1 61 5 117 1 64 7 201 1 67 5 173 1 72 5 121 1 78 5 125 1 79 5 129 1 80 5 133 1 81] 
#[0 6 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 6 130 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 6 134 0 9 0 28] 
#[1 6 138 0 9 6 138 0 15 20 105 0 23] 
#[0 6 142 0 43] 
#[0 6 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 42 0 44 0 45 0 46 0 47 0 125 0 126 0 127 0 128] 
#[0 6 150 0 15 0 33] 
#[0 6 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 36 0 41 0 43 0 44 0 47 0 48 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 6 158 0 9 0 15]
	).
]
