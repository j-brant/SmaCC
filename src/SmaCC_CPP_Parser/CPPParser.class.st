Class {
	#name : #CPPParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_CPP_Parser-C++ Parser'
}

{ #category : #generated }
CPPParser class >> ambiguousTransitions [
^#(
#[ 0 10 0 37] 
#[ 0 10 0 45] 
#[ 0 29 0 42] 
#[ 0 42 0 85] 
#[ 0 42 2 33] 
#[ 0 62 0 66] 
#[ 0 62 0 70] 
#[ 0 29 0 98] 
#[ 0 37 0 98] 
#[ 0 45 0 98] 
#[ 0 85 0 98] 
#[ 0 98 1 253] 
#[ 0 114 3 105] 
#[ 0 118 3 109] 
#[ 0 154 3 233] 
#[ 0 37 0 158] 
#[ 0 170 4 33] 
#[ 0 170 4 37] 
#[ 0 174 0 178] 
#[ 0 37 0 182] 
#[ 0 45 0 182] 
#[ 0 66 0 70] 
#[ 0 66 0 214] 
#[ 0 70 0 214] 
#[ 0 222 5 209] 
#[ 0 226 5 225] 
#[ 0 226 5 229] 
#[ 0 29 0 234] 
#[ 0 37 0 234] 
#[ 0 45 0 234] 
#[ 0 85 0 234] 
#[ 0 234 1 253] 
#[ 0 9 0 238] 
#[ 0 13 0 238] 
#[ 0 21 0 238] 
#[ 0 14 0 41] 
#[ 0 14 0 133] 
#[ 0 14 6 77] 
#[ 0 37 0 254] 
#[ 0 45 0 254] 
#[ 0 66 6 137] 
#[ 0 178 6 141] 
#[ 0 37 1 14] 
#[ 0 45 1 14] 
#[ 0 37 1 90] 
#[ 0 66 1 94] 
#[ 0 70 1 94] 
#[ 0 178 1 114] 
#[ 0 85 1 150] 
#[ 1 150 1 253] 
#[ 1 222 9 197] 
#[ 1 254 9 253] 
#[ 0 110 10 33] 
#[ 0 110 10 49] 
#[ 2 30 6 137] 
#[ 0 70 2 30] 
#[ 0 222 10 149] 
#[ 0 37 2 58] 
#[ 0 45 2 58] 
#[ 0 9 2 62] 
#[ 0 13 2 62] 
#[ 0 21 2 62] 
#[ 0 30 10 221] 
#[ 2 78 10 249] 
#[ 2 90 6 137] 
#[ 0 70 2 90] 
#[ 2 94 6 141] 
#[ 0 37 2 102] 
#[ 0 45 2 102] 
#[ 0 174 2 114] 
#[ 2 114 11 65] 
#[ 0 66 2 190] 
#[ 0 10 1 150] 
#[ 0 37 1 150] 
#[ 0 18 2 218] 
#[ 2 222 2 226] 
#[ 0 74 1 190] 
#[ 2 26 2 178] 
#[ 0 37 3 14] 
#[ 0 62 0 66 12 109] 
#[ 0 37 0 62 0 66] 
#[ 0 45 0 62 0 66] 
#[ 0 66 3 66] 
#[ 3 66 6 137] 
#[ 0 70 3 66] 
#[ 0 178 3 74] 
#[ 3 74 6 141] 
#[ 0 66 3 78] 
#[ 0 70 3 78] 
#[ 1 190 3 106] 
#[ 3 126 13 21] 
#[ 3 126 13 25] 
#[ 3 126 13 29] 
#[ 0 9 3 174] 
#[ 0 13 3 174] 
#[ 0 21 3 174] 
#[ 3 206 9 249] 
#[ 3 206 9 253] 
#[ 3 218 3 233] 
#[ 3 222 3 233] 
#[ 3 206 10 249] 
#[ 4 38 10 249] 
#[ 4 42 11 65] 
#[ 0 37 4 170] 
#[ 0 37 4 178] 
#[ 0 37 4 182] 
#[ 0 29 4 186] 
#[ 0 37 4 186] 
#[ 0 85 4 186] 
#[ 1 253 4 186] 
#[ 4 190 9 249] 
#[ 4 190 9 253] 
#[ 0 134 1 42] 
#[ 4 246 11 65] 
#[ 0 66 4 250] 
#[ 4 250 6 137] 
#[ 0 70 4 250] 
#[ 3 142 4 105] 
#[ 0 9 5 86] 
#[ 0 13 5 86] 
#[ 0 21 5 86] 
#[ 5 122 9 197] 
#[ 0 37 5 150] 
#[ 6 82 17 233] 
#[ 0 37 6 86] 
#[ 0 37 6 90] 
#[ 0 37 6 94] 
#[ 0 37 6 98] 
#[ 0 37 6 114] 
#[ 0 37 6 118] 
#[ 4 194 6 134] 
#[ 0 202 7 18] 
#[ 0 162 0 202] 
#[ 1 22 18 161] 
#[ 0 198 9 5] 
#[ 0 37 7 38] 
#[ 0 37 7 42] 
#[ 0 37 7 46] 
#[ 0 37 7 54] 
#[ 0 37 7 118] 
#[ 0 37 7 122] 
#[ 0 37 7 126] 
#[ 0 37 7 130] 
#[ 0 37 7 134] 
#[ 0 37 7 138] 
#[ 0 37 7 198] 
#[ 1 130 3 169] 
#[ 1 130 3 146] 
#[ 0 37 7 230] 
#[ 0 37 7 234] 
#[ 0 37 7 238] 
#[ 0 37 7 242] 
#[ 0 37 7 246] 
#[ 8 14 19 181] 
#[ 0 37 8 46] 
#[ 0 37 8 50] 
#[ 0 37 8 54] 
#[ 0 37 8 58] 
#[ 0 37 8 74] 
#[ 0 37 8 78] 
#[ 4 62 20 13] 
#[ 0 37 8 110] 
#[ 0 37 8 114] 
#[ 0 37 8 158] 
#[ 0 37 8 170]
	).
]

{ #category : #'generated-accessing' }
CPPParser class >> cacheId [
	^'2019-04-11T15:52:56.678387-05:00'
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
%root Program;
%suffix Node;

%hierarchy Capture (InitializedCapture);
%hierarchy Expression (
      AlignofExpression
      AssignmentExpression
      BinaryExpression
      BracedInitializerExpression
      CallExpression
      CastExpression
      CommaExpression
      ConditionalExpression
      ConversionExpression
      DeleteExpression
      IdentifierExpression
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
%hierarchy Literal (
      BooleanLiteral
      CharacterLiteral
      NumericLiteral
      PointerLiteral
      StringLiteral
      UserDefinedLiteral
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
%hierarchy Type (
      AutoType
      ClassType
      PrimitiveType
      TemplateType
   );

%id <gt> <RightShift>;


translationunit
   : declarationseq? {{TranslationUnit}} 
   ;
/*Expressions*/


primaryexpression
   : literal
   | <This> 'thisToken' {{ThisExpression}}
   | ""("" 'leftParen' expression "")"" 'rightParen' {{Expression}}
   | idexpression
   | lambdaexpression
   ;

idexpression
   : unqualifiedid 'identifier' {{IdentifierExpression}}
   | qualifiedid 'identifier' {{IdentifierExpression}}
   ;

unqualifiedid
   : <Identifier> 'name' {{Identifier}}
   | operatorfunctionid
   | conversionfunctionid
   | literaloperatorid
   | ""~"" 'tilde' classname 'name' {{DestructorIdentifier}}
   | ""~"" 'tilde' decltypespecifier 'name' {{DestructorIdentifier}}
   | templateid
   ;

qualifiedid
   : nestednamespecifier 'nameSpecifier' <Template> 'templateToken'? unqualifiedid 'templateIdentifier' {{QualifiedIdentifier}}
   ;

nestednamespecifier
   : ""::"" 'colonColon' {{NestedNameSpecifier}}
   | thetypename 'type' ""::"" 'colonColon' {{NestedNameSpecifier}}
#   | namespacename 'type' ""::"" 'colonColon' {{NestedNameSpecifier}} # handled by previous rule
   | decltypespecifier 'type' ""::"" 'colonColon' {{NestedNameSpecifier}}
   | nestednamespecifier 'nameSpecifier' <Identifier> 'name' ""::"" 'colonColon' {{NestedNameSpecifier}}
   | nestednamespecifier 'nameSpecifier' <Template> 'templateToken'? simpletemplateid 'templateIdentifier' ""::"" 'colonColon' {{NestedNameSpecifier}}
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
   : ""&"" 'default'
   | ""="" 'default'
   ;

capturelist
   : capture 'capture' ""..."" 'ellipsis'?
   | capturelist "","" 'comma' capture 'capture' ""..."" 'ellipsis'?
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
   : <Identifier> 'name' initializer 'initializer' {{InitializedCapture}}
   | ""&"" 'ampToken' <Identifier> 'name' initializer 'initializer' {{InitializedCapture}}
   ;

lambdadeclarator
   : ""("" 'leftParen' parameterdeclarationclause "")"" 'rightParen' <Mutable> 'mutableToken'? exceptionspecification 'exceptionSpecification'? attributespecifierseq? trailingreturntype?
   ;

postfixexpression
   : primaryexpression
   | postfixexpression 'expression' ""["" 'leftBracket' expression 'subscript' ""]"" 'rightBracket' {{SubscriptExpression}}
   | postfixexpression 'expression' ""["" 'leftBracket' bracedinitlist 'subscript' ""]"" 'rightBracket' {{SubscriptExpression}}
   | postfixexpression 'expression' ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{CallExpression}}
   | simpletypespecifier 'expression' ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{CallExpression}}
   | typenamespecifier 'expression' ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{CallExpression}}
   | simpletypespecifier 'typeSpecifier' bracedinitlist 'initializerList' {{BracedInitializerExpression}}
   | typenamespecifier 'typeSpecifier' bracedinitlist 'initializerList' {{BracedInitializerExpression}}
   | postfixexpression 'expression' ""."" 'operator' <Template> 'templateToken'? idexpression 'id' {{MemberExpression}}
   | postfixexpression 'expression' ""->"" 'operator' <Template> 'templateToken'? idexpression 'id' {{MemberExpression}}
   | postfixexpression 'expression' ""."" 'operator' pseudodestructorname 'id' {{MemberExpression}}
   | postfixexpression 'expression' ""->"" 'operator' pseudodestructorname 'id' {{MemberExpression}}
   | postfixexpression 'expression' ""++"" 'operator' {{PostfixExpression}}
   | postfixexpression 'expression' ""--"" 'operator' {{PostfixExpression}}
   | <Dynamic_cast> 'castToken' ""<"" 'ltToken' thetypeid 'type' <gt> 'gtToken' ""("" 'leftParen' expression 'value' "")"" 'rightParen' {{ConversionExpression}}
   | <Static_cast> 'castToken' ""<"" 'ltToken' thetypeid 'type' <gt> 'gtToken' ""("" 'leftParen' expression 'value' "")"" 'rightParen' {{ConversionExpression}}
   | <Reinterpret_cast> 'castToken' ""<"" 'ltToken' thetypeid 'type' <gt> 'gtToken' ""("" 'leftParen' expression 'value' "")"" 'rightParen' {{ConversionExpression}}
   | <Const_cast> 'castToken' ""<"" 'ltToken' thetypeid 'type' <gt> 'gtToken' ""("" 'leftParen' expression 'value' "")"" 'rightParen' {{ConversionExpression}}
   | typeidofthetypeid ""("" 'leftParen' expression 'value' "")"" 'rightParen' {{TypeidExpression}}
   | typeidofthetypeid ""("" 'leftParen' thetypeid 'value' "")"" 'rightParen' {{TypeidExpression}}
   ;

typeidofthetypeid
   : <Typeid_> 'typeidToken'
   ;

expressionlist
   : initializerlist
   ;

pseudodestructorname
   : nestednamespecifier 'nameSpecifier'? thetypename 'typeName' ""::"" 'colonColon' ""~"" 'tilde' thetypename 'name' {{PseudoDestructorName}}
   | nestednamespecifier 'nameSpecifier' <Template> 'templateToken' simpletemplateid 'templateIdentifier' ""::"" 'colonColon' ""~"" 'tilde' thetypename 'name' {{PseudoDestructorName}}
   | nestednamespecifier 'nameSpecifier'? ""~"" 'tilde' thetypename 'name' {{PseudoDestructorName}}
   | ""~"" 'tilde' decltypespecifier 'decltypeSpecifier' {{PseudoDestructorName}}
   ;

unaryexpression
   : postfixexpression
   | ""++"" 'operator' castexpression 'expression' {{PrefixExpression}}
   | ""--"" 'operator' castexpression 'expression' {{PrefixExpression}}
   | unaryoperator 'operator' castexpression 'expression' {{PrefixExpression}}
   | <Sizeof> 'sizeofToken' unaryexpression 'expression' {{SizeofExpression}}
   | <Sizeof> 'sizeofToken' ""("" 'leftParen' thetypeid 'type' "")"" 'rightParen' {{SizeofExpression}}
   | <Sizeof> 'sizeofToken' ""..."" 'ellipsis' ""("" 'leftParen' <Identifier> 'name' "")"" 'rightParen' {{SizeofExpression}}
   | <Alignof> 'alignofToken' ""("" 'leftParen' thetypeid 'type' "")"" 'rightParen' {{AlignofExpression}}
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
   : ""::"" 'colonColon'? <New> 'newToken' newplacement? newtypeid 'type' newinitializer 'initializer'? {{NewExpression}}
   | ""::"" 'colonColon'? <New> 'newToken' newplacement? ""("" 'leftParen' thetypeid 'type' "")"" 'rightParen' newinitializer 'initializer'? {{NewExpression}}
   ;

newplacement
   : ""("" 'leftParen' expressionlist "")"" 'rightParen'
   ;

newtypeid
   : typespecifierseq newdeclarator 'declarator'? {{NewTypeIdentifier}}
   ;

newdeclarator
   : ptroperator 'ptrOperator' newdeclarator? {{NewDeclarator}}
   | noptrnewdeclarator {{NewDeclarator}}
   ;

noptrnewdeclarator
   : ""["" 'leftBracket' expression 'expression' ""]"" 'rightBracket' attributespecifierseq?
   | noptrnewdeclarator ""["" 'leftBracket' constantexpression 'expression' ""]"" 'rightBracket' attributespecifierseq?
   ;

newinitializer
   : ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{NewInitializer}}
   | bracedinitlist
   ;

deleteexpression
   : ""::"" 'colonColon'? <Delete> 'deleteToken' castexpression 'expression' {{DeleteExpression}}
   | ""::"" 'colonColon'? <Delete> 'deleteToken' ""["" 'leftBracket' ""]"" 'rightBracket' castexpression 'expression' {{DeleteExpression}}
   ;

noexceptexpression
   : <Noexcept> 'noexceptToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' {{NoexceptExpression}}
   ;

castexpression
   : unaryexpression
   | ""("" 'leftParen' thetypeid 'type' "")"" 'rightParen' castexpression 'expression' {{CastExpression}}
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
   | relationalexpression 'left' <gt> 'operator' shiftexpression 'right'  {{BinaryExpression}}
   | relationalexpression 'left' ""<="" 'operator' shiftexpression 'right'  {{BinaryExpression}}
   | relationalexpression 'left' "">="" 'operator' shiftexpression 'right'  {{BinaryExpression}}
   ;

equalityexpression
   : relationalexpression
   | equalityexpression 'left' ""=="" 'operator' relationalexpression 'right' {{BinaryExpression}}
   | equalityexpression 'left' ""!="" 'operator' relationalexpression 'right' {{BinaryExpression}}
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
   | logicalorexpression 'lhs' assignmentoperator 'operator' initializerclause 'initializer' {{AssignmentExpression}}
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
   | expression 'left' "","" 'comma' assignmentexpression 'right' {{CommaExpression}}
   ;

constantexpression
   : conditionalexpression
   ;
/*Statements*/


statement
   : attributespecifierseq? labeledstatement {{}}
   | attributespecifierseq? expressionstatement {{}}
   | attributespecifierseq? compoundstatement {{}}
   | attributespecifierseq? selectionstatement {{}}
   | attributespecifierseq? iterationstatement {{}}
   | attributespecifierseq? jumpstatement {{}}
   | declarationstatement
   | attributespecifierseq? tryblock {{}}
   ;

labeledstatement
   : <Identifier> 'label' "":"" 'colon' statement 'statement' {{LabeledStatement}}
   | <Case> 'caseToken' constantexpression 'expression' "":"" 'colon' statement 'statement' {{CaseLabeledStatement}}
   | <Default> 'defaultToken' "":"" 'colon' statement 'statement' {{DefaultLabeledStatement}}
   ;

expressionstatement
   : expression 'expression' ? "";"" 'semicolon' {{ExpressionStatement}}
   ;

compoundstatement
   : ""{"" 'leftBrace' statementseq? ""}"" 'rightBrace' {{CompoundStatement}}
   ;

statementseq
   : statement 'statement'
   | statementseq statement 'statement'
   ;

selectionstatement
   : <If> 'ifToken' ""("" 'leftParen' condition 'condition' "")"" 'rightParen' statement 'thenStatement' {{IfStatement}}
   | <If> 'ifToken' ""("" 'leftParen' condition 'condition' "")"" 'rightParen' statement 'thenStatement' <Else> 'elseToken' statement 'elseStatement' {{IfStatement}}
   | <Switch> 'switchToken' ""("" 'leftParen' condition 'condition' "")"" 'rightParen' statement 'statement' {{SwitchStatement}}
   ;

condition
   : expression
   | attributespecifierseq? declspecifierseq declarator 'declarator' ""="" 'equal' initializerclause 'initializer' {{Condition}}
   | attributespecifierseq? declspecifierseq declarator 'declarator' bracedinitlist 'initializer' {{Condition}}
   ;

iterationstatement
   : <While> 'whileToken' ""("" 'leftParen' condition 'condition' "")"" 'rightParen' statement 'statement' {{WhileStatement}}
   | <Do> 'doToken' statement 'statement' <While> 'whileToken' ""("" 'leftParen' expression 'condition' "")"" 'rightParen' "";"" 'semicolon' {{DoWhileStatement}}
   | <For> 'forToken' ""("" 'leftParen' forinitstatement 'initializerStatement' condition 'condition' ? "";"" 'semicolon' expression 'updateExpression' ? "")"" 'rightParen' statement 'statement' {{ForStatement}}
   | <For> 'forToken' ""("" 'leftParen' forrangedeclaration 'declaration' "":"" 'colon' forrangeinitializer 'initializer' "")"" 'rightParen' statement 'statement' {{RangeForStatement}}
   ;

forinitstatement
   : expressionstatement
   | simpledeclaration
   ;

forrangedeclaration
   : attributespecifierseq? declspecifierseq declarator 'declarator' {{ForRangeDeclaration}}
   ;

forrangeinitializer
   : expression
   | bracedinitlist
   ;

jumpstatement
   : <Break> 'breakToken' "";"" 'semicolon' {{BreakStatement}}
   | <Continue> 'continueToken' "";"" 'semicolon' {{ContinueStatement}}
   | <Return> 'returnToken' expression 'value' ? "";"" 'semicolon' {{ReturnStatement}}
   | <Return> 'returnToken' bracedinitlist 'value' "";"" 'semicolon' {{ReturnStatement}}
   | <Goto> 'gotoToken' <Identifier> 'label' "";"" 'semicolon' {{GotoStatement}}
   ;

declarationstatement
   : blockdeclaration
   ;
/*Declarations*/


declarationseq
   : declaration 'declaration'
   | declarationseq declaration 'declaration'
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
   : <Using> 'usingToken' <Identifier> 'name' attributespecifierseq? ""="" 'equal' thetypeid 'type' "";"" 'semicolon' {{AliasDeclaration}}
   ;

simpledeclaration
   : declspecifierseq? initdeclaratorlist? "";"" 'semicolon' {{SimpleDeclaration}}
   | attributespecifierseq declspecifierseq? initdeclaratorlist "";"" 'semicolon' {{SimpleDeclaration}}
   ;

static_assertdeclaration
   : <Static_assert> 'static_assertToken' ""("" 'leftParen' constantexpression 'condition' "","" 'comma' <Stringliteral> 'label' "")"" 'rightParen' "";"" 'semicolon' {{StaticAssertDeclaration}}
   ;

#emptydeclaration
#   : "";"" 'semicolon'
#   ;

attributedeclaration
   : attributespecifierseq "";"" 'semicolon' {{AttributeDeclaration}}
   ;

declspecifier
   : storageclassspecifier 'name' {{DeclSpecifier}}
   | typespecifier
   | functionspecifier 'name' {{DeclSpecifier}}
   | <Friend> 'name' {{DeclSpecifier}}
   | <Typedef> 'name' {{DeclSpecifier}}
   | <Constexpr> 'name' {{DeclSpecifier}}
   ;

declspecifierseq
   : declspecifier 'specifier' attributespecifierseq?
   | declspecifier 'specifier' declspecifierseq
   ;

storageclassspecifier
   : <Register>
   | <Static>
   | <Thread_local>
   | <Extern>
   | <Mutable>
   ;

functionspecifier
   : <Inline>
   | <Virtual>
   | <Explicit>
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
   : typespecifier 'specifier' attributespecifierseq?
   | typespecifier 'specifier' typespecifierseq
   ;

trailingtypespecifierseq
   : trailingtypespecifier 'specifier' attributespecifierseq?
   | trailingtypespecifier 'specifier' trailingtypespecifierseq
   ;

simpletypespecifier
   : nestednamespecifier 'nameSpecifier'? thetypename 'name' {{ClassType}}
   | nestednamespecifier 'nameSpecifier' <Template> 'templateToken' simpletemplateid 'templateIdentifier' {{TemplateType}}
   | <Char> 'name' {{PrimitiveType}}
   | <Char16> 'name' {{PrimitiveType}}
   | <Char32> 'name' {{PrimitiveType}}
   | <Wchar> 'name' {{PrimitiveType}}
   | <Bool> 'name' {{PrimitiveType}}
   | <Short> 'name' {{PrimitiveType}}
   | <Int> 'name' {{PrimitiveType}}
   | <Long> 'name' {{PrimitiveType}}
   | <Signed> 'name' {{PrimitiveType}}
   | <Unsigned> 'name' {{PrimitiveType}}
   | <Float> 'name' {{PrimitiveType}}
   | <Double> 'name' {{PrimitiveType}}
   | <Void> 'name' {{PrimitiveType}}
   | <Auto> 'autoToken' {{AutoType}}
   | decltypespecifier
   ;

thetypename
   : classname
#   | enumname
#   | typedefname
#   | simpletemplateid
   ;

decltypespecifier
   : <Decltype> 'decltypeToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' {{DecltypeSpecifier}}
   | <Decltype> 'decltypeToken' ""("" 'leftParen' <Auto> 'autoToken' "")"" 'rightParen' {{DecltypeSpecifier}}
   ;

elaboratedtypespecifier
   : classkey attributespecifierseq? nestednamespecifier 'nameSpecifier'? <Identifier> 'name' {{ElaboratedTypeSpecifier}}
   | classkey simpletemplateid 'templateIdentifier' {{ElaboratedTypeSpecifier}}
   | classkey nestednamespecifier 'nameSpecifier' <Template> 'templateToken'? simpletemplateid 'templateIdentifier' {{ElaboratedTypeSpecifier}}
   | <Enum> 'enumToken' nestednamespecifier 'nameSpecifier'? <Identifier> 'name' {{ElaboratedTypeSpecifier}}
   ;

#enumname
#   : <Identifier>
#   ;

enumspecifier
   : enumhead ""{"" 'leftBrace' enumeratorlist? ""}"" 'rightBrace' {{EnumSpecifier}}
   | enumhead ""{"" 'leftBrace' enumeratorlist "","" 'comma' ""}"" 'rightBrace' {{EnumSpecifier}}
   ;

enumhead
   : enumkey attributespecifierseq? <Identifier> 'name'? enumbase?
   | enumkey attributespecifierseq? nestednamespecifier 'nameSpecifier' <Identifier> 'name' enumbase?
   ;

opaqueenumdeclaration
   : enumkey attributespecifierseq? <Identifier> 'name' enumbase? "";"" 'semicolon' {{OpaqueEnumDeclaration}}
   ;

enumkey
   : <Enum> 'enumToken'
   | <Enum> 'enumToken' <Class> 'classToken'
   | <Enum> 'enumToken' <Struct> 'structToken'
   ;

enumbase
   : "":"" 'colon' typespecifierseq
   ;

enumeratorlist
   : enumeratordefinition 'definition'
   | enumeratorlist "","" 'comma' enumeratordefinition 'definition'
   ;

enumeratordefinition
   : enumerator 'name' {{EnumDefinition}}
   | enumerator 'name' ""="" 'equal' constantexpression 'value' {{EnumDefinition}}
   ;

enumerator
   : <Identifier>
   ;

namespacename
   : originalnamespacename 'name' {{Identifier}}
#   | namespacealias # handled by originalnamespacename
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
   : <Inline> 'inlineToken'? <Namespace> 'namespaceToken' <Identifier> 'name' ""{"" 'leftBrace' namespacebody ""}"" 'rightBrace' {{OriginalNamespaceDefinition}}
   ;

extensionnamespacedefinition
   : <Inline> 'inlineToken'? <Namespace> 'namespaceToken' originalnamespacename 'name' ""{"" 'leftBrace' namespacebody ""}"" 'rightBrace' {{ExtensionNamespaceDefinition}}
   ;

unnamednamespacedefinition
   : <Inline> 'inlineToken'? <Namespace> 'namespaceToken' ""{"" 'leftBrace' namespacebody ""}"" 'rightBrace' {{UnnamedNamespaceDefinition}}
   ;

namespacebody
   : declarationseq?
   ;

#namespacealias   # no longer used
#   : <Identifier>
#   ;

namespacealiasdefinition
   : <Namespace> 'namespaceToken' <Identifier> 'name' ""="" 'equal' qualifiednamespacespecifier "";"" 'semicolon' {{NamespaceAliasDefinition}}
   ;

qualifiednamespacespecifier
   : nestednamespecifier 'nameSpecifier'? namespacename 'namespaceName'
   ;

usingdeclaration
   : <Using> 'usingToken' <Typename_> 'typenameToken'? nestednamespecifier 'nameSpecifier' unqualifiedid 'identifier' "";"" 'semicolon' {{UsingDeclaration}}
   | <Using> 'usingToken' ""::"" 'colonColon' unqualifiedid 'identifier' "";"" 'semicolon' {{UsingDeclaration}}
   ;

usingdirective
   : attributespecifierseq? <Using> 'usingToken' <Namespace> 'namespaceToken' nestednamespecifier 'nameSpecifier'? namespacename 'name' "";"" 'semicolon' {{UsingDirective}}
   ;

asmdefinition
   : <Asm> 'asmToken' ""("" 'leftParen' <Stringliteral> 'code' "")"" 'rightParen' "";"" 'semicolon' {{AsmDefinition}}
   ;

linkagespecification
   : <Extern> 'externToken' <Stringliteral> 'language' ""{"" 'leftBrace' declarationseq? ""}"" 'rightBrace' {{LinkageSpecification}}
   | <Extern> 'externToken' <Stringliteral> 'language' declaration 'declaration' {{LinkageSpecification}}
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
   : <Alignas> 'alignasToken' ""("" 'leftParen' thetypeid 'value' ""..."" 'ellipsis'? "")"" 'rightParen' {{AlignmentSpecifier}}
   | <Alignas> 'alignasToken' ""("" 'leftParen' constantexpression 'value' ""..."" 'ellipsis'? "")"" 'rightParen' {{AlignmentSpecifier}}
   ;

attributelist
   : attribute 'attribute'?
   | attributelist "","" 'comma' attribute 'attribute'?
   | attribute 'attribute' ""..."" 'ellipsis'
   | attributelist "","" 'comma' attribute 'attribute' ""..."" 'ellipsis'
   ;

attribute
   : attributetoken attributeargumentclause 'argumentClause'? {{Attribute}}
   ;

attributetoken
   : <Identifier> 'name'
   | attributescopedtoken
   ;

attributescopedtoken
   : attributenamespace 'namespace' ""::"" 'colonColon' <Identifier> 'name'
   ;

attributenamespace
   : <Identifier>
   ;

attributeargumentclause
   : ""("" 'left' balancedtokenseq "")"" 'right' {{AttributeArgumentClause}}
   ;

balancedtokenseq
   : balancedtoken 'balancedToken'?
   | balancedtokenseq balancedtoken 'balancedToken'
   ;

balancedtoken
   : ""("" 'left' balancedtokenseq "")"" 'right' {{AttributeArgumentClause}}
   | ""["" 'left' balancedtokenseq ""]"" 'right' {{AttributeArgumentClause}}
   | ""{"" 'left' balancedtokenseq ""}"" 'right' {{AttributeArgumentClause}}
   ;
/*Declarators*/


initdeclaratorlist
   : initdeclarator 'declarator'
   | initdeclaratorlist "","" 'comma' initdeclarator 'declarator'
   ;

initdeclarator
   : declarator 'declarator' initializer 'initializer'? {{InitDeclarator}}
   ;

declarator
   : ptrdeclarator
   | noptrdeclarator parametersandqualifiers trailingreturntype {{Declarator}}
   ;

ptrdeclarator
   : noptrdeclarator
   | ptroperator 'ptrOperator' ptrdeclarator {{Declarator}}
   ;

noptrdeclarator
   : declaratorid attributespecifierseq? {{Declarator}}
   | noptrdeclarator parametersandqualifiers {{Declarator}}
   | noptrdeclarator ""["" 'leftBracket' constantexpression 'expression'? ""]"" 'rightBracket' attributespecifierseq? {{Declarator}}
   | ""("" 'leftParen' ptrdeclarator "")"" 'rightParen' {{Declarator}}
   ;

parametersandqualifiers
   : ""("" 'leftParen' parameterdeclarationclause "")"" 'rightParen' cvqualifierseq? refqualifier 'qualifier'? exceptionspecification 'exceptionSpecification'? attributespecifierseq?
   ;

trailingreturntype
   : ""->"" 'arrow' trailingtypespecifierseq abstractdeclarator 'declarator'?
   ;

ptroperator
   : ""*"" 'operator' attributespecifierseq? cvqualifierseq? {{PointerOperator}}
   | ""&"" 'operator' attributespecifierseq? {{PointerOperator}}
   | ""&&"" 'operator' attributespecifierseq? {{PointerOperator}}
   | nestednamespecifier 'nameSpecifier' ""*"" 'operator' attributespecifierseq? cvqualifierseq? {{PointerOperator}}
   ;

cvqualifierseq
   : cvqualifier 'cvQualifier' cvqualifierseq?
   ;

cvqualifier
   : <Const> 'type' {{CVQualifier}}
   | <Volatile> 'type' {{CVQualifier}}
   ;

refqualifier
   : ""&""
   | ""&&""
   ;

declaratorid
   : ""..."" 'ellipsis'? idexpression 'id'
   ;

thetypeid
   : typespecifierseq abstractdeclarator 'declarator'? {{TypeIdentifier}}
   ;

abstractdeclarator
   : ptrabstractdeclarator
   | noptrabstractdeclarator? parametersandqualifiers trailingreturntype {{AbstractDeclarator}}
   | abstractpackdeclarator
   ;

ptrabstractdeclarator
   : noptrabstractdeclarator {{PtrAbstractDeclarator}}
   | ptroperator 'ptrOperator' ptrabstractdeclarator? {{PtrAbstractDeclarator}}
   ;

noptrabstractdeclarator
   : noptrabstractdeclarator parametersandqualifiers
   | parametersandqualifiers
   | noptrabstractdeclarator ""["" 'leftBracket' constantexpression 'expression'? ""]"" 'rightBracket' attributespecifierseq?
   | ""["" 'leftBracket' constantexpression 'expression'? ""]"" 'rightBracket' attributespecifierseq?
   | ""("" 'leftParen' ptrabstractdeclarator 'declarator' "")"" 'rightParen'
   ;

abstractpackdeclarator
   : noptrabstractpackdeclarator {{AbstractPackDeclarator}}
   | ptroperator 'ptrOperator' abstractpackdeclarator {{AbstractPackDeclarator}}
   ;

noptrabstractpackdeclarator
   : noptrabstractpackdeclarator parametersandqualifiers
   | noptrabstractpackdeclarator ""["" 'leftBracket' constantexpression 'expression'? ""]"" 'rightBracket' attributespecifierseq?
   | ""..."" 'ellipsis'
   ;

parameterdeclarationclause
   : parameterdeclarationlist? ""..."" 'ellipsis'?
   | parameterdeclarationlist "","" 'comma' ""..."" 'ellipsis'
   ;

parameterdeclarationlist
   : parameterdeclaration 'declaration'
   | parameterdeclarationlist "","" 'comma' parameterdeclaration 'declaration'
   ;

parameterdeclaration
   : attributespecifierseq? declspecifierseq declarator 'declarator' {{ParameterDeclaration}}
   | attributespecifierseq? declspecifierseq declarator 'declarator' ""="" 'equal' initializerclause 'initializer' {{ParameterDeclaration}}
   | attributespecifierseq? declspecifierseq abstractdeclarator 'declarator'? {{ParameterDeclaration}}
   | attributespecifierseq? declspecifierseq abstractdeclarator 'declarator'? ""="" 'equal' initializerclause 'initializer' {{ParameterDeclaration}}
   ;

functiondefinition
   : attributespecifierseq? declspecifierseq? declarator 'declarator' virtspecifierseq? functionbody {{FunctionDefinition}}
   ;

functionbody
   : ctorinitializer 'constructor'? compoundstatement 'body'
   | functiontryblock 'body'
   | ""="" 'equal' <Default> 'defaultToken' "";"" 'semicolon'
   | ""="" 'equal' <Delete> 'deleteToken' "";"" 'semicolon'
   ;

initializer
   : braceorequalinitializer
   | ""("" 'leftParen' expressionlist "")"" 'rightParen' {{ExpressionListInitializer}}
   ;

braceorequalinitializer
   : ""="" 'equal' initializerclause 'value' {{EqualInitializer}}
   | bracedinitlist
   ;

initializerclause
   : assignmentexpression
   | bracedinitlist
   ;

initializerlist
   : initializerclause 'value' ""..."" 'ellipsis'?
   | initializerlist "","" 'comma' initializerclause 'value' ""..."" 'ellipsis'?
   ;

bracedinitlist
   : ""{"" 'leftBrace' initializerlist "","" 'comma'? ""}"" 'rightBrace' {{BracedListInitializer}}
   | ""{"" 'leftBrace' ""}"" 'rightBrace' {{BracedListInitializer}}
   ;
/*Classes*/


classname
   : <Identifier> 'name' {{Identifier}}
   | simpletemplateid
   ;

classspecifier
   : classhead ""{"" 'leftBrace' memberspecification? ""}"" 'rightBrace' {{ClassSpecifier}}
   ;

classhead
   : classkey attributespecifierseq? classheadname classvirtspecifier? baseclause?
   | classkey attributespecifierseq? baseclause?
   ;

classheadname
   : nestednamespecifier 'nameSpecifier'? classname 'name'
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
   : memberdeclaration 'declaration' memberspecification?
   | accessspecifier "":"" 'colon' memberspecification?
   ;

memberdeclaration
   : attributespecifierseq? declspecifierseq? memberdeclaratorlist? "";"" 'semicolon' {{MemberDeclaration}}
   | functiondefinition
   | usingdeclaration
   | static_assertdeclaration
   | templatedeclaration
   | aliasdeclaration
#   | emptydeclaration  # already handled above
   ;

memberdeclaratorlist
   : memberdeclarator 'declarator'
   | memberdeclaratorlist "","" 'comma' memberdeclarator 'declarator'
   ;

memberdeclarator
   : declarator 'declarator' virtspecifierseq? purespecifier 'pureSpecifier'? {{MemberDeclarator}}
   | declarator 'declarator' braceorequalinitializer 'initializer'? {{MemberDeclarator}}
   | <Identifier> 'name'? attributespecifierseq? "":"" 'colon' constantexpression 'initializer' {{MemberDeclarator}}
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
#   : <Assign> 'equalToken' <Octalliteral> 'zero'  #value should be zero
   : ""="" 'equalToken' purespecifier_value 'value' {{EqualInitializer}}  #value should be zero
   ;
purespecifier_value
    : <Octalliteral> 'value' {{NumericLiteral}}
    ;
/*Derived classes*/


baseclause
   : "":"" 'colon' basespecifierlist
   ;

basespecifierlist
   : basespecifier 'specifier' ""..."" 'ellipsis'?
   | basespecifierlist "","" 'comma' basespecifier 'specifier' ""..."" 'ellipsis'?
   ;

basespecifier
   : attributespecifierseq? basetypespecifier 'type' {{BaseSpecifier}}
   | attributespecifierseq? <Virtual> 'virtualToken' accessspecifier? basetypespecifier 'type' {{BaseSpecifier}}
   | attributespecifierseq? accessspecifier <Virtual> 'virtualToken'? basetypespecifier 'type' {{BaseSpecifier}}
   ;

classordecltype
   : nestednamespecifier 'nameSpecifier'? classname 'name' {{ClassType}}
   | decltypespecifier
   ;

basetypespecifier
   : classordecltype
   ;

accessspecifier
   : <Private> 'accessToken'
   | <Protected> 'accessToken'
   | <Public> 'accessToken'
   ;
/*Special member functions*/


conversionfunctionid
   : <Operator> 'operatorToken' conversiontypeid {{ConversionFunctionIdentifier}}
   ;

conversiontypeid
   : typespecifierseq conversiondeclarator 'declarator'?
   ;

conversiondeclarator
   : ptroperator 'operator' conversiondeclarator 'declarator'? {{ConversionDeclarator}}
   ;

ctorinitializer
   : "":"" 'colon' meminitializerlist {{CtorInitializer}}
   ;

meminitializerlist
   : meminitializer 'initializer' ""..."" 'ellipsis'?
   | meminitializer 'initializer' ""..."" 'ellipsis'? "","" 'comma' meminitializerlist
   ;

meminitializer
   : meminitializerid 'identifier' ""("" 'leftParen' expressionlist? "")"" 'rightParen' {{MemInitializer}}
   | meminitializerid 'identifier' bracedinitlist 'initializer' {{MemInitializer}}
   ;

meminitializerid
   : classordecltype
   | <Identifier> 'name' {{Identifier}}
   ;
/*Overloading*/


operatorfunctionid
   : <Operator> 'operatorToken' theoperator {{OperatorFunctionIdentifier}}
   ;

literaloperatorid
   : <Operator> 'operatorToken' <Stringliteral> 'string' <Identifier> 'name' {{LiteralFunctionIdentifier}}
   | <Operator> 'operatorToken' <Userdefinedstringliteral> 'string' {{LiteralFunctionIdentifier}}
   ;
/*Templates*/


templatedeclaration
   : <Template> 'templateToken' ""<"" 'ltToken' templateparameterlist <gt> 'gtToken' declaration 'declaration' {{TemplateDeclaration}}
   ;

templateparameterlist
   : templateparameter 'parameter'
   | templateparameterlist "","" 'comma' templateparameter 'parameter'
   ;

templateparameter
   : typeparameter
   | parameterdeclaration
   ;

typeparameter
   : <Class> 'classToken' ""..."" 'ellipsis'? <Identifier> 'name'? {{ClassTypeParameter}}
   | <Class> 'classToken' <Identifier> 'name'? ""="" 'equal' thetypeid 'type' {{ClassTypeParameter}}
   | <Typename_> 'typenameToken' ""..."" 'ellipsis'? <Identifier> 'name'? {{TypenameTypeParameter}}
   | <Typename_> 'typenameToken' <Identifier> 'name'? ""="" 'equal' thetypeid 'type' {{TypenameTypeParameter}}
   | <Template> 'templateToken' ""<"" 'ltToken' templateparameterlist <gt> 'gtToken' <Class> 'classToken' ""..."" 'ellipsis'? <Identifier> 'name'? {{TemplateTypeParameter}}
   | <Template> 'templateToken' ""<"" 'ltToken' templateparameterlist <gt> 'gtToken' <Class> 'classToken' <Identifier> 'name'? ""="" 'equal' idexpression 'id' {{TemplateTypeParameter}}
   ;

simpletemplateid
   : templatename 'name' ""<"" 'ltToken' templateargumentlist? <gt> 'gtToken' {{TemplateIdentifier}}
   ;

templateid
   : simpletemplateid
   | operatorfunctionid 'identifier' ""<"" 'ltToken' templateargumentlist? <gt> 'gtToken' {{OperatorFunctionTemplateIdentifier}}
   | literaloperatorid 'identifier' ""<"" 'ltToken' templateargumentlist? <gt> 'gtToken' {{OperatorFunctionTemplateIdentifier}}
   ;

templatename
   : <Identifier>
   ;

templateargumentlist
   : templateargument 'argument' ""..."" 'ellipsis'?
   | templateargumentlist "","" 'comma' templateargument 'argument' ""..."" 'ellipsis'?
   ;

templateargument
   : thetypeid
   | constantexpression
   | idexpression
   ;

typenamespecifier
   : <Typename_> 'typenameToken' nestednamespecifier 'nameSpecifier' <Identifier> 'name' {{TypeNameSpecifier}}
   | <Typename_> 'typenameToken' nestednamespecifier 'nameSpecifier' <Template> 'templateToken'? simpletemplateid 'templateIdentifier' {{TypeNameSpecifier}}
   ;

explicitinstantiation
   : <Extern> 'externToken'? <Template> 'templateToken' declaration 'declaration' {{ExplicitInstantiation}}
   ;

explicitspecialization
   : <Template> 'templateToken' ""<"" 'ltToken' <gt> 'gtToken' declaration 'declaration' {{ExplicitSpecialization}}
   ;
/*Exception handling*/


tryblock
   : <Try> 'tryToken' compoundstatement 'statement' handlerseq {{TryStatement}}
   ;

functiontryblock
   : <Try> 'tryToken' ctorinitializer 'initializer'? compoundstatement 'statement' handlerseq {{TryStatement}}
   ;

handlerseq
   : handler 'handler' handlerseq?
   ;

handler
   : <Catch> 'catchToken' ""("" 'leftParen' exceptiondeclaration 'declaration' "")"" 'rightParen' compoundstatement 'statement' {{CatchHandler}}
   ;

exceptiondeclaration
   : attributespecifierseq? typespecifierseq declarator 'declarator' {{ExceptionDeclaration}}
   | attributespecifierseq? typespecifierseq abstractdeclarator 'declarator' ? {{ExceptionDeclaration}}
   | ""..."" 'ellipsis' {{ExceptionDeclaration}}
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
   : thetypeid 'type' ""..."" 'ellipsis'?
   | typeidlist "","" 'comma' thetypeid 'type' ""..."" 'ellipsis'?
   ;

noexceptspecification
   : <Noexcept> 'noexceptToken' ""("" 'leftParen' constantexpression 'expression' "")"" 'rightParen' {{NoExceptionSpecificiation}}
   | <Noexcept> 'noexceptToken' {{NoExceptionSpecificiation}}
   ;
/*Preprocessing directives*/
<directive>
	: \# ([^\r\n]* (\\(\r\n?|\n))?)*
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

<gt>
	: \>
	;

<RightShift>
   : \>\>
   ;

<LeftShiftAssign>
   : \<\<\=
   ;

<RightShiftAssign>
   : \>\>\=
   ;

theoperator
   : <New> 'name'
   | <Delete> 'name'
   | <New> 'name' ""["" 'leftBracket' ""]"" 'rightBracket'
   | <Delete> 'name' ""["" 'leftBracket' ""]"" 'rightBracket'
   | ""+"" 'name'
   | ""-"" 'name'
   | ""*"" 'name'
   | ""/"" 'name'
   | ""%"" 'name'
   | ""^"" 'name'
   | ""&"" 'name'
   | ""|"" 'name'
   | ""~"" 'name'
   | ""!"" 'name'
   | ""not"" 'name'
   | ""="" 'name'
   | ""<"" 'name'
   | <gt> 'name'
   | ""+="" 'name'
   | ""-="" 'name'
   | ""*="" 'name'
   | ""/="" 'name'
   | ""%="" 'name'
   | ""^="" 'name'
   | ""&="" 'name'
   | ""|="" 'name'
   | <LeftShift> 'name'
   | <RightShift> 'name'
   | <RightShiftAssign> 'name'
   | <LeftShiftAssign> 'name'
   | ""=="" 'name'
   | ""!="" 'name'
   | ""<="" 'name'
   | "">="" 'name'
   | ""&&"" 'name'
   | ""and"" 'name'
   | ""||"" 'name'
   | ""or"" 'name'
   | ""++"" 'name'
   | ""--"" 'name'
   | "","" 'name'
   | ""->*"" 'name'
   | ""->"" 'name'
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
   : <Integerliteral> 'value' {{NumericLiteral}}
   | <Characterliteral> 'value' {{CharacterLiteral}}
   | <Floatingliteral> 'value' {{NumericLiteral}}
   | <Stringliteral> 'value'+ {{StringLiteral}}
   | booleanliteral 'value' {{BooleanLiteral}}
   | pointerliteral 'value' {{PointerLiteral}}
   | userdefinedliteral 'value' {{UserDefinedLiteral}}
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
   | \\(\r\n?|\n)
   ;

<Rawstring>
   : \"" [^\(\"")]* \( [^\)]* \) [^\(\"")]* \""
   ;

booleanliteral
   : <False>
   | <True>
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
   ;

<lineContinuation>
	: \\ (\r\n? | \n)
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
	#(142 0 #reduceActionFortranslationunit1:) 
	#(261 1 #reduceActionForptroperator5:) 
	#(147 1 #reduceActionFornestednamespecifier1:) 
	#(206 1 #reduceActionForsimpledeclaration1:) 
	#(217 1 #reduceActionForsimpletypespecifier17:) 
	#(217 1 #reduceActionForsimpletypespecifier8:) 
	#(287 1 #reduceActionForclasskey1:) 
	#(263 1 #reduceActionForcvqualifier1:) 
	#(209 1 #reduceActionFordeclspecifier6:) 
	#(224 1 #reduceActionForclasskey1:) 
	#(212 1 #liftFirstValue:) 
	#(211 1 #liftFirstValue:) 
	#(287 1 #reduceActionForclasskey2:) 
	#(287 1 #reduceActionForclasskey3:) 
	#(145 1 #reduceActionForunqualifiedid1:) 
	#(282 1 #reduceActionForunqualifiedid1:) 
	#(317 1 #liftFirstValue:) 
	#(265 1 #reduceActionFordeclaratorid1:) 
	#(144 1 #reduceActionForidexpression1:) 
	#(142 1 #reduceActionFortranslationunit2:) 
	#(202 1 #reduceActionFordeclarationseq1:) 
	#(203 1 #liftFirstValue:) 
	#(204 1 #liftFirstValue:) 
	#(210 1 #reduceActionFordeclarationseq1:) 
	#(209 1 #liftFirstValue:) 
	#(213 1 #liftFirstValue:) 
	#(214 1 #liftFirstValue:) 
	#(217 1 #reduceActionForsimpletypespecifier1:) 
	#(217 1 #liftFirstValue:) 
	#(222 1 #reduceActionForenumhead1:) 
	#(231 1 #liftFirstValue:) 
	#(232 1 #liftFirstValue:) 
	#(243 1 #reduceActionFordeclarationseq1:) 
	#(244 1 #liftFirstValue:) 
	#(254 1 #reduceActionForinitdeclaratorlist1:) 
	#(255 1 #reduceActionForinitdeclarator1:) 
	#(256 1 #liftFirstValue:) 
	#(257 1 #liftFirstValue:) 
	#(258 1 #reduceActionFornoptrdeclarator1:) 
	#(218 1 #liftFirstValue:) 
	#(284 1 #reduceActionForclasshead9:) 
	#(145 1 #liftFirstValue:) 
	#(316 1 #liftFirstValue:) 
	#(282 1 #liftFirstValue:) 
	#(261 2 #reduceActionForptroperator6:) 
	#(261 2 #reduceActionForptroperator2:) 
	#(262 1 #reduceActionFordeclarationseq1:) 
	#(265 2 #reduceActionFordeclaratorid2:) 
	#(246 0 #reduceActionForattributelist1:) 
	#(145 2 #reduceActionForunqualifiedid6:) 
	#(224 2 #reduceActionForenumkey2:) 
	#(224 2 #reduceActionForenumkey3:) 
	#(220 2 #reduceActionForelaboratedtypespecifier8:) 
	#(236 0 #reduceActionFornamespacebody1:) 
	#(230 1 #liftFirstValue:) 
	#(333 1 #reduceActionFortheoperator14:) 
	#(310 2 #reduceActionForliteraloperatorid2:) 
	#(215 1 #reduceActionFordeclarationseq1:) 
	#(303 1 #reduceActionForconversiontypeid1:) 
	#(302 2 #reduceActionForconversionfunctionid1:) 
	#(309 2 #reduceActionForoperatorfunctionid1:) 
	#(321 2 #reduceActionForexplicitinstantiation1:) 
	#(261 2 #reduceActionForptroperator9:) 
	#(146 2 #reduceActionForqualifiedid1:) 
	#(217 2 #reduceActionForsimpletypespecifier2:) 
	#(202 2 #reduceActionFordeclarationseq2:) 
	#(210 2 #reduceActionFordeclspecifierseq3:) 
	#(206 2 #reduceActionForsimpledeclaration3:) 
	#(147 2 #reduceActionFornestednamespecifier2:) 
	#(222 2 #reduceActionForenumhead3:) 
	#(222 2 #reduceActionForenumhead2:) 
	#(222 2 #reduceActionForenumhead5:) 
	#(208 2 #reduceActionForattributedeclaration1:) 
	#(243 2 #reduceActionFordeclarationseq2:) 
	#(206 2 #reduceActionForsimpledeclaration2:) 
	#(293 1 #liftFirstValue:) 
	#(276 1 #reduceActionForfunctionbody1:) 
	#(275 2 #reduceActionForfunctiondefinition1:) 
	#(255 2 #reduceActionForinitdeclarator2:) 
	#(277 1 #liftFirstValue:) 
	#(278 1 #liftFirstValue:) 
	#(292 1 #reduceActionFordeclarationseq1:) 
	#(272 0 #reduceActionForparameterdeclarationclause1:) 
	#(258 2 #reduceActionFornoptrdeclarator3:) 
	#(257 2 #reduceActionForptrdeclarator2:) 
	#(258 2 #reduceActionFornoptrdeclarator2:) 
	#(220 2 #reduceActionForelaboratedtypespecifier1:) 
	#(284 2 #reduceActionForclasshead11:) 
	#(285 1 #reduceActionFordeclaratorid1:) 
	#(284 2 #reduceActionForclasshead1:) 
	#(284 2 #reduceActionForclasshead10:) 
	#(220 2 #reduceActionForelaboratedtypespecifier5:) 
	#(258 3 #reduceActionFornoptrdeclarator8:) 
	#(261 3 #reduceActionForptroperator4:) 
	#(262 2 #reduceActionFordeclspecifierseq3:) 
	#(248 1 #reduceActionForclasskey1:) 
	#(250 1 #liftFirstValue:) 
	#(246 1 #reduceActionForattributelist2:) 
	#(247 1 #reduceActionForattribute1:) 
	#(248 1 #reduceActionForattributetoken2:) 
	#(162 1 #liftFirstValue:) 
	#(336 1 #liftFirstValue:) 
	#(337 1 #liftFirstValue:) 
	#(143 1 #reduceActionForprimaryexpression2:) 
	#(158 1 #liftFirstValue:) 
	#(334 1 #reduceActionForliteral1:) 
	#(334 1 #reduceActionForliteral2:) 
	#(335 1 #reduceActionFordeclarationseq1:) 
	#(338 1 #liftFirstValue:) 
	#(157 1 #liftFirstValue:) 
	#(143 1 #liftFirstValue:) 
	#(161 1 #liftFirstValue:) 
	#(171 1 #liftFirstValue:) 
	#(172 1 #liftFirstValue:) 
	#(173 1 #liftFirstValue:) 
	#(174 1 #liftFirstValue:) 
	#(175 1 #liftFirstValue:) 
	#(177 1 #liftFirstValue:) 
	#(178 1 #liftFirstValue:) 
	#(179 1 #liftFirstValue:) 
	#(180 1 #liftFirstValue:) 
	#(181 1 #liftFirstValue:) 
	#(182 1 #liftFirstValue:) 
	#(183 1 #liftFirstValue:) 
	#(184 1 #liftFirstValue:) 
	#(188 1 #liftFirstValue:) 
	#(266 1 #reduceActionForthetypeid1:) 
	#(334 1 #reduceActionForliteral4:) 
	#(334 1 #reduceActionForliteral5:) 
	#(334 1 #reduceActionForliteral6:) 
	#(334 1 #reduceActionForliteral7:) 
	#(328 1 #reduceActionForthrowexpression1:) 
	#(185 1 #liftFirstValue:) 
	#(187 1 #liftFirstValue:) 
	#(220 3 #reduceActionForelaboratedtypespecifier9:) 
	#(321 3 #reduceActionForexplicitinstantiation2:) 
	#(242 3 #reduceActionForlinkagespecification3:) 
	#(236 1 #reduceActionFornamespacebody2:) 
	#(333 2 #reduceActionFortheoperator44:) 
	#(333 2 #reduceActionFortheoperator45:) 
	#(310 3 #reduceActionForliteraloperatorid1:) 
	#(215 2 #reduceActionFordeclspecifierseq3:) 
	#(304 1 #reduceActionForconversiondeclarator1:) 
	#(303 2 #reduceActionForconversiontypeid2:) 
	#(314 1 #reduceActionFortypeparameter1:) 
	#(314 1 #reduceActionFortypeparameter7:) 
	#(274 1 #reduceActionForparameterdeclaration5:) 
	#(313 1 #liftFirstValue:) 
	#(312 1 #reduceActionForinitdeclaratorlist1:) 
	#(320 3 #reduceActionFortypenamespecifier1:) 
	#(320 3 #reduceActionFortypenamespecifier2:) 
	#(229 1 #reduceActionForunqualifiedid1:) 
	#(261 3 #reduceActionForptroperator11:) 
	#(261 3 #reduceActionForptroperator10:) 
	#(146 3 #reduceActionForqualifiedid2:) 
	#(217 3 #reduceActionForsimpletypespecifier3:) 
	#(147 3 #reduceActionFornestednamespecifier4:) 
	#(147 3 #reduceActionFornestednamespecifier5:) 
	#(206 3 #reduceActionForsimpledeclaration4:) 
	#(275 3 #reduceActionForfunctiondefinition3:) 
	#(221 3 #reduceActionForenumspecifier1:) 
	#(228 1 #liftFirstValue:) 
	#(226 1 #reduceActionForinitdeclaratorlist1:) 
	#(227 1 #reduceActionForenumeratordefinition1:) 
	#(225 2 #reduceActionForenumbase1:) 
	#(223 3 #reduceActionForopaqueenumdeclaration1:) 
	#(222 3 #reduceActionForenumhead4:) 
	#(222 3 #reduceActionForenumhead9:) 
	#(222 3 #reduceActionForenumhead7:) 
	#(222 3 #reduceActionForenumhead6:) 
	#(254 3 #reduceActionForinitdeclaratorlist2:) 
	#(279 1 #liftFirstValue:) 
	#(280 1 #reduceActionForattributelist2:) 
	#(159 1 #reduceActionFornamespacebody2:) 
	#(308 1 #reduceActionForunqualifiedid1:) 
	#(299 1 #liftFirstValue:) 
	#(299 1 #reduceActionForsimpletypespecifier1:) 
	#(308 1 #liftFirstValue:) 
	#(305 2 #reduceActionForctorinitializer1:) 
	#(306 1 #reduceActionForattributelist2:) 
	#(278 2 #reduceActionForbraceorequalinitializer1:) 
	#(191 1 #reduceActionForexpressionstatement1:) 
	#(192 2 #reduceActionForcompoundstatement1:) 
	#(281 2 #reduceActionForbracedinitlist3:) 
	#(193 1 #reduceActionFordeclarationseq1:) 
	#(189 1 #reduceActionFornamespacebody2:) 
	#(189 1 #liftFirstValue:) 
	#(201 1 #liftFirstValue:) 
	#(275 3 #reduceActionForfunctiondefinition2:) 
	#(292 2 #reduceActionFordeclarationseq2:) 
	#(276 2 #reduceActionForfunctionbody2:) 
	#(272 1 #reduceActionForparameterdeclarationclause2:) 
	#(272 1 #reduceActionForparameterdeclarationclause3:) 
	#(273 1 #reduceActionForinitdeclaratorlist1:) 
	#(258 3 #reduceActionFornoptrdeclarator4:) 
	#(256 3 #reduceActionFordeclarator2:) 
	#(289 1 #reduceActionFormemberdeclaration1:) 
	#(283 3 #reduceActionForclassspecifier1:) 
	#(301 1 #liftFirstValue:) 
	#(289 1 #liftFirstValue:) 
	#(291 1 #reduceActionFormemberdeclarator1:) 
	#(288 1 #reduceActionForattributelist2:) 
	#(290 1 #reduceActionForinitdeclaratorlist1:) 
	#(296 2 #reduceActionForbaseclause1:) 
	#(297 1 #reduceActionForattributelist2:) 
	#(300 1 #liftFirstValue:) 
	#(298 1 #reduceActionForbasespecifier1:) 
	#(220 3 #reduceActionForelaboratedtypespecifier2:) 
	#(285 2 #reduceActionFordeclaratorid2:) 
	#(220 3 #reduceActionForelaboratedtypespecifier6:) 
	#(220 3 #reduceActionForelaboratedtypespecifier3:) 
	#(284 3 #reduceActionForclasshead5:) 
	#(284 3 #reduceActionForclasshead12:) 
	#(286 1 #liftFirstValue:) 
	#(284 3 #reduceActionForclasshead3:) 
	#(284 3 #reduceActionForclasshead2:) 
	#(316 3 #reduceActionFortemplateid2:) 
	#(319 1 #liftFirstValue:) 
	#(318 1 #reduceActionForattributelist2:) 
	#(315 3 #reduceActionForsimpletemplateid1:) 
	#(246 2 #reduceActionForattributelist3:) 
	#(246 2 #reduceActionForattributelist5:) 
	#(252 0 #reduceActionFornamespacebody1:) 
	#(247 2 #reduceActionForattribute2:) 
	#(161 2 #reduceActionForunaryexpression2:) 
	#(151 1 #liftFirstValue:) 
	#(149 2 #reduceActionForlambdaintroducer1:) 
	#(154 1 #reduceActionForsimplecapture3:) 
	#(150 1 #reduceActionForlambdacapture1:) 
	#(150 1 #reduceActionForlambdacapture2:) 
	#(152 1 #reduceActionForattributelist2:) 
	#(153 1 #liftFirstValue:) 
	#(169 2 #reduceActionFordeleteexpression1:) 
	#(163 2 #reduceActionFornewexpression1:) 
	#(165 1 #reduceActionFornewtypeid1:) 
	#(161 2 #reduceActionForunaryexpression5:) 
	#(148 2 #reduceActionForlambdaexpression1:) 
	#(157 2 #reduceActionForpostfixexpression18:) 
	#(176 1 #liftFirstValue:) 
	#(245 4 #reduceActionForalignmentspecifier3:) 
	#(271 1 #reduceActionFornoptrabstractpackdeclarator6:) 
	#(269 1 #reduceActionFornoptrabstractdeclarator2:) 
	#(268 1 #reduceActionForptrabstractdeclarator2:) 
	#(266 2 #reduceActionForthetypeid2:) 
	#(267 1 #liftFirstValue:) 
	#(268 1 #reduceActionForptrabstractdeclarator1:) 
	#(270 1 #reduceActionForabstractpackdeclarator1:) 
	#(157 2 #reduceActionForpostfixexpression10:) 
	#(335 2 #reduceActionFordeclarationseq2:) 
	#(219 4 #reduceActionFordecltypespecifier2:) 
	#(328 2 #reduceActionForthrowexpression2:) 
	#(186 1 #liftFirstValue:) 
	#(219 4 #reduceActionFordecltypespecifier1:) 
	#(242 4 #reduceActionForlinkagespecification1:) 
	#(235 4 #reduceActionForunnamednamespacedefinition1:) 
	#(238 1 #reduceActionFordeclaratorid1:) 
	#(333 3 #reduceActionFortheoperator4:) 
	#(304 2 #reduceActionForconversiondeclarator2:) 
	#(314 2 #reduceActionFortypeparameter3:) 
	#(314 2 #reduceActionFortypeparameter2:) 
	#(314 2 #reduceActionFortypeparameter9:) 
	#(314 2 #reduceActionFortypeparameter8:) 
	#(322 4 #reduceActionForexplicitspecialization1:) 
	#(274 2 #reduceActionForparameterdeclaration1:) 
	#(274 2 #reduceActionForparameterdeclaration7:) 
	#(320 4 #reduceActionFortypenamespecifier3:) 
	#(239 4 #reduceActionForusingdeclaration3:) 
	#(240 4 #reduceActionForusingdirective1:) 
	#(239 4 #reduceActionForusingdeclaration1:) 
	#(261 4 #reduceActionForptroperator12:) 
	#(147 4 #reduceActionFornestednamespecifier6:) 
	#(275 4 #reduceActionForfunctiondefinition4:) 
	#(221 4 #reduceActionForenumspecifier2:) 
	#(223 4 #reduceActionForopaqueenumdeclaration2:) 
	#(222 4 #reduceActionForenumhead10:) 
	#(223 4 #reduceActionForopaqueenumdeclaration3:) 
	#(222 4 #reduceActionForenumhead8:) 
	#(222 4 #reduceActionForenumhead11:) 
	#(206 4 #reduceActionForsimpledeclaration6:) 
	#(275 4 #reduceActionForfunctiondefinition7:) 
	#(277 3 #reduceActionForinitializer2:) 
	#(280 2 #reduceActionForinitializerlist2:) 
	#(299 2 #reduceActionForsimpletypespecifier2:) 
	#(306 2 #reduceActionForinitializerlist2:) 
	#(307 2 #reduceActionFormeminitializer3:) 
	#(276 3 #reduceActionForfunctionbody4:) 
	#(276 3 #reduceActionForfunctionbody5:) 
	#(200 2 #reduceActionForjumpstatement1:) 
	#(200 2 #reduceActionForjumpstatement2:) 
	#(200 2 #reduceActionForjumpstatement3:) 
	#(191 2 #reduceActionForexpressionstatement2:) 
	#(192 3 #reduceActionForcompoundstatement2:) 
	#(193 2 #reduceActionFordeclarationseq2:) 
	#(189 2 #reduceActionForstatement2:) 
	#(281 3 #reduceActionForbracedinitlist1:) 
	#(324 3 #reduceActionForfunctiontryblock1:) 
	#(325 1 #reduceActionFordeclarationseq1:) 
	#(259 3 #reduceActionForparametersandqualifiers1:) 
	#(272 2 #reduceActionForparameterdeclarationclause4:) 
	#(258 4 #reduceActionFornoptrdeclarator5:) 
	#(258 4 #reduceActionFornoptrdeclarator6:) 
	#(216 1 #reduceActionFordeclarationseq1:) 
	#(260 2 #reduceActionFortrailingreturntype1:) 
	#(291 2 #reduceActionFormemberdeclarator7:) 
	#(289 2 #reduceActionFormemberdeclaration3:) 
	#(291 2 #reduceActionFormemberdeclarator6:) 
	#(291 2 #reduceActionFormemberdeclarator3:) 
	#(291 2 #reduceActionFormemberdeclarator2:) 
	#(283 4 #reduceActionForclassspecifier2:) 
	#(288 2 #reduceActionFormemberspecification2:) 
	#(289 2 #reduceActionFormemberdeclaration2:) 
	#(288 2 #reduceActionFormemberspecification3:) 
	#(298 2 #reduceActionForbasespecifier3:) 
	#(298 2 #reduceActionForbasespecifier2:) 
	#(297 2 #reduceActionForinitializerlist2:) 
	#(298 2 #reduceActionForbasespecifier7:) 
	#(220 4 #reduceActionForelaboratedtypespecifier7:) 
	#(220 4 #reduceActionForelaboratedtypespecifier4:) 
	#(284 4 #reduceActionForclasshead7:) 
	#(284 4 #reduceActionForclasshead6:) 
	#(284 4 #reduceActionForclasshead4:) 
	#(316 4 #reduceActionFortemplateid3:) 
	#(318 2 #reduceActionForinitializerlist2:) 
	#(315 4 #reduceActionForsimpletemplateid2:) 
	#(246 3 #reduceActionForinitdeclaratorlist2:) 
	#(244 5 #reduceActionForattributespecifier1:) 
	#(252 1 #reduceActionFordeclarationseq1:) 
	#(249 3 #reduceActionForattributescopedtoken1:) 
	#(143 3 #reduceActionFornoptrdeclarator8:) 
	#(169 3 #reduceActionFordeleteexpression2:) 
	#(163 3 #reduceActionFornewexpression5:) 
	#(154 2 #reduceActionForsimplecapture2:) 
	#(155 2 #reduceActionForinitcapture1:) 
	#(149 3 #reduceActionForlambdaintroducer2:) 
	#(152 2 #reduceActionForinitializerlist2:) 
	#(163 3 #reduceActionFornewexpression3:) 
	#(163 3 #reduceActionFornewexpression2:) 
	#(168 1 #liftFirstValue:) 
	#(165 2 #reduceActionFornewtypeid2:) 
	#(166 1 #reduceActionFornewdeclarator3:) 
	#(166 1 #reduceActionFornewdeclarator1:) 
	#(148 3 #reduceActionForlambdaexpression2:) 
	#(157 3 #reduceActionForpostfixexpression4:) 
	#(157 3 #reduceActionForpostfixexpression14:) 
	#(172 3 #reduceActionForpmexpression3:) 
	#(173 3 #reduceActionForpmexpression3:) 
	#(174 3 #reduceActionForpmexpression3:) 
	#(175 3 #reduceActionForpmexpression3:) 
	#(177 3 #reduceActionForpmexpression3:) 
	#(178 3 #reduceActionForpmexpression3:) 
	#(179 3 #reduceActionForpmexpression3:) 
	#(180 3 #reduceActionForexclusiveorexpression2:) 
	#(181 3 #reduceActionForpmexpression3:) 
	#(182 3 #reduceActionForpmexpression3:) 
	#(183 3 #reduceActionForpmexpression3:) 
	#(245 5 #reduceActionForalignmentspecifier4:) 
	#(269 2 #reduceActionFornoptrabstractdeclarator7:) 
	#(267 2 #reduceActionForabstractdeclarator2:) 
	#(268 2 #reduceActionForptrdeclarator2:) 
	#(270 2 #reduceActionForptrdeclarator2:) 
	#(269 2 #reduceActionFornoptrabstractdeclarator1:) 
	#(271 2 #reduceActionFornoptrabstractpackdeclarator1:) 
	#(241 5 #reduceActionForasmdefinition1:) 
	#(185 3 #reduceActionForassignmentexpression2:) 
	#(187 3 #reduceActionForexpression2:) 
	#(242 5 #reduceActionForlinkagespecification2:) 
	#(235 5 #reduceActionForunnamednamespacedefinition2:) 
	#(238 2 #reduceActionFordeclaratorid2:) 
	#(237 5 #reduceActionFornamespacealiasdefinition1:) 
	#(233 5 #reduceActionFororiginalnamespacedefinition1:) 
	#(234 5 #reduceActionForextensionnamespacedefinition1:) 
	#(314 3 #reduceActionFortypeparameter4:) 
	#(314 3 #reduceActionFortypeparameter5:) 
	#(314 3 #reduceActionFortypeparameter10:) 
	#(314 3 #reduceActionFortypeparameter11:) 
	#(274 3 #reduceActionForparameterdeclaration9:) 
	#(274 3 #reduceActionForparameterdeclaration2:) 
	#(312 3 #reduceActionForinitdeclaratorlist2:) 
	#(311 5 #reduceActionFortemplatedeclaration1:) 
	#(240 5 #reduceActionForusingdirective2:) 
	#(239 5 #reduceActionForusingdeclaration2:) 
	#(205 5 #reduceActionForaliasdeclaration1:) 
	#(221 5 #reduceActionForenumspecifier3:) 
	#(226 3 #reduceActionForinitdeclaratorlist2:) 
	#(227 3 #reduceActionForenumeratordefinition2:) 
	#(223 5 #reduceActionForopaqueenumdeclaration4:) 
	#(222 5 #reduceActionForenumhead12:) 
	#(240 5 #reduceActionForusingdirective3:) 
	#(275 5 #reduceActionForfunctiondefinition8:) 
	#(280 3 #reduceActionForinitializerlist3:) 
	#(306 3 #reduceActionFormeminitializerlist3:) 
	#(307 3 #reduceActionFormeminitializer1:) 
	#(190 3 #reduceActionForlabeledstatement3:) 
	#(197 1 #liftFirstValue:) 
	#(200 3 #reduceActionForjumpstatement6:) 
	#(195 1 #liftFirstValue:) 
	#(200 3 #reduceActionForjumpstatement4:) 
	#(323 3 #reduceActionForfunctiontryblock1:) 
	#(190 3 #reduceActionForlabeledstatement1:) 
	#(281 4 #reduceActionForbracedinitlist2:) 
	#(325 2 #reduceActionFordeclspecifierseq3:) 
	#(324 4 #reduceActionForfunctiontryblock2:) 
	#(264 1 #liftFirstValue:) 
	#(332 1 #reduceActionFornoexceptspecification2:) 
	#(259 4 #reduceActionForparametersandqualifiers2:) 
	#(259 4 #reduceActionForparametersandqualifiers9:) 
	#(259 4 #reduceActionForparametersandqualifiers5:) 
	#(259 4 #reduceActionForparametersandqualifiers3:) 
	#(329 1 #liftFirstValue:) 
	#(272 3 #reduceActionForparameterdeclarationclause5:) 
	#(273 3 #reduceActionForinitdeclaratorlist2:) 
	#(258 5 #reduceActionFornoptrdeclarator7:) 
	#(216 2 #reduceActionFordeclspecifierseq3:) 
	#(260 3 #reduceActionFortrailingreturntype2:) 
	#(291 3 #reduceActionFormemberdeclarator9:) 
	#(289 3 #reduceActionFormemberdeclaration4:) 
	#(291 3 #reduceActionFormemberdeclarator8:) 
	#(289 3 #reduceActionFormemberdeclaration7:) 
	#(295 1 #reduceActionForliteral1:) 
	#(294 2 #reduceActionForpurespecifier1:) 
	#(291 3 #reduceActionFormemberdeclarator4:) 
	#(290 3 #reduceActionForinitdeclaratorlist2:) 
	#(288 3 #reduceActionFormemberspecification4:) 
	#(298 3 #reduceActionForbasespecifier4:) 
	#(298 3 #reduceActionForbasespecifier5:) 
	#(298 3 #reduceActionForbasespecifier9:) 
	#(297 3 #reduceActionForinitializerlist3:) 
	#(298 3 #reduceActionForbasespecifier8:) 
	#(284 5 #reduceActionForclasshead8:) 
	#(318 3 #reduceActionForinitializerlist3:) 
	#(246 4 #reduceActionForattributelist6:) 
	#(251 3 #reduceActionForattributeargumentclause1:) 
	#(252 2 #reduceActionFordeclarationseq2:) 
	#(171 4 #reduceActionForcastexpression2:) 
	#(163 4 #reduceActionFornewexpression7:) 
	#(163 4 #reduceActionFornewexpression6:) 
	#(155 3 #reduceActionForinitcapture2:) 
	#(150 3 #reduceActionForlambdacapture3:) 
	#(152 3 #reduceActionForinitializerlist3:) 
	#(161 4 #reduceActionForunaryexpression8:) 
	#(169 4 #reduceActionFordeleteexpression3:) 
	#(164 3 #reduceActionFornewplacement1:) 
	#(163 4 #reduceActionFornewexpression9:) 
	#(163 4 #reduceActionFornewexpression4:) 
	#(168 2 #reduceActionFornewinitializer1:) 
	#(166 2 #reduceActionForptrdeclarator2:) 
	#(170 4 #reduceActionFornoexceptexpression1:) 
	#(161 4 #reduceActionForunaryexpression6:) 
	#(156 3 #reduceActionForlambdadeclarator1:) 
	#(157 4 #reduceActionForpostfixexpression5:) 
	#(160 2 #reduceActionForpseudodestructorname4:) 
	#(160 2 #reduceActionForpseudodestructorname6:) 
	#(157 4 #reduceActionForpostfixexpression15:) 
	#(157 4 #reduceActionForpostfixexpression2:) 
	#(157 4 #reduceActionForpostfixexpression24:) 
	#(269 3 #reduceActionFornoptrabstractdeclarator11:) 
	#(269 3 #reduceActionFornoptrabstractdeclarator8:) 
	#(269 3 #reduceActionFornoptrabstractdeclarator9:) 
	#(269 3 #reduceActionFornoptrabstractdeclarator3:) 
	#(267 3 #reduceActionForabstractdeclarator3:) 
	#(271 3 #reduceActionFornoptrabstractdeclarator3:) 
	#(233 6 #reduceActionFororiginalnamespacedefinition2:) 
	#(234 6 #reduceActionForextensionnamespacedefinition2:) 
	#(314 4 #reduceActionFortypeparameter6:) 
	#(314 4 #reduceActionFortypeparameter12:) 
	#(274 4 #reduceActionForparameterdeclaration3:) 
	#(274 4 #reduceActionForparameterdeclaration11:) 
	#(205 6 #reduceActionForaliasdeclaration2:) 
	#(240 6 #reduceActionForusingdirective4:) 
	#(280 4 #reduceActionForinitializerlist4:) 
	#(306 4 #reduceActionFormeminitializerlist4:) 
	#(307 4 #reduceActionFormeminitializer2:) 
	#(190 4 #reduceActionForlabeledstatement2:) 
	#(198 2 #reduceActionForforrangedeclaration1:) 
	#(327 1 #reduceActionForexceptiondeclaration7:) 
	#(327 1 #reduceActionForexceptiondeclaration3:) 
	#(259 5 #reduceActionForparametersandqualifiers10:) 
	#(259 5 #reduceActionForparametersandqualifiers13:) 
	#(259 5 #reduceActionForparametersandqualifiers11:) 
	#(259 5 #reduceActionForparametersandqualifiers6:) 
	#(259 5 #reduceActionForparametersandqualifiers7:) 
	#(259 5 #reduceActionForparametersandqualifiers4:) 
	#(291 4 #reduceActionFormemberdeclarator10:) 
	#(289 4 #reduceActionFormemberdeclaration8:) 
	#(298 4 #reduceActionForbasespecifier6:) 
	#(298 4 #reduceActionForbasespecifier10:) 
	#(297 4 #reduceActionForinitializerlist4:) 
	#(318 4 #reduceActionForinitializerlist4:) 
	#(253 3 #reduceActionForattributeargumentclause1:) 
	#(169 5 #reduceActionFordeleteexpression4:) 
	#(163 5 #reduceActionFornewexpression13:) 
	#(163 5 #reduceActionFornewexpression8:) 
	#(152 4 #reduceActionForinitializerlist4:) 
	#(163 5 #reduceActionFornewexpression10:) 
	#(163 5 #reduceActionFornewexpression11:) 
	#(168 3 #reduceActionFornewinitializer2:) 
	#(167 3 #reduceActionFornoptrnewdeclarator1:) 
	#(161 5 #reduceActionForunaryexpression7:) 
	#(156 4 #reduceActionForlambdadeclarator9:) 
	#(156 4 #reduceActionForlambdadeclarator3:) 
	#(156 4 #reduceActionForlambdadeclarator2:) 
	#(156 4 #reduceActionForlambdadeclarator5:) 
	#(160 3 #reduceActionForpseudodestructorname5:) 
	#(184 5 #reduceActionForconditionalexpression2:) 
	#(269 4 #reduceActionFornoptrabstractdeclarator10:) 
	#(269 4 #reduceActionFornoptrabstractdeclarator4:) 
	#(269 4 #reduceActionFornoptrabstractdeclarator5:) 
	#(271 4 #reduceActionFornoptrabstractdeclarator4:) 
	#(271 4 #reduceActionFornoptrabstractdeclarator5:) 
	#(207 7 #reduceActionForstatic_assertdeclaration1:) 
	#(314 5 #reduceActionFortypeparameter13:) 
	#(274 5 #reduceActionForparameterdeclaration4:) 
	#(199 1 #liftFirstValue:) 
	#(198 3 #reduceActionForforrangedeclaration2:) 
	#(194 5 #reduceActionForselectionstatement1:) 
	#(195 3 #reduceActionForcondition4:) 
	#(194 5 #reduceActionForselectionstatement3:) 
	#(196 5 #reduceActionForiterationstatement1:) 
	#(327 2 #reduceActionForexceptiondeclaration1:) 
	#(327 2 #reduceActionForexceptiondeclaration5:) 
	#(330 3 #reduceActionFordynamicexceptionspecification1:) 
	#(331 1 #reduceActionForattributelist2:) 
	#(259 6 #reduceActionForparametersandqualifiers14:) 
	#(259 6 #reduceActionForparametersandqualifiers15:) 
	#(259 6 #reduceActionForparametersandqualifiers12:) 
	#(259 6 #reduceActionForparametersandqualifiers8:) 
	#(163 6 #reduceActionFornewexpression14:) 
	#(163 6 #reduceActionFornewexpression15:) 
	#(163 6 #reduceActionFornewexpression12:) 
	#(167 4 #reduceActionFornoptrnewdeclarator2:) 
	#(167 4 #reduceActionFornoptrnewdeclarator3:) 
	#(156 5 #reduceActionForlambdadeclarator11:) 
	#(156 5 #reduceActionForlambdadeclarator10:) 
	#(156 5 #reduceActionForlambdadeclarator13:) 
	#(156 5 #reduceActionForlambdadeclarator4:) 
	#(156 5 #reduceActionForlambdadeclarator7:) 
	#(156 5 #reduceActionForlambdadeclarator6:) 
	#(160 4 #reduceActionForpseudodestructorname1:) 
	#(269 5 #reduceActionFornoptrabstractdeclarator6:) 
	#(271 5 #reduceActionFornoptrabstractdeclarator6:) 
	#(314 6 #reduceActionFortypeparameter15:) 
	#(314 6 #reduceActionFortypeparameter14:) 
	#(196 6 #reduceActionForiterationstatement3:) 
	#(195 4 #reduceActionForcondition2:) 
	#(195 4 #reduceActionForcondition5:) 
	#(327 3 #reduceActionForexceptiondeclaration2:) 
	#(326 5 #reduceActionForhandler1:) 
	#(332 4 #reduceActionFornoexceptspecification1:) 
	#(331 2 #reduceActionForinitializerlist2:) 
	#(330 4 #reduceActionFordynamicexceptionspecification2:) 
	#(259 7 #reduceActionForparametersandqualifiers16:) 
	#(163 7 #reduceActionFornewexpression16:) 
	#(157 7 #reduceActionForpostfixexpression23:) 
	#(167 5 #reduceActionFornoptrnewdeclarator4:) 
	#(156 6 #reduceActionForlambdadeclarator12:) 
	#(156 6 #reduceActionForlambdadeclarator15:) 
	#(156 6 #reduceActionForlambdadeclarator14:) 
	#(156 6 #reduceActionForlambdadeclarator8:) 
	#(160 5 #reduceActionForpseudodestructorname2:) 
	#(314 7 #reduceActionFortypeparameter16:) 
	#(314 7 #reduceActionFortypeparameter17:) 
	#(196 7 #reduceActionForiterationstatement2:) 
	#(196 7 #reduceActionForiterationstatement4:) 
	#(196 7 #reduceActionForiterationstatement5:) 
	#(196 7 #reduceActionForiterationstatement7:) 
	#(194 7 #reduceActionForselectionstatement2:) 
	#(195 5 #reduceActionForcondition3:) 
	#(331 3 #reduceActionForinitializerlist3:) 
	#(156 7 #reduceActionForlambdadeclarator16:) 
	#(160 6 #reduceActionForpseudodestructorname3:) 
	#(314 8 #reduceActionFortypeparameter18:) 
	#(196 8 #reduceActionForiterationstatement6:) 
	#(331 4 #reduceActionForinitializerlist4:)
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
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"->*"' '"."' '".*"' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<="' '"="' '"=="' '">="' '"?"' '"["' '"]"' '"^"' '"^="' '"and"' '"not"' '"or"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<directive>' '<Alignas>' '<Alignof>' '<Asm>' '<Auto>' '<Bool>' '<Break>' '<Case>' '<Catch>' '<Char>' '<Char16>' '<Char32>' '<Class>' '<Const>' '<Constexpr>' '<Const_cast>' '<Continue>' '<Decltype>' '<Default>' '<Delete>' '<Do>' '<Double>' '<Dynamic_cast>' '<Else>' '<Enum>' '<Explicit>' '<Extern>' '<False>' '<Final>' '<Float>' '<For>' '<Friend>' '<Goto>' '<If>' '<Inline>' '<Int>' '<Long>' '<Mutable>' '<Namespace>' '<New>' '<Noexcept>' '<Nullptr>' '<Operator>' '<Override>' '<Private>' '<Protected>' '<Public>' '<Register>' '<Reinterpret_cast>' '<Return>' '<Short>' '<Signed>' '<Sizeof>' '<Static>' '<Static_assert>' '<Static_cast>' '<Struct>' '<Switch>' '<Template>' '<This>' '<Thread_local>' '<Throw>' '<True>' '<Try>' '<Typedef>' '<Typeid_>' '<Typename_>' '<Union>' '<Unsigned>' '<Using>' '<Virtual>' '<Void>' '<Volatile>' '<Wchar>' '<While>' '<LeftShift>' '<gt>' '<RightShift>' '<LeftShiftAssign>' '<RightShiftAssign>' '<Identifier>' '<Integerliteral>' '<Octalliteral>' '<Characterliteral>' '<Floatingliteral>' '<Stringliteral>' '<Userdefinedintegerliteral>' '<Userdefinedfloatingliteral>' '<Userdefinedstringliteral>' '<Userdefinedcharacterliteral>' '<whitespace>' '<comment>' '<lineContinuation>' 'B e g i n' 'translationunit' 'primaryexpression' 'idexpression' 'unqualifiedid' 'qualifiedid' 'nestednamespecifier' 'lambdaexpression' 'lambdaintroducer' 'lambdacapture' 'capturedefault' 'capturelist' 'capture' 'simplecapture' 'initcapture' 'lambdadeclarator' 'postfixexpression' 'typeidofthetypeid' 'expressionlist' 'pseudodestructorname' 'unaryexpression' 'unaryoperator' 'newexpression' 'newplacement' 'newtypeid' 'newdeclarator' 'noptrnewdeclarator' 'newinitializer' 'deleteexpression' 'noexceptexpression' 'castexpression' 'pmexpression' 'multiplicativeexpression' 'additiveexpression' 'shiftexpression' 'shiftoperator' 'relationalexpression' 'equalityexpression' 'andexpression' 'exclusiveorexpression' 'inclusiveorexpression' 'logicalandexpression' 'logicalorexpression' 'conditionalexpression' 'assignmentexpression' 'assignmentoperator' 'expression' 'constantexpression' 'statement' 'labeledstatement' 'expressionstatement' 'compoundstatement' 'statementseq' 'selectionstatement' 'condition' 'iterationstatement' 'forinitstatement' 'forrangedeclaration' 'forrangeinitializer' 'jumpstatement' 'declarationstatement' 'declarationseq' 'declaration' 'blockdeclaration' 'aliasdeclaration' 'simpledeclaration' 'static_assertdeclaration' 'attributedeclaration' 'declspecifier' 'declspecifierseq' 'storageclassspecifier' 'functionspecifier' 'typespecifier' 'trailingtypespecifier' 'typespecifierseq' 'trailingtypespecifierseq' 'simpletypespecifier' 'thetypename' 'decltypespecifier' 'elaboratedtypespecifier' 'enumspecifier' 'enumhead' 'opaqueenumdeclaration' 'enumkey' 'enumbase' 'enumeratorlist' 'enumeratordefinition' 'enumerator' 'namespacename' 'originalnamespacename' 'namespacedefinition' 'namednamespacedefinition' 'originalnamespacedefinition' 'extensionnamespacedefinition' 'unnamednamespacedefinition' 'namespacebody' 'namespacealiasdefinition' 'qualifiednamespacespecifier' 'usingdeclaration' 'usingdirective' 'asmdefinition' 'linkagespecification' 'attributespecifierseq' 'attributespecifier' 'alignmentspecifier' 'attributelist' 'attribute' 'attributetoken' 'attributescopedtoken' 'attributenamespace' 'attributeargumentclause' 'balancedtokenseq' 'balancedtoken' 'initdeclaratorlist' 'initdeclarator' 'declarator' 'ptrdeclarator' 'noptrdeclarator' 'parametersandqualifiers' 'trailingreturntype' 'ptroperator' 'cvqualifierseq' 'cvqualifier' 'refqualifier' 'declaratorid' 'thetypeid' 'abstractdeclarator' 'ptrabstractdeclarator' 'noptrabstractdeclarator' 'abstractpackdeclarator' 'noptrabstractpackdeclarator' 'parameterdeclarationclause' 'parameterdeclarationlist' 'parameterdeclaration' 'functiondefinition' 'functionbody' 'initializer' 'braceorequalinitializer' 'initializerclause' 'initializerlist' 'bracedinitlist' 'classname' 'classspecifier' 'classhead' 'classheadname' 'classvirtspecifier' 'classkey' 'memberspecification' 'memberdeclaration' 'memberdeclaratorlist' 'memberdeclarator' 'virtspecifierseq' 'virtspecifier' 'purespecifier' 'purespecifier_value' 'baseclause' 'basespecifierlist' 'basespecifier' 'classordecltype' 'basetypespecifier' 'accessspecifier' 'conversionfunctionid' 'conversiontypeid' 'conversiondeclarator' 'ctorinitializer' 'meminitializerlist' 'meminitializer' 'meminitializerid' 'operatorfunctionid' 'literaloperatorid' 'templatedeclaration' 'templateparameterlist' 'templateparameter' 'typeparameter' 'simpletemplateid' 'templateid' 'templatename' 'templateargumentlist' 'templateargument' 'typenamespecifier' 'explicitinstantiation' 'explicitspecialization' 'tryblock' 'functiontryblock' 'handlerseq' 'handler' 'exceptiondeclaration' 'throwexpression' 'exceptionspecification' 'dynamicexceptionspecification' 'typeidlist' 'noexceptspecification' 'theoperator' 'literal' '<Stringliteral> ''value''+' 'booleanliteral' 'pointerliteral' 'userdefinedliteral' 'E O F' 'error')
]

{ #category : #generated }
CPPParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CPPTranslationUnitNode #CPPTranslationUnitNode #CPPExpressionNode #CPPIdentifierExpressionNode #CPPProgramNode #CPPQualifiedIdentifierNode #CPPNestedNameSpecifierNode #CPPLambdaExpressionNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CPPCaptureNode #CPPCaptureNode #CPPInitializedCaptureNode #OrderedCollection #CPPExpressionNode #SmaCCToken #OrderedCollection #CPPPseudoDestructorNameNode #CPPExpressionNode #SmaCCToken #CPPNewExpressionNode #OrderedCollection #CPPNewTypeIdentifierNode #CPPNewDeclaratorNode #OrderedCollection #CPPProgramNode #CPPDeleteExpressionNode #CPPNoexceptExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #SmaCCToken #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #SmaCCToken #CPPExpressionNode #CPPExpressionNode #CPPProgramNode #CPPStatementNode #CPPExpressionStatementNode #CPPCompoundStatementNode #OrderedCollection #CPPStatementNode #CPPProgramNode #CPPStatementNode #CPPProgramNode #CPPForRangeDeclarationNode #CPPProgramNode #CPPStatementNode #CPPProgramNode #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPAliasDeclarationNode #CPPSimpleDeclarationNode #CPPStaticAssertDeclarationNode #CPPAttributeDeclarationNode #CPPProgramNode #OrderedCollection #SmaCCToken #SmaCCToken #CPPProgramNode #CPPProgramNode #OrderedCollection #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPDecltypeSpecifierNode #CPPElaboratedTypeSpecifierNode #CPPEnumSpecifierNode #OrderedCollection #CPPOpaqueEnumDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #CPPEnumDefinitionNode #SmaCCToken #CPPIdentifierNode #SmaCCToken #CPPProgramNode #CPPProgramNode #CPPOriginalNamespaceDefinitionNode #CPPExtensionNamespaceDefinitionNode #CPPUnnamedNamespaceDefinitionNode #OrderedCollection #CPPNamespaceAliasDefinitionNode #OrderedCollection #CPPUsingDeclarationNode #CPPUsingDirectiveNode #CPPAsmDefinitionNode #CPPLinkageSpecificationNode #OrderedCollection #CPPProgramNode #CPPAlignmentSpecifierNode #OrderedCollection #CPPAttributeNode #OrderedCollection #OrderedCollection #SmaCCToken #CPPAttributeArgumentClauseNode #OrderedCollection #CPPAttributeArgumentClauseNode #OrderedCollection #CPPInitDeclaratorNode #CPPDeclaratorNode #CPPDeclaratorNode #CPPDeclaratorNode #OrderedCollection #OrderedCollection #CPPPointerOperatorNode #OrderedCollection #CPPCVQualifierNode #SmaCCToken #OrderedCollection #CPPTypeIdentifierNode #CPPProgramNode #CPPPtrAbstractDeclaratorNode #OrderedCollection #CPPAbstractPackDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #CPPParameterDeclarationNode #CPPFunctionDefinitionNode #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPProgramNode #OrderedCollection #CPPBracedListInitializerNode #CPPProgramNode #CPPClassSpecifierNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #CPPProgramNode #OrderedCollection #CPPMemberDeclaratorNode #OrderedCollection #SmaCCToken #CPPEqualInitializerNode #CPPNumericLiteralNode #OrderedCollection #OrderedCollection #CPPBaseSpecifierNode #CPPProgramNode #CPPProgramNode #SmaCCToken #CPPConversionFunctionIdentifierNode #OrderedCollection #CPPConversionDeclaratorNode #CPPCtorInitializerNode #OrderedCollection #CPPMemInitializerNode #CPPProgramNode #CPPOperatorFunctionIdentifierNode #CPPLiteralFunctionIdentifierNode #CPPTemplateDeclarationNode #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPTemplateIdentifierNode #CPPProgramNode #SmaCCToken #OrderedCollection #CPPProgramNode #CPPTypeNameSpecifierNode #CPPExplicitInstantiationNode #CPPExplicitSpecializationNode #CPPTryStatementNode #CPPTryStatementNode #OrderedCollection #CPPCatchHandlerNode #CPPExceptionDeclarationNode #CPPThrowExpressionNode #CPPProgramNode #CPPDynamicExceptionSpecificationNode #OrderedCollection #CPPNoExceptionSpecificiationNode #OrderedCollection #CPPLiteralNode #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
CPPParser class >> transitionTable [
^#(
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 209 0 142 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 0 229 0 202 0 233 0 203 0 233 0 204 0 233 0 205 0 233 0 206 0 233 0 207 0 233 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 0 233 0 223 1 53 0 224 0 233 0 231 0 233 0 232 0 233 0 233 0 233 0 234 0 233 0 235 0 233 0 237 0 233 0 239 0 233 0 240 0 233 0 241 0 233 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 0 233 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 0 233 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 0 233 1 65 0 233 1 66 0 6 1 83] 
#[1 0 10 0 2 0 10 0 3 0 10 0 4 0 10 0 5 0 10 0 6 0 10 0 7 0 10 0 8 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 24 0 10 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 29 0 10 0 30 0 10 0 31 0 10 0 32 0 10 0 33 0 10 0 34 0 7 0 35 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 41 0 10 0 42 0 10 0 43 0 10 0 44 0 10 0 45 0 10 0 46 0 10 0 47 0 11 0 49 0 10 0 65 0 10 0 76 0 10 0 90 0 10 0 91 0 10 0 111 0 10 0 123 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 127 0 10 0 128 1 201 0 243 1 101 0 244 1 101 0 245] 
#[1 0 10 0 2 0 10 0 3 0 10 0 4 0 10 0 5 0 10 0 6 0 10 0 7 0 10 0 8 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 24 0 10 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 29 0 10 0 30 0 10 0 31 0 10 0 32 0 10 0 33 0 10 0 34 0 7 0 35 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 41 0 10 0 42 0 10 0 43 0 10 0 44 0 10 0 45 0 10 0 46 0 10 0 47 0 11 0 49 0 10 0 65 0 10 0 76 0 10 0 90 0 10 0 91 0 10 0 111 0 10 0 123 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 127 0 10 0 128 1 205 0 243 1 101 0 244 1 101 0 245] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 1 221 1 1 1 225 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 0 10 0 2 0 10 0 3 0 10 0 4 0 10 0 5 0 10 0 6 0 10 0 7 0 10 0 8 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 24 0 10 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 29 0 10 0 30 0 10 0 31 0 10 0 32 0 10 0 33 0 10 0 34 0 7 0 35 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 41 0 10 0 42 0 10 0 43 0 10 0 44 0 10 0 45 0 10 0 46 0 10 0 47 0 11 0 49 0 77 0 61 0 10 0 65 0 10 0 76 0 10 0 90 0 10 0 91 0 10 0 111 0 197 0 120 0 10 0 123 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 127 0 10 0 128 1 229 0 243 1 101 0 244 1 101 0 245 1 233 1 6 1 237 1 7] 
#[1 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 1 241 0 144 0 217 0 145 0 221 0 146 1 245 0 147 1 213 0 218 1 217 0 219 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 0 14 0 10 0 47 0 90 0 106 0 128] 
#[0 0 18 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 1 249 0 35] 
#[1 0 85 0 65 1 253 0 128 2 1 0 219 2 5 1 26 2 5 1 59 1 185 1 61] 
#[0 2 13 0 8] 
#[0 2 17 0 8] 
#[0 0 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 30 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 88 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 109 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 38 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 2 21 0 8] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 0 42 0 26 0 15 0 27 0 42 0 35 0 42 0 42 0 42 0 49 2 25 0 60 0 19 0 65 2 29 0 104 0 23 0 128 2 37 0 147 1 213 0 218 1 217 0 219 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 0 46 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[1 0 50 0 5 0 50 0 6 0 50 0 8 0 50 0 10 0 50 0 23 0 50 0 27 0 50 0 28 0 50 0 35 0 50 0 47 0 50 0 49 0 50 0 52 0 50 0 53 0 50 0 57 0 50 0 58 0 50 0 59 0 50 0 60 0 50 0 61 0 50 0 62 0 50 0 65 0 50 0 69 0 50 0 72 0 50 0 73 0 50 0 74 0 50 0 77 0 50 0 79 0 50 0 82 0 50 0 83 0 50 0 84 0 50 0 85 0 50 0 90 0 50 0 95 0 50 0 98 0 50 0 99 0 50 0 101 0 50 0 104 2 41 0 106 0 50 0 108 0 50 0 112 0 50 0 114 0 50 0 115 0 50 0 116 0 50 0 118 0 50 0 119 0 50 0 120 0 50 0 121 0 50 0 128 2 45 0 133] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 38 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[1 0 46 0 5 0 46 0 6 0 46 0 8 0 46 0 10 0 46 0 23 0 46 0 27 0 46 0 28 0 46 0 35 0 46 0 47 0 46 0 49 0 46 0 52 0 46 0 53 0 46 0 57 0 46 0 58 0 46 0 59 0 46 0 60 0 46 0 61 0 46 0 62 0 46 0 65 0 46 0 69 0 46 0 72 0 46 0 73 0 46 0 74 0 46 0 77 0 46 0 79 0 46 0 82 0 46 0 83 0 46 0 84 0 46 0 85 2 49 0 86 0 46 0 90 0 46 0 95 0 46 0 98 0 46 0 99 0 46 0 101 0 46 0 104 0 46 0 108 0 46 0 112 0 46 0 114 0 46 0 115 0 46 0 116 0 46 0 118 0 46 0 119 0 46 0 120 0 46 0 121 0 46 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 50 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[1 2 53 0 42 2 57 0 128 2 61 0 230] 
#[1 2 65 0 1 2 69 0 2 2 73 0 3 2 77 0 4 2 81 0 5 2 85 0 6 2 89 0 7 2 93 0 8 2 97 0 10 2 101 0 11 2 105 0 12 2 109 0 13 2 113 0 14 2 117 0 15 2 121 0 16 2 125 0 17 2 129 0 18 2 133 0 19 2 137 0 20 2 141 0 24 2 145 0 25 0 29 0 27 2 149 0 29 2 153 0 30 2 157 0 31 2 161 0 32 2 165 0 33 2 169 0 35 2 173 0 37 2 177 0 38 2 181 0 39 2 185 0 40 2 189 0 41 2 193 0 43 2 197 0 44 2 201 0 45 2 205 0 47 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 2 209 0 67 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 2 213 0 87 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 2 217 0 123 2 221 0 124 2 225 0 125 2 229 0 126 2 233 0 127 1 253 0 128 2 237 0 133 2 241 0 136 2 245 0 147 2 249 0 213 2 249 0 214 2 253 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 3 5 1 47 1 29 1 59 1 185 1 61 2 249 1 64 3 9 1 77] 
#[0 0 50 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 50 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 3 13 0 8] 
#[0 0 54 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 3 17 0 29 0 37 0 35 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 3 21 0 203 3 21 0 204 3 21 0 205 3 21 0 206 3 21 0 207 3 21 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 21 0 223 1 53 0 224 3 21 0 231 3 21 0 232 3 21 0 233 3 21 0 234 3 21 0 235 3 21 0 237 3 21 0 239 3 21 0 240 3 21 0 241 3 21 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 3 21 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 3 21 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 3 21 1 65 3 21 1 66] 
#[0 0 50 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 38 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[1 0 29 0 27 0 85 0 65 1 253 0 128 3 25 0 147 1 213 0 218 1 217 0 219 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 0 58 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 3 29 0 27 0 85 0 65 3 33 0 86 3 37 0 114 3 41 0 128 3 45 0 147 1 213 0 218 1 217 0 219 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 0 46 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 88 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 109 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 27 0 5 0 27 0 6 0 62 0 7 0 27 0 8 0 27 0 9 0 27 0 10 0 62 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 27 0 15 0 62 0 16 0 62 0 17 0 62 0 18 0 62 0 19 0 62 0 20 0 62 0 21 0 62 0 22 0 27 0 23 0 62 0 24 0 62 0 25 0 62 0 26 0 66 0 27 0 27 0 28 0 31 0 29 0 62 0 30 0 27 0 31 0 62 0 32 0 62 0 33 0 62 0 34 0 27 0 35 0 62 0 36 0 62 0 37 0 62 0 38 0 62 0 39 0 62 0 41 0 27 0 42 0 62 0 43 0 62 0 44 0 62 0 45 0 62 0 46 0 66 0 47 0 27 0 49 0 66 0 52 0 66 0 53 0 66 0 57 0 66 0 58 0 66 0 59 0 66 0 60 0 66 0 61 0 66 0 62 0 66 0 65 0 66 0 69 0 66 0 72 0 66 0 73 0 66 0 74 0 62 0 76 0 66 0 77 0 66 0 79 0 66 0 82 0 66 0 83 0 66 0 84 0 66 0 85 0 66 0 90 0 62 0 91 0 66 0 95 0 66 0 98 0 66 0 99 0 66 0 101 0 66 0 104 0 66 0 108 0 62 0 111 0 66 0 112 0 66 0 114 0 66 0 115 0 66 0 116 0 66 0 118 0 66 0 119 0 66 0 120 0 66 0 121 0 62 0 123 0 27 0 124 0 62 0 125 0 62 0 126 0 62 0 127 0 66 0 128] 
#[0 0 0 1 83] 
#[0 0 74 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 3 49 0 10 0 41 0 47 0 133 0 90 3 53 0 106 3 57 0 128 3 61 0 145 3 65 0 218 3 65 1 26 3 61 1 46 1 165 1 53 1 169 1 54 3 69 1 59 3 61 1 60 1 185 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 3 73 0 203 3 73 0 204 3 73 0 205 3 73 0 206 3 73 0 207 3 73 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 73 0 223 1 53 0 224 3 73 0 231 3 73 0 232 3 73 0 233 3 73 0 234 3 73 0 235 3 73 0 237 3 73 0 239 3 73 0 240 3 73 0 241 3 73 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 3 73 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 3 73 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 3 73 1 65 3 73 1 66 0 82 1 83] 
#[0 0 86 0 5 0 6 0 8 0 10 0 23 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 0 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 0 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 0 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 0 98 0 5 0 98 0 6 0 98 0 8 0 98 0 9 0 98 0 10 0 98 0 15 0 98 0 23 0 98 0 26 0 35 0 27 0 98 0 28 0 98 0 31 0 39 0 35 0 98 0 47 0 43 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 47 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 98 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 98 0 124 0 51 0 128 2 245 0 147 1 1 0 209 3 85 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 3 89 0 243 1 101 0 244 1 101 0 245 1 1 1 7 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 1 1 1 64] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 3 93 0 28 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 3 97 0 254 1 113 0 255 3 101 1 0 3 101 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 0 38 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 38 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 102 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 0 114 0 2 0 114 0 3 0 114 0 4 0 114 0 5 0 114 0 6 0 114 0 7 0 114 0 8 0 114 0 9 0 114 0 10 0 114 0 11 0 114 0 12 0 114 0 13 0 114 0 14 0 114 0 15 0 114 0 16 0 114 0 17 0 114 0 18 0 114 0 19 0 114 0 20 0 114 0 21 0 114 0 22 0 114 0 23 0 114 0 24 0 114 0 25 0 114 0 26 0 55 0 27 0 114 0 28 0 114 0 29 0 114 0 30 0 114 0 31 0 114 0 32 0 114 0 33 0 114 0 34 0 114 0 35 0 114 0 36 0 114 0 37 0 114 0 38 0 114 0 39 0 114 0 41 0 114 0 42 0 114 0 43 0 114 0 44 0 114 0 45 0 114 0 46 0 114 0 47 0 114 0 49 0 114 0 52 0 114 0 53 0 114 0 57 0 114 0 58 0 114 0 59 0 114 0 60 0 114 0 61 0 114 0 62 0 114 0 65 0 114 0 69 0 114 0 72 0 114 0 73 0 114 0 74 0 114 0 76 0 114 0 77 0 114 0 79 0 114 0 82 0 114 0 83 0 114 0 84 0 114 0 85 0 114 0 90 0 114 0 91 0 114 0 95 0 114 0 98 0 114 0 99 0 114 0 101 0 114 0 104 0 114 0 108 0 114 0 111 0 114 0 112 0 114 0 114 0 114 0 115 0 114 0 116 0 114 0 118 0 114 0 119 0 114 0 120 0 114 0 121 0 114 0 123 0 114 0 124 0 114 0 125 0 114 0 126 0 114 0 127 0 114 0 128] 
#[1 0 118 0 2 0 118 0 3 0 118 0 4 0 118 0 5 0 118 0 6 0 118 0 7 0 118 0 8 0 118 0 9 0 118 0 10 0 118 0 11 0 118 0 12 0 118 0 13 0 118 0 14 0 118 0 15 0 118 0 16 0 118 0 17 0 118 0 18 0 118 0 19 0 118 0 20 0 118 0 21 0 118 0 22 0 118 0 23 0 118 0 24 0 118 0 25 0 118 0 26 0 59 0 27 0 118 0 28 0 118 0 29 0 118 0 30 0 118 0 31 0 118 0 32 0 118 0 33 0 118 0 34 0 118 0 35 0 118 0 36 0 118 0 37 0 118 0 38 0 118 0 39 0 118 0 41 0 118 0 42 0 118 0 43 0 118 0 44 0 118 0 45 0 118 0 46 0 118 0 47 0 118 0 49 0 118 0 52 0 118 0 53 0 118 0 57 0 118 0 58 0 118 0 59 0 118 0 60 0 118 0 61 0 118 0 62 0 118 0 65 0 118 0 69 0 118 0 72 0 118 0 73 0 118 0 74 0 118 0 76 0 118 0 77 0 118 0 79 0 118 0 82 0 118 0 83 0 118 0 84 0 118 0 85 0 118 0 90 0 118 0 91 0 118 0 95 0 118 0 98 0 118 0 99 0 118 0 101 0 118 0 104 0 118 0 108 0 118 0 111 0 118 0 112 0 118 0 114 0 118 0 115 0 118 0 116 0 118 0 118 0 118 0 119 0 118 0 120 0 118 0 121 0 118 0 123 0 118 0 124 0 118 0 125 0 118 0 126 0 118 0 127 0 118 0 128] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 3 113 0 42] 
#[0 0 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[1 3 117 0 26 0 29 0 27 0 37 0 35 0 122 0 42 0 45 0 49 0 85 0 65 3 121 0 128 3 125 0 147 1 213 0 218 1 217 0 219 3 129 0 225 3 133 0 243 1 101 0 244 1 101 0 245 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 0 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 126 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 130 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 130 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 126 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 0 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 0 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 0 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 0 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 3 137 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 3 141 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 1 1 0 209 3 145 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 3 149 0 244 3 149 0 245 3 153 0 254 1 113 0 255 3 157 1 0 3 157 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64] 
#[0 0 134 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 0 138 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 3 161 0 15 3 165 0 28] 
#[0 0 142 0 15 0 28] 
#[1 3 169 0 8 0 146 0 15 3 173 0 26 0 146 0 28 3 177 0 31 3 181 0 42 3 221 0 76 3 221 0 91 3 193 0 111 3 197 0 192 3 201 1 20 3 205 1 21 3 205 1 22 3 205 1 25 3 217 1 36 3 221 1 37 3 225 1 49 3 229 1 68] 
#[0 0 150 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 0 63 0 8 0 154 0 9 0 154 0 15 0 154 0 23 0 154 0 26 0 154 0 28 0 154 0 31 3 237 0 35 0 154 0 42 0 154 0 76 0 154 0 91 0 154 0 111 0 154 0 124 3 241 1 3] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 3 245 1 1 1 225 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 0 158 0 8 0 158 0 9 0 158 0 15 0 158 0 23 0 158 0 26 0 158 0 28 0 158 0 31 0 67 0 35 0 158 0 42 0 45 0 49 0 158 0 76 0 158 0 91 0 158 0 111 0 158 0 124 3 249 0 243 1 101 0 244 1 101 0 245] 
#[0 0 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 3 253 0 42] 
#[1 4 1 0 26 0 29 0 27 0 37 0 35 0 166 0 42 0 45 0 49 0 85 0 65 4 5 0 128 4 9 0 147 1 213 0 218 1 217 0 219 4 13 0 243 1 101 0 244 1 101 0 245 4 17 1 26 4 21 1 29 4 25 1 40 4 29 1 59 1 185 1 61] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 0 170 0 2 0 170 0 3 0 170 0 4 0 170 0 5 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 170 0 11 0 170 0 12 0 170 0 13 0 170 0 14 0 170 0 15 0 170 0 16 0 170 0 17 0 170 0 18 0 170 0 19 0 170 0 20 0 170 0 21 0 170 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 0 170 0 28 0 71 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 34 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 49 0 170 0 76 0 170 0 91 0 170 0 111 0 170 0 123 0 170 0 124 0 170 0 125 0 170 0 126 0 170 0 127] 
#[1 0 170 0 2 0 170 0 3 0 170 0 4 0 170 0 5 0 170 0 6 0 170 0 7 0 170 0 8 0 170 0 9 0 170 0 10 0 170 0 11 0 170 0 12 0 170 0 13 0 170 0 14 0 170 0 15 0 170 0 16 0 170 0 17 0 170 0 18 0 170 0 19 0 170 0 20 0 170 0 21 0 170 0 22 0 170 0 23 0 170 0 24 0 170 0 25 0 170 0 26 0 170 0 28 0 75 0 29 0 170 0 30 0 170 0 31 0 170 0 32 0 170 0 33 0 170 0 34 0 170 0 35 0 170 0 36 0 170 0 37 0 170 0 38 0 170 0 39 0 170 0 41 0 170 0 42 0 170 0 43 0 170 0 44 0 170 0 45 0 170 0 46 0 170 0 49 0 170 0 76 0 170 0 91 0 170 0 111 0 170 0 123 0 170 0 124 0 170 0 125 0 170 0 126 0 170 0 127] 
#[0 0 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 0 174 0 2 0 174 0 3 0 174 0 4 0 79 0 5 0 79 0 6 0 174 0 7 0 79 0 8 0 79 0 9 0 79 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 79 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 22 0 79 0 23 0 174 0 24 0 174 0 25 0 79 0 26 0 178 0 27 0 79 0 28 0 174 0 29 0 174 0 30 0 79 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 79 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 39 0 174 0 41 0 79 0 42 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 178 0 47 0 79 0 49 0 178 0 52 0 178 0 53 0 178 0 57 0 178 0 58 0 178 0 59 0 178 0 60 0 178 0 61 0 178 0 62 0 178 0 65 0 178 0 69 0 178 0 72 0 178 0 73 0 178 0 74 0 174 0 76 0 178 0 77 0 178 0 79 0 178 0 82 0 178 0 83 0 178 0 84 0 178 0 85 0 178 0 90 0 174 0 91 0 178 0 95 0 178 0 98 0 178 0 99 0 178 0 101 0 178 0 104 0 178 0 108 0 174 0 111 0 178 0 112 0 178 0 114 0 178 0 115 0 178 0 116 0 178 0 118 0 178 0 119 0 178 0 120 0 178 0 121 0 174 0 123 0 79 0 124 0 174 0 125 0 174 0 126 0 174 0 127 0 178 0 128] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 4 41 0 29] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 0 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 0 182 0 5 0 182 0 6 0 182 0 7 0 182 0 8 0 182 0 9 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 18 0 182 0 19 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 23 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 32 0 182 0 33 0 182 0 34 0 83 0 35 0 182 0 36 0 182 0 37 0 182 0 38 0 182 0 39 0 182 0 41 0 182 0 42 0 182 0 43 0 182 0 44 0 182 0 45 0 182 0 46 0 182 0 47 0 87 0 49 0 182 0 65 0 182 0 76 0 182 0 90 0 182 0 91 0 182 0 111 0 182 0 123 0 182 0 124 0 182 0 125 0 182 0 126 0 182 0 127 0 182 0 128 3 149 0 244 3 149 0 245] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 0 182 0 5 0 182 0 6 0 182 0 7 0 182 0 8 0 182 0 9 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 18 0 182 0 19 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 23 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 32 0 182 0 33 0 182 0 34 0 83 0 35 0 182 0 36 0 182 0 37 0 182 0 38 0 182 0 39 0 182 0 41 0 182 0 42 0 182 0 43 0 182 0 44 0 182 0 45 0 182 0 46 0 182 0 47 0 87 0 49 0 182 0 65 0 182 0 76 0 182 0 90 0 182 0 91 0 182 0 111 0 182 0 123 0 182 0 124 0 182 0 125 0 182 0 126 0 182 0 127 0 182 0 128 3 149 0 244 3 149 0 245] 
#[1 3 49 0 10 0 41 0 47 0 133 0 90 4 45 0 106 4 49 0 128 3 61 0 145 3 61 1 46 1 165 1 53 1 169 1 54 4 53 1 59 3 61 1 60 1 185 1 61] 
#[0 3 105 0 27] 
#[0 3 109 0 27] 
#[0 4 57 0 9] 
#[1 0 63 0 8 0 154 0 9 0 154 0 15 0 154 0 23 0 154 0 26 0 154 0 28 0 154 0 31 3 237 0 35 0 154 0 42 0 154 0 76 0 154 0 91 0 154 0 111 0 154 0 124 4 61 1 3] 
#[1 0 182 0 2 0 182 0 3 0 182 0 4 0 182 0 5 0 182 0 6 0 182 0 7 0 182 0 8 0 182 0 9 0 182 0 10 0 182 0 11 0 182 0 12 0 182 0 13 0 182 0 14 0 182 0 15 0 182 0 16 0 182 0 17 0 182 0 18 0 182 0 19 0 182 0 20 0 182 0 21 0 182 0 22 0 182 0 23 0 182 0 24 0 182 0 25 0 182 0 26 0 182 0 27 0 182 0 28 0 182 0 29 0 182 0 30 0 182 0 31 0 182 0 32 0 182 0 33 0 182 0 34 0 83 0 35 0 182 0 36 0 182 0 37 0 182 0 38 0 182 0 39 0 182 0 41 0 182 0 42 0 182 0 43 0 182 0 44 0 182 0 45 0 182 0 46 0 182 0 47 0 87 0 49 0 77 0 61 0 182 0 65 0 182 0 76 0 182 0 90 0 182 0 91 0 182 0 111 0 197 0 120 0 182 0 123 0 182 0 124 0 182 0 125 0 182 0 126 0 182 0 127 0 182 0 128 3 149 0 244 3 149 0 245 4 65 1 6 1 237 1 7] 
#[0 0 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 0 190 0 2 0 190 0 3 0 190 0 4 0 190 0 5 0 190 0 6 0 190 0 7 0 190 0 8 0 190 0 9 0 190 0 10 0 190 0 11 0 190 0 12 0 190 0 13 0 190 0 14 0 190 0 15 0 190 0 16 0 190 0 17 0 190 0 18 0 190 0 19 0 190 0 20 0 190 0 21 0 190 0 22 0 190 0 23 0 190 0 24 0 190 0 25 0 190 0 26 0 190 0 27 0 190 0 28 0 190 0 29 0 190 0 30 0 190 0 31 0 190 0 32 0 190 0 33 0 190 0 34 0 190 0 35 0 190 0 36 0 190 0 37 0 190 0 38 0 190 0 39 0 190 0 41 0 190 0 42 0 190 0 43 0 190 0 44 0 190 0 45 0 190 0 46 0 190 0 47 0 190 0 49 0 77 0 61 0 190 0 65 0 190 0 76 0 190 0 88 0 190 0 90 0 190 0 91 0 190 0 109 0 190 0 111 0 197 0 120 0 190 0 123 0 190 0 124 0 190 0 125 0 190 0 126 0 190 0 127 0 190 0 128 4 69 1 6 1 237 1 7] 
#[0 0 194 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[1 0 41 0 47 0 133 0 90 4 45 0 106 4 49 0 128 3 61 0 145 3 61 1 46 1 165 1 53 1 169 1 54 4 53 1 59 3 61 1 60 1 185 1 61] 
#[1 0 198 0 15 0 198 0 36 4 73 0 128 4 77 0 246 4 81 0 247 4 85 0 248 4 89 0 249 4 93 0 250] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 66 0 8 0 66 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 15 0 66 0 16 0 66 0 17 0 66 0 18 0 66 0 19 0 66 0 20 0 66 0 21 0 66 0 22 0 66 0 23 0 66 0 24 0 66 0 25 0 66 0 26 0 66 0 27 0 66 0 28 0 91 0 29 0 66 0 30 0 66 0 31 0 66 0 32 0 66 0 33 0 66 0 34 0 66 0 35 0 66 0 36 0 66 0 37 0 66 0 38 0 66 0 39 0 66 0 41 0 66 0 42 0 66 0 43 0 66 0 44 0 66 0 45 0 66 0 46 0 66 0 47 0 66 0 49 0 66 0 52 0 66 0 53 0 66 0 57 0 66 0 58 0 66 0 59 0 66 0 60 0 66 0 61 0 66 0 62 0 66 0 65 0 66 0 69 0 66 0 72 0 66 0 73 0 66 0 74 0 66 0 76 0 66 0 77 0 66 0 79 0 66 0 82 0 66 0 83 0 66 0 84 0 66 0 85 0 66 0 90 0 66 0 91 0 66 0 95 0 66 0 98 0 66 0 99 0 66 0 101 0 66 0 104 0 66 0 108 0 66 0 111 0 66 0 112 0 66 0 114 0 66 0 115 0 66 0 116 0 66 0 118 0 66 0 119 0 66 0 120 0 66 0 121 0 66 0 123 0 66 0 124 0 66 0 125 0 66 0 126 0 66 0 127 0 66 0 128] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 5 81 0 184 5 81 0 188 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 5 93 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 5 121 0 133] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 5 125 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 5 145 0 184 5 145 0 185 5 145 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 145 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 0 206 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[0 0 210 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 214 0 20 0 214 0 21 0 214 0 22 0 214 0 23 0 214 0 24 0 214 0 25 0 214 0 26 0 95 0 27 0 214 0 28 0 99 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 36 0 214 0 37 0 214 0 38 0 214 0 39 0 214 0 41 0 214 0 42 0 214 0 43 0 214 0 44 0 214 0 45 0 214 0 46 0 214 0 47 0 214 0 49 0 214 0 52 0 214 0 53 0 214 0 57 0 214 0 58 0 214 0 59 0 214 0 60 0 214 0 61 0 214 0 62 0 214 0 65 0 214 0 69 0 214 0 72 0 214 0 73 0 214 0 74 0 214 0 76 0 214 0 77 0 214 0 79 0 214 0 82 0 214 0 83 0 214 0 84 0 214 0 85 0 214 0 90 0 214 0 91 0 214 0 95 0 214 0 98 0 214 0 99 0 214 0 101 0 214 0 104 0 214 0 108 0 214 0 111 0 214 0 112 0 214 0 114 0 214 0 115 0 214 0 116 0 214 0 118 0 214 0 119 0 214 0 120 0 214 0 121 0 214 0 123 0 214 0 124 0 214 0 125 0 214 0 126 0 214 0 127 0 214 0 128] 
#[1 5 161 0 106 5 165 0 128 5 169 1 59 1 185 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 173 0 203 5 173 0 204 5 173 0 205 5 173 0 206 5 173 0 207 5 173 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 5 173 0 223 1 53 0 224 5 173 0 231 5 173 0 232 5 173 0 233 5 173 0 234 5 173 0 235 5 173 0 237 5 173 0 239 5 173 0 240 5 173 0 241 5 173 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 5 173 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 5 173 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 5 173 1 65 5 173 1 66] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 5 177 0 42 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 181 0 203 5 181 0 204 5 181 0 205 5 181 0 206 5 181 0 207 5 181 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 5 181 0 223 1 53 0 224 5 181 0 231 5 181 0 232 5 181 0 233 5 181 0 234 5 181 0 235 5 181 0 237 5 181 0 239 5 181 0 240 5 181 0 241 5 181 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 5 181 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 5 181 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 5 181 1 65 5 181 1 66] 
#[1 5 185 0 42 5 189 0 128 5 193 0 230] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 218 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 197 0 202 0 233 0 203 0 233 0 204 0 233 0 205 0 233 0 206 0 233 0 207 0 233 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 0 233 0 223 1 53 0 224 0 233 0 231 0 233 0 232 0 233 0 233 0 233 0 234 0 233 0 235 5 201 0 236 0 233 0 237 0 233 0 239 0 233 0 240 0 233 0 241 0 233 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 0 233 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 0 233 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 0 233 1 65 0 233 1 66] 
#[1 5 205 0 31 0 103 0 42] 
#[0 5 213 0 42] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 5 217 0 9] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 5 221 0 36] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 0 226 0 2 0 226 0 3 0 226 0 4 0 226 0 5 0 226 0 6 0 226 0 7 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 11 0 226 0 12 0 226 0 13 0 226 0 14 0 226 0 15 0 226 0 16 0 226 0 17 0 226 0 18 0 226 0 19 0 226 0 20 0 226 0 21 0 226 0 22 0 226 0 23 0 226 0 24 0 226 0 25 0 226 0 26 0 226 0 28 0 226 0 29 0 226 0 30 0 226 0 31 0 226 0 32 0 226 0 33 0 226 0 34 0 107 0 35 0 226 0 36 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 41 0 226 0 42 0 226 0 43 0 226 0 44 0 226 0 45 0 226 0 46 0 226 0 49 0 226 0 76 0 226 0 91 0 226 0 111 0 226 0 123 0 226 0 124 0 226 0 125 0 226 0 126 0 226 0 127] 
#[1 0 226 0 2 0 226 0 3 0 226 0 4 0 226 0 5 0 226 0 6 0 226 0 7 0 226 0 8 0 226 0 9 0 226 0 10 0 226 0 11 0 226 0 12 0 226 0 13 0 226 0 14 0 226 0 15 0 226 0 16 0 226 0 17 0 226 0 18 0 226 0 19 0 226 0 20 0 226 0 21 0 226 0 22 0 226 0 23 0 226 0 24 0 226 0 25 0 226 0 26 0 226 0 28 0 226 0 29 0 226 0 30 0 226 0 31 0 226 0 32 0 226 0 33 0 226 0 34 0 111 0 35 0 226 0 36 0 226 0 37 0 226 0 38 0 226 0 39 0 226 0 41 0 226 0 42 0 226 0 43 0 226 0 44 0 226 0 45 0 226 0 46 0 226 0 49 0 226 0 76 0 226 0 91 0 226 0 111 0 226 0 123 0 226 0 124 0 226 0 125 0 226 0 126 0 226 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 5 233 0 128] 
#[0 0 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 5 237 0 106 5 241 0 128 3 65 0 218 3 65 1 26 5 245 1 59 1 185 1 61] 
#[1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 234 0 15 0 234 0 16 0 234 0 17 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 21 0 234 0 22 0 234 0 23 0 234 0 24 0 234 0 25 0 234 0 26 0 115 0 27 0 234 0 28 0 234 0 29 0 234 0 30 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 34 0 119 0 35 0 234 0 36 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 41 0 234 0 42 0 234 0 43 0 234 0 44 0 234 0 45 0 234 0 46 0 234 0 47 0 123 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 127 0 65 0 89 0 69 0 93 0 72 0 234 0 76 0 105 0 77 0 117 0 83 0 121 0 84 0 234 0 90 0 234 0 91 0 141 0 98 0 145 0 99 0 157 0 104 0 234 0 111 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 234 0 123 0 234 0 124 0 234 0 125 0 234 0 126 0 234 0 127 0 131 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 249 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 5 253 0 243 1 101 0 244 1 101 0 245 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 0 238 0 2 0 238 0 3 0 238 0 4 0 135 0 5 0 139 0 6 0 238 0 7 0 238 0 8 0 238 0 9 0 143 0 10 0 238 0 11 0 238 0 12 0 238 0 13 0 238 0 14 0 238 0 15 0 238 0 16 0 238 0 17 0 238 0 18 0 238 0 19 0 238 0 20 0 238 0 21 0 238 0 22 0 238 0 23 0 238 0 24 0 238 0 25 0 238 0 26 0 29 0 27 0 238 0 28 0 238 0 29 0 238 0 30 0 238 0 31 0 238 0 32 0 238 0 33 0 238 0 34 0 238 0 35 0 238 0 36 0 238 0 37 0 238 0 38 0 238 0 39 0 238 0 41 0 238 0 42 0 238 0 43 0 238 0 44 0 238 0 45 0 238 0 46 0 238 0 49 0 85 0 65 0 238 0 76 0 238 0 91 0 238 0 111 0 238 0 123 0 238 0 124 0 238 0 125 0 238 0 126 0 238 0 127 1 253 0 128 6 1 0 147 1 213 0 218 1 217 0 219 6 5 1 5 1 213 1 26 6 9 1 48 1 213 1 59 1 185 1 61] 
#[1 3 117 0 26 0 29 0 27 0 37 0 35 0 122 0 42 0 45 0 49 0 85 0 65 6 13 0 128 3 125 0 147 1 213 0 218 1 217 0 219 3 129 0 225 6 17 0 243 1 101 0 244 1 101 0 245 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 0 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 6 21 0 184 6 21 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 6 25 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 6 29 0 106 1 9 0 108 0 169 0 112 6 33 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 6 37 0 124 1 253 0 128 2 245 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 1 1 1 7 6 57 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 6 53 1 56 6 57 1 57 6 57 1 58 1 29 1 59 1 185 1 61 1 1 1 64] 
#[0 0 250 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 6 65 0 106 6 69 0 128 6 73 1 59 1 185 1 61] 
#[1 0 147 0 47 0 151 0 90 0 14 0 106 0 155 0 128 6 81 0 145 6 81 1 46 1 165 1 53 1 169 1 54 6 81 1 59 6 81 1 60 1 185 1 61] 
#[1 0 29 0 27 0 85 0 65 6 89 0 128 6 93 0 147 1 213 0 218 1 217 0 219 6 97 0 229 6 101 0 230 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 0 29 0 27 0 85 0 65 1 253 0 128 6 105 0 147 1 213 0 218 1 217 0 219 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 0 66 0 27 0 70 0 29 6 109 0 31 0 37 0 35 0 45 0 49 6 113 0 243 1 101 0 244 1 101 0 245] 
#[1 0 41 0 47 0 133 0 90 5 161 0 106 4 49 0 128 6 117 0 145 6 117 1 46 1 165 1 53 1 169 1 54 4 53 1 59 6 117 1 60 1 185 1 61] 
#[1 0 254 0 2 0 254 0 3 0 254 0 4 0 254 0 5 0 254 0 6 0 254 0 7 0 254 0 8 0 254 0 9 0 254 0 10 0 254 0 11 0 254 0 12 0 254 0 13 0 254 0 14 0 254 0 15 0 254 0 16 0 254 0 17 0 254 0 18 0 254 0 19 0 254 0 20 0 254 0 21 0 254 0 22 0 254 0 23 0 254 0 24 0 254 0 25 0 254 0 26 0 254 0 27 0 254 0 28 0 254 0 29 0 254 0 30 0 254 0 31 0 254 0 32 0 254 0 33 0 254 0 34 0 159 0 35 0 254 0 36 0 254 0 37 0 254 0 38 0 254 0 39 0 254 0 41 0 254 0 42 0 254 0 43 0 254 0 44 0 254 0 45 0 254 0 46 0 254 0 47 0 163 0 49 0 77 0 61 0 254 0 65 0 254 0 76 0 254 0 90 0 254 0 91 0 254 0 111 0 197 0 120 0 254 0 123 0 254 0 124 0 254 0 125 0 254 0 126 0 254 0 127 0 254 0 128 6 121 0 243 1 101 0 244 1 101 0 245 6 125 1 6 1 237 1 7] 
#[1 0 41 0 47 0 133 0 90 6 77 0 128 6 129 0 145 6 129 1 46 1 165 1 53 1 169 1 54 6 133 1 59 6 129 1 60 1 185 1 61] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 27 0 5 0 27 0 6 0 62 0 7 0 27 0 8 0 27 0 9 0 27 0 10 0 62 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 27 0 15 0 62 0 16 0 62 0 17 0 62 0 18 0 62 0 19 0 62 0 20 0 62 0 21 0 62 0 22 0 27 0 23 0 62 0 24 0 62 0 25 0 27 0 26 0 167 0 27 0 27 0 28 0 31 0 29 0 62 0 30 0 27 0 31 0 62 0 32 0 62 0 33 0 62 0 34 0 27 0 35 0 62 0 36 0 62 0 37 0 62 0 38 0 62 0 39 0 62 0 41 0 27 0 42 0 62 0 43 0 62 0 44 0 62 0 45 0 62 0 46 0 66 0 47 0 27 0 49 0 66 0 52 0 66 0 53 0 66 0 57 0 66 0 58 0 66 0 59 0 66 0 60 0 66 0 61 0 66 0 62 0 66 0 65 0 66 0 69 0 66 0 72 0 66 0 73 0 66 0 74 0 62 0 76 0 66 0 77 0 66 0 79 0 66 0 82 0 66 0 83 0 66 0 84 0 66 0 85 0 66 0 90 0 62 0 91 0 66 0 95 0 66 0 98 0 66 0 99 0 66 0 101 0 66 0 104 0 66 0 108 0 62 0 111 0 66 0 112 0 66 0 114 0 66 0 115 0 66 0 116 0 66 0 118 0 66 0 119 0 66 0 120 0 66 0 121 0 62 0 123 0 27 0 124 0 62 0 125 0 62 0 126 0 62 0 127 0 66 0 128] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 0 174 0 2 0 174 0 3 0 174 0 4 0 79 0 5 0 79 0 6 0 174 0 7 0 79 0 8 0 79 0 9 0 79 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 79 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 22 0 79 0 23 0 174 0 24 0 174 0 25 0 79 0 26 0 171 0 27 0 79 0 28 0 174 0 29 0 174 0 30 0 79 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 79 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 39 0 174 0 41 0 79 0 42 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 178 0 47 0 79 0 49 0 178 0 52 0 178 0 53 0 178 0 57 0 178 0 58 0 178 0 59 0 178 0 60 0 178 0 61 0 178 0 62 0 178 0 65 0 178 0 69 0 178 0 72 0 178 0 73 0 178 0 74 0 174 0 76 0 178 0 77 0 178 0 79 0 178 0 82 0 178 0 83 0 178 0 84 0 178 0 85 0 178 0 90 0 174 0 91 0 178 0 95 0 178 0 98 0 178 0 99 0 178 0 101 0 178 0 104 0 178 0 108 0 174 0 111 0 178 0 112 0 178 0 114 0 178 0 115 0 178 0 116 0 178 0 118 0 178 0 119 0 178 0 120 0 178 0 121 0 174 0 123 0 79 0 124 0 174 0 125 0 174 0 126 0 174 0 127 0 178 0 128] 
#[0 1 10 0 5 0 6 0 8 0 10 0 23 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 0 50 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 46 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 1 14 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 65 0 90 0 124 0 128] 
#[1 1 14 0 5 1 14 0 6 1 14 0 8 1 14 0 9 1 14 0 10 1 14 0 15 1 14 0 23 1 14 0 26 1 14 0 27 1 14 0 28 1 14 0 31 0 175 0 35 1 14 0 47 0 179 0 49 1 14 0 65 1 14 0 90 1 14 0 124 1 14 0 128 3 149 0 244 3 149 0 245] 
#[0 1 18 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[1 3 161 0 15 6 145 0 28] 
#[1 3 169 0 8 0 146 0 15 3 173 0 26 0 146 0 28 3 177 0 31 3 181 0 42 3 221 0 76 3 221 0 91 3 193 0 111 3 197 0 192 6 149 1 20 3 205 1 21 3 205 1 22 3 205 1 25 6 153 1 36 3 221 1 37 3 225 1 49 3 229 1 68] 
#[0 1 22 0 10 0 47 0 90 0 106 0 128] 
#[0 1 22 0 10 0 47 0 90 0 106 0 128] 
#[1 6 157 0 46 6 173 0 128 6 165 0 226 6 169 0 227 6 173 0 228] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 6 177 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 3 117 0 26 0 66 0 27 6 181 0 28 0 70 0 29 1 26 0 42 6 185 0 225] 
#[1 5 161 0 106 6 189 0 128 5 169 1 59 1 185 1 61] 
#[0 1 30 0 42] 
#[1 3 117 0 26 0 29 0 27 0 37 0 35 1 34 0 42 0 45 0 49 0 85 0 65 6 193 0 128 6 197 0 147 1 213 0 218 1 217 0 219 6 201 0 225 3 149 0 244 3 149 0 245 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 1 38 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 6 205 0 86] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 6 209 0 254 1 113 0 255 6 213 1 0 6 213 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 1 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 3 161 0 15 6 217 0 28] 
#[1 3 169 0 8 0 146 0 15 3 173 0 26 0 146 0 28 3 177 0 31 3 181 0 42 3 221 0 76 3 221 0 91 3 193 0 111 3 197 0 192 6 221 1 20 3 205 1 21 3 205 1 22 3 205 1 25 6 225 1 36 3 221 1 37 3 225 1 49 3 229 1 68] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 6 229 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 1 46 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 6 241 0 159 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 5 149 0 217 1 29 0 218 1 33 0 219 6 249 1 23 6 253 1 24 6 249 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 0 29 0 27 0 85 0 65 7 5 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 7 33 1 43 7 25 1 50 7 29 1 51 7 33 1 52 7 17 1 59 1 185 1 61] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 7 37 0 66 7 41 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 45 0 184 7 45 0 185 5 149 0 217 1 29 0 218 1 33 0 219 7 45 1 23 7 45 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 7 45 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 3 181 0 42 5 13 0 43 7 69 0 46 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 133 0 184 7 133 0 185 7 137 0 187 7 141 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 157 0 193 7 161 0 194 7 165 0 196 7 169 0 200 7 141 0 201 7 141 0 204 7 141 0 205 7 141 0 206 7 141 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 7 141 0 223 1 53 0 224 7 141 0 237 7 141 0 239 7 141 0 240 7 141 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 6 249 1 23 7 189 1 24 6 249 1 25 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 133 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 1 50 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[0 1 50 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[1 3 173 0 26 7 197 0 42 7 201 0 192 7 205 1 49] 
#[0 1 54 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 1 58 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 1 62 0 15 0 28] 
#[0 1 66 0 15 0 23 0 28 0 36] 
#[0 1 70 0 15 0 23 0 28 0 36] 
#[1 3 173 0 26 7 209 0 31 7 197 0 42 7 217 0 76 7 217 0 91 3 193 0 111 3 197 0 192 7 213 1 20 7 217 1 37 3 225 1 49 3 229 1 68] 
#[0 1 74 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[1 7 197 0 42 7 221 0 192] 
#[0 1 54 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 1 78 0 9 7 225 0 23 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 1 1 1 7 7 229 1 16 7 233 1 17 7 237 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 1 1 1 64] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 7 241 0 36 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 7 245 0 184 7 245 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 1 82 0 8 1 82 0 9 1 82 0 15 7 249 0 19 1 82 0 23 1 82 0 26 1 82 0 28 1 82 0 31 1 82 0 35 1 82 0 42 1 82 0 76 1 82 0 91 1 82 0 111 1 82 0 124 7 253 1 4] 
#[0 1 86 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 1 90 0 8 1 90 0 9 1 90 0 15 1 90 0 23 1 90 0 26 1 90 0 28 1 90 0 31 0 183 0 35 1 90 0 42 0 45 0 49 1 90 0 76 1 90 0 91 1 90 0 111 1 90 0 124 3 149 0 244 3 149 0 245] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 1 0 26 0 29 0 27 8 5 0 28 0 37 0 35 8 9 0 46 0 41 0 47 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 133 0 90 8 81 0 92 8 81 0 93 8 81 0 94 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 8 25 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 8 29 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 8 33 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 8 69 0 205 8 69 0 207 1 1 0 209 8 45 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 8 69 0 239 8 53 0 243 1 101 0 244 1 101 0 245 8 57 1 0 8 57 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 8 69 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 8 65 1 32 8 69 1 33 8 73 1 34 8 77 1 35 8 81 1 45 0 217 1 46 1 165 1 53 1 169 1 54 8 69 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 85 0 65 8 113 0 92 8 113 0 93 8 113 0 94 8 89 0 118 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 8 93 0 243 1 101 0 244 1 101 0 245 7 17 1 26 8 97 1 41 8 101 1 42 8 109 1 43 8 109 1 44 8 113 1 45 7 17 1 59 1 185 1 61] 
#[1 1 94 0 2 1 94 0 3 1 94 0 4 1 94 0 5 1 94 0 6 1 94 0 7 1 94 0 8 1 94 0 9 1 94 0 10 1 94 0 11 1 94 0 12 1 94 0 13 1 94 0 14 1 94 0 15 1 94 0 16 1 94 0 17 1 94 0 18 1 94 0 19 1 94 0 20 1 94 0 21 1 94 0 22 1 94 0 23 1 94 0 24 1 94 0 25 0 187 0 26 0 187 0 27 1 94 0 28 0 191 0 29 1 94 0 30 1 94 0 31 1 94 0 32 1 94 0 33 1 94 0 34 1 94 0 35 1 94 0 36 1 94 0 37 1 94 0 38 1 94 0 39 1 94 0 41 0 187 0 42 1 94 0 43 1 94 0 44 1 94 0 45 1 94 0 46 1 94 0 47 1 94 0 49 1 94 0 52 1 94 0 53 1 94 0 57 1 94 0 58 1 94 0 59 1 94 0 60 1 94 0 61 1 94 0 62 1 94 0 65 1 94 0 69 1 94 0 72 1 94 0 73 1 94 0 74 0 187 0 76 1 94 0 77 1 94 0 79 1 94 0 82 1 94 0 83 1 94 0 84 1 94 0 85 1 94 0 90 1 94 0 91 1 94 0 95 1 94 0 98 1 94 0 99 1 94 0 101 1 94 0 104 1 94 0 108 1 94 0 111 1 94 0 112 1 94 0 114 1 94 0 115 1 94 0 116 1 94 0 118 1 94 0 119 1 94 0 120 1 94 0 121 1 94 0 123 1 94 0 124 1 94 0 125 1 94 0 126 1 94 0 127 1 94 0 128] 
#[1 8 117 0 106 8 121 0 128 8 125 1 26 8 129 1 59 1 185 1 61] 
#[1 4 1 0 26 0 29 0 27 0 37 0 35 1 98 0 42 0 45 0 49 0 85 0 65 8 133 0 128 8 137 0 147 1 213 0 218 1 217 0 219 3 149 0 244 3 149 0 245 4 17 1 26 8 141 1 29 8 145 1 40 4 17 1 59 1 185 1 61] 
#[1 1 102 0 26 0 162 0 27 1 102 0 42 1 102 0 76] 
#[1 4 1 0 26 1 106 0 42 8 153 0 76 8 153 1 30 8 157 1 40] 
#[0 1 110 0 42] 
#[1 1 114 0 2 1 114 0 3 1 114 0 4 1 114 0 5 1 114 0 6 1 114 0 7 1 114 0 8 1 114 0 9 1 114 0 10 1 114 0 11 1 114 0 12 1 114 0 13 1 114 0 14 1 114 0 15 1 114 0 16 1 114 0 17 1 114 0 18 1 114 0 19 1 114 0 20 1 114 0 21 1 114 0 22 1 114 0 23 1 114 0 24 1 114 0 25 0 195 0 26 0 195 0 27 1 114 0 28 1 114 0 29 1 114 0 30 1 114 0 31 1 114 0 32 1 114 0 33 1 114 0 34 1 114 0 35 1 114 0 36 1 114 0 37 1 114 0 38 1 114 0 39 1 114 0 41 0 195 0 42 1 114 0 43 1 114 0 44 1 114 0 45 1 114 0 46 1 114 0 47 1 114 0 49 1 114 0 52 1 114 0 53 1 114 0 57 1 114 0 58 1 114 0 59 1 114 0 60 1 114 0 61 1 114 0 62 1 114 0 65 1 114 0 69 1 114 0 72 1 114 0 73 1 114 0 74 0 195 0 76 1 114 0 77 1 114 0 79 1 114 0 82 1 114 0 83 1 114 0 84 1 114 0 85 1 114 0 90 1 114 0 91 1 114 0 95 1 114 0 98 1 114 0 99 1 114 0 101 1 114 0 104 1 114 0 108 1 114 0 111 1 114 0 112 1 114 0 114 1 114 0 115 1 114 0 116 1 114 0 118 1 114 0 119 1 114 0 120 1 114 0 121 1 114 0 123 1 114 0 124 1 114 0 125 1 114 0 126 1 114 0 127 1 114 0 128] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 8 161 0 124 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 8 165 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 8 181 0 184 8 181 0 188 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 8 181 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 8 177 1 62 8 181 1 63 5 97 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 8 185 0 124 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 8 165 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 8 181 0 184 8 181 0 188 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 8 181 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 8 189 1 62 8 181 1 63 5 97 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 8 193 0 124 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 8 165 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 8 181 0 184 8 181 0 188 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 8 181 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 8 197 1 62 8 181 1 63 5 97 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 0 41 0 47 0 133 0 90 6 77 0 128 6 129 0 145 6 129 1 46 1 165 1 53 1 169 1 54 8 201 1 59 6 129 1 60 1 185 1 61] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 7 0 62 0 8 0 62 0 9 0 62 0 10 0 62 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 15 0 62 0 16 0 62 0 17 0 62 0 18 0 62 0 19 0 62 0 20 0 62 0 21 0 62 0 22 0 62 0 23 0 62 0 24 0 62 0 25 0 62 0 26 6 137 0 27 0 62 0 28 0 31 0 29 0 62 0 30 0 62 0 31 0 62 0 32 0 62 0 33 0 62 0 34 0 62 0 35 0 62 0 36 0 62 0 37 0 62 0 38 0 62 0 39 0 62 0 41 0 62 0 42 0 62 0 43 0 62 0 44 0 62 0 45 0 62 0 46 0 62 0 49 0 62 0 76 0 62 0 91 0 62 0 111 0 62 0 123 0 62 0 124 0 62 0 125 0 62 0 126 0 62 0 127] 
#[1 0 174 0 2 0 174 0 3 0 174 0 4 0 174 0 5 0 174 0 6 0 174 0 7 0 174 0 8 0 174 0 9 0 174 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 174 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 22 0 174 0 23 0 174 0 24 0 174 0 25 0 174 0 26 6 141 0 27 0 174 0 28 0 174 0 29 0 174 0 30 0 174 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 39 0 174 0 41 0 174 0 42 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 174 0 49 0 174 0 76 0 174 0 91 0 174 0 111 0 174 0 123 0 174 0 124 0 174 0 125 0 174 0 126 0 174 0 127] 
#[0 1 118 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 1 82 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 1 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 1 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 88 0 90 0 91 0 109 0 111 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 1 130 0 8 1 130 0 15 1 130 0 23 1 134 0 27 1 130 0 36] 
#[1 8 205 0 15 8 209 0 36] 
#[1 1 138 0 15 8 213 0 23 1 138 0 36] 
#[1 8 217 0 8 1 142 0 15 1 142 0 23 1 142 0 36 8 221 0 251] 
#[0 1 146 0 8 0 15 0 23 0 36] 
#[0 8 225 0 27] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 8 229 0 184 8 229 0 185 8 229 0 187 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 8 233 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 8 229 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 8 237 0 161 5 13 0 162 8 237 0 163 8 237 0 169 8 237 0 170 8 237 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 8 241 0 161 5 13 0 162 8 241 0 163 8 241 0 169 8 241 0 170 8 241 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 0 14 0 10 0 14 0 47 8 245 0 67 8 249 0 87 0 14 0 90 0 14 0 106 0 14 0 128] 
#[1 8 253 0 5 9 21 0 31 9 5 0 36 9 9 0 107 9 13 0 128 9 17 0 150 9 21 0 151 9 25 0 152 9 29 0 153 9 29 0 154 9 29 0 155] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 1 150 0 1 1 150 0 5 1 150 0 8 1 150 0 10 1 150 0 12 1 150 0 13 1 150 0 16 1 150 0 17 1 150 0 27 1 150 0 35 1 150 0 40 1 150 0 43 1 150 0 47 1 150 0 50 1 150 0 52 1 150 0 53 1 150 0 57 1 150 0 58 1 150 0 59 1 150 0 63 0 199 0 65 1 150 0 67 1 150 0 69 1 150 0 70 1 150 0 75 1 150 0 77 1 150 0 83 1 150 0 84 1 150 0 87 1 150 0 88 1 150 0 89 1 150 0 90 1 150 0 96 1 150 0 98 1 150 0 99 1 150 0 100 1 150 0 103 1 150 0 107 1 150 0 110 1 150 0 113 1 150 0 114 1 150 0 116 1 150 0 119 1 150 0 121 0 203 0 128 1 150 0 129 1 150 0 131 1 150 0 132 1 150 0 133 1 150 0 134 1 150 0 135 1 150 0 136 1 150 0 137 2 1 0 219 2 5 1 26 2 5 1 59 1 185 1 61] 
#[0 9 41 0 8] 
#[0 9 45 0 29] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 9 49 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 9 53 0 161 5 13 0 162 9 53 0 163 9 53 0 169 9 53 0 170 9 53 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 9 57 0 29] 
#[0 1 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 9 61 0 8 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 9 65 0 164 9 69 0 165 2 249 0 213 2 249 0 214 9 73 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[0 9 77 0 8] 
#[0 1 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 9 81 0 29] 
#[1 5 13 0 1 5 13 0 5 9 85 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 9 89 0 23 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 9 93 0 161 5 13 0 162 9 93 0 163 9 93 0 169 9 93 0 170 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 9 97 0 29] 
#[0 1 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 154 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 166 0 8] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 133] 
#[0 1 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 0 41 0 47 0 133 0 90 3 53 0 106 3 57 0 128 3 61 0 145 3 65 0 218 3 65 1 26 3 61 1 46 1 165 1 53 1 169 1 54 3 69 1 59 3 61 1 60 1 185 1 61] 
#[0 1 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 9 101 0 8 7 197 0 42 9 105 0 156 9 109 0 192] 
#[1 1 194 0 2 1 194 0 3 1 194 0 4 1 194 0 5 1 194 0 6 1 194 0 7 9 113 0 8 1 194 0 9 1 194 0 10 1 194 0 11 1 194 0 12 9 117 0 13 1 194 0 14 1 194 0 15 1 194 0 16 9 121 0 17 1 194 0 18 9 125 0 19 1 194 0 20 9 129 0 21 1 194 0 22 1 194 0 23 1 194 0 24 1 194 0 25 1 194 0 26 1 194 0 28 1 194 0 29 1 194 0 30 1 194 0 31 1 194 0 32 1 194 0 33 1 194 0 34 9 133 0 35 1 194 0 36 1 194 0 37 1 194 0 38 1 194 0 39 1 194 0 41 1 194 0 43 1 194 0 44 1 194 0 45 1 194 0 46 1 194 0 123 1 194 0 124 1 194 0 125 1 194 0 126 1 194 0 127] 
#[0 9 137 0 8] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 9 141 0 161 5 13 0 162 9 141 0 163 9 141 0 169 9 141 0 170 9 141 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 1 206 0 2 1 206 0 3 1 206 0 4 1 206 0 5 1 206 0 6 1 206 0 7 1 206 0 9 1 206 0 10 1 206 0 11 1 206 0 12 1 206 0 14 1 206 0 15 1 206 0 16 1 206 0 18 9 145 0 20 9 149 0 22 1 206 0 23 1 206 0 24 1 206 0 25 1 206 0 26 1 206 0 28 1 206 0 29 1 206 0 30 1 206 0 31 1 206 0 32 1 206 0 33 1 206 0 34 1 206 0 36 1 206 0 37 1 206 0 38 1 206 0 39 1 206 0 41 1 206 0 43 1 206 0 44 1 206 0 45 1 206 0 46 1 206 0 123 1 206 0 124 1 206 0 125 1 206 0 126 1 206 0 127] 
#[1 1 210 0 2 9 153 0 3 1 210 0 4 1 210 0 5 1 210 0 6 1 210 0 7 1 210 0 9 9 157 0 10 1 210 0 11 1 210 0 12 1 210 0 14 1 210 0 15 1 210 0 16 1 210 0 18 1 210 0 23 9 161 0 24 1 210 0 25 1 210 0 26 1 210 0 28 1 210 0 29 1 210 0 30 1 210 0 31 1 210 0 32 1 210 0 33 1 210 0 34 1 210 0 36 1 210 0 37 1 210 0 38 1 210 0 39 1 210 0 41 1 210 0 43 1 210 0 44 1 210 0 45 1 210 0 46 1 210 0 123 1 210 0 124 1 210 0 125 1 210 0 126 1 210 0 127] 
#[1 1 214 0 2 1 214 0 4 1 214 0 5 1 214 0 6 1 214 0 7 1 214 0 9 1 214 0 11 9 165 0 12 1 214 0 14 1 214 0 15 9 169 0 16 1 214 0 18 1 214 0 23 1 214 0 25 1 214 0 26 1 214 0 28 1 214 0 29 1 214 0 30 1 214 0 31 1 214 0 32 1 214 0 33 1 214 0 34 1 214 0 36 1 214 0 37 1 214 0 38 1 214 0 39 1 214 0 41 1 214 0 43 1 214 0 44 1 214 0 45 1 214 0 46 1 214 0 123 1 214 0 124 1 214 0 125 1 214 0 126 1 214 0 127] 
#[1 1 218 0 2 1 218 0 4 1 218 0 5 1 218 0 6 1 218 0 7 1 218 0 9 1 218 0 11 1 218 0 14 1 218 0 15 1 218 0 18 1 218 0 23 1 218 0 25 1 218 0 26 1 218 0 28 1 218 0 29 1 218 0 30 1 218 0 31 1 218 0 32 1 218 0 33 1 218 0 34 1 218 0 36 1 218 0 37 1 218 0 38 1 218 0 39 1 218 0 41 1 218 0 43 1 218 0 44 1 218 0 45 1 218 0 46 9 181 0 123 1 218 0 124 9 181 0 125 1 218 0 126 1 218 0 127 9 181 0 176] 
#[1 1 222 0 2 1 222 0 4 1 222 0 5 1 222 0 6 1 222 0 7 1 222 0 9 1 222 0 11 1 222 0 14 1 222 0 15 1 222 0 18 1 222 0 23 1 222 0 25 1 222 0 26 1 222 0 28 9 185 0 29 9 189 0 30 1 222 0 31 1 222 0 32 9 193 0 33 1 222 0 34 1 222 0 36 1 222 0 37 1 222 0 38 1 222 0 39 1 222 0 41 1 222 0 43 1 222 0 44 1 222 0 45 1 222 0 46 0 207 0 124 1 222 0 126 1 222 0 127] 
#[1 9 201 0 2 1 226 0 4 1 226 0 5 1 226 0 6 1 226 0 7 1 226 0 9 1 226 0 11 1 226 0 14 1 226 0 15 1 226 0 18 1 226 0 23 1 226 0 25 1 226 0 26 1 226 0 28 1 226 0 31 9 205 0 32 1 226 0 34 1 226 0 36 1 226 0 37 1 226 0 38 1 226 0 39 1 226 0 41 1 226 0 43 1 226 0 44 1 226 0 45 1 226 0 46 1 226 0 124 1 226 0 126 1 226 0 127] 
#[1 1 230 0 4 9 209 0 5 1 230 0 6 1 230 0 7 1 230 0 9 1 230 0 11 1 230 0 14 1 230 0 15 1 230 0 18 1 230 0 23 1 230 0 25 1 230 0 26 1 230 0 28 1 230 0 31 1 230 0 34 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 41 1 230 0 43 1 230 0 44 1 230 0 45 1 230 0 46 1 230 0 124 1 230 0 126 1 230 0 127] 
#[1 1 234 0 4 1 234 0 6 1 234 0 7 1 234 0 9 1 234 0 11 1 234 0 14 1 234 0 15 1 234 0 18 1 234 0 23 1 234 0 25 1 234 0 26 1 234 0 28 1 234 0 31 1 234 0 34 1 234 0 36 9 213 0 37 1 234 0 38 1 234 0 39 1 234 0 41 1 234 0 43 1 234 0 44 1 234 0 45 1 234 0 46 1 234 0 124 1 234 0 126 1 234 0 127] 
#[1 1 238 0 4 1 238 0 6 1 238 0 7 1 238 0 9 1 238 0 11 1 238 0 14 1 238 0 15 1 238 0 18 1 238 0 23 1 238 0 25 1 238 0 26 1 238 0 28 1 238 0 31 1 238 0 34 1 238 0 36 1 238 0 38 1 238 0 39 1 238 0 41 9 217 0 43 1 238 0 44 1 238 0 45 1 238 0 46 1 238 0 124 1 238 0 126 1 238 0 127] 
#[1 1 242 0 4 9 221 0 6 1 242 0 7 1 242 0 9 1 242 0 11 1 242 0 14 1 242 0 15 1 242 0 18 1 242 0 23 1 242 0 25 1 242 0 26 1 242 0 28 1 242 0 31 1 242 0 34 1 242 0 36 1 242 0 38 9 225 0 39 1 242 0 41 1 242 0 44 1 242 0 45 1 242 0 46 1 242 0 124 1 242 0 126 1 242 0 127] 
#[1 1 246 0 9 1 246 0 15 1 246 0 23 1 246 0 26 1 246 0 28 9 229 0 34 1 246 0 36 9 233 0 41 9 237 0 45 1 246 0 46 1 246 0 124] 
#[0 1 250 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[1 9 241 0 9 9 245 0 23] 
#[1 0 9 0 5 0 13 0 6 9 249 0 8 1 254 0 9 0 21 0 10 1 254 0 15 0 211 0 23 0 29 0 27 1 254 0 28 10 1 0 35 0 85 0 65 1 254 0 124 1 253 0 128 6 1 0 147 1 213 0 218 1 217 0 219 10 5 1 3 10 9 1 5 10 13 1 11 10 13 1 12 10 21 1 13 10 13 1 14 10 29 1 15 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 0 110 0 5 0 110 0 6 0 215 0 8 0 110 0 9 0 110 0 10 0 110 0 15 0 110 0 23 0 110 0 27 0 110 0 28 0 110 0 35 6 237 0 42 0 110 0 47 0 110 0 49 0 110 0 52 0 110 0 53 0 110 0 57 0 110 0 58 0 110 0 59 0 110 0 60 0 110 0 61 0 110 0 62 0 110 0 65 0 110 0 69 0 110 0 72 0 110 0 73 0 110 0 74 0 110 0 77 0 110 0 79 0 110 0 82 0 110 0 83 0 110 0 84 0 110 0 85 0 110 0 90 0 110 0 95 0 110 0 98 0 110 0 99 0 110 0 101 0 110 0 104 0 110 0 108 0 110 0 112 0 110 0 114 0 110 0 115 0 110 0 116 0 110 0 118 0 110 0 119 0 110 0 120 0 110 0 121 0 110 0 124 0 110 0 128 10 37 1 25] 
#[1 10 41 0 9 10 45 0 23] 
#[1 0 110 0 5 0 110 0 6 0 219 0 8 0 110 0 9 0 110 0 10 0 110 0 15 0 110 0 23 0 110 0 27 0 110 0 28 0 110 0 35 6 237 0 42 0 110 0 47 0 110 0 49 0 110 0 52 0 110 0 53 0 110 0 57 0 110 0 58 0 110 0 59 0 110 0 60 0 110 0 61 0 110 0 62 0 110 0 65 0 110 0 69 0 110 0 72 0 110 0 73 0 110 0 74 0 110 0 77 0 110 0 79 0 110 0 82 0 110 0 83 0 110 0 84 0 110 0 85 0 110 0 90 0 110 0 95 0 110 0 98 0 110 0 99 0 110 0 101 0 110 0 104 0 110 0 108 0 110 0 112 0 110 0 114 0 110 0 115 0 110 0 116 0 110 0 118 0 110 0 119 0 110 0 120 0 110 0 121 0 110 0 124 0 110 0 128 10 53 1 25] 
#[0 1 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 2 2 0 2 2 2 0 3 2 2 0 4 2 2 0 5 2 2 0 6 2 2 0 7 2 2 0 8 2 2 0 9 2 2 0 10 2 2 0 11 2 2 0 12 2 2 0 13 2 2 0 14 2 2 0 15 2 2 0 16 2 2 0 17 2 2 0 18 2 2 0 19 2 2 0 20 2 2 0 21 2 2 0 22 2 2 0 23 2 2 0 24 2 2 0 25 2 2 0 26 2 2 0 28 2 2 0 29 2 2 0 30 2 2 0 31 2 2 0 32 2 2 0 33 2 2 0 34 2 2 0 35 2 2 0 36 2 2 0 37 2 2 0 38 2 2 0 39 2 2 0 41 2 2 0 43 2 2 0 44 2 2 0 45 2 2 0 46 2 2 0 123 2 2 0 124 2 2 0 125 2 2 0 126 2 2 0 127 10 57 0 133] 
#[0 2 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 2 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 2 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 10 61 0 9] 
#[1 0 22 0 8 10 65 0 9 0 22 0 42] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 2 18 0 9 5 13 0 10 5 13 0 12 4 117 0 13 2 18 0 15 5 13 0 16 4 125 0 17 2 18 0 23 2 18 0 26 4 129 0 27 2 18 0 28 4 133 0 35 2 18 0 36 5 13 0 40 5 13 0 43 2 18 0 46 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 2 18 0 124 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 10 69 0 184 10 69 0 185 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 10 69 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 10 117 0 4 10 117 0 7 1 246 0 9 10 117 0 11 10 117 0 14 1 246 0 15 10 117 0 18 1 246 0 23 10 117 0 25 1 246 0 26 1 246 0 28 10 117 0 31 9 229 0 34 1 246 0 36 10 117 0 38 9 233 0 41 10 117 0 44 9 237 0 45 1 246 0 46 1 246 0 124 10 117 0 126 10 117 0 127 10 117 0 186] 
#[0 2 22 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[0 2 26 0 9 0 15 0 26 0 28 0 36] 
#[1 10 121 0 9 10 125 0 15] 
#[1 10 33 0 8 6 237 0 42 10 37 1 25] 
#[1 10 49 0 8 6 237 0 42 10 53 1 25] 
#[0 2 22 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[1 1 185 0 128 10 133 1 59 1 185 1 61] 
#[1 2 30 0 2 2 30 0 3 2 30 0 4 2 30 0 5 2 30 0 6 2 30 0 7 2 30 0 8 2 30 0 9 2 30 0 10 2 30 0 11 2 30 0 12 2 30 0 13 2 30 0 14 2 30 0 15 2 30 0 16 2 30 0 17 2 30 0 18 2 30 0 19 2 30 0 20 2 30 0 21 2 30 0 22 2 30 0 23 2 30 0 24 2 30 0 25 2 30 0 26 0 223 0 27 2 30 0 28 0 227 0 29 2 30 0 30 2 30 0 31 2 30 0 32 2 30 0 33 2 30 0 34 2 30 0 35 2 30 0 36 2 30 0 37 2 30 0 38 2 30 0 39 2 30 0 41 2 30 0 42 2 30 0 43 2 30 0 44 2 30 0 45 2 30 0 46 2 30 0 47 2 30 0 49 2 30 0 52 2 30 0 53 2 30 0 57 2 30 0 58 2 30 0 59 2 30 0 60 2 30 0 61 2 30 0 62 2 30 0 65 2 30 0 69 2 30 0 72 2 30 0 73 2 30 0 74 2 30 0 76 2 30 0 77 2 30 0 79 2 30 0 82 2 30 0 83 2 30 0 84 2 30 0 85 2 30 0 90 2 30 0 91 2 30 0 95 2 30 0 98 2 30 0 99 2 30 0 101 2 30 0 104 2 30 0 108 2 30 0 111 2 30 0 112 2 30 0 114 2 30 0 115 2 30 0 116 2 30 0 118 2 30 0 119 2 30 0 120 2 30 0 121 2 30 0 123 2 30 0 124 2 30 0 125 2 30 0 126 2 30 0 127 2 30 0 128] 
#[0 6 141 0 27] 
#[0 2 34 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 10 137 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 10 141 0 202 0 233 0 203 0 233 0 204 0 233 0 205 0 233 0 206 0 233 0 207 0 233 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 0 233 0 223 1 53 0 224 0 233 0 231 0 233 0 232 0 233 0 233 0 233 0 234 0 233 0 235 0 233 0 237 0 233 0 239 0 233 0 240 0 233 0 241 0 233 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 0 233 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 0 233 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 0 233 1 65 0 233 1 66] 
#[0 2 38 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 218 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 197 0 202 0 233 0 203 0 233 0 204 0 233 0 205 0 233 0 206 0 233 0 207 0 233 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 0 233 0 223 1 53 0 224 0 233 0 231 0 233 0 232 0 233 0 233 0 233 0 234 0 233 0 235 10 145 0 236 0 233 0 237 0 233 0 239 0 233 0 240 0 233 0 241 0 233 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 0 233 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 0 233 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 0 233 1 65 0 233 1 66] 
#[0 0 231 0 42] 
#[0 10 153 0 42] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 2 42 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 3 73 0 203 3 73 0 204 3 73 0 205 3 73 0 206 3 73 0 207 3 73 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 73 0 223 1 53 0 224 3 73 0 231 3 73 0 232 3 73 0 233 3 73 0 234 3 73 0 235 3 73 0 237 3 73 0 239 3 73 0 240 3 73 0 241 3 73 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 3 73 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 3 73 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 3 73 1 65 3 73 1 66] 
#[0 10 157 0 46] 
#[1 0 29 0 27 0 85 0 65 6 89 0 128 10 161 0 147 1 213 0 218 1 217 0 219 10 165 0 229 6 101 0 230 10 169 0 238 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 218 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 197 0 202 0 233 0 203 0 233 0 204 0 233 0 205 0 233 0 206 0 233 0 207 0 233 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 0 233 0 223 1 53 0 224 0 233 0 231 0 233 0 232 0 233 0 233 0 233 0 234 0 233 0 235 10 173 0 236 0 233 0 237 0 233 0 239 0 233 0 240 0 233 0 241 0 233 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 0 233 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 0 233 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 0 233 1 65 0 233 1 66] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 218 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 197 0 202 0 233 0 203 0 233 0 204 0 233 0 205 0 233 0 206 0 233 0 207 0 233 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 0 233 0 223 1 53 0 224 0 233 0 231 0 233 0 232 0 233 0 233 0 233 0 234 0 233 0 235 10 177 0 236 0 233 0 237 0 233 0 239 0 233 0 240 0 233 0 241 0 233 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 0 233 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 0 233 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 0 233 1 65 0 233 1 66] 
#[0 2 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 2 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 10 181 0 36] 
#[0 10 185 0 36] 
#[0 2 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 1 185 0 128 10 189 1 59 1 185 1 61] 
#[1 0 66 0 2 0 66 0 3 0 66 0 4 0 66 0 5 0 66 0 6 0 66 0 7 0 66 0 8 0 66 0 9 0 66 0 10 0 66 0 11 0 66 0 12 0 66 0 13 0 66 0 14 0 66 0 15 0 66 0 16 0 66 0 17 0 66 0 18 0 66 0 19 0 66 0 20 0 66 0 21 0 66 0 22 0 66 0 23 0 66 0 24 0 66 0 25 0 66 0 26 0 167 0 27 0 66 0 28 0 91 0 29 0 66 0 30 0 66 0 31 0 66 0 32 0 66 0 33 0 66 0 34 0 66 0 35 0 66 0 36 0 66 0 37 0 66 0 38 0 66 0 39 0 66 0 41 0 66 0 42 0 66 0 43 0 66 0 44 0 66 0 45 0 66 0 46 0 66 0 47 0 66 0 49 0 66 0 52 0 66 0 53 0 66 0 57 0 66 0 58 0 66 0 59 0 66 0 60 0 66 0 61 0 66 0 62 0 66 0 65 0 66 0 69 0 66 0 72 0 66 0 73 0 66 0 74 0 66 0 76 0 66 0 77 0 66 0 79 0 66 0 82 0 66 0 83 0 66 0 84 0 66 0 85 0 66 0 90 0 66 0 91 0 66 0 95 0 66 0 98 0 66 0 99 0 66 0 101 0 66 0 104 0 66 0 108 0 66 0 111 0 66 0 112 0 66 0 114 0 66 0 115 0 66 0 116 0 66 0 118 0 66 0 119 0 66 0 120 0 66 0 121 0 66 0 123 0 66 0 124 0 66 0 125 0 66 0 126 0 66 0 127 0 66 0 128] 
#[1 0 178 0 2 0 178 0 3 0 178 0 4 0 178 0 5 0 178 0 6 0 178 0 7 0 178 0 8 0 178 0 9 0 178 0 10 0 178 0 11 0 178 0 12 0 178 0 13 0 178 0 14 0 178 0 15 0 178 0 16 0 178 0 17 0 178 0 18 0 178 0 19 0 178 0 20 0 178 0 21 0 178 0 22 0 178 0 23 0 178 0 24 0 178 0 25 0 178 0 26 0 171 0 27 0 178 0 28 0 178 0 29 0 178 0 30 0 178 0 31 0 178 0 32 0 178 0 33 0 178 0 34 0 178 0 35 0 178 0 36 0 178 0 37 0 178 0 38 0 178 0 39 0 178 0 41 0 178 0 42 0 178 0 43 0 178 0 44 0 178 0 45 0 178 0 46 0 178 0 47 0 178 0 49 0 178 0 52 0 178 0 53 0 178 0 57 0 178 0 58 0 178 0 59 0 178 0 60 0 178 0 61 0 178 0 62 0 178 0 65 0 178 0 69 0 178 0 72 0 178 0 73 0 178 0 74 0 178 0 76 0 178 0 77 0 178 0 79 0 178 0 82 0 178 0 83 0 178 0 84 0 178 0 85 0 178 0 90 0 178 0 91 0 178 0 95 0 178 0 98 0 178 0 99 0 178 0 101 0 178 0 104 0 178 0 108 0 178 0 111 0 178 0 112 0 178 0 114 0 178 0 115 0 178 0 116 0 178 0 118 0 178 0 119 0 178 0 120 0 178 0 121 0 178 0 123 0 178 0 124 0 178 0 125 0 178 0 126 0 178 0 127 0 178 0 128] 
#[0 2 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 2 58 0 2 2 58 0 3 2 58 0 4 2 58 0 5 2 58 0 6 2 58 0 7 2 58 0 8 2 58 0 9 2 58 0 10 2 58 0 11 2 58 0 12 2 58 0 13 2 58 0 14 2 58 0 15 2 58 0 16 2 58 0 17 2 58 0 18 2 58 0 19 2 58 0 20 2 58 0 21 2 58 0 22 2 58 0 23 2 58 0 24 2 58 0 25 2 58 0 26 2 58 0 27 2 58 0 28 2 58 0 29 2 58 0 30 2 58 0 31 2 58 0 32 2 58 0 33 2 58 0 34 0 235 0 35 2 58 0 36 2 58 0 37 2 58 0 38 2 58 0 39 2 58 0 41 2 58 0 42 2 58 0 43 2 58 0 44 2 58 0 45 2 58 0 46 2 58 0 47 0 239 0 49 2 58 0 65 2 58 0 76 2 58 0 90 2 58 0 91 2 58 0 111 2 58 0 123 2 58 0 124 2 58 0 125 2 58 0 126 2 58 0 127 2 58 0 128 3 149 0 244 3 149 0 245] 
#[1 3 49 0 10 5 161 0 106 10 193 0 128 5 169 1 59 1 185 1 61] 
#[1 2 62 0 2 2 62 0 3 2 62 0 4 0 243 0 5 0 247 0 6 2 62 0 7 2 62 0 8 2 62 0 9 0 251 0 10 2 62 0 11 2 62 0 12 2 62 0 13 2 62 0 14 2 62 0 15 2 62 0 16 2 62 0 17 2 62 0 18 2 62 0 19 2 62 0 20 2 62 0 21 2 62 0 22 2 62 0 23 2 62 0 24 2 62 0 25 2 62 0 26 0 29 0 27 2 62 0 28 2 62 0 29 2 62 0 30 2 62 0 31 2 62 0 32 2 62 0 33 2 62 0 34 2 62 0 35 2 62 0 36 2 62 0 37 2 62 0 38 2 62 0 39 2 62 0 41 2 62 0 42 2 62 0 43 2 62 0 44 2 62 0 45 2 62 0 46 2 62 0 49 0 85 0 65 2 62 0 76 2 62 0 91 2 62 0 111 2 62 0 123 2 62 0 124 2 62 0 125 2 62 0 126 2 62 0 127 1 253 0 128 6 1 0 147 1 213 0 218 1 217 0 219 6 5 1 5 1 213 1 26 10 197 1 48 1 213 1 59 1 185 1 61] 
#[0 2 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 3 117 0 26 0 66 0 27 0 70 0 29 1 26 0 42 10 201 0 225] 
#[1 3 117 0 26 0 29 0 27 0 37 0 35 1 34 0 42 0 45 0 49 0 85 0 65 10 205 0 128 6 197 0 147 1 213 0 218 1 217 0 219 6 201 0 225 3 149 0 244 3 149 0 245 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 10 209 0 15] 
#[1 2 70 0 15 10 213 0 23 0 30 0 26 0 30 0 27 10 217 0 31 0 30 0 35 0 30 0 42 0 30 0 49 0 30 0 65 2 70 0 124 0 255 0 128] 
#[0 10 225 0 29] 
#[1 2 74 0 15 10 229 0 23 0 29 0 27 10 233 0 31 0 85 0 65 2 74 0 124 10 237 0 128 3 25 0 147 1 213 0 218 1 217 0 219 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 10 241 0 203 10 241 0 204 10 241 0 205 10 241 0 206 10 241 0 207 10 241 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 10 241 0 223 1 53 0 224 10 241 0 231 10 241 0 232 10 241 0 233 10 241 0 234 10 241 0 235 10 241 0 237 10 241 0 239 10 241 0 240 10 241 0 241 10 241 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 10 241 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 10 241 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 10 241 1 65 10 241 1 66] 
#[1 0 9 0 5 0 13 0 6 10 245 0 8 2 78 0 9 0 21 0 10 2 78 0 15 1 3 0 23 0 29 0 27 10 253 0 31 10 1 0 35 0 41 0 47 0 85 0 65 0 133 0 90 2 78 0 124 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 11 1 1 0 11 1 1 1 1 125 1 2 10 5 1 3 11 5 1 5 1 137 1 9 11 9 1 11 11 9 1 12 10 21 1 13 11 9 1 14 10 29 1 15 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 1 1 0 209 11 13 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 3 149 0 244 3 149 0 245 1 1 1 7 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 1 1 1 64] 
#[0 2 82 0 15 0 124] 
#[1 11 17 0 15 11 21 0 124] 
#[0 2 86 0 15 0 124] 
#[0 2 82 0 15 0 124] 
#[1 1 185 0 128 11 25 1 59 1 185 1 61] 
#[1 2 90 0 2 2 90 0 3 2 90 0 4 2 90 0 5 2 90 0 6 2 90 0 7 2 90 0 8 2 90 0 9 2 90 0 10 2 90 0 11 2 90 0 12 2 90 0 13 2 90 0 14 2 90 0 15 2 90 0 16 2 90 0 17 2 90 0 18 2 90 0 19 2 90 0 20 2 90 0 21 2 90 0 22 2 90 0 23 2 90 0 24 2 90 0 25 2 90 0 26 1 7 0 27 2 90 0 28 1 11 0 29 2 90 0 30 2 90 0 31 2 90 0 32 2 90 0 33 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 2 90 0 38 2 90 0 39 2 90 0 41 2 90 0 42 2 90 0 43 2 90 0 44 2 90 0 45 2 90 0 46 2 90 0 47 2 90 0 49 2 90 0 52 2 90 0 53 2 90 0 57 2 90 0 58 2 90 0 59 2 90 0 60 2 90 0 61 2 90 0 62 2 90 0 65 2 90 0 69 2 90 0 72 2 90 0 73 2 90 0 74 2 90 0 76 2 90 0 77 2 90 0 79 2 90 0 82 2 90 0 83 2 90 0 84 2 90 0 85 2 90 0 90 2 90 0 91 2 90 0 95 2 90 0 98 2 90 0 99 2 90 0 101 2 90 0 104 2 90 0 108 2 90 0 111 2 90 0 112 2 90 0 114 2 90 0 115 2 90 0 116 2 90 0 118 2 90 0 119 2 90 0 120 2 90 0 121 2 90 0 123 2 90 0 124 2 90 0 125 2 90 0 126 2 90 0 127 2 90 0 128] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 5 2 94 0 6 2 94 0 7 2 94 0 8 2 94 0 9 2 94 0 10 2 94 0 11 2 94 0 12 2 94 0 13 2 94 0 14 2 94 0 15 2 94 0 16 2 94 0 17 2 94 0 18 2 94 0 19 2 94 0 20 2 94 0 21 2 94 0 22 2 94 0 23 2 94 0 24 2 94 0 25 2 94 0 26 1 15 0 27 2 94 0 28 2 94 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 34 2 94 0 35 2 94 0 36 2 94 0 37 2 94 0 38 2 94 0 39 2 94 0 41 2 94 0 42 2 94 0 43 2 94 0 44 2 94 0 45 2 94 0 46 2 94 0 47 2 94 0 49 2 94 0 52 2 94 0 53 2 94 0 57 2 94 0 58 2 94 0 59 2 94 0 60 2 94 0 61 2 94 0 62 2 94 0 65 2 94 0 69 2 94 0 72 2 94 0 73 2 94 0 74 2 94 0 76 2 94 0 77 2 94 0 79 2 94 0 82 2 94 0 83 2 94 0 84 2 94 0 85 2 94 0 90 2 94 0 91 2 94 0 95 2 94 0 98 2 94 0 99 2 94 0 101 2 94 0 104 2 94 0 108 2 94 0 111 2 94 0 112 2 94 0 114 2 94 0 115 2 94 0 116 2 94 0 118 2 94 0 119 2 94 0 120 2 94 0 121 2 94 0 123 2 94 0 124 2 94 0 125 2 94 0 126 2 94 0 127 2 94 0 128] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 62 0 5 0 62 0 6 0 62 0 7 0 62 0 8 0 62 0 9 0 62 0 10 0 62 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 15 0 62 0 16 0 62 0 17 0 62 0 18 0 62 0 19 0 62 0 20 0 62 0 21 0 62 0 22 0 62 0 23 0 62 0 24 0 62 0 25 0 62 0 26 0 62 0 28 0 31 0 29 0 62 0 30 0 62 0 31 0 62 0 32 0 62 0 33 0 62 0 34 0 62 0 35 0 62 0 36 0 62 0 37 0 62 0 38 0 62 0 39 0 62 0 41 0 62 0 42 0 62 0 43 0 62 0 44 0 62 0 45 0 62 0 46 0 62 0 49 0 62 0 76 0 62 0 91 0 62 0 111 0 62 0 123 0 62 0 124 0 62 0 125 0 62 0 126 0 62 0 127] 
#[0 11 29 0 28] 
#[0 0 174 0 28] 
#[1 0 66 0 27 0 222 0 28 0 70 0 29] 
#[1 5 161 0 106 11 33 0 128 11 37 0 229 6 101 0 230 5 169 1 59 1 185 1 61] 
#[0 11 41 0 28] 
#[0 2 98 0 28] 
#[1 0 41 0 47 0 133 0 90 5 161 0 106 4 49 0 128 11 45 0 145 11 45 1 46 1 165 1 53 1 169 1 54 4 53 1 59 11 45 1 60 1 185 1 61] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 11 49 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 11 53 0 31 0 37 0 35 0 45 0 49 3 149 0 244 3 149 0 245] 
#[0 11 57 0 28] 
#[1 2 102 0 2 2 102 0 3 2 102 0 4 2 102 0 5 2 102 0 6 2 102 0 7 2 102 0 8 2 102 0 9 2 102 0 10 2 102 0 11 2 102 0 12 2 102 0 13 2 102 0 14 2 102 0 15 2 102 0 16 2 102 0 17 2 102 0 18 2 102 0 19 2 102 0 20 2 102 0 21 2 102 0 22 2 102 0 23 2 102 0 24 2 102 0 25 2 102 0 26 2 102 0 27 2 102 0 28 2 102 0 29 2 102 0 30 2 102 0 31 2 102 0 32 2 102 0 33 2 102 0 34 1 19 0 35 2 102 0 36 2 102 0 37 2 102 0 38 2 102 0 39 2 102 0 41 2 102 0 42 2 102 0 43 2 102 0 44 2 102 0 45 2 102 0 46 2 102 0 47 1 23 0 49 0 77 0 61 2 102 0 65 2 102 0 76 2 102 0 90 2 102 0 91 2 102 0 111 0 197 0 120 2 102 0 123 2 102 0 124 2 102 0 125 2 102 0 126 2 102 0 127 2 102 0 128 3 149 0 244 3 149 0 245 11 61 1 6 1 237 1 7] 
#[0 2 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 2 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 0 174 0 2 0 174 0 3 0 174 0 4 1 27 0 5 1 27 0 6 0 174 0 7 1 27 0 8 1 27 0 9 1 27 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 1 27 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 22 1 27 0 23 0 174 0 24 0 174 0 25 1 27 0 26 1 31 0 27 1 27 0 28 0 174 0 29 0 174 0 30 1 27 0 31 0 174 0 32 0 174 0 33 0 174 0 34 1 27 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 39 0 174 0 41 1 27 0 42 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 2 114 0 47 1 27 0 49 2 114 0 52 2 114 0 53 2 114 0 57 2 114 0 58 2 114 0 59 2 114 0 60 2 114 0 61 2 114 0 62 2 114 0 65 2 114 0 69 2 114 0 72 2 114 0 73 2 114 0 74 0 174 0 76 2 114 0 77 2 114 0 79 2 114 0 82 2 114 0 83 2 114 0 84 2 114 0 85 2 114 0 90 0 174 0 91 2 114 0 95 2 114 0 98 2 114 0 99 2 114 0 101 2 114 0 104 2 114 0 108 0 174 0 111 2 114 0 112 2 114 0 114 2 114 0 115 2 114 0 116 2 114 0 118 2 114 0 119 2 114 0 120 2 114 0 121 0 174 0 123 1 27 0 124 0 174 0 125 0 174 0 126 0 174 0 127 2 114 0 128] 
#[0 2 118 0 10 0 47 0 90 0 106 0 128] 
#[0 2 122 0 10 0 47 0 90 0 106 0 128] 
#[0 2 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 2 130 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 3 173 0 26 7 209 0 31 7 197 0 42 7 217 0 76 7 217 0 91 3 193 0 111 3 197 0 192 11 69 1 20 7 217 1 37 3 225 1 49 3 229 1 68] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 2 138 0 15 0 31 0 46] 
#[1 11 73 0 15 11 77 0 46] 
#[0 2 142 0 15 0 46] 
#[1 2 146 0 15 11 81 0 31 2 146 0 46] 
#[0 2 150 0 28 0 42] 
#[0 2 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[1 11 85 0 28 2 158 0 42] 
#[1 3 117 0 26 6 137 0 27 0 70 0 29 2 162 0 42 11 89 0 225] 
#[1 3 117 0 26 0 66 0 27 11 93 0 28 0 70 0 29 2 166 0 42 11 97 0 225] 
#[1 5 161 0 106 11 101 0 128 5 169 1 59 1 185 1 61] 
#[0 2 170 0 42] 
#[1 0 29 0 27 0 85 0 65 6 89 0 128 11 105 0 147 1 213 0 218 1 217 0 219 11 109 0 229 6 101 0 230 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 3 161 0 15 11 113 0 28] 
#[1 3 169 0 8 0 146 0 15 3 173 0 26 0 146 0 28 3 177 0 31 3 181 0 42 3 221 0 76 3 221 0 91 3 193 0 111 3 197 0 192 11 117 1 20 3 205 1 21 3 205 1 22 3 205 1 25 11 121 1 36 3 221 1 37 3 225 1 49 3 229 1 68] 
#[0 2 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 2 130 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 3 173 0 26 7 209 0 31 7 197 0 42 7 217 0 76 7 217 0 91 3 193 0 111 3 197 0 192 11 125 1 20 7 217 1 37 3 225 1 49 3 229 1 68] 
#[0 2 174 0 15 0 28] 
#[1 3 169 0 8 0 146 0 15 0 146 0 28 11 129 0 31 6 237 0 42 3 205 1 21 3 205 1 22 3 205 1 25] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 11 133 0 46 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 5 149 0 217 1 29 0 218 1 33 0 219 6 249 1 23 7 189 1 24 6 249 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 11 137 0 9] 
#[0 2 178 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[1 2 182 0 9 2 182 0 15 11 141 0 23 2 182 0 46] 
#[1 2 186 0 9 11 145 0 15] 
#[0 2 178 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[1 1 35 0 8 0 66 0 27 0 70 0 29 1 35 0 42] 
#[1 5 161 0 106 5 241 0 128 11 149 1 26 5 245 1 59 1 185 1 61] 
#[1 2 194 0 8 2 194 0 15 2 194 0 23 3 109 0 27 2 194 0 42] 
#[1 2 198 0 8 2 198 0 15 2 198 0 23 0 162 0 27 2 198 0 42] 
#[0 2 202 0 8 0 42] 
#[0 2 206 0 42] 
#[1 11 153 0 15 11 157 0 23 2 210 0 42] 
#[1 11 161 0 8 6 237 0 42 11 165 1 25] 
#[0 11 169 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 11 173 0 28 9 49 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 9 53 0 161 5 13 0 162 9 53 0 163 9 53 0 169 9 53 0 170 9 53 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 2 214 0 15 0 23 0 28 0 36] 
#[1 1 150 0 1 1 39 0 5 0 10 0 6 1 39 0 8 1 39 0 10 1 150 0 12 1 150 0 13 1 150 0 16 1 150 0 17 0 10 0 23 1 39 0 27 1 43 0 35 1 150 0 40 1 150 0 43 1 39 0 47 0 45 0 49 1 150 0 50 1 150 0 52 1 150 0 53 1 150 0 57 1 150 0 58 1 150 0 59 1 150 0 63 1 39 0 65 1 150 0 67 1 150 0 69 1 150 0 70 1 150 0 75 1 150 0 77 1 150 0 83 1 150 0 84 1 150 0 87 1 150 0 88 1 150 0 89 1 39 0 90 1 150 0 96 1 150 0 98 1 150 0 99 1 150 0 100 1 150 0 103 1 150 0 107 1 150 0 110 1 150 0 113 1 150 0 114 1 150 0 116 1 150 0 119 1 150 0 121 1 39 0 128 1 150 0 129 1 150 0 131 1 150 0 132 1 150 0 133 1 150 0 134 1 150 0 135 1 150 0 136 1 150 0 137 1 201 0 243 1 101 0 244 1 101 0 245] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 8 229 0 184 8 229 0 185 8 229 0 187 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 1 221 1 1 1 225 1 2 1 129 1 5 2 249 1 7 1 137 1 9 8 233 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 8 229 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 1 150 0 1 1 39 0 5 0 10 0 6 1 39 0 8 1 39 0 10 1 150 0 12 1 150 0 13 1 150 0 16 1 150 0 17 0 10 0 23 1 39 0 27 1 43 0 35 1 150 0 40 1 150 0 43 1 39 0 47 0 45 0 49 1 150 0 50 1 150 0 52 1 150 0 53 1 150 0 57 1 150 0 58 1 150 0 59 0 77 0 61 1 150 0 63 1 39 0 65 1 150 0 67 1 150 0 69 1 150 0 70 1 150 0 75 1 150 0 77 1 150 0 83 1 150 0 84 1 150 0 87 1 150 0 88 1 150 0 89 1 39 0 90 1 150 0 96 1 150 0 98 1 150 0 99 1 150 0 100 1 150 0 103 1 150 0 107 1 150 0 110 1 150 0 113 1 150 0 114 1 150 0 116 1 150 0 119 0 197 0 120 1 150 0 121 1 39 0 128 1 150 0 129 1 150 0 131 1 150 0 132 1 150 0 133 1 150 0 134 1 150 0 135 1 150 0 136 1 150 0 137 1 229 0 243 1 101 0 244 1 101 0 245 1 233 1 6 1 237 1 7] 
#[0 1 47 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 8 253 0 5 9 21 0 31 1 249 0 35 9 5 0 36 9 9 0 107 9 13 0 128 9 17 0 150 9 21 0 151 9 25 0 152 9 29 0 153 9 29 0 154 9 29 0 155] 
#[1 2 222 0 1 2 222 0 5 2 222 0 6 2 222 0 8 2 222 0 10 2 222 0 12 2 222 0 13 2 226 0 15 2 222 0 16 2 222 0 17 1 51 0 23 2 222 0 26 2 222 0 27 1 51 0 28 2 222 0 35 2 222 0 40 2 222 0 42 2 222 0 43 1 51 0 46 2 222 0 47 2 222 0 49 2 222 0 50 2 222 0 51 2 222 0 52 2 222 0 53 2 222 0 54 2 222 0 55 2 222 0 57 2 222 0 58 2 222 0 59 2 222 0 60 2 222 0 61 2 222 0 62 2 222 0 63 2 222 0 64 2 222 0 65 2 222 0 66 2 222 0 67 2 222 0 68 2 222 0 69 2 222 0 70 2 222 0 72 2 222 0 73 2 222 0 74 2 222 0 75 2 222 0 77 2 222 0 78 2 222 0 79 2 222 0 80 2 222 0 81 2 222 0 82 2 222 0 83 2 222 0 84 2 222 0 85 2 222 0 86 2 222 0 87 2 222 0 88 2 222 0 89 2 222 0 90 2 222 0 92 2 222 0 93 2 222 0 94 2 222 0 95 2 222 0 96 2 222 0 97 2 222 0 98 2 222 0 99 2 222 0 100 2 222 0 101 2 222 0 102 2 222 0 103 2 222 0 104 2 222 0 105 2 222 0 106 2 222 0 107 2 222 0 108 2 222 0 109 2 222 0 110 2 222 0 111 2 222 0 112 2 222 0 113 2 222 0 114 2 222 0 115 2 222 0 116 2 222 0 117 2 222 0 118 2 222 0 119 2 222 0 120 2 222 0 121 2 222 0 122 2 222 0 128 2 222 0 129 2 222 0 131 2 222 0 132 2 222 0 133 2 222 0 134 2 222 0 135 2 222 0 136 2 222 0 137 2 222 1 83] 
#[0 11 177 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 11 181 0 184 11 181 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 11 185 0 28] 
#[0 11 189 0 26] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 11 193 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 11 193 0 201 11 193 0 204 11 193 0 205 11 193 0 206 11 193 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 11 193 0 223 1 53 0 224 11 193 0 237 11 193 0 239 11 193 0 240 11 193 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 11 197 0 8] 
#[0 11 201 0 128] 
#[0 11 205 0 8] 
#[0 11 209 0 128] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 11 213 0 28 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 11 217 0 184 11 217 0 185 11 217 0 187 5 149 0 217 1 29 0 218 1 33 0 219 11 221 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 11 217 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 11 225 0 8] 
#[1 7 197 0 42 11 229 0 192] 
#[0 11 233 0 8] 
#[1 0 62 0 2 0 62 0 3 0 62 0 4 0 27 0 5 0 27 0 6 0 62 0 7 0 27 0 8 0 27 0 10 0 62 0 11 0 62 0 12 0 62 0 13 0 62 0 14 0 62 0 15 0 62 0 16 0 62 0 17 0 62 0 18 0 62 0 19 0 62 0 20 0 62 0 21 0 62 0 22 0 27 0 23 0 62 0 24 0 62 0 25 11 237 0 26 0 66 0 27 0 27 0 28 0 31 0 29 0 62 0 30 0 62 0 31 0 62 0 32 0 62 0 33 0 62 0 34 0 27 0 35 0 62 0 37 0 62 0 38 0 62 0 39 0 62 0 41 0 27 0 42 0 62 0 43 0 62 0 44 0 62 0 45 0 62 0 46 0 66 0 47 0 27 0 49 0 66 0 52 0 66 0 53 0 66 0 57 0 66 0 58 0 66 0 59 0 66 0 60 0 66 0 61 0 66 0 62 0 66 0 65 0 66 0 69 0 66 0 72 0 66 0 73 0 66 0 74 0 66 0 77 0 66 0 79 0 66 0 82 0 66 0 83 0 66 0 84 0 66 0 85 0 66 0 90 0 66 0 95 0 66 0 98 0 66 0 99 0 66 0 101 0 66 0 104 0 66 0 108 0 66 0 112 0 66 0 114 0 66 0 115 0 66 0 116 0 66 0 118 0 66 0 119 0 66 0 120 0 66 0 121 0 62 0 123 0 62 0 124 0 62 0 125 0 62 0 126 0 62 0 127 0 66 0 128] 
#[1 1 190 0 2 1 190 0 3 1 190 0 4 1 190 0 5 1 190 0 6 1 190 0 7 1 55 0 8 1 55 0 9 1 190 0 10 1 190 0 11 1 190 0 12 1 190 0 13 1 190 0 14 1 55 0 15 1 190 0 16 1 190 0 17 1 190 0 18 1 190 0 19 1 190 0 20 1 190 0 21 1 190 0 22 1 190 0 23 1 190 0 24 1 190 0 25 1 55 0 28 1 190 0 29 1 190 0 30 1 55 0 31 1 190 0 32 1 190 0 33 1 190 0 34 1 55 0 35 1 190 0 37 1 190 0 38 1 190 0 39 1 190 0 41 0 74 0 42 1 190 0 43 1 190 0 44 1 190 0 45 1 190 0 46 0 74 0 49 1 190 0 123 1 190 0 124 1 190 0 125 1 190 0 126 1 190 0 127] 
#[1 1 59 0 15 2 178 0 23 2 26 0 28 2 178 0 46] 
#[1 10 125 0 15 11 241 0 28] 
#[0 2 230 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 2 234 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 2 234 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 2 234 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 11 245 0 46 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 11 249 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 11 249 0 201 11 249 0 204 11 249 0 205 11 249 0 206 11 249 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 11 249 0 223 1 53 0 224 11 249 0 237 11 249 0 239 11 249 0 240 11 249 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 2 234 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 2 234 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 2 234 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 2 238 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 2 242 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 3 93 0 28 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 3 97 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 11 253 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 3 141 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 12 1 0 190 12 5 0 191 12 9 0 192 12 13 0 194 12 17 0 196 12 21 0 200 1 1 0 209 12 25 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 3 149 0 244 3 149 0 245 3 153 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 12 29 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 12 33 0 15 12 37 0 46] 
#[0 2 234 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 12 41 0 46 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 7 141 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 157 0 193 7 161 0 194 7 165 0 196 7 169 0 200 7 141 0 201 7 141 0 204 7 141 0 205 7 141 0 206 7 141 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 7 141 0 223 1 53 0 224 7 141 0 237 7 141 0 239 7 141 0 240 7 141 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 12 45 0 56 12 49 1 69 12 53 1 70] 
#[1 7 197 0 42 12 57 0 192] 
#[1 7 37 0 66 12 61 0 67] 
#[0 2 246 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 2 250 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[0 2 254 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 3 2 0 9] 
#[0 12 65 0 9] 
#[1 3 6 0 9 12 69 0 15 12 73 0 23] 
#[0 3 10 0 9 0 15 0 23] 
#[1 3 14 0 8 3 14 0 9 3 14 0 15 3 14 0 23 3 14 0 26 3 14 0 28 3 14 0 31 1 63 0 35 3 14 0 42 0 45 0 49 3 14 0 76 3 14 0 91 3 14 0 111 3 14 0 124 12 77 0 243 1 101 0 244 1 101 0 245] 
#[0 12 81 0 36] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 12 85 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 12 89 0 214 12 93 0 216 12 89 0 217 1 29 0 218 1 33 0 219 12 89 0 220 12 89 1 7 1 29 1 26 12 97 1 31 1 29 1 59 1 185 1 61 12 89 1 64] 
#[0 3 18 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 12 101 0 184 12 101 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 3 22 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 3 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 3 30 0 26 0 27 0 65 0 118 0 128] 
#[0 3 30 0 26 0 27 0 65 0 118 0 128] 
#[0 3 30 0 26 0 27 0 65 0 118 0 128] 
#[0 12 105 0 29] 
#[1 3 29 0 27 0 85 0 65 3 37 0 114 3 41 0 128 3 45 0 147 1 213 0 218 1 217 0 219 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 0 66 0 5 0 66 0 6 0 27 0 8 0 66 0 10 0 62 0 15 0 66 0 23 1 67 0 26 0 66 0 27 0 27 0 28 0 70 0 29 0 62 0 31 1 71 0 35 0 62 0 42 0 66 0 47 1 75 0 49 0 66 0 52 0 66 0 53 0 66 0 57 0 66 0 58 0 66 0 59 0 66 0 60 0 66 0 61 0 66 0 62 0 66 0 65 0 66 0 69 0 66 0 72 0 66 0 73 0 66 0 74 0 62 0 76 0 66 0 77 0 66 0 79 0 66 0 82 0 66 0 83 0 66 0 84 0 66 0 85 0 66 0 90 0 62 0 91 0 66 0 95 0 66 0 98 0 66 0 99 0 66 0 101 0 66 0 104 0 66 0 108 0 62 0 111 0 66 0 112 0 66 0 114 0 66 0 115 0 66 0 116 0 66 0 118 0 66 0 119 0 66 0 120 0 66 0 121 0 66 0 128 12 113 0 243 1 101 0 244 1 101 0 245] 
#[0 3 34 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 3 34 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 1 0 26 0 29 0 27 12 117 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 85 0 65 0 133 0 90 8 33 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 12 121 0 243 1 101 0 244 1 101 0 245 12 125 1 0 12 125 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 12 129 1 34 8 77 1 35 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 3 34 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 12 133 0 26 0 29 0 27 12 137 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 8 33 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 1 1 0 209 12 141 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 12 121 0 243 12 145 0 244 12 145 0 245 12 149 1 0 12 149 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 12 153 1 34 8 77 1 35 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64] 
#[1 3 38 0 15 3 173 0 26 3 38 0 28 12 157 0 31 3 181 0 42 3 221 0 76 3 221 0 91 3 193 0 111 3 197 0 192 3 201 1 20 12 161 1 22 12 161 1 25 12 165 1 36 3 221 1 37 12 169 1 38 3 225 1 49 3 229 1 68] 
#[0 3 34 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 12 173 0 46] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 1 0 26 0 29 0 27 8 5 0 28 0 37 0 35 3 42 0 46 0 41 0 47 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 133 0 90 8 81 0 92 8 81 0 93 8 81 0 94 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 8 25 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 8 29 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 8 33 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 8 69 0 205 8 69 0 207 1 1 0 209 8 45 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 8 69 0 239 8 53 0 243 1 101 0 244 1 101 0 245 8 57 1 0 8 57 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 8 69 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 12 177 1 32 8 69 1 33 8 73 1 34 8 77 1 35 8 81 1 45 0 217 1 46 1 165 1 53 1 169 1 54 8 69 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64] 
#[1 12 181 0 15 12 185 0 28] 
#[0 3 46 0 15 0 28] 
#[0 12 189 0 26] 
#[0 3 34 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 29 0 27 0 85 0 65 12 197 0 92 12 197 0 93 12 197 0 94 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 12 193 1 43 12 193 1 44 12 197 1 45 7 17 1 59 1 185 1 61] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 85 0 65 12 209 0 92 12 209 0 93 12 209 0 94 12 201 0 118 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 3 149 0 244 3 149 0 245 7 17 1 26 12 205 1 43 12 205 1 44 12 209 1 45 7 17 1 59 1 185 1 61] 
#[1 12 213 0 15 3 50 0 42] 
#[1 3 54 0 15 12 217 0 23 3 54 0 42] 
#[0 3 58 0 15 0 23 0 42] 
#[0 3 62 0 15 0 23 0 42] 
#[1 0 29 0 27 0 85 0 65 12 221 0 118 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 12 225 1 43 12 225 1 44 7 17 1 59 1 185 1 61] 
#[1 1 185 0 128 12 229 1 59 1 185 1 61] 
#[1 3 66 0 2 3 66 0 3 3 66 0 4 3 66 0 5 3 66 0 6 3 66 0 7 3 66 0 8 3 66 0 9 3 66 0 10 3 66 0 11 3 66 0 12 3 66 0 13 3 66 0 14 3 66 0 15 3 66 0 16 3 66 0 17 3 66 0 18 3 66 0 19 3 66 0 20 3 66 0 21 3 66 0 22 3 66 0 23 3 66 0 24 3 66 0 25 1 79 0 26 1 83 0 27 3 66 0 28 1 87 0 29 3 66 0 30 3 66 0 31 3 66 0 32 3 66 0 33 3 66 0 34 3 66 0 35 3 66 0 36 3 66 0 37 3 66 0 38 3 66 0 39 3 66 0 41 1 79 0 42 3 66 0 43 3 66 0 44 3 66 0 45 3 66 0 46 3 66 0 47 3 66 0 49 3 66 0 52 3 66 0 53 3 66 0 57 3 66 0 58 3 66 0 59 3 66 0 60 3 66 0 61 3 66 0 62 3 66 0 65 3 66 0 69 3 66 0 72 3 66 0 73 3 66 0 74 1 79 0 76 3 66 0 77 3 66 0 79 3 66 0 82 3 66 0 83 3 66 0 84 3 66 0 85 3 66 0 90 3 66 0 91 3 66 0 95 3 66 0 98 3 66 0 99 3 66 0 101 3 66 0 104 3 66 0 108 3 66 0 111 3 66 0 112 3 66 0 114 3 66 0 115 3 66 0 116 3 66 0 118 3 66 0 119 3 66 0 120 3 66 0 121 3 66 0 123 3 66 0 124 3 66 0 125 3 66 0 126 3 66 0 127 3 66 0 128] 
#[0 3 70 0 26 0 42 0 76] 
#[1 3 74 0 2 3 74 0 3 3 74 0 4 3 74 0 5 3 74 0 6 3 74 0 7 3 74 0 8 3 74 0 9 3 74 0 10 3 74 0 11 3 74 0 12 3 74 0 13 3 74 0 14 3 74 0 15 3 74 0 16 3 74 0 17 3 74 0 18 3 74 0 19 3 74 0 20 3 74 0 21 3 74 0 22 3 74 0 23 3 74 0 24 3 74 0 25 1 91 0 26 1 95 0 27 3 74 0 28 3 74 0 29 3 74 0 30 3 74 0 31 3 74 0 32 3 74 0 33 3 74 0 34 3 74 0 35 3 74 0 36 3 74 0 37 3 74 0 38 3 74 0 39 3 74 0 41 1 91 0 42 3 74 0 43 3 74 0 44 3 74 0 45 3 74 0 46 3 74 0 47 3 74 0 49 3 74 0 52 3 74 0 53 3 74 0 57 3 74 0 58 3 74 0 59 3 74 0 60 3 74 0 61 3 74 0 62 3 74 0 65 3 74 0 69 3 74 0 72 3 74 0 73 3 74 0 74 1 91 0 76 3 74 0 77 3 74 0 79 3 74 0 82 3 74 0 83 3 74 0 84 3 74 0 85 3 74 0 90 3 74 0 91 3 74 0 95 3 74 0 98 3 74 0 99 3 74 0 101 3 74 0 104 3 74 0 108 3 74 0 111 3 74 0 112 3 74 0 114 3 74 0 115 3 74 0 116 3 74 0 118 3 74 0 119 3 74 0 120 3 74 0 121 3 74 0 123 3 74 0 124 3 74 0 125 3 74 0 126 3 74 0 127 3 74 0 128] 
#[1 3 78 0 2 3 78 0 3 3 78 0 4 3 78 0 5 3 78 0 6 3 78 0 7 3 78 0 8 3 78 0 9 3 78 0 10 3 78 0 11 3 78 0 12 3 78 0 13 3 78 0 14 3 78 0 15 3 78 0 16 3 78 0 17 3 78 0 18 3 78 0 19 3 78 0 20 3 78 0 21 3 78 0 22 3 78 0 23 3 78 0 24 3 78 0 25 1 99 0 26 1 99 0 27 3 78 0 28 1 103 0 29 3 78 0 30 3 78 0 31 3 78 0 32 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 36 3 78 0 37 3 78 0 38 3 78 0 39 3 78 0 41 1 99 0 42 3 78 0 43 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 3 78 0 49 3 78 0 52 3 78 0 53 3 78 0 57 3 78 0 58 3 78 0 59 3 78 0 60 3 78 0 61 3 78 0 62 3 78 0 65 3 78 0 69 3 78 0 72 3 78 0 73 3 78 0 74 1 99 0 76 3 78 0 77 3 78 0 79 3 78 0 82 3 78 0 83 3 78 0 84 3 78 0 85 3 78 0 90 3 78 0 91 3 78 0 95 3 78 0 98 3 78 0 99 3 78 0 101 3 78 0 104 3 78 0 108 3 78 0 111 3 78 0 112 3 78 0 114 3 78 0 115 3 78 0 116 3 78 0 118 3 78 0 119 3 78 0 120 3 78 0 121 3 78 0 123 3 78 0 124 3 78 0 125 3 78 0 126 3 78 0 127 3 78 0 128] 
#[1 5 161 0 106 12 233 0 128 8 125 1 26 5 245 1 59 1 185 1 61] 
#[1 4 1 0 26 3 82 0 42 12 237 0 76 12 237 1 30 12 241 1 40] 
#[0 3 86 0 42] 
#[0 3 90 0 26 0 42] 
#[1 4 1 0 26 3 94 0 42 12 245 1 40] 
#[0 3 98 0 42] 
#[0 3 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 1 190 0 2 1 190 0 3 1 190 0 5 1 190 0 6 1 190 0 8 1 190 0 10 1 190 0 12 1 190 0 13 1 107 0 15 1 190 0 16 1 190 0 17 1 190 0 19 1 190 0 20 1 190 0 21 1 190 0 22 1 107 0 23 1 190 0 24 1 190 0 29 1 190 0 30 1 190 0 32 1 190 0 33 1 190 0 34 1 190 0 35 1 190 0 37 1 190 0 39 1 190 0 41 1 190 0 43 1 190 0 45 1 190 0 123 1 107 0 124 1 190 0 125] 
#[0 3 106 0 15 0 23 0 124] 
#[0 3 106 0 15 0 23 0 124] 
#[1 12 249 0 15 12 253 0 124] 
#[1 3 110 0 15 13 1 0 23 3 110 0 124] 
#[0 3 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 12 249 0 15 13 5 0 124] 
#[0 3 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 12 249 0 15 13 9 0 124] 
#[1 0 174 0 2 0 174 0 3 0 174 0 4 0 174 0 5 0 174 0 6 0 174 0 7 0 174 0 8 0 174 0 9 0 174 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 174 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 22 0 174 0 23 0 174 0 24 0 174 0 25 0 174 0 26 11 65 0 27 0 174 0 28 0 174 0 29 0 174 0 30 0 174 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 39 0 174 0 41 0 174 0 42 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 174 0 49 0 174 0 76 0 174 0 91 0 174 0 111 0 174 0 123 0 174 0 124 0 174 0 125 0 174 0 126 0 174 0 127] 
#[1 3 118 0 15 3 118 0 36 4 73 0 128 13 13 0 247 4 85 0 248 4 89 0 249 4 93 0 250] 
#[0 13 17 0 36] 
#[0 3 122 0 15 0 36] 
#[1 1 111 0 8 3 126 0 9 1 115 0 35 1 119 0 42 13 33 0 252 13 37 0 253] 
#[0 3 130 0 15 0 23 0 36] 
#[0 13 41 0 128] 
#[1 13 45 0 9 10 125 0 15] 
#[0 13 49 0 9] 
#[0 3 134 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 3 134 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 13 53 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 13 57 0 161 5 13 0 162 13 57 0 163 13 57 0 169 13 57 0 170 13 57 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 13 61 0 8 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 13 65 0 164 13 69 0 165 2 249 0 213 2 249 0 214 9 73 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 3 138 0 15 3 138 0 36 13 73 0 128] 
#[0 3 138 0 15 0 36] 
#[0 3 142 0 8 0 42] 
#[0 3 146 0 15 0 23 0 36] 
#[1 3 169 0 8 3 146 0 15 3 146 0 23 11 129 0 31 3 146 0 36 6 237 0 42 13 77 1 21 13 77 1 22 13 77 1 25] 
#[0 13 81 0 36] 
#[1 13 85 0 15 3 150 0 36] 
#[1 13 89 0 15 3 154 0 36] 
#[1 3 158 0 15 13 93 0 23 3 158 0 36] 
#[0 3 162 0 15 0 23 0 36] 
#[0 3 162 0 15 0 23 0 36] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 13 97 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 13 101 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 8 253 0 5 9 21 0 31 13 105 0 36 9 9 0 107 9 13 0 128 9 17 0 150 9 21 0 151 9 25 0 152 9 29 0 153 9 29 0 154 9 29 0 155] 
#[0 3 166 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 13 109 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 13 113 0 159 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 13 117 1 10 6 249 1 23 6 253 1 24 6 249 1 25 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 13 121 0 8 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 13 125 0 165 2 249 0 213 2 249 0 214 9 73 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 3 170 0 2 3 170 0 3 3 170 0 4 3 170 0 5 3 170 0 6 3 170 0 7 13 129 0 8 3 170 0 9 3 170 0 10 3 170 0 11 3 170 0 12 3 170 0 14 3 170 0 15 3 170 0 16 3 170 0 18 3 170 0 20 3 170 0 22 3 170 0 23 3 170 0 24 3 170 0 25 3 170 0 26 3 170 0 28 3 170 0 29 3 170 0 30 3 170 0 31 3 170 0 32 3 170 0 33 3 170 0 34 3 170 0 36 3 170 0 37 3 170 0 38 3 170 0 39 3 170 0 41 6 237 0 42 3 170 0 43 3 170 0 44 3 170 0 45 3 170 0 46 3 170 0 123 3 170 0 124 3 170 0 125 3 170 0 126 3 170 0 127 13 133 0 168 13 133 1 25] 
#[1 3 174 0 2 3 174 0 3 3 174 0 4 1 123 0 5 1 127 0 6 3 174 0 7 3 174 0 8 3 174 0 9 1 131 0 10 3 174 0 11 3 174 0 12 3 174 0 14 3 174 0 15 3 174 0 16 3 174 0 18 3 174 0 20 3 174 0 22 3 174 0 23 3 174 0 24 3 174 0 25 3 174 0 26 0 29 0 27 3 174 0 28 3 174 0 29 3 174 0 30 3 174 0 31 3 174 0 32 3 174 0 33 3 174 0 34 13 141 0 35 3 174 0 36 3 174 0 37 3 174 0 38 3 174 0 39 3 174 0 41 3 174 0 42 3 174 0 43 3 174 0 44 3 174 0 45 3 174 0 46 0 85 0 65 3 174 0 123 3 174 0 124 3 174 0 125 3 174 0 126 3 174 0 127 1 253 0 128 6 1 0 147 13 145 0 166 13 149 0 167 1 213 0 218 1 217 0 219 13 153 1 5 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 13 157 0 184 13 157 0 185 13 157 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 13 157 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 13 161 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 8 229 0 184 8 229 0 185 8 229 0 187 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 13 165 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 8 229 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 13 169 0 8] 
#[0 3 178 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 13 173 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 1 78 0 9 7 225 0 23 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 1 1 1 7 13 177 1 16 7 233 1 17 7 237 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 1 1 1 64] 
#[1 7 197 0 42 13 181 0 192] 
#[0 3 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 13 185 0 9 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 13 189 0 159 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 5 149 0 217 1 29 0 218 1 33 0 219 6 249 1 23 6 253 1 24 6 249 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 3 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 0 29 0 27 13 193 0 47 0 85 0 65 0 133 0 90 13 197 0 106 0 205 0 128 13 201 0 144 0 217 0 145 0 221 0 146 13 205 0 147 13 209 0 160 13 213 0 218 1 217 0 219 13 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 0 29 0 27 13 193 0 47 0 85 0 65 0 133 0 90 13 217 0 106 0 205 0 128 13 221 0 144 0 217 0 145 0 221 0 146 13 205 0 147 13 225 0 160 13 213 0 218 1 217 0 219 13 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 13 229 0 184 13 229 0 185 13 229 0 187 5 149 0 217 1 29 0 218 1 33 0 219 13 233 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 13 229 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 13 237 0 184 13 237 0 185 13 237 0 187 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 13 241 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 13 237 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 3 134 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 13 245 0 161 5 13 0 162 13 245 0 163 13 245 0 169 13 245 0 170 13 245 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 13 249 0 161 5 13 0 162 13 249 0 163 13 249 0 169 13 249 0 170 13 249 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 13 253 0 161 5 13 0 162 13 253 0 163 13 253 0 169 13 253 0 170 13 253 0 171 13 253 0 172 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 14 1 0 161 5 13 0 162 14 1 0 163 14 1 0 169 14 1 0 170 14 1 0 171 14 1 0 172 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 14 5 0 161 5 13 0 162 14 5 0 163 14 5 0 169 14 5 0 170 14 5 0 171 14 5 0 172 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 14 9 0 173 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 14 13 0 173 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 3 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 190 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 14 17 0 174 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 14 21 0 175 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 14 25 0 175 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 14 29 0 175 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 14 33 0 175 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 14 37 0 177 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 14 41 0 177 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 14 45 0 178 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 14 49 0 179 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 14 53 0 180 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 14 57 0 181 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 14 61 0 181 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 14 65 0 184 14 65 0 185 14 65 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 14 65 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 14 69 0 182 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 14 73 0 182 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 14 77 0 9] 
#[1 0 9 0 5 0 13 0 6 9 249 0 8 1 78 0 9 0 21 0 10 7 225 0 23 0 29 0 27 14 81 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 14 85 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 14 89 1 3 14 93 1 5 1 1 1 7 14 97 1 12 14 101 1 13 7 229 1 16 7 233 1 17 7 237 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 1 1 1 64] 
#[0 3 198 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 14 105 0 36 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 14 109 0 184 14 109 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 3 202 0 8 3 202 0 9 3 202 0 15 7 249 0 19 3 202 0 23 3 202 0 26 3 202 0 28 3 202 0 31 3 202 0 35 3 202 0 42 3 202 0 76 3 202 0 91 3 202 0 111 3 202 0 124 14 113 1 4] 
#[1 0 9 0 5 0 13 0 6 1 135 0 8 3 206 0 9 0 21 0 10 3 206 0 15 1 139 0 23 3 206 0 26 0 29 0 27 3 206 0 28 3 206 0 31 10 1 0 35 3 206 0 42 0 85 0 65 3 206 0 76 3 206 0 91 3 206 0 111 3 206 0 124 1 253 0 128 6 1 0 147 1 213 0 218 1 217 0 219 14 89 1 3 10 9 1 5 14 117 1 12 14 101 1 13 14 121 1 14 10 29 1 15 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 3 210 0 9 0 15 0 23 0 28 0 124] 
#[0 3 214 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 1 143 0 8 3 218 0 9 3 218 0 15 3 218 0 23 3 218 0 26 3 218 0 28 3 218 0 31 14 125 0 35 3 218 0 42 3 218 0 76 3 218 0 91 3 218 0 111 3 218 0 124 14 129 1 3] 
#[0 3 214 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 1 147 0 8 3 222 0 9 3 222 0 15 3 222 0 23 3 222 0 26 3 222 0 28 3 222 0 31 14 133 0 35 3 222 0 42 3 222 0 76 3 222 0 91 3 222 0 111 3 222 0 124 14 137 1 3] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 14 141 0 9 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 14 145 0 159 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 5 149 0 217 1 29 0 218 1 33 0 219 6 249 1 23 6 253 1 24 6 249 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 3 194 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 14 149 0 9] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 14 153 0 9 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 14 157 0 159 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 5 149 0 217 1 29 0 218 1 33 0 219 6 249 1 23 6 253 1 24 6 249 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 3 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 133] 
#[0 14 161 0 28] 
#[0 3 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 3 238 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 3 242 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 14 165 0 184 14 165 0 185 5 149 0 217 1 29 0 218 1 33 0 219 14 165 1 23 14 165 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 14 165 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 3 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 14 169 0 184 14 169 0 185 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 14 169 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 0 70 0 29] 
#[0 11 65 0 27] 
#[0 3 250 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 14 173 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 3 73 0 203 3 73 0 204 3 73 0 205 3 73 0 206 3 73 0 207 3 73 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 73 0 223 1 53 0 224 3 73 0 231 3 73 0 232 3 73 0 233 3 73 0 234 3 73 0 235 3 73 0 237 3 73 0 239 3 73 0 240 3 73 0 241 3 73 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 3 73 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 3 73 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 3 73 1 65 3 73 1 66] 
#[0 14 177 0 46] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 218 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 197 0 202 0 233 0 203 0 233 0 204 0 233 0 205 0 233 0 206 0 233 0 207 0 233 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 0 233 0 223 1 53 0 224 0 233 0 231 0 233 0 232 0 233 0 233 0 233 0 234 0 233 0 235 14 181 0 236 0 233 0 237 0 233 0 239 0 233 0 240 0 233 0 241 0 233 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 0 233 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 0 233 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 0 233 1 65 0 233 1 66] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 218 0 46 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 197 0 202 0 233 0 203 0 233 0 204 0 233 0 205 0 233 0 206 0 233 0 207 0 233 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 0 233 0 223 1 53 0 224 0 233 0 231 0 233 0 232 0 233 0 233 0 233 0 234 0 233 0 235 14 185 0 236 0 233 0 237 0 233 0 239 0 233 0 240 0 233 0 241 0 233 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 0 233 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 0 233 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 0 233 1 65 0 233 1 66] 
#[0 3 254 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 5 161 0 106 11 33 0 128 14 189 0 229 6 101 0 230 5 169 1 59 1 185 1 61] 
#[0 4 2 0 28] 
#[0 14 193 0 28] 
#[0 14 197 0 46] 
#[0 14 201 0 46] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[1 2 114 0 2 2 114 0 3 2 114 0 4 2 114 0 5 2 114 0 6 2 114 0 7 2 114 0 8 2 114 0 9 2 114 0 10 2 114 0 11 2 114 0 12 2 114 0 13 2 114 0 14 2 114 0 15 2 114 0 16 2 114 0 17 2 114 0 18 2 114 0 19 2 114 0 20 2 114 0 21 2 114 0 22 2 114 0 23 2 114 0 24 2 114 0 25 2 114 0 26 1 31 0 27 2 114 0 28 2 114 0 29 2 114 0 30 2 114 0 31 2 114 0 32 2 114 0 33 2 114 0 34 2 114 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 39 2 114 0 41 2 114 0 42 2 114 0 43 2 114 0 44 2 114 0 45 2 114 0 46 2 114 0 47 2 114 0 49 2 114 0 52 2 114 0 53 2 114 0 57 2 114 0 58 2 114 0 59 2 114 0 60 2 114 0 61 2 114 0 62 2 114 0 65 2 114 0 69 2 114 0 72 2 114 0 73 2 114 0 74 2 114 0 76 2 114 0 77 2 114 0 79 2 114 0 82 2 114 0 83 2 114 0 84 2 114 0 85 2 114 0 90 2 114 0 91 2 114 0 95 2 114 0 98 2 114 0 99 2 114 0 101 2 114 0 104 2 114 0 108 2 114 0 111 2 114 0 112 2 114 0 114 2 114 0 115 2 114 0 116 2 114 0 118 2 114 0 119 2 114 0 120 2 114 0 121 2 114 0 123 2 114 0 124 2 114 0 125 2 114 0 126 2 114 0 127 2 114 0 128] 
#[1 6 137 0 27 0 70 0 29] 
#[0 4 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 2 158 0 42] 
#[1 3 117 0 26 0 66 0 27 0 70 0 29 2 166 0 42 14 205 0 225] 
#[0 14 209 0 133] 
#[1 4 14 0 15 4 14 0 124 14 213 0 128] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 14 217 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 4 18 0 15 14 221 0 31 4 18 0 124] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 6 25 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 6 29 0 106 1 9 0 108 0 169 0 112 6 33 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 1 1 1 7 6 57 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 14 225 1 56 6 57 1 57 6 57 1 58 1 29 1 59 1 185 1 61 1 1 1 64] 
#[1 4 22 0 15 4 22 0 124 14 229 0 128] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 14 233 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 4 26 0 15 0 66 0 27 0 70 0 29 14 237 0 31 4 26 0 124] 
#[0 4 30 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 0 9 0 5 0 13 0 6 10 245 0 8 1 78 0 9 0 21 0 10 14 241 0 23 0 29 0 27 14 81 0 35 0 41 0 47 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 1 221 1 1 1 225 1 2 14 89 1 3 14 245 1 5 1 1 1 7 1 137 1 9 14 97 1 12 14 101 1 13 7 229 1 16 7 233 1 17 7 237 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64] 
#[1 3 198 0 8 3 198 0 9 3 198 0 15 3 198 0 23 0 29 0 27 3 198 0 31 3 198 0 35 0 41 0 47 0 85 0 65 0 133 0 90 3 198 0 124 0 205 0 128 1 241 0 144 0 217 0 145 0 221 0 146 1 245 0 147 1 213 0 218 1 217 0 219 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 14 249 0 184 14 249 0 185 5 149 0 217 1 29 0 218 1 33 0 219 14 249 1 23 14 249 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 14 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 4 34 0 9 4 34 0 15 4 34 0 23 14 253 0 31 4 34 0 124] 
#[1 0 9 0 5 0 13 0 6 10 245 0 8 3 206 0 9 0 21 0 10 3 206 0 15 1 151 0 23 0 29 0 27 3 206 0 31 10 1 0 35 0 41 0 47 0 85 0 65 0 133 0 90 3 206 0 124 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 3 245 1 1 1 225 1 2 14 89 1 3 11 5 1 5 1 137 1 9 14 117 1 12 14 101 1 13 14 121 1 14 10 29 1 15 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 4 34 0 9 4 34 0 15 4 34 0 23 15 1 0 31 4 34 0 124] 
#[1 0 9 0 5 0 13 0 6 10 245 0 8 4 38 0 9 0 21 0 10 4 38 0 15 1 155 0 23 0 29 0 27 15 5 0 31 10 1 0 35 0 41 0 47 0 85 0 65 0 133 0 90 4 38 0 124 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 15 9 1 0 15 9 1 1 1 125 1 2 10 5 1 3 11 5 1 5 1 137 1 9 15 13 1 11 15 13 1 12 10 21 1 13 15 13 1 14 10 29 1 15 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 6 25 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 6 29 0 106 1 9 0 108 0 169 0 112 6 33 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 1 1 1 7 15 17 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 15 17 1 57 15 17 1 58 1 29 1 59 1 185 1 61 1 1 1 64] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 33 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 49 0 51 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 0 101 0 74 0 105 0 77 0 109 0 79 0 113 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 129 0 86 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 0 161 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 15 21 0 203 15 21 0 204 15 21 0 205 15 21 0 206 15 21 0 207 15 21 0 208 1 1 0 209 1 5 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 15 21 0 223 1 53 0 224 15 21 0 231 15 21 0 232 15 21 0 233 15 21 0 234 15 21 0 235 15 21 0 237 15 21 0 239 15 21 0 240 15 21 0 241 15 21 0 242 1 97 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 1 117 1 0 1 117 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 15 21 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 15 21 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64 15 21 1 65 15 21 1 66] 
#[1 4 42 0 2 4 42 0 3 4 42 0 4 4 42 0 5 4 42 0 6 4 42 0 7 4 42 0 8 4 42 0 9 4 42 0 10 4 42 0 11 4 42 0 12 4 42 0 13 4 42 0 14 4 42 0 15 4 42 0 16 4 42 0 17 4 42 0 18 4 42 0 19 4 42 0 20 4 42 0 21 4 42 0 22 4 42 0 23 4 42 0 24 4 42 0 25 4 42 0 26 1 159 0 27 4 42 0 28 4 42 0 29 4 42 0 30 4 42 0 31 4 42 0 32 4 42 0 33 4 42 0 34 4 42 0 35 4 42 0 36 4 42 0 37 4 42 0 38 4 42 0 39 4 42 0 41 4 42 0 42 4 42 0 43 4 42 0 44 4 42 0 45 4 42 0 46 4 42 0 47 4 42 0 49 4 42 0 52 4 42 0 53 4 42 0 57 4 42 0 58 4 42 0 59 4 42 0 60 4 42 0 61 4 42 0 62 4 42 0 65 4 42 0 69 4 42 0 72 4 42 0 73 4 42 0 74 4 42 0 76 4 42 0 77 4 42 0 79 4 42 0 82 4 42 0 83 4 42 0 84 4 42 0 85 4 42 0 90 4 42 0 91 4 42 0 95 4 42 0 98 4 42 0 99 4 42 0 101 4 42 0 104 4 42 0 108 4 42 0 111 4 42 0 112 4 42 0 114 4 42 0 115 4 42 0 116 4 42 0 118 4 42 0 119 4 42 0 120 4 42 0 121 4 42 0 123 4 42 0 124 4 42 0 125 4 42 0 126 4 42 0 127 4 42 0 128] 
#[0 4 46 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[1 6 137 0 27 0 222 0 28 0 70 0 29] 
#[0 15 25 0 28] 
#[0 4 50 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 15 29 0 28] 
#[0 15 33 0 28] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 15 37 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[0 4 54 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 4 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 4 62 0 10 0 47 0 90 0 106 0 128] 
#[0 4 66 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 15 41 0 46 6 173 0 128 15 45 0 227 6 173 0 228] 
#[0 4 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 15 49 0 184 15 49 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 4 74 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 4 78 0 42] 
#[0 4 82 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[1 15 53 0 28 4 86 0 42] 
#[1 3 117 0 26 6 137 0 27 0 70 0 29 4 90 0 42 15 57 0 225] 
#[1 5 161 0 106 11 33 0 128 15 61 0 229 6 101 0 230 5 169 1 59 1 185 1 61] 
#[0 15 65 0 28] 
#[0 4 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 4 98 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 3 173 0 26 7 209 0 31 7 197 0 42 7 217 0 76 7 217 0 91 3 193 0 111 3 197 0 192 15 69 1 20 7 217 1 37 3 225 1 49 3 229 1 68] 
#[0 4 66 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 45 0 184 7 45 0 185 5 149 0 217 1 29 0 218 1 33 0 219 7 45 1 23 7 45 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 7 45 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 2 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 4 102 0 15 0 23 0 28 0 36] 
#[0 4 106 0 9 0 15 0 46] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 15 73 0 184 15 73 0 185 5 149 0 217 1 29 0 218 1 33 0 219 15 73 1 23 15 73 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 15 73 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 4 110 0 8 0 15 0 23 0 42] 
#[1 0 29 0 27 0 85 0 65 7 5 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 7 33 1 43 15 77 1 50 7 29 1 51 7 33 1 52 7 17 1 59 1 185 1 61] 
#[1 15 81 0 15 4 114 0 42] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 15 85 0 9 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 15 89 0 159 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 5 149 0 217 1 29 0 218 1 33 0 219 6 249 1 23 6 253 1 24 6 249 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 4 118 0 15 0 23 0 42] 
#[0 4 122 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 4 126 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 4 130 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 15 93 0 26] 
#[0 4 134 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 15 97 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 15 97 0 201 15 97 0 204 15 97 0 205 15 97 0 206 15 97 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 15 97 0 223 1 53 0 224 15 97 0 237 15 97 0 239 15 97 0 240 15 97 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 15 101 0 122] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 4 189 0 103 0 157 0 104 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 15 109 0 191 15 109 0 197 15 113 0 198 15 109 0 206 1 1 0 209 15 121 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 15 125 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 15 129 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 7 65 0 35 5 13 0 40 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 4 189 0 103 0 157 0 104 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 15 133 0 184 15 133 0 185 15 133 0 187 15 137 0 195 1 1 0 209 15 141 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 15 145 0 243 1 101 0 244 1 101 0 245 1 1 1 7 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 15 133 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 5 205 0 31] 
#[0 4 138 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 10 125 0 15 15 149 0 28] 
#[0 15 153 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 7 65 0 35 5 13 0 40 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 4 189 0 103 0 157 0 104 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 15 133 0 184 15 133 0 185 15 133 0 187 15 157 0 195 1 1 0 209 15 141 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 15 145 0 243 1 101 0 244 1 101 0 245 1 1 1 7 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 15 133 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 12 45 0 56 15 161 1 69 12 53 1 70] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 7 65 0 35 5 13 0 40 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 4 189 0 103 0 157 0 104 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 15 133 0 184 15 133 0 185 15 133 0 187 15 165 0 195 1 1 0 209 15 141 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 15 145 0 243 1 101 0 244 1 101 0 245 1 1 1 7 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 15 133 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 15 169 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 15 169 0 201 15 169 0 204 15 169 0 205 15 169 0 206 15 169 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 15 169 0 223 1 53 0 224 15 169 0 237 15 169 0 239 15 169 0 240 15 169 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 4 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 4 150 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 2 218 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 6 209 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 15 173 0 46 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 15 73 0 184 15 73 0 185 5 149 0 217 1 29 0 218 1 33 0 219 15 73 1 23 15 73 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 15 73 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 4 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 2 222 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 15 177 0 8] 
#[0 4 162 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 4 166 0 1 4 166 0 5 4 166 0 6 4 166 0 8 4 166 0 10 4 166 0 12 4 166 0 13 4 166 0 16 4 166 0 17 4 166 0 23 4 166 0 26 4 166 0 27 4 166 0 28 4 166 0 35 4 166 0 40 4 166 0 42 4 166 0 43 4 166 0 46 4 166 0 47 4 166 0 49 4 166 0 50 4 166 0 51 4 166 0 52 4 166 0 53 4 166 0 54 4 166 0 55 12 45 0 56 4 166 0 57 4 166 0 58 4 166 0 59 4 166 0 60 4 166 0 61 4 166 0 62 4 166 0 63 4 166 0 64 4 166 0 65 4 166 0 66 4 166 0 67 4 166 0 68 4 166 0 69 4 166 0 70 4 166 0 71 4 166 0 72 4 166 0 73 4 166 0 74 4 166 0 75 4 166 0 77 4 166 0 78 4 166 0 79 4 166 0 80 4 166 0 81 4 166 0 82 4 166 0 83 4 166 0 84 4 166 0 85 4 166 0 86 4 166 0 87 4 166 0 88 4 166 0 89 4 166 0 90 4 166 0 92 4 166 0 93 4 166 0 94 4 166 0 95 4 166 0 96 4 166 0 97 4 166 0 98 4 166 0 99 4 166 0 100 4 166 0 101 4 166 0 102 4 166 0 103 4 166 0 104 4 166 0 105 4 166 0 106 4 166 0 107 4 166 0 108 4 166 0 109 4 166 0 110 4 166 0 111 4 166 0 112 4 166 0 113 4 166 0 114 4 166 0 115 4 166 0 116 4 166 0 117 4 166 0 118 4 166 0 119 4 166 0 120 4 166 0 121 4 166 0 122 4 166 0 128 4 166 0 129 4 166 0 131 4 166 0 132 4 166 0 133 4 166 0 134 4 166 0 135 4 166 0 136 4 166 0 137 15 181 1 69 12 53 1 70 4 166 1 83] 
#[1 12 45 0 56 15 185 1 69 12 53 1 70] 
#[0 11 173 0 28] 
#[1 15 213 0 5 15 213 0 6 4 170 0 8 4 170 0 9 4 170 0 15 4 170 0 19 4 170 0 23 4 170 0 26 4 170 0 28 4 170 0 31 1 163 0 35 4 170 0 42 0 45 0 49 0 77 0 61 4 170 0 76 15 197 0 88 4 170 0 91 15 201 0 109 4 170 0 111 0 197 0 120 4 170 0 124 15 205 0 243 1 101 0 244 1 101 0 245 15 209 1 6 1 237 1 7 15 213 1 8 15 217 1 73 15 217 1 74 15 217 1 76] 
#[1 15 229 0 23 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 1 1 1 7 15 233 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 1 1 1 64] 
#[0 4 174 0 9] 
#[1 4 178 0 8 4 178 0 9 4 178 0 15 4 178 0 23 4 178 0 26 4 178 0 28 4 178 0 31 1 167 0 35 4 178 0 42 0 45 0 49 4 178 0 76 4 178 0 91 4 178 0 111 4 178 0 124 3 149 0 244 3 149 0 245] 
#[1 4 182 0 8 4 182 0 9 4 182 0 15 4 182 0 23 4 182 0 26 4 182 0 28 4 182 0 31 1 171 0 35 4 182 0 42 0 45 0 49 4 182 0 76 4 182 0 91 4 182 0 111 4 182 0 124 15 237 0 243 1 101 0 244 1 101 0 245] 
#[1 0 29 0 27 0 85 0 65 2 33 0 128 2 37 0 147 1 213 0 218 1 217 0 219 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 4 186 0 5 4 186 0 6 4 186 0 8 4 186 0 9 4 186 0 10 4 186 0 15 4 186 0 23 4 186 0 26 1 175 0 27 4 186 0 28 4 186 0 31 1 179 0 35 4 186 0 42 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 1 183 0 65 0 89 0 69 12 85 0 72 4 186 0 76 0 105 0 77 0 117 0 83 0 121 0 84 4 186 0 91 0 141 0 98 0 145 0 99 0 157 0 104 4 186 0 111 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 4 186 0 124 1 187 0 128 2 245 0 147 12 89 0 214 15 241 0 216 12 89 0 217 1 29 0 218 1 33 0 219 12 89 0 220 15 245 0 243 1 101 0 244 1 101 0 245 12 89 1 7 1 29 1 26 12 97 1 31 1 29 1 59 1 185 1 61 12 89 1 64] 
#[1 0 9 0 5 0 13 0 6 1 191 0 8 4 190 0 9 0 21 0 10 4 190 0 15 1 195 0 23 4 190 0 26 0 29 0 27 4 190 0 28 4 190 0 31 10 1 0 35 4 190 0 42 0 85 0 65 4 190 0 76 4 190 0 91 4 190 0 111 4 190 0 124 1 253 0 128 6 1 0 147 1 213 0 218 1 217 0 219 10 5 1 3 10 9 1 5 15 249 1 11 15 249 1 12 10 21 1 13 15 249 1 14 10 29 1 15 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 85 0 65 4 5 0 128 15 253 0 147 1 213 0 218 1 217 0 219 16 1 0 243 1 101 0 244 1 101 0 245 1 213 1 26 4 29 1 59 1 185 1 61] 
#[0 4 194 0 15 0 28] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 6 25 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 6 29 0 106 1 9 0 108 0 169 0 112 6 33 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 1 1 0 209 6 41 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 6 45 0 243 1 101 0 244 1 101 0 245 1 1 1 7 6 57 1 18 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 6 53 1 56 6 57 1 57 6 57 1 58 1 29 1 59 1 185 1 61 1 1 1 64] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 16 5 0 184 16 5 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 16 9 0 26 0 37 0 35 0 45 0 49 3 149 0 244 3 149 0 245] 
#[0 4 198 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 16 13 0 26 0 37 0 35 0 45 0 49 3 149 0 244 3 149 0 245] 
#[1 3 38 0 15 3 173 0 26 3 38 0 28 12 157 0 31 3 181 0 42 3 221 0 76 3 221 0 91 3 193 0 111 3 197 0 192 6 149 1 20 12 161 1 22 12 161 1 25 16 17 1 36 3 221 1 37 12 169 1 38 3 225 1 49 3 229 1 68] 
#[1 12 181 0 15 16 21 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 16 25 0 184 16 25 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 4 198 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 1 0 26 0 29 0 27 16 29 0 28 0 37 0 35 0 41 0 47 0 45 0 49 0 85 0 65 0 133 0 90 8 33 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 12 121 0 243 1 101 0 244 1 101 0 245 16 33 1 0 16 33 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 16 37 1 34 8 77 1 35 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 1 42 0 5 1 42 0 6 1 42 0 8 1 42 0 10 1 42 0 23 1 199 0 26 1 42 0 27 1 42 0 28 1 199 0 35 1 42 0 47 1 199 0 49 1 42 0 52 1 42 0 53 1 42 0 57 1 42 0 58 1 42 0 59 1 42 0 60 1 42 0 61 1 42 0 62 1 42 0 65 1 42 0 69 1 42 0 72 1 42 0 73 1 42 0 74 1 42 0 77 1 42 0 79 1 42 0 82 1 42 0 83 1 42 0 84 1 42 0 85 1 42 0 90 1 42 0 95 1 42 0 98 1 42 0 99 1 42 0 101 1 42 0 104 1 42 0 108 1 42 0 112 1 42 0 114 1 42 0 115 1 42 0 116 1 42 0 118 1 42 0 119 1 42 0 120 1 42 0 121 1 42 0 128] 
#[1 3 38 0 15 3 173 0 26 3 38 0 28 12 157 0 31 3 181 0 42 3 221 0 76 3 221 0 91 3 193 0 111 3 197 0 192 6 221 1 20 12 161 1 22 12 161 1 25 16 41 1 36 3 221 1 37 12 169 1 38 3 225 1 49 3 229 1 68] 
#[1 12 181 0 15 16 45 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 7 37 0 66 7 41 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 16 49 0 130 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 45 0 184 7 45 0 185 5 149 0 217 1 29 0 218 1 33 0 219 7 45 1 23 7 45 1 25 1 29 1 26 16 53 1 39 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 7 45 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 4 202 0 15 0 28] 
#[1 4 206 0 15 3 173 0 26 4 206 0 28 16 57 0 31 7 197 0 42 7 217 0 76 7 217 0 91 3 193 0 111 3 197 0 192 7 213 1 20 7 217 1 37 16 61 1 38 3 225 1 49 3 229 1 68] 
#[0 4 210 0 15 0 28] 
#[0 4 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 4 218 0 46] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 1 0 26 0 29 0 27 0 37 0 35 0 41 0 47 0 45 0 49 0 85 0 65 0 133 0 90 8 33 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 12 121 0 243 1 101 0 244 1 101 0 245 16 65 1 0 16 65 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 16 69 1 35 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 4 222 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 8 1 0 26 0 29 0 27 8 5 0 28 0 37 0 35 4 226 0 46 0 41 0 47 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 133 0 90 8 81 0 92 8 81 0 93 8 81 0 94 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 153 0 102 0 157 0 104 8 25 0 106 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 8 29 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 8 33 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 8 69 0 205 8 69 0 207 1 1 0 209 8 45 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 8 69 0 239 8 53 0 243 1 101 0 244 1 101 0 245 8 57 1 0 8 57 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 8 69 1 19 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 16 73 1 32 8 69 1 33 8 73 1 34 8 77 1 35 8 81 1 45 0 217 1 46 1 165 1 53 1 169 1 54 8 69 1 55 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64] 
#[0 4 230 0 15 0 23 0 42] 
#[1 0 29 0 27 0 85 0 65 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 16 77 1 43 16 77 1 44 7 17 1 59 1 185 1 61] 
#[1 0 29 0 27 0 85 0 65 16 85 0 92 16 85 0 93 16 85 0 94 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 16 81 1 43 16 81 1 44 16 85 1 45 7 17 1 59 1 185 1 61] 
#[0 4 234 0 15 0 23 0 42] 
#[1 0 29 0 27 0 85 0 65 16 89 0 118 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 16 93 1 43 16 93 1 44 7 17 1 59 1 185 1 61] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 85 0 65 8 113 0 92 8 113 0 93 8 113 0 94 8 89 0 118 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 8 93 0 243 1 101 0 244 1 101 0 245 7 17 1 26 16 97 1 42 8 109 1 43 8 109 1 44 8 113 1 45 7 17 1 59 1 185 1 61] 
#[0 4 238 0 15 0 42] 
#[1 0 29 0 27 0 85 0 65 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 16 101 1 43 16 101 1 44 7 17 1 59 1 185 1 61] 
#[0 4 242 0 15 0 23 0 42] 
#[1 4 246 0 2 4 246 0 3 4 246 0 4 4 246 0 5 4 246 0 6 4 246 0 7 4 246 0 8 4 246 0 9 4 246 0 10 4 246 0 11 4 246 0 12 4 246 0 13 4 246 0 14 4 246 0 15 4 246 0 16 4 246 0 17 4 246 0 18 4 246 0 19 4 246 0 20 4 246 0 21 4 246 0 22 4 246 0 23 4 246 0 24 4 246 0 25 4 246 0 26 1 203 0 27 4 246 0 28 4 246 0 29 4 246 0 30 4 246 0 31 4 246 0 32 4 246 0 33 4 246 0 34 4 246 0 35 4 246 0 36 4 246 0 37 4 246 0 38 4 246 0 39 4 246 0 41 4 246 0 42 4 246 0 43 4 246 0 44 4 246 0 45 4 246 0 46 4 246 0 47 4 246 0 49 4 246 0 52 4 246 0 53 4 246 0 57 4 246 0 58 4 246 0 59 4 246 0 60 4 246 0 61 4 246 0 62 4 246 0 65 4 246 0 69 4 246 0 72 4 246 0 73 4 246 0 74 4 246 0 76 4 246 0 77 4 246 0 79 4 246 0 82 4 246 0 83 4 246 0 84 4 246 0 85 4 246 0 90 4 246 0 91 4 246 0 95 4 246 0 98 4 246 0 99 4 246 0 101 4 246 0 104 4 246 0 108 4 246 0 111 4 246 0 112 4 246 0 114 4 246 0 115 4 246 0 116 4 246 0 118 4 246 0 119 4 246 0 120 4 246 0 121 4 246 0 123 4 246 0 124 4 246 0 125 4 246 0 126 4 246 0 127 4 246 0 128] 
#[1 4 250 0 2 4 250 0 3 4 250 0 4 4 250 0 5 4 250 0 6 4 250 0 7 4 250 0 8 4 250 0 9 4 250 0 10 4 250 0 11 4 250 0 12 4 250 0 13 4 250 0 14 4 250 0 15 4 250 0 16 4 250 0 17 4 250 0 18 4 250 0 19 4 250 0 20 4 250 0 21 4 250 0 22 4 250 0 23 4 250 0 24 4 250 0 25 1 207 0 26 1 211 0 27 4 250 0 28 1 215 0 29 4 250 0 30 4 250 0 31 4 250 0 32 4 250 0 33 4 250 0 34 4 250 0 35 4 250 0 36 4 250 0 37 4 250 0 38 4 250 0 39 4 250 0 41 1 207 0 42 4 250 0 43 4 250 0 44 4 250 0 45 4 250 0 46 4 250 0 47 4 250 0 49 4 250 0 52 4 250 0 53 4 250 0 57 4 250 0 58 4 250 0 59 4 250 0 60 4 250 0 61 4 250 0 62 4 250 0 65 4 250 0 69 4 250 0 72 4 250 0 73 4 250 0 74 1 207 0 76 4 250 0 77 4 250 0 79 4 250 0 82 4 250 0 83 4 250 0 84 4 250 0 85 4 250 0 90 4 250 0 91 4 250 0 95 4 250 0 98 4 250 0 99 4 250 0 101 4 250 0 104 4 250 0 108 4 250 0 111 4 250 0 112 4 250 0 114 4 250 0 115 4 250 0 116 4 250 0 118 4 250 0 119 4 250 0 120 4 250 0 121 4 250 0 123 4 250 0 124 4 250 0 125 4 250 0 126 4 250 0 127 4 250 0 128] 
#[1 4 1 0 26 4 254 0 42 16 105 1 40] 
#[0 5 2 0 42] 
#[0 5 6 0 42] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 8 165 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 16 109 0 184 16 109 0 188 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 16 109 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 16 109 1 63 5 97 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 5 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 5 14 0 15 0 124] 
#[0 5 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127] 
#[0 5 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[1 5 22 0 15 16 113 0 23 5 22 0 36] 
#[0 5 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 1 111 0 8 3 126 0 9 1 115 0 35 1 119 0 42 16 117 0 252 13 37 0 253] 
#[1 1 111 0 8 1 115 0 35 3 126 0 36 1 119 0 42 16 121 0 252 13 37 0 253] 
#[1 1 111 0 8 1 115 0 35 1 119 0 42 3 126 0 46 16 125 0 252 13 37 0 253] 
#[1 13 21 0 8 16 129 0 9 13 25 0 35 13 29 0 42 16 133 0 253] 
#[0 5 30 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 5 34 0 8 0 15 0 23 0 36] 
#[0 5 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 16 137 0 161 5 13 0 162 16 137 0 163 16 137 0 169 16 137 0 170 16 137 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 8 253 0 5 9 21 0 31 16 141 0 36 9 9 0 107 9 13 0 128 9 17 0 150 9 21 0 151 9 25 0 152 9 29 0 153 9 29 0 154 9 29 0 155] 
#[0 5 42 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 0 157 0 104 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 13 113 0 159 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 2 249 0 213 2 249 0 214 5 85 0 215 5 89 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 16 145 1 10 6 249 1 23 6 253 1 24 6 249 1 25 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 16 149 0 8 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 16 153 0 165 2 249 0 213 2 249 0 214 9 73 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 5 46 0 2 5 46 0 3 5 46 0 4 5 46 0 5 5 46 0 6 5 46 0 7 13 129 0 8 5 46 0 9 5 46 0 10 5 46 0 11 5 46 0 12 5 46 0 14 5 46 0 15 5 46 0 16 5 46 0 18 5 46 0 20 5 46 0 22 5 46 0 23 5 46 0 24 5 46 0 25 5 46 0 26 5 46 0 28 5 46 0 29 5 46 0 30 5 46 0 31 5 46 0 32 5 46 0 33 5 46 0 34 5 46 0 36 5 46 0 37 5 46 0 38 5 46 0 39 5 46 0 41 6 237 0 42 5 46 0 43 5 46 0 44 5 46 0 45 5 46 0 46 5 46 0 123 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 127 16 157 0 168 16 157 1 25] 
#[1 3 169 0 8 5 50 0 15 5 50 0 23 11 129 0 31 5 50 0 36 6 237 0 42 16 161 1 21 16 161 1 22 16 161 1 25] 
#[0 5 54 0 15 0 23 0 36] 
#[0 5 58 0 8 0 42] 
#[1 16 165 0 5 9 9 0 107 9 13 0 128 16 169 0 152 9 29 0 153 9 29 0 154 9 29 0 155] 
#[1 16 165 0 5 9 9 0 107 9 13 0 128 16 173 0 153 16 173 0 154 16 173 0 155] 
#[0 5 62 0 15 0 36] 
#[0 16 177 0 9] 
#[0 16 181 0 124] 
#[1 5 13 0 1 5 13 0 5 1 219 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 3 142 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 16 185 0 161 5 13 0 162 16 185 0 163 16 185 0 169 16 185 0 170 16 185 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 16 189 0 124] 
#[0 16 193 0 9] 
#[0 16 197 0 9] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 16 201 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 5 66 0 2 5 66 0 3 5 66 0 4 5 66 0 5 5 66 0 6 5 66 0 7 13 129 0 8 5 66 0 9 5 66 0 10 5 66 0 11 5 66 0 12 5 66 0 14 5 66 0 15 5 66 0 16 5 66 0 18 5 66 0 20 5 66 0 22 5 66 0 23 5 66 0 24 5 66 0 25 5 66 0 26 5 66 0 28 5 66 0 29 5 66 0 30 5 66 0 31 5 66 0 32 5 66 0 33 5 66 0 34 5 66 0 36 5 66 0 37 5 66 0 38 5 66 0 39 5 66 0 41 6 237 0 42 5 66 0 43 5 66 0 44 5 66 0 45 5 66 0 46 5 66 0 123 5 66 0 124 5 66 0 125 5 66 0 126 5 66 0 127 16 205 0 168 16 205 1 25] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 16 209 0 9 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 16 213 0 159 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 6 249 0 184 6 249 0 185 5 149 0 217 1 29 0 218 1 33 0 219 6 249 1 23 6 253 1 24 6 249 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 6 249 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 5 70 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 5 74 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 16 217 0 184 16 217 0 185 16 217 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 16 217 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 82 0 2 5 82 0 3 5 82 0 4 5 82 0 5 5 82 0 6 5 82 0 7 5 82 0 8 5 82 0 9 5 82 0 10 5 82 0 11 5 82 0 12 5 82 0 14 5 82 0 15 5 82 0 16 5 82 0 18 5 82 0 20 5 82 0 22 5 82 0 23 5 82 0 24 5 82 0 25 5 82 0 26 5 82 0 28 5 82 0 29 5 82 0 30 5 82 0 31 5 82 0 32 5 82 0 33 5 82 0 34 16 221 0 35 5 82 0 36 5 82 0 37 5 82 0 38 5 82 0 39 5 82 0 41 5 82 0 42 5 82 0 43 5 82 0 44 5 82 0 45 5 82 0 46 5 82 0 123 5 82 0 124 5 82 0 125 5 82 0 126 5 82 0 127] 
#[1 5 86 0 2 5 86 0 3 5 86 0 4 1 223 0 5 1 227 0 6 5 86 0 7 5 86 0 8 5 86 0 9 1 231 0 10 5 86 0 11 5 86 0 12 5 86 0 14 5 86 0 15 5 86 0 16 5 86 0 18 5 86 0 20 5 86 0 22 5 86 0 23 5 86 0 24 5 86 0 25 5 86 0 26 0 29 0 27 5 86 0 28 5 86 0 29 5 86 0 30 5 86 0 31 5 86 0 32 5 86 0 33 5 86 0 34 13 141 0 35 5 86 0 36 5 86 0 37 5 86 0 38 5 86 0 39 5 86 0 41 5 86 0 42 5 86 0 43 5 86 0 44 5 86 0 45 5 86 0 46 0 85 0 65 5 86 0 123 5 86 0 124 5 86 0 125 5 86 0 126 5 86 0 127 1 253 0 128 6 1 0 147 16 225 0 166 13 149 0 167 1 213 0 218 1 217 0 219 13 153 1 5 1 213 1 26 1 213 1 59 1 185 1 61] 
#[1 16 229 0 9 10 125 0 15] 
#[0 16 233 0 124] 
#[0 16 237 0 9] 
#[0 16 241 0 128] 
#[0 16 245 0 124] 
#[0 16 249 0 9] 
#[0 5 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 16 253 0 9] 
#[1 0 85 0 65 1 253 0 128 17 1 0 218 17 5 0 219 17 9 1 26 17 9 1 59 1 185 1 61] 
#[1 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 17 13 0 144 0 217 0 145 0 221 0 146 1 245 0 147 1 213 0 218 1 217 0 219 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 5 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 17 17 0 47 0 133 0 90 17 21 0 106 3 57 0 128 3 61 0 145 17 25 0 218 17 25 1 26 3 61 1 46 1 165 1 53 1 169 1 54 3 69 1 59 3 61 1 60 1 185 1 61] 
#[0 5 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 17 29 0 27] 
#[1 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 17 33 0 144 0 217 0 145 0 221 0 146 1 245 0 147 1 213 0 218 1 217 0 219 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 5 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 5 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 10 125 0 15 17 37 0 36] 
#[0 17 41 0 36] 
#[1 17 45 0 9 10 125 0 15] 
#[0 17 49 0 9] 
#[0 5 102 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 5 102 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 106 0 2 5 106 0 3 5 106 0 4 5 106 0 5 5 106 0 6 5 106 0 7 5 106 0 9 5 106 0 10 5 106 0 11 5 106 0 12 5 106 0 14 5 106 0 15 5 106 0 16 5 106 0 18 9 145 0 20 9 149 0 22 5 106 0 23 5 106 0 24 5 106 0 25 5 106 0 26 5 106 0 28 5 106 0 29 5 106 0 30 5 106 0 31 5 106 0 32 5 106 0 33 5 106 0 34 5 106 0 36 5 106 0 37 5 106 0 38 5 106 0 39 5 106 0 41 5 106 0 43 5 106 0 44 5 106 0 45 5 106 0 46 5 106 0 123 5 106 0 124 5 106 0 125 5 106 0 126 5 106 0 127] 
#[1 5 106 0 2 5 106 0 3 5 106 0 4 5 106 0 5 5 106 0 6 5 106 0 7 5 106 0 9 5 106 0 10 5 106 0 11 5 106 0 12 5 106 0 14 5 106 0 15 5 106 0 16 5 106 0 18 9 145 0 20 9 149 0 22 5 106 0 23 5 106 0 24 5 106 0 25 5 106 0 26 5 106 0 28 5 106 0 29 5 106 0 30 5 106 0 31 5 106 0 32 5 106 0 33 5 106 0 34 5 106 0 36 5 106 0 37 5 106 0 38 5 106 0 39 5 106 0 41 5 106 0 43 5 106 0 44 5 106 0 45 5 106 0 46 5 106 0 123 5 106 0 124 5 106 0 125 5 106 0 126 5 106 0 127] 
#[1 5 106 0 2 5 106 0 3 5 106 0 4 5 106 0 5 5 106 0 6 5 106 0 7 5 106 0 9 5 106 0 10 5 106 0 11 5 106 0 12 5 106 0 14 5 106 0 15 5 106 0 16 5 106 0 18 9 145 0 20 9 149 0 22 5 106 0 23 5 106 0 24 5 106 0 25 5 106 0 26 5 106 0 28 5 106 0 29 5 106 0 30 5 106 0 31 5 106 0 32 5 106 0 33 5 106 0 34 5 106 0 36 5 106 0 37 5 106 0 38 5 106 0 39 5 106 0 41 5 106 0 43 5 106 0 44 5 106 0 45 5 106 0 46 5 106 0 123 5 106 0 124 5 106 0 125 5 106 0 126 5 106 0 127] 
#[1 5 110 0 2 9 153 0 3 5 110 0 4 5 110 0 5 5 110 0 6 5 110 0 7 5 110 0 9 9 157 0 10 5 110 0 11 5 110 0 12 5 110 0 14 5 110 0 15 5 110 0 16 5 110 0 18 5 110 0 23 9 161 0 24 5 110 0 25 5 110 0 26 5 110 0 28 5 110 0 29 5 110 0 30 5 110 0 31 5 110 0 32 5 110 0 33 5 110 0 34 5 110 0 36 5 110 0 37 5 110 0 38 5 110 0 39 5 110 0 41 5 110 0 43 5 110 0 44 5 110 0 45 5 110 0 46 5 110 0 123 5 110 0 124 5 110 0 125 5 110 0 126 5 110 0 127] 
#[1 5 110 0 2 9 153 0 3 5 110 0 4 5 110 0 5 5 110 0 6 5 110 0 7 5 110 0 9 9 157 0 10 5 110 0 11 5 110 0 12 5 110 0 14 5 110 0 15 5 110 0 16 5 110 0 18 5 110 0 23 9 161 0 24 5 110 0 25 5 110 0 26 5 110 0 28 5 110 0 29 5 110 0 30 5 110 0 31 5 110 0 32 5 110 0 33 5 110 0 34 5 110 0 36 5 110 0 37 5 110 0 38 5 110 0 39 5 110 0 41 5 110 0 43 5 110 0 44 5 110 0 45 5 110 0 46 5 110 0 123 5 110 0 124 5 110 0 125 5 110 0 126 5 110 0 127] 
#[1 5 114 0 2 5 114 0 4 5 114 0 5 5 114 0 6 5 114 0 7 5 114 0 9 5 114 0 11 9 165 0 12 5 114 0 14 5 114 0 15 9 169 0 16 5 114 0 18 5 114 0 23 5 114 0 25 5 114 0 26 5 114 0 28 5 114 0 29 5 114 0 30 5 114 0 31 5 114 0 32 5 114 0 33 5 114 0 34 5 114 0 36 5 114 0 37 5 114 0 38 5 114 0 39 5 114 0 41 5 114 0 43 5 114 0 44 5 114 0 45 5 114 0 46 5 114 0 123 5 114 0 124 5 114 0 125 5 114 0 126 5 114 0 127] 
#[1 5 118 0 2 5 118 0 4 5 118 0 5 5 118 0 6 5 118 0 7 5 118 0 9 5 118 0 11 5 118 0 14 5 118 0 15 5 118 0 18 5 118 0 23 5 118 0 25 5 118 0 26 5 118 0 28 5 118 0 29 5 118 0 30 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 34 5 118 0 36 5 118 0 37 5 118 0 38 5 118 0 39 5 118 0 41 5 118 0 43 5 118 0 44 5 118 0 45 5 118 0 46 9 181 0 123 5 118 0 124 9 181 0 125 5 118 0 126 5 118 0 127 9 181 0 176] 
#[1 5 118 0 2 5 118 0 4 5 118 0 5 5 118 0 6 5 118 0 7 5 118 0 9 5 118 0 11 5 118 0 14 5 118 0 15 5 118 0 18 5 118 0 23 5 118 0 25 5 118 0 26 5 118 0 28 5 118 0 29 5 118 0 30 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 34 5 118 0 36 5 118 0 37 5 118 0 38 5 118 0 39 5 118 0 41 5 118 0 43 5 118 0 44 5 118 0 45 5 118 0 46 9 181 0 123 5 118 0 124 9 181 0 125 5 118 0 126 5 118 0 127 9 181 0 176] 
#[1 5 118 0 2 5 118 0 4 5 118 0 5 5 118 0 6 5 118 0 7 5 118 0 9 5 118 0 11 5 118 0 14 5 118 0 15 5 118 0 18 5 118 0 23 5 118 0 25 5 118 0 26 5 118 0 28 5 118 0 29 5 118 0 30 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 34 5 118 0 36 5 118 0 37 5 118 0 38 5 118 0 39 5 118 0 41 5 118 0 43 5 118 0 44 5 118 0 45 5 118 0 46 9 181 0 123 5 118 0 124 9 181 0 125 5 118 0 126 5 118 0 127 9 181 0 176] 
#[1 5 118 0 2 5 118 0 4 5 118 0 5 5 118 0 6 5 118 0 7 5 118 0 9 5 118 0 11 5 118 0 14 5 118 0 15 5 118 0 18 5 118 0 23 5 118 0 25 5 118 0 26 5 118 0 28 5 118 0 29 5 118 0 30 5 118 0 31 5 118 0 32 5 118 0 33 5 118 0 34 5 118 0 36 5 118 0 37 5 118 0 38 5 118 0 39 5 118 0 41 5 118 0 43 5 118 0 44 5 118 0 45 5 118 0 46 9 181 0 123 5 118 0 124 9 181 0 125 5 118 0 126 5 118 0 127 9 181 0 176] 
#[1 5 122 0 2 5 122 0 4 5 122 0 5 5 122 0 6 5 122 0 7 5 122 0 9 5 122 0 11 5 122 0 14 5 122 0 15 5 122 0 18 5 122 0 23 5 122 0 25 5 122 0 26 5 122 0 28 9 185 0 29 9 189 0 30 5 122 0 31 5 122 0 32 9 193 0 33 5 122 0 34 5 122 0 36 5 122 0 37 5 122 0 38 5 122 0 39 5 122 0 41 5 122 0 43 5 122 0 44 5 122 0 45 5 122 0 46 1 235 0 124 5 122 0 126 5 122 0 127] 
#[1 5 122 0 2 5 122 0 4 5 122 0 5 5 122 0 6 5 122 0 7 5 122 0 9 5 122 0 11 5 122 0 14 5 122 0 15 5 122 0 18 5 122 0 23 5 122 0 25 5 122 0 26 5 122 0 28 9 185 0 29 9 189 0 30 5 122 0 31 5 122 0 32 9 193 0 33 5 122 0 34 5 122 0 36 5 122 0 37 5 122 0 38 5 122 0 39 5 122 0 41 5 122 0 43 5 122 0 44 5 122 0 45 5 122 0 46 1 235 0 124 5 122 0 126 5 122 0 127] 
#[1 9 201 0 2 5 126 0 4 5 126 0 5 5 126 0 6 5 126 0 7 5 126 0 9 5 126 0 11 5 126 0 14 5 126 0 15 5 126 0 18 5 126 0 23 5 126 0 25 5 126 0 26 5 126 0 28 5 126 0 31 9 205 0 32 5 126 0 34 5 126 0 36 5 126 0 37 5 126 0 38 5 126 0 39 5 126 0 41 5 126 0 43 5 126 0 44 5 126 0 45 5 126 0 46 5 126 0 124 5 126 0 126 5 126 0 127] 
#[1 5 130 0 4 9 209 0 5 5 130 0 6 5 130 0 7 5 130 0 9 5 130 0 11 5 130 0 14 5 130 0 15 5 130 0 18 5 130 0 23 5 130 0 25 5 130 0 26 5 130 0 28 5 130 0 31 5 130 0 34 5 130 0 36 5 130 0 37 5 130 0 38 5 130 0 39 5 130 0 41 5 130 0 43 5 130 0 44 5 130 0 45 5 130 0 46 5 130 0 124 5 130 0 126 5 130 0 127] 
#[1 5 134 0 4 5 134 0 6 5 134 0 7 5 134 0 9 5 134 0 11 5 134 0 14 5 134 0 15 5 134 0 18 5 134 0 23 5 134 0 25 5 134 0 26 5 134 0 28 5 134 0 31 5 134 0 34 5 134 0 36 9 213 0 37 5 134 0 38 5 134 0 39 5 134 0 41 5 134 0 43 5 134 0 44 5 134 0 45 5 134 0 46 5 134 0 124 5 134 0 126 5 134 0 127] 
#[1 5 138 0 4 5 138 0 6 5 138 0 7 5 138 0 9 5 138 0 11 5 138 0 14 5 138 0 15 5 138 0 18 5 138 0 23 5 138 0 25 5 138 0 26 5 138 0 28 5 138 0 31 5 138 0 34 5 138 0 36 5 138 0 38 5 138 0 39 5 138 0 41 9 217 0 43 5 138 0 44 5 138 0 45 5 138 0 46 5 138 0 124 5 138 0 126 5 138 0 127] 
#[1 5 138 0 4 5 138 0 6 5 138 0 7 5 138 0 9 5 138 0 11 5 138 0 14 5 138 0 15 5 138 0 18 5 138 0 23 5 138 0 25 5 138 0 26 5 138 0 28 5 138 0 31 5 138 0 34 5 138 0 36 5 138 0 38 5 138 0 39 5 138 0 41 9 217 0 43 5 138 0 44 5 138 0 45 5 138 0 46 5 138 0 124 5 138 0 126 5 138 0 127] 
#[1 10 125 0 15 17 53 0 26] 
#[1 5 142 0 4 9 221 0 6 5 142 0 7 5 142 0 9 5 142 0 11 5 142 0 14 5 142 0 15 5 142 0 18 5 142 0 23 5 142 0 25 5 142 0 26 5 142 0 28 5 142 0 31 5 142 0 34 5 142 0 36 5 142 0 38 9 225 0 39 5 142 0 41 5 142 0 44 5 142 0 45 5 142 0 46 5 142 0 124 5 142 0 126 5 142 0 127] 
#[1 5 142 0 4 9 221 0 6 5 142 0 7 5 142 0 9 5 142 0 11 5 142 0 14 5 142 0 15 5 142 0 18 5 142 0 23 5 142 0 25 5 142 0 26 5 142 0 28 5 142 0 31 5 142 0 34 5 142 0 36 5 142 0 38 9 225 0 39 5 142 0 41 5 142 0 44 5 142 0 45 5 142 0 46 5 142 0 124 5 142 0 126 5 142 0 127] 
#[0 5 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 17 57 0 35 14 105 0 36 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 14 109 0 184 14 109 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 3 49 0 10 5 237 0 106 5 241 0 128 3 65 0 218 3 65 1 26 5 245 1 59 1 185 1 61] 
#[0 3 202 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[1 0 9 0 5 0 13 0 6 9 249 0 8 3 206 0 9 0 21 0 10 0 29 0 27 10 1 0 35 0 85 0 65 1 253 0 128 6 1 0 147 1 213 0 218 1 217 0 219 14 89 1 3 14 93 1 5 14 117 1 12 14 101 1 13 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 17 61 0 9] 
#[1 1 143 0 8 3 218 0 9 3 218 0 15 3 218 0 23 3 218 0 26 3 218 0 28 3 218 0 31 14 125 0 35 3 218 0 42 3 218 0 76 3 218 0 91 3 218 0 111 3 218 0 124 17 65 1 3] 
#[1 5 150 0 8 5 150 0 9 5 150 0 15 5 150 0 23 5 150 0 26 5 150 0 28 5 150 0 31 1 239 0 35 5 150 0 42 0 45 0 49 5 150 0 76 5 150 0 91 5 150 0 111 5 150 0 124 17 69 0 243 1 101 0 244 1 101 0 245] 
#[0 17 73 0 36] 
#[0 5 154 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[0 5 158 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[0 5 162 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 17 77 0 36 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 17 81 0 184 17 81 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 166 0 8 5 166 0 9 5 166 0 15 7 249 0 19 5 166 0 23 5 166 0 26 5 166 0 28 5 166 0 31 5 166 0 35 5 166 0 42 5 166 0 76 5 166 0 91 5 166 0 111 5 166 0 124 17 85 1 4] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 17 89 0 36 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 17 93 0 184 17 93 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 5 170 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 17 97 0 9] 
#[0 5 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 5 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 17 101 0 9] 
#[0 5 174 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 5 178 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[0 5 182 0 9 0 15 0 26 0 28 0 36] 
#[0 5 186 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 5 190 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 17 105 0 46] 
#[0 17 109 0 46] 
#[0 5 194 0 28] 
#[0 5 198 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 5 202 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 5 206 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 4 86 0 42] 
#[0 17 113 0 9] 
#[0 5 210 0 15 0 124] 
#[0 5 214 0 15 0 124] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 17 117 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 11 17 0 15 17 121 0 124] 
#[0 5 218 0 15 0 124] 
#[0 5 222 0 15 0 124] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 17 125 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 3 2 0 9 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 1 241 0 144 0 217 0 145 0 221 0 146 1 245 0 147 1 213 0 218 1 217 0 219 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 0 9 0 5 0 13 0 6 10 245 0 8 3 206 0 9 0 21 0 10 0 25 0 23 0 29 0 27 10 1 0 35 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 3 245 1 1 1 225 1 2 14 89 1 3 14 245 1 5 1 137 1 9 14 117 1 12 14 101 1 13 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 5 226 0 9 0 15 0 23 0 124] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 17 129 0 184 17 129 0 185 5 149 0 217 1 29 0 218 1 33 0 219 17 129 1 23 17 129 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 17 129 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 17 133 0 184 17 133 0 185 5 149 0 217 1 29 0 218 1 33 0 219 17 133 1 23 17 133 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 17 133 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 17 137 0 184 17 137 0 185 5 149 0 217 1 29 0 218 1 33 0 219 17 137 1 23 17 137 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 17 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 230 0 9 5 230 0 15 5 230 0 23 17 141 0 31 5 230 0 124] 
#[1 5 230 0 9 5 230 0 15 5 230 0 23 17 145 0 31 5 230 0 124] 
#[0 5 234 0 15 0 124] 
#[0 5 238 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 5 242 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 5 246 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 5 250 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 17 149 0 28] 
#[0 5 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128] 
#[0 6 2 0 15 0 46] 
#[0 6 6 0 15 0 46] 
#[0 6 10 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 6 14 0 42] 
#[0 17 153 0 28] 
#[0 6 18 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 6 22 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[1 6 26 0 9 6 26 0 15 17 157 0 23 6 26 0 46] 
#[0 6 30 0 42] 
#[1 0 29 0 27 0 85 0 65 7 5 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 7 33 1 43 17 161 1 50 7 29 1 51 7 33 1 52 7 17 1 59 1 185 1 61] 
#[0 6 34 0 15 0 23 0 42] 
#[0 17 165 0 9] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 17 169 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 17 169 0 201 17 169 0 204 17 169 0 205 17 169 0 206 17 169 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 17 169 0 223 1 53 0 224 17 169 0 237 17 169 0 239 17 169 0 240 17 169 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 6 38 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 17 173 0 8] 
#[0 6 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 28 0 35 0 40 0 43 0 47 0 49 0 50 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 67 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 79 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 17 177 0 28 7 65 0 35 5 13 0 40 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 4 189 0 103 0 157 0 104 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 15 133 0 184 15 133 0 185 15 133 0 187 17 181 0 195 1 1 0 209 15 141 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 15 145 0 243 1 101 0 244 1 101 0 245 1 1 1 7 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 15 133 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 17 185 0 26] 
#[0 6 42 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 28 0 35 0 40 0 43 0 47 0 49 0 50 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 67 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 79 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 3 93 0 28 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 3 97 0 254 1 113 0 255 17 189 1 0 17 189 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 37 0 35 0 41 0 47 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 0 133 0 90 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 0 225 0 147 1 1 0 209 17 193 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 3 149 0 244 3 149 0 245 3 153 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 1 1 1 64] 
#[0 6 46 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 6 50 0 9 10 125 0 15 6 50 0 28] 
#[0 17 197 0 9] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 17 201 1 0 17 201 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 0 85 0 65 0 89 0 69 0 93 0 72 1 13 0 73 1 9 0 74 0 105 0 77 0 109 0 79 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 1 9 0 95 0 141 0 98 0 145 0 99 1 9 0 101 0 157 0 104 1 9 0 108 0 169 0 112 0 173 0 114 0 177 0 115 0 181 0 116 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 1 1 0 209 17 205 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 1 1 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 3 1 0 224 3 149 0 244 3 149 0 245 1 1 1 7 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 1 1 1 64] 
#[0 6 54 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 6 54 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 17 209 0 9] 
#[0 6 58 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 17 213 0 9] 
#[0 6 62 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 6 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 17 217 0 23 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 17 221 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 17 225 0 243 1 101 0 244 1 101 0 245 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64 17 229 1 71] 
#[0 6 70 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 6 74 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 6 78 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 88 0 91 0 109 0 111 0 124] 
#[0 6 78 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 88 0 91 0 109 0 111 0 124] 
#[1 1 243 0 8 6 82 0 9 6 82 0 15 6 82 0 19 6 82 0 23 6 82 0 26 6 82 0 28 6 82 0 31 6 82 0 35 6 82 0 42 6 82 0 49 6 82 0 76 6 82 0 91 6 82 0 111 6 82 0 124] 
#[0 17 237 0 8] 
#[1 6 86 0 8 6 86 0 9 6 86 0 15 6 86 0 19 6 86 0 23 6 86 0 26 6 86 0 28 6 86 0 31 1 247 0 35 6 86 0 42 0 45 0 49 6 86 0 76 6 86 0 91 6 86 0 111 6 86 0 124 3 149 0 244 3 149 0 245] 
#[1 17 245 0 5 17 245 0 6 6 90 0 8 6 90 0 9 6 90 0 15 6 90 0 19 6 90 0 23 6 90 0 26 6 90 0 28 6 90 0 31 1 251 0 35 6 90 0 42 0 45 0 49 6 90 0 76 15 197 0 88 6 90 0 91 15 201 0 109 6 90 0 111 6 90 0 124 17 241 0 243 1 101 0 244 1 101 0 245 17 245 1 8 17 249 1 73 17 249 1 74 17 249 1 76] 
#[1 6 94 0 8 6 94 0 9 6 94 0 15 6 94 0 19 6 94 0 23 6 94 0 26 6 94 0 28 6 94 0 31 1 255 0 35 6 94 0 42 0 45 0 49 6 94 0 76 15 197 0 88 6 94 0 91 15 201 0 109 6 94 0 111 6 94 0 124 17 253 0 243 1 101 0 244 1 101 0 245 18 1 1 73 18 1 1 74 18 1 1 76] 
#[1 6 98 0 8 6 98 0 9 6 98 0 15 6 98 0 19 6 98 0 23 6 98 0 26 6 98 0 28 6 98 0 31 2 3 0 35 6 98 0 42 0 45 0 49 6 98 0 76 6 98 0 91 6 98 0 111 6 98 0 124 18 5 0 243 1 101 0 244 1 101 0 245] 
#[0 6 102 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 6 102 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 6 106 0 9] 
#[0 6 110 0 9 0 15 0 23] 
#[1 6 114 0 8 6 114 0 9 6 114 0 15 6 114 0 23 6 114 0 26 6 114 0 28 6 114 0 31 2 7 0 35 6 114 0 42 0 45 0 49 6 114 0 76 6 114 0 91 6 114 0 111 6 114 0 124 3 149 0 244 3 149 0 245] 
#[0 6 118 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 42 0 65 0 76 0 91 0 111 0 124 0 128] 
#[1 6 118 0 5 6 118 0 6 6 118 0 8 6 118 0 9 6 118 0 10 6 118 0 15 6 118 0 23 6 118 0 26 6 118 0 27 6 118 0 28 6 118 0 31 2 11 0 35 6 118 0 42 0 45 0 49 6 118 0 65 6 118 0 76 6 118 0 91 6 118 0 111 6 118 0 124 6 118 0 128 3 149 0 244 3 149 0 245] 
#[0 6 122 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 8 117 0 106 18 9 0 128 18 13 1 59 1 185 1 61] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 85 0 65 8 133 0 128 18 17 0 147 1 213 0 218 1 217 0 219 3 149 0 244 3 149 0 245 1 213 1 26 1 213 1 59 1 185 1 61] 
#[0 6 126 0 15 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 18 21 0 184 18 21 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 18 25 0 184 18 25 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 4 206 0 15 3 173 0 26 4 206 0 28 16 57 0 31 7 197 0 42 7 217 0 76 7 217 0 91 3 193 0 111 3 197 0 192 11 69 1 20 7 217 1 37 16 61 1 38 3 225 1 49 3 229 1 68] 
#[0 6 130 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 2 15 0 15 0 28] 
#[0 6 138 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 3 38 0 15 3 173 0 26 3 38 0 28 12 157 0 31 3 181 0 42 3 221 0 76 3 221 0 91 3 193 0 111 3 197 0 192 11 117 1 20 12 161 1 22 12 161 1 25 18 29 1 36 3 221 1 37 12 169 1 38 3 225 1 49 3 229 1 68] 
#[1 12 181 0 15 18 33 0 28] 
#[1 4 206 0 15 3 173 0 26 4 206 0 28 16 57 0 31 7 197 0 42 7 217 0 76 7 217 0 91 3 193 0 111 3 197 0 192 11 125 1 20 7 217 1 37 16 61 1 38 3 225 1 49 3 229 1 68] 
#[0 6 130 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 6 142 0 15 0 28] 
#[0 6 146 0 15 0 28] 
#[1 7 37 0 66 12 61 0 67 16 49 0 130 16 53 1 39] 
#[0 6 150 0 15 0 28] 
#[1 3 38 0 15 3 38 0 28 18 37 0 31 6 237 0 42 3 221 0 76 3 221 0 91 12 161 1 22 12 161 1 25 18 41 1 36 3 221 1 37 12 169 1 38] 
#[0 6 154 0 15 0 28] 
#[0 6 158 0 46] 
#[0 6 162 0 15 0 23 0 42] 
#[0 6 166 0 15 0 23 0 42] 
#[1 0 29 0 27 0 85 0 65 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 18 45 1 43 18 45 1 44 7 17 1 59 1 185 1 61] 
#[1 0 29 0 27 0 85 0 65 1 253 0 128 7 9 0 147 1 213 0 218 7 13 0 219 7 17 1 26 18 49 1 43 18 49 1 44 7 17 1 59 1 185 1 61] 
#[0 6 170 0 15 0 23 0 42] 
#[1 6 174 0 15 18 53 0 23 6 174 0 42] 
#[0 6 178 0 15 0 23 0 42] 
#[0 6 182 0 42] 
#[1 6 186 0 15 18 57 0 23 6 186 0 124] 
#[0 6 190 0 15 0 36] 
#[1 13 21 0 8 18 61 0 9 13 25 0 35 13 29 0 42 16 133 0 253] 
#[1 13 21 0 8 13 25 0 35 18 65 0 36 13 29 0 42 16 133 0 253] 
#[1 13 21 0 8 13 25 0 35 13 29 0 42 18 69 0 46 16 133 0 253] 
#[0 6 194 0 15 0 23 0 36] 
#[0 6 198 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 6 202 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 1 219 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 3 142 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 18 73 0 161 5 13 0 162 18 73 0 163 18 73 0 169 18 73 0 170 18 73 0 171 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 18 77 0 9] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 18 81 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 6 206 0 2 6 206 0 3 6 206 0 4 6 206 0 5 6 206 0 6 6 206 0 7 13 129 0 8 6 206 0 9 6 206 0 10 6 206 0 11 6 206 0 12 6 206 0 14 6 206 0 15 6 206 0 16 6 206 0 18 6 206 0 20 6 206 0 22 6 206 0 23 6 206 0 24 6 206 0 25 6 206 0 26 6 206 0 28 6 206 0 29 6 206 0 30 6 206 0 31 6 206 0 32 6 206 0 33 6 206 0 34 6 206 0 36 6 206 0 37 6 206 0 38 6 206 0 39 6 206 0 41 6 237 0 42 6 206 0 43 6 206 0 44 6 206 0 45 6 206 0 46 6 206 0 123 6 206 0 124 6 206 0 125 6 206 0 126 6 206 0 127 18 85 0 168 18 85 1 25] 
#[0 6 210 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 6 214 0 15 0 23 0 36] 
#[0 13 73 0 128] 
#[1 13 89 0 15 6 218 0 36] 
#[1 6 222 0 15 18 89 0 23 6 222 0 36] 
#[0 6 226 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 18 93 0 8] 
#[0 6 230 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 18 97 0 8] 
#[0 6 234 0 8 0 27 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 65 0 69 0 72 0 77 0 83 0 84 0 98 0 99 0 104 0 114 0 115 0 116 0 119 0 120 0 121 0 128] 
#[1 6 238 0 2 6 238 0 3 6 238 0 4 6 238 0 5 6 238 0 6 6 238 0 7 13 129 0 8 6 238 0 9 6 238 0 10 6 238 0 11 6 238 0 12 6 238 0 14 6 238 0 15 6 238 0 16 6 238 0 18 6 238 0 20 6 238 0 22 6 238 0 23 6 238 0 24 6 238 0 25 6 238 0 26 6 238 0 28 6 238 0 29 6 238 0 30 6 238 0 31 6 238 0 32 6 238 0 33 6 238 0 34 6 238 0 36 6 238 0 37 6 238 0 38 6 238 0 39 6 238 0 41 6 237 0 42 6 238 0 43 6 238 0 44 6 238 0 45 6 238 0 46 6 238 0 123 6 238 0 124 6 238 0 125 6 238 0 126 6 238 0 127 18 101 0 168 18 101 1 25] 
#[0 18 105 0 9] 
#[0 6 242 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 6 246 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 18 109 0 9] 
#[1 10 125 0 15 18 113 0 36] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 18 117 0 184 18 117 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 6 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 6 254 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 18 121 0 8] 
#[0 7 2 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 18 125 0 9] 
#[0 18 129 0 8] 
#[1 7 249 0 19 0 37 0 35 7 6 0 42 0 45 0 49 18 133 0 85 15 197 0 88 15 201 0 109 18 137 0 243 1 101 0 244 1 101 0 245 18 141 1 4 18 145 1 73 18 145 1 74 18 145 1 76] 
#[0 7 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 2 19 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 2 23 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 0 85 0 65 1 253 0 128 18 149 0 218 2 1 0 219 17 9 1 26 17 9 1 59 1 185 1 61] 
#[1 0 41 0 47 0 133 0 90 6 77 0 128 6 129 0 145 6 129 1 46 1 165 1 53 1 169 1 54 18 153 1 59 6 129 1 60 1 185 1 61] 
#[0 18 157 0 27] 
#[1 2 27 0 47 1 22 0 90 1 22 0 106 1 22 0 128] 
#[0 7 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 18 165 0 184 18 165 0 185 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 18 165 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 8 253 0 5 0 198 0 15 9 21 0 31 2 31 0 36 9 9 0 107 18 169 0 128 9 17 0 150 9 21 0 151 9 25 0 152 9 29 0 153 9 29 0 154 9 29 0 155 4 77 0 246 4 81 0 247 4 85 0 248 4 89 0 249 4 93 0 250] 
#[0 7 34 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 5 166 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[1 7 38 0 8 7 38 0 9 7 38 0 15 7 38 0 23 7 38 0 26 7 38 0 28 7 38 0 31 2 35 0 35 7 38 0 42 0 45 0 49 7 38 0 76 7 38 0 91 7 38 0 111 7 38 0 124 3 149 0 244 3 149 0 245] 
#[1 7 42 0 8 7 42 0 9 7 42 0 15 7 42 0 23 7 42 0 26 7 42 0 28 7 42 0 31 2 39 0 35 7 42 0 42 0 45 0 49 7 42 0 76 7 42 0 91 7 42 0 111 7 42 0 124 18 173 0 243 1 101 0 244 1 101 0 245] 
#[1 7 46 0 8 7 46 0 9 7 46 0 15 7 46 0 23 7 46 0 26 7 46 0 28 7 46 0 31 2 43 0 35 7 46 0 42 0 45 0 49 7 46 0 76 7 46 0 91 7 46 0 111 7 46 0 124 18 177 0 243 1 101 0 244 1 101 0 245] 
#[0 18 181 0 36] 
#[0 7 50 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 7 54 0 8 7 54 0 9 7 54 0 15 7 54 0 23 7 54 0 26 7 54 0 28 7 54 0 31 2 47 0 35 7 54 0 42 0 45 0 49 7 54 0 76 7 54 0 91 7 54 0 111 7 54 0 124 18 185 0 243 1 101 0 244 1 101 0 245] 
#[0 18 189 0 36] 
#[0 7 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 58 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 7 62 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 83] 
#[0 18 193 0 28] 
#[0 7 66 0 15 0 124] 
#[0 18 197 0 60] 
#[0 7 70 0 15 0 124] 
#[0 7 74 0 9 0 15 0 23 0 124] 
#[0 7 74 0 9 0 15 0 23 0 124] 
#[0 7 78 0 9 0 15 0 23 0 124] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 18 201 0 184 18 201 0 185 5 149 0 217 1 29 0 218 1 33 0 219 18 201 1 23 18 201 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 18 201 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 18 205 0 184 18 205 0 185 5 149 0 217 1 29 0 218 1 33 0 219 18 205 1 23 18 205 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 18 205 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 7 82 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 7 86 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 7 90 0 9 0 15 0 46] 
#[0 7 94 0 42] 
#[0 7 98 0 15 0 23 0 42] 
#[0 7 102 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 18 209 0 184 18 209 0 185 18 209 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 18 209 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 18 213 0 9 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 18 217 0 184 18 217 0 185 18 217 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 18 217 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 18 221 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 18 225 0 184 18 225 0 185 18 225 0 187 18 229 0 199 5 149 0 217 1 29 0 218 1 33 0 219 18 229 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 18 225 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 3 169 0 8 0 146 0 15 7 106 0 26 0 146 0 28 11 129 0 31 6 237 0 42 3 205 1 21 3 205 1 22 3 205 1 25] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 6 209 0 254 1 113 0 255 18 237 1 0 18 237 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 18 241 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 18 241 0 201 18 241 0 204 18 241 0 205 18 241 0 206 18 241 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 18 241 0 223 1 53 0 224 18 241 0 237 18 241 0 239 18 241 0 240 18 241 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 18 245 0 31 6 237 0 42 18 249 1 25] 
#[1 0 9 0 5 0 13 0 6 0 17 0 8 0 21 0 10 0 25 0 23 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 18 253 1 0 18 253 1 1 1 125 1 2 1 129 1 5 1 137 1 9 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 19 1 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 19 1 0 201 19 1 0 204 19 1 0 205 19 1 0 206 19 1 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 19 1 0 223 1 53 0 224 19 1 0 237 19 1 0 239 19 1 0 240 19 1 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 19 5 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 19 5 0 201 19 5 0 204 19 5 0 205 19 5 0 206 19 5 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 19 5 0 223 1 53 0 224 19 5 0 237 19 5 0 239 19 5 0 240 19 5 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 7 110 0 9] 
#[1 0 9 0 5 0 13 0 6 10 245 0 8 7 114 0 9 0 21 0 10 10 249 0 23 0 29 0 27 10 1 0 35 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 19 9 1 0 19 9 1 1 1 125 1 2 10 5 1 3 11 5 1 5 1 137 1 9 19 13 1 11 19 13 1 12 10 21 1 13 19 13 1 14 10 29 1 15 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 0 29 0 27 0 37 0 35 0 45 0 49 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 19 17 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 3 149 0 244 3 149 0 245 2 249 1 7 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[0 19 21 0 9] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 73 0 183 19 25 0 184 19 25 0 188 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 19 29 0 9 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 19 33 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64 19 37 1 75] 
#[1 7 118 0 8 7 118 0 9 7 118 0 15 7 118 0 19 7 118 0 23 7 118 0 26 7 118 0 28 7 118 0 31 2 51 0 35 7 118 0 42 0 45 0 49 7 118 0 76 7 118 0 91 7 118 0 111 7 118 0 124 3 149 0 244 3 149 0 245] 
#[1 7 122 0 8 7 122 0 9 7 122 0 15 7 122 0 19 7 122 0 23 7 122 0 26 7 122 0 28 7 122 0 31 2 55 0 35 7 122 0 42 0 45 0 49 7 122 0 76 15 197 0 88 7 122 0 91 15 201 0 109 7 122 0 111 7 122 0 124 19 41 0 243 1 101 0 244 1 101 0 245 19 45 1 73 19 45 1 74 19 45 1 76] 
#[1 7 126 0 8 7 126 0 9 7 126 0 15 7 126 0 19 7 126 0 23 7 126 0 26 7 126 0 28 7 126 0 31 2 59 0 35 7 126 0 42 0 45 0 49 7 126 0 76 7 126 0 91 7 126 0 111 7 126 0 124 19 49 0 243 1 101 0 244 1 101 0 245] 
#[1 7 130 0 8 7 130 0 9 7 130 0 15 7 130 0 19 7 130 0 23 7 130 0 26 7 130 0 28 7 130 0 31 2 63 0 35 7 130 0 42 0 45 0 49 7 130 0 76 7 130 0 91 7 130 0 111 7 130 0 124 3 149 0 244 3 149 0 245] 
#[1 7 134 0 8 7 134 0 9 7 134 0 15 7 134 0 19 7 134 0 23 7 134 0 26 7 134 0 28 7 134 0 31 2 67 0 35 7 134 0 42 0 45 0 49 7 134 0 76 7 134 0 91 7 134 0 111 7 134 0 124 19 53 0 243 1 101 0 244 1 101 0 245] 
#[1 7 138 0 8 7 138 0 9 7 138 0 15 7 138 0 19 7 138 0 23 7 138 0 26 7 138 0 28 7 138 0 31 2 71 0 35 7 138 0 42 0 45 0 49 7 138 0 76 7 138 0 91 7 138 0 111 7 138 0 124 3 149 0 244 3 149 0 245] 
#[1 3 66 0 5 3 66 0 6 3 66 0 8 3 66 0 9 3 66 0 10 3 66 0 15 3 66 0 23 3 66 0 26 1 83 0 27 3 66 0 28 0 70 0 29 3 66 0 31 3 66 0 35 3 66 0 42 3 66 0 49 3 66 0 52 3 66 0 53 3 66 0 57 3 66 0 58 3 66 0 59 3 66 0 60 3 66 0 61 3 66 0 65 3 66 0 69 3 66 0 72 3 66 0 76 3 66 0 77 3 66 0 83 3 66 0 84 3 66 0 91 3 66 0 98 3 66 0 99 3 66 0 104 3 66 0 111 3 66 0 114 3 66 0 115 3 66 0 116 3 66 0 119 3 66 0 120 3 66 0 121 3 66 0 124 3 66 0 128] 
#[1 3 74 0 5 3 74 0 6 3 74 0 8 3 74 0 9 3 74 0 10 3 74 0 15 3 74 0 23 3 74 0 26 1 95 0 27 3 74 0 28 3 74 0 31 3 74 0 35 3 74 0 42 3 74 0 49 3 74 0 52 3 74 0 53 3 74 0 57 3 74 0 58 3 74 0 59 3 74 0 60 3 74 0 61 3 74 0 65 3 74 0 69 3 74 0 72 3 74 0 76 3 74 0 77 3 74 0 83 3 74 0 84 3 74 0 91 3 74 0 98 3 74 0 99 3 74 0 104 3 74 0 111 3 74 0 114 3 74 0 115 3 74 0 116 3 74 0 119 3 74 0 120 3 74 0 121 3 74 0 124 3 74 0 128] 
#[1 5 161 0 106 19 57 0 128 5 169 1 59 1 185 1 61] 
#[0 7 142 0 15 0 28] 
#[0 6 134 0 15 0 28] 
#[1 4 206 0 15 3 173 0 26 4 206 0 28 16 57 0 31 7 197 0 42 7 217 0 76 7 217 0 91 3 193 0 111 3 197 0 192 15 69 1 20 7 217 1 37 16 61 1 38 3 225 1 49 3 229 1 68] 
#[0 7 146 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 16 49 0 130 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 45 0 184 7 45 0 185 5 149 0 217 1 29 0 218 1 33 0 219 7 45 1 23 7 45 1 25 1 29 1 26 16 53 1 39 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 7 45 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 4 206 0 15 4 206 0 28 19 61 0 31 7 217 0 76 7 217 0 91 7 217 1 37 16 61 1 38] 
#[0 7 150 0 15 0 23 0 42] 
#[0 7 154 0 15 0 23 0 42] 
#[0 7 158 0 15 0 42] 
#[0 7 162 0 15 0 124] 
#[0 7 166 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 7 166 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 7 166 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 7 170 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 7 174 0 2 7 174 0 3 7 174 0 4 7 174 0 5 7 174 0 6 7 174 0 7 13 129 0 8 7 174 0 9 7 174 0 10 7 174 0 11 7 174 0 12 7 174 0 14 7 174 0 15 7 174 0 16 7 174 0 18 7 174 0 20 7 174 0 22 7 174 0 23 7 174 0 24 7 174 0 25 7 174 0 26 7 174 0 28 7 174 0 29 7 174 0 30 7 174 0 31 7 174 0 32 7 174 0 33 7 174 0 34 7 174 0 36 7 174 0 37 7 174 0 38 7 174 0 39 7 174 0 41 6 237 0 42 7 174 0 43 7 174 0 44 7 174 0 45 7 174 0 46 7 174 0 123 7 174 0 124 7 174 0 125 7 174 0 126 7 174 0 127 19 65 0 168 19 65 1 25] 
#[0 19 69 0 9] 
#[0 7 178 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 7 182 0 15 0 36] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 19 73 0 184 19 73 0 185 19 73 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 19 73 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 19 77 0 184 19 77 0 185 19 77 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 19 77 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 7 186 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 7 190 0 2 7 190 0 3 7 190 0 4 7 190 0 5 7 190 0 6 7 190 0 7 13 129 0 8 7 190 0 9 7 190 0 10 7 190 0 11 7 190 0 12 7 190 0 14 7 190 0 15 7 190 0 16 7 190 0 18 7 190 0 20 7 190 0 22 7 190 0 23 7 190 0 24 7 190 0 25 7 190 0 26 7 190 0 28 7 190 0 29 7 190 0 30 7 190 0 31 7 190 0 32 7 190 0 33 7 190 0 34 7 190 0 36 7 190 0 37 7 190 0 38 7 190 0 39 7 190 0 41 6 237 0 42 7 190 0 43 7 190 0 44 7 190 0 45 7 190 0 46 7 190 0 123 7 190 0 124 7 190 0 125 7 190 0 126 7 190 0 127 19 81 0 168 19 81 1 25] 
#[0 7 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 7 198 0 2 7 198 0 3 7 198 0 4 7 198 0 5 7 198 0 6 7 198 0 7 7 198 0 8 7 198 0 9 7 198 0 10 7 198 0 11 7 198 0 12 7 198 0 14 7 198 0 15 7 198 0 16 7 198 0 18 7 198 0 20 7 198 0 22 7 198 0 23 7 198 0 24 7 198 0 25 7 198 0 26 7 198 0 28 7 198 0 29 7 198 0 30 7 198 0 31 7 198 0 32 7 198 0 33 7 198 0 34 2 75 0 35 7 198 0 36 7 198 0 37 7 198 0 38 7 198 0 39 7 198 0 41 7 198 0 42 7 198 0 43 7 198 0 44 7 198 0 45 7 198 0 46 0 45 0 49 7 198 0 123 7 198 0 124 7 198 0 125 7 198 0 126 7 198 0 127 19 85 0 243 1 101 0 244 1 101 0 245] 
#[0 19 89 0 36] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 19 93 0 184 19 93 0 185 19 93 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 19 93 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 7 202 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 19 97 0 184 19 97 0 185 19 97 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 19 97 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 7 249 0 19 0 37 0 35 7 206 0 42 0 45 0 49 15 197 0 88 15 201 0 109 19 101 0 243 1 101 0 244 1 101 0 245 19 105 1 4 19 109 1 73 19 109 1 74 19 109 1 76] 
#[1 7 249 0 19 0 37 0 35 7 210 0 42 0 45 0 49 3 149 0 244 3 149 0 245 19 113 1 4] 
#[0 7 214 0 42] 
#[1 7 249 0 19 0 37 0 35 7 218 0 42 0 45 0 49 19 117 0 243 1 101 0 244 1 101 0 245 19 121 1 4] 
#[0 7 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 0 174 0 2 0 174 0 3 0 174 0 4 0 174 0 5 0 174 0 6 0 174 0 7 0 174 0 8 0 174 0 9 0 174 0 10 0 174 0 11 0 174 0 12 0 174 0 13 0 174 0 14 0 174 0 15 0 174 0 16 0 174 0 17 0 174 0 18 0 174 0 19 0 174 0 20 0 174 0 21 0 174 0 22 0 174 0 23 0 174 0 24 0 174 0 25 0 174 0 26 19 125 0 27 0 174 0 28 0 174 0 29 0 174 0 30 0 174 0 31 0 174 0 32 0 174 0 33 0 174 0 34 0 174 0 35 0 174 0 36 0 174 0 37 0 174 0 38 0 174 0 39 0 174 0 41 0 174 0 43 0 174 0 44 0 174 0 45 0 174 0 46 0 174 0 123 0 174 0 124 0 174 0 125 0 174 0 126 0 174 0 127] 
#[0 19 129 0 47] 
#[1 1 253 0 128 19 133 0 218 19 133 1 26 19 133 1 59 1 185 1 61] 
#[0 7 226 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[1 2 79 0 8 2 83 0 15 2 83 0 23 1 134 0 27 11 129 0 31 2 83 0 36 6 237 0 42 13 77 1 21 13 77 1 22 13 77 1 25] 
#[1 7 230 0 8 7 230 0 9 7 230 0 15 7 230 0 23 7 230 0 26 7 230 0 28 7 230 0 31 2 87 0 35 7 230 0 42 0 45 0 49 7 230 0 76 7 230 0 91 7 230 0 111 7 230 0 124 3 149 0 244 3 149 0 245] 
#[1 7 234 0 8 7 234 0 9 7 234 0 15 7 234 0 23 7 234 0 26 7 234 0 28 7 234 0 31 2 91 0 35 7 234 0 42 0 45 0 49 7 234 0 76 7 234 0 91 7 234 0 111 7 234 0 124 3 149 0 244 3 149 0 245] 
#[1 7 238 0 8 7 238 0 9 7 238 0 15 7 238 0 23 7 238 0 26 7 238 0 28 7 238 0 31 2 95 0 35 7 238 0 42 0 45 0 49 7 238 0 76 7 238 0 91 7 238 0 111 7 238 0 124 19 137 0 243 1 101 0 244 1 101 0 245] 
#[1 7 242 0 8 7 242 0 9 7 242 0 15 7 242 0 23 7 242 0 26 7 242 0 28 7 242 0 31 2 99 0 35 7 242 0 42 0 45 0 49 7 242 0 76 7 242 0 91 7 242 0 111 7 242 0 124 3 149 0 244 3 149 0 245] 
#[1 7 246 0 8 7 246 0 9 7 246 0 15 7 246 0 23 7 246 0 26 7 246 0 28 7 246 0 31 2 103 0 35 7 246 0 42 0 45 0 49 7 246 0 76 7 246 0 91 7 246 0 111 7 246 0 124 19 141 0 243 1 101 0 244 1 101 0 245] 
#[0 7 250 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[1 7 254 0 15 19 145 0 23 19 149 0 31 7 254 0 124 19 153 0 128] 
#[0 8 2 0 9 0 15 0 23 0 124] 
#[0 8 2 0 9 0 15 0 23 0 124] 
#[1 19 157 0 9 10 125 0 15] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 19 161 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 19 161 0 201 19 161 0 204 19 161 0 205 19 161 0 206 19 161 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 19 161 0 223 1 53 0 224 19 161 0 237 19 161 0 239 19 161 0 240 19 161 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 19 165 0 9 10 125 0 15] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 19 169 0 9 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 19 173 0 184 19 173 0 185 19 173 0 187 5 149 0 217 1 29 0 218 1 33 0 219 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 19 173 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 8 6 0 9 10 125 0 15] 
#[0 19 177 0 9] 
#[0 8 6 0 9] 
#[1 3 169 0 8 0 146 0 15 8 10 0 26 0 146 0 28 11 129 0 31 6 237 0 42 3 205 1 21 3 205 1 22 3 205 1 25] 
#[1 8 14 0 1 8 14 0 5 8 14 0 6 8 14 0 8 8 14 0 10 8 14 0 12 8 14 0 13 8 14 0 16 8 14 0 17 8 14 0 23 8 14 0 27 8 14 0 28 8 14 0 35 8 14 0 40 8 14 0 42 8 14 0 43 8 14 0 46 8 14 0 47 8 14 0 49 8 14 0 50 8 14 0 51 8 14 0 52 8 14 0 53 8 14 0 54 8 14 0 55 8 14 0 57 8 14 0 58 8 14 0 59 8 14 0 60 8 14 0 61 8 14 0 62 8 14 0 63 8 14 0 64 8 14 0 65 8 14 0 66 8 14 0 67 8 14 0 68 8 14 0 69 8 14 0 70 2 107 0 71 8 14 0 72 8 14 0 73 8 14 0 74 8 14 0 75 8 14 0 77 8 14 0 78 8 14 0 79 8 14 0 80 8 14 0 81 8 14 0 82 8 14 0 83 8 14 0 84 8 14 0 85 8 14 0 86 8 14 0 87 8 14 0 88 8 14 0 89 8 14 0 90 8 14 0 95 8 14 0 96 8 14 0 97 8 14 0 98 8 14 0 99 8 14 0 100 8 14 0 101 8 14 0 102 8 14 0 103 8 14 0 104 8 14 0 105 8 14 0 107 8 14 0 108 8 14 0 109 8 14 0 110 8 14 0 111 8 14 0 112 8 14 0 113 8 14 0 114 8 14 0 115 8 14 0 116 8 14 0 117 8 14 0 118 8 14 0 119 8 14 0 120 8 14 0 121 8 14 0 122 8 14 0 128 8 14 0 129 8 14 0 131 8 14 0 132 8 14 0 133 8 14 0 134 8 14 0 135 8 14 0 136 8 14 0 137] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 19 185 0 184 19 185 0 185 5 149 0 217 1 29 0 218 1 33 0 219 19 185 1 23 19 185 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 19 185 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 8 18 0 9 0 28] 
#[1 19 189 0 31 6 237 0 42 19 193 1 25] 
#[0 8 22 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 8 26 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 8 30 0 9] 
#[0 8 30 0 9] 
#[1 0 9 0 5 0 13 0 6 10 245 0 8 8 34 0 9 0 21 0 10 10 249 0 23 0 29 0 27 10 1 0 35 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 0 213 0 144 0 217 0 145 0 221 0 146 1 209 0 147 1 213 0 218 1 217 0 219 19 197 1 0 19 197 1 1 1 125 1 2 10 5 1 3 11 5 1 5 1 137 1 9 19 201 1 11 19 201 1 12 10 21 1 13 19 201 1 14 10 29 1 15 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 7 197 0 42 19 205 0 192] 
#[0 19 209 0 9] 
#[0 8 38 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[1 8 42 0 9 8 42 0 15 19 213 0 23] 
#[1 19 217 0 9 19 221 0 15] 
#[1 8 46 0 8 8 46 0 9 8 46 0 15 8 46 0 19 8 46 0 23 8 46 0 26 8 46 0 28 8 46 0 31 2 111 0 35 8 46 0 42 0 45 0 49 8 46 0 76 8 46 0 91 8 46 0 111 8 46 0 124 3 149 0 244 3 149 0 245] 
#[1 8 50 0 8 8 50 0 9 8 50 0 15 8 50 0 19 8 50 0 23 8 50 0 26 8 50 0 28 8 50 0 31 2 115 0 35 8 50 0 42 0 45 0 49 8 50 0 76 8 50 0 91 8 50 0 111 8 50 0 124 19 225 0 243 1 101 0 244 1 101 0 245] 
#[1 8 54 0 8 8 54 0 9 8 54 0 15 8 54 0 19 8 54 0 23 8 54 0 26 8 54 0 28 8 54 0 31 2 119 0 35 8 54 0 42 0 45 0 49 8 54 0 76 8 54 0 91 8 54 0 111 8 54 0 124 3 149 0 244 3 149 0 245] 
#[1 8 58 0 8 8 58 0 9 8 58 0 15 8 58 0 19 8 58 0 23 8 58 0 26 8 58 0 28 8 58 0 31 2 123 0 35 8 58 0 42 0 45 0 49 8 58 0 76 8 58 0 91 8 58 0 111 8 58 0 124 3 149 0 244 3 149 0 245] 
#[1 4 250 0 5 4 250 0 6 4 250 0 8 4 250 0 9 4 250 0 10 4 250 0 15 4 250 0 23 4 250 0 26 1 211 0 27 4 250 0 28 0 70 0 29 4 250 0 31 4 250 0 35 4 250 0 42 4 250 0 49 4 250 0 52 4 250 0 53 4 250 0 57 4 250 0 58 4 250 0 59 4 250 0 60 4 250 0 61 4 250 0 65 4 250 0 69 4 250 0 72 4 250 0 76 4 250 0 77 4 250 0 83 4 250 0 84 4 250 0 91 4 250 0 98 4 250 0 99 4 250 0 104 4 250 0 111 4 250 0 114 4 250 0 115 4 250 0 116 4 250 0 119 4 250 0 120 4 250 0 121 4 250 0 124 4 250 0 128] 
#[1 16 49 0 130 16 53 1 39] 
#[0 8 62 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 8 66 0 2 8 66 0 3 8 66 0 4 8 66 0 5 8 66 0 6 8 66 0 7 13 129 0 8 8 66 0 9 8 66 0 10 8 66 0 11 8 66 0 12 8 66 0 14 8 66 0 15 8 66 0 16 8 66 0 18 8 66 0 20 8 66 0 22 8 66 0 23 8 66 0 24 8 66 0 25 8 66 0 26 8 66 0 28 8 66 0 29 8 66 0 30 8 66 0 31 8 66 0 32 8 66 0 33 8 66 0 34 8 66 0 36 8 66 0 37 8 66 0 38 8 66 0 39 8 66 0 41 6 237 0 42 8 66 0 43 8 66 0 44 8 66 0 45 8 66 0 46 8 66 0 123 8 66 0 124 8 66 0 125 8 66 0 126 8 66 0 127 19 229 0 168 19 229 1 25] 
#[1 19 233 0 9 10 125 0 15] 
#[1 19 237 0 9 10 125 0 15] 
#[0 8 70 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 8 74 0 2 8 74 0 3 8 74 0 4 8 74 0 5 8 74 0 6 8 74 0 7 8 74 0 8 8 74 0 9 8 74 0 10 8 74 0 11 8 74 0 12 8 74 0 14 8 74 0 15 8 74 0 16 8 74 0 18 8 74 0 20 8 74 0 22 8 74 0 23 8 74 0 24 8 74 0 25 8 74 0 26 8 74 0 28 8 74 0 29 8 74 0 30 8 74 0 31 8 74 0 32 8 74 0 33 8 74 0 34 2 127 0 35 8 74 0 36 8 74 0 37 8 74 0 38 8 74 0 39 8 74 0 41 8 74 0 42 8 74 0 43 8 74 0 44 8 74 0 45 8 74 0 46 0 45 0 49 8 74 0 123 8 74 0 124 8 74 0 125 8 74 0 126 8 74 0 127 3 149 0 244 3 149 0 245] 
#[1 8 78 0 2 8 78 0 3 8 78 0 4 8 78 0 5 8 78 0 6 8 78 0 7 8 78 0 8 8 78 0 9 8 78 0 10 8 78 0 11 8 78 0 12 8 78 0 14 8 78 0 15 8 78 0 16 8 78 0 18 8 78 0 20 8 78 0 22 8 78 0 23 8 78 0 24 8 78 0 25 8 78 0 26 8 78 0 28 8 78 0 29 8 78 0 30 8 78 0 31 8 78 0 32 8 78 0 33 8 78 0 34 2 131 0 35 8 78 0 36 8 78 0 37 8 78 0 38 8 78 0 39 8 78 0 41 8 78 0 42 8 78 0 43 8 78 0 44 8 78 0 45 8 78 0 46 0 45 0 49 8 78 0 123 8 78 0 124 8 78 0 125 8 78 0 126 8 78 0 127 19 241 0 243 1 101 0 244 1 101 0 245] 
#[1 19 245 0 9 10 125 0 15] 
#[1 19 249 0 9 10 125 0 15] 
#[1 7 249 0 19 0 37 0 35 8 82 0 42 0 45 0 49 3 149 0 244 3 149 0 245 19 253 1 4] 
#[0 8 86 0 42] 
#[1 7 249 0 19 0 37 0 35 8 90 0 42 0 45 0 49 20 1 0 243 1 101 0 244 1 101 0 245 20 5 1 4] 
#[0 8 94 0 42] 
#[1 7 249 0 19 0 37 0 35 8 98 0 42 0 45 0 49 3 149 0 244 3 149 0 245 20 9 1 4] 
#[0 8 102 0 42] 
#[1 2 135 0 47 4 62 0 90 4 62 0 106 4 62 0 128] 
#[1 1 253 0 128 20 17 0 218 20 17 1 26 20 17 1 59 1 185 1 61] 
#[0 8 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 8 110 0 8 8 110 0 9 8 110 0 15 8 110 0 23 8 110 0 26 8 110 0 28 8 110 0 31 2 139 0 35 8 110 0 42 0 45 0 49 8 110 0 76 8 110 0 91 8 110 0 111 8 110 0 124 3 149 0 244 3 149 0 245] 
#[1 8 114 0 8 8 114 0 9 8 114 0 15 8 114 0 23 8 114 0 26 8 114 0 28 8 114 0 31 2 143 0 35 8 114 0 42 0 45 0 49 8 114 0 76 8 114 0 91 8 114 0 111 8 114 0 124 3 149 0 244 3 149 0 245] 
#[1 8 118 0 15 8 118 0 124 20 21 0 128] 
#[1 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 20 25 0 144 0 217 0 145 0 221 0 146 1 245 0 147 1 213 0 218 1 217 0 219 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[1 8 122 0 15 20 29 0 31 8 122 0 124] 
#[0 20 33 0 28] 
#[0 8 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 20 37 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 20 37 0 201 20 37 0 204 20 37 0 205 20 37 0 206 20 37 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 20 37 0 223 1 53 0 224 20 37 0 237 20 37 0 239 20 37 0 240 20 37 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 20 41 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 20 41 0 201 20 41 0 204 20 41 0 205 20 41 0 206 20 41 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 20 41 0 223 1 53 0 224 20 41 0 237 20 41 0 239 20 41 0 240 20 41 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 20 45 0 9 10 125 0 15] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 20 49 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 20 49 0 201 20 49 0 204 20 49 0 205 20 49 0 206 20 49 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 20 49 0 223 1 53 0 224 20 49 0 237 20 49 0 239 20 49 0 240 20 49 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 20 53 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 20 53 0 201 20 53 0 204 20 53 0 205 20 53 0 206 20 53 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 20 53 0 223 1 53 0 224 20 53 0 237 20 53 0 239 20 53 0 240 20 53 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 8 130 0 9 0 28] 
#[1 5 13 0 1 5 13 0 5 4 105 0 8 5 13 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 4 129 0 27 4 133 0 35 5 13 0 40 6 237 0 42 5 13 0 43 4 145 0 47 4 149 0 50 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 4 153 0 63 0 85 0 65 4 157 0 67 0 89 0 69 4 161 0 70 5 109 0 75 0 105 0 77 0 117 0 83 0 121 0 84 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 4 181 0 96 0 141 0 98 0 145 0 99 4 185 0 100 4 189 0 103 4 193 0 107 5 129 0 109 5 109 0 110 5 5 0 113 0 173 0 114 0 181 0 116 0 193 0 119 0 201 0 121 0 205 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 5 1 0 144 0 217 0 145 0 221 0 146 4 245 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 20 57 0 184 20 57 0 185 5 149 0 217 1 29 0 218 1 33 0 219 20 57 1 23 20 57 1 25 1 29 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 153 1 64 20 57 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 8 134 0 9 0 28] 
#[0 8 138 0 9] 
#[0 8 138 0 9] 
#[0 8 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 83] 
#[0 8 146 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 8 150 0 9 0 15] 
#[0 8 154 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[1 0 29 0 27 0 53 0 52 0 57 0 53 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 85 0 65 0 89 0 69 0 93 0 72 0 105 0 77 0 117 0 83 0 121 0 84 0 141 0 98 0 145 0 99 0 157 0 104 0 173 0 114 0 177 0 115 0 181 0 116 0 193 0 119 0 197 0 120 0 201 0 121 1 253 0 128 2 245 0 147 2 249 0 213 2 249 0 214 5 85 0 215 2 249 0 217 1 29 0 218 1 33 0 219 2 249 0 220 2 249 0 221 1 45 0 222 3 1 0 224 2 249 1 7 20 61 1 10 1 29 1 26 2 249 1 27 1 153 1 28 1 157 1 31 1 29 1 59 1 185 1 61 2 249 1 64] 
#[1 8 158 0 8 8 158 0 9 8 158 0 15 8 158 0 19 8 158 0 23 8 158 0 26 8 158 0 28 8 158 0 31 2 147 0 35 8 158 0 42 0 45 0 49 8 158 0 76 8 158 0 91 8 158 0 111 8 158 0 124 3 149 0 244 3 149 0 245] 
#[0 8 162 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 8 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 8 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[1 8 170 0 2 8 170 0 3 8 170 0 4 8 170 0 5 8 170 0 6 8 170 0 7 8 170 0 8 8 170 0 9 8 170 0 10 8 170 0 11 8 170 0 12 8 170 0 14 8 170 0 15 8 170 0 16 8 170 0 18 8 170 0 20 8 170 0 22 8 170 0 23 8 170 0 24 8 170 0 25 8 170 0 26 8 170 0 28 8 170 0 29 8 170 0 30 8 170 0 31 8 170 0 32 8 170 0 33 8 170 0 34 2 151 0 35 8 170 0 36 8 170 0 37 8 170 0 38 8 170 0 39 8 170 0 41 8 170 0 42 8 170 0 43 8 170 0 44 8 170 0 45 8 170 0 46 0 45 0 49 8 170 0 123 8 170 0 124 8 170 0 125 8 170 0 126 8 170 0 127 3 149 0 244 3 149 0 245] 
#[0 8 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 8 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 8 174 0 42] 
#[1 7 249 0 19 0 37 0 35 8 178 0 42 0 45 0 49 3 149 0 244 3 149 0 245 20 65 1 4] 
#[0 8 182 0 42] 
#[0 8 186 0 42] 
#[1 1 253 0 128 20 69 0 218 20 69 1 26 20 69 1 59 1 185 1 61] 
#[0 8 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 8 194 0 15 0 124] 
#[0 8 198 0 15 0 124] 
#[1 0 29 0 27 0 41 0 47 0 85 0 65 0 133 0 90 0 205 0 128 20 73 0 144 0 217 0 145 0 221 0 146 1 245 0 147 1 213 0 218 1 217 0 219 1 213 1 26 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61] 
#[0 8 202 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 8 206 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 8 210 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 13 0 1 7 49 0 5 0 13 0 6 7 53 0 8 7 57 0 10 5 13 0 12 4 117 0 13 5 13 0 16 4 125 0 17 0 25 0 23 4 129 0 27 7 61 0 28 7 65 0 35 5 13 0 40 7 197 0 42 5 13 0 43 4 145 0 47 0 45 0 49 4 149 0 50 0 49 0 51 0 53 0 52 0 57 0 53 7 73 0 54 7 77 0 55 0 61 0 57 0 65 0 58 0 69 0 59 0 73 0 60 0 77 0 61 0 81 0 62 4 153 0 63 7 81 0 64 0 85 0 65 7 85 0 66 4 157 0 67 7 89 0 68 0 89 0 69 4 161 0 70 0 93 0 72 1 13 0 73 1 9 0 74 5 109 0 75 0 105 0 77 7 93 0 78 0 109 0 79 7 97 0 80 7 101 0 81 1 13 0 82 0 117 0 83 0 121 0 84 1 9 0 85 7 105 0 86 4 169 0 87 4 173 0 88 5 113 0 89 0 133 0 90 1 9 0 95 4 181 0 96 7 109 0 97 0 141 0 98 0 145 0 99 4 185 0 100 1 9 0 101 0 153 0 102 4 189 0 103 0 157 0 104 7 113 0 105 4 193 0 107 1 9 0 108 5 129 0 109 5 109 0 110 7 117 0 111 0 169 0 112 5 5 0 113 0 173 0 114 0 177 0 115 0 181 0 116 0 185 0 117 1 13 0 118 0 193 0 119 0 197 0 120 0 201 0 121 7 121 0 122 7 125 0 128 4 205 0 129 4 209 0 131 4 213 0 132 4 217 0 133 5 117 0 134 5 117 0 135 5 117 0 136 5 117 0 137 5 1 0 143 7 129 0 144 0 217 0 145 0 221 0 146 0 225 0 147 5 1 0 148 4 253 0 149 5 1 0 157 5 5 0 158 5 33 0 161 5 13 0 162 5 33 0 163 5 33 0 169 5 33 0 170 5 33 0 171 5 33 0 172 5 37 0 173 5 41 0 174 5 45 0 175 5 49 0 177 5 53 0 178 5 57 0 179 5 61 0 180 5 65 0 181 5 69 0 182 5 133 0 183 7 137 0 184 7 137 0 185 7 137 0 187 20 77 0 189 7 145 0 190 7 149 0 191 7 153 0 192 7 161 0 194 7 165 0 196 7 169 0 200 20 77 0 201 20 77 0 204 20 77 0 205 20 77 0 206 20 77 0 207 1 1 0 209 7 181 0 210 1 9 0 211 1 13 0 212 1 1 0 213 1 1 0 214 5 89 0 217 1 29 0 218 1 33 0 219 1 1 0 220 1 1 0 221 1 45 0 222 20 77 0 223 1 53 0 224 20 77 0 237 20 77 0 239 20 77 0 240 20 77 0 241 7 185 0 243 1 101 0 244 1 101 0 245 1 109 0 254 1 113 0 255 6 233 1 0 6 233 1 1 1 125 1 2 1 129 1 5 1 1 1 7 1 137 1 9 1 29 1 26 1 1 1 27 1 153 1 28 1 157 1 31 0 217 1 46 1 165 1 53 1 169 1 54 1 177 1 59 0 217 1 60 1 185 1 61 5 97 1 64 7 193 1 67 7 137 1 72 5 1 1 78 5 105 1 79 5 109 1 80 5 113 1 81 5 117 1 82] 
#[0 8 214 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 8 218 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 8 222 0 9 0 28] 
#[1 8 226 0 9 8 226 0 15 20 81 0 23] 
#[0 8 230 0 42] 
#[0 8 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127] 
#[0 8 238 0 15 0 124] 
#[0 8 242 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 8 246 0 9 0 15]
	).
]

{ #category : #private }
CPPParser >> parseCurrentToken [
	| token position actions |
	(currentToken ids includes: scanner RightShiftId)
		ifTrue: [ token := currentToken.
			position := scanner position.
			actions := OrderedCollection new.
			self addActionsFor: scanner gtId to: actions.
			actions notEmpty
				ifTrue: [ currentToken := currentToken class
						value: '>'
						start: currentToken startPosition
						ids: (Array with: scanner gtId).
					self position: currentToken startPosition.
					actions do: [ :each | self splitWithAction: each ].
					currentToken := token.
					self position: position ] ].
	super parseCurrentToken
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForabstractdeclarator2: nodes [
	| result |
	result := CPPAbstractDeclaratorNode new.
	result addToken: ((nodes at: 1) at: 1) to: result leftParens.
	result addToken: ((nodes at: 1) at: 2) to: result ellipsises.
	result addNodes: ((nodes at: 1) at: 3) to: result declarations.
	result addTokens: ((nodes at: 1) at: 4) to: result commas.
	result addToken: ((nodes at: 1) at: 5) to: result rightParens.
	result addNodes: ((nodes at: 1) at: 6) to: result specifiers.
	result
		addNode: ((nodes at: 1) at: 7)
		to: result exceptionSpecifications.
	result addToken: ((nodes at: 1) at: 8) to: result qualifiers.
	result addNodes: ((nodes at: 1) at: 9) to: result cvQualifiers.
	result arrow: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result specifiers.
	result addNode: ((nodes at: 2) at: 3) to: result declarators.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForabstractdeclarator3: nodes [
	| result |
	result := CPPAbstractDeclaratorNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result leftParens.
	result addTokens: ((nodes at: 1) at: 2) to: result rightParens.
	result addNodes: ((nodes at: 1) at: 3) to: result specifiers.
	result
		addNodes: ((nodes at: 1) at: 4)
		to: result exceptionSpecifications.
	result addTokens: ((nodes at: 1) at: 5) to: result qualifiers.
	result addTokens: ((nodes at: 1) at: 6) to: result leftBrackets.
	result addTokens: ((nodes at: 1) at: 7) to: result rightBrackets.
	result addNodes: ((nodes at: 1) at: 8) to: result expressions.
	result addNode: ((nodes at: 1) at: 9) to: result declarators.
	result addTokens: ((nodes at: 1) at: 10) to: result ellipsises.
	result addTokens: ((nodes at: 1) at: 11) to: result commas.
	result addNodes: ((nodes at: 1) at: 12) to: result cvQualifiers.
	result addNodes: ((nodes at: 1) at: 13) to: result declarations.
	result addToken: ((nodes at: 2) at: 1) to: result leftParens.
	result addToken: ((nodes at: 2) at: 2) to: result ellipsises.
	result addNodes: ((nodes at: 2) at: 3) to: result declarations.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result addToken: ((nodes at: 2) at: 5) to: result rightParens.
	result addNodes: ((nodes at: 2) at: 6) to: result specifiers.
	result
		addNode: ((nodes at: 2) at: 7)
		to: result exceptionSpecifications.
	result addToken: ((nodes at: 2) at: 8) to: result qualifiers.
	result addNodes: ((nodes at: 2) at: 9) to: result cvQualifiers.
	result arrow: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result specifiers.
	result addNode: ((nodes at: 3) at: 3) to: result declarators.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForabstractpackdeclarator1: nodes [
	| result |
	result := CPPAbstractPackDeclaratorNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result leftParens.
	result addTokens: ((nodes at: 1) at: 2) to: result rightParens.
	result addNodes: ((nodes at: 1) at: 3) to: result specifiers.
	result
		addNodes: ((nodes at: 1) at: 4)
		to: result exceptionSpecifications.
	result addTokens: ((nodes at: 1) at: 5) to: result qualifiers.
	result addTokens: ((nodes at: 1) at: 6) to: result leftBrackets.
	result addTokens: ((nodes at: 1) at: 7) to: result rightBrackets.
	result addNodes: ((nodes at: 1) at: 8) to: result expressions.
	result addTokens: ((nodes at: 1) at: 9) to: result ellipsises.
	result addTokens: ((nodes at: 1) at: 10) to: result commas.
	result addNodes: ((nodes at: 1) at: 11) to: result cvQualifiers.
	result addNodes: ((nodes at: 1) at: 12) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForaliasdeclaration1: nodes [
	| result |
	result := CPPAliasDeclarationNode new.
	result usingToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equal: (nodes at: 3).
	result type: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForaliasdeclaration2: nodes [
	| result |
	result := CPPAliasDeclarationNode new.
	result usingToken: (nodes at: 1).
	result name: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result specifiers.
	result equal: (nodes at: 4).
	result type: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForalignmentspecifier3: nodes [
	| result |
	result := CPPAlignmentSpecifierNode new.
	result alignasToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result value: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForalignmentspecifier4: nodes [
	| result |
	result := CPPAlignmentSpecifierNode new.
	result alignasToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result value: (nodes at: 3).
	result ellipsis: (nodes at: 4).
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForasmdefinition1: nodes [
	| result |
	result := CPPAsmDefinitionNode new.
	result asmToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result code: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForassignmentexpression2: nodes [
	| result |
	result := CPPAssignmentExpressionNode new.
	result lhs: (nodes at: 1).
	result operator: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattribute1: nodes [
	| result |
	result := CPPAttributeNode new.
	result name: ((nodes at: 1) at: 1).
	result namespace: ((nodes at: 1) at: 2).
	result colonColon: ((nodes at: 1) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattribute2: nodes [
	| result |
	result := CPPAttributeNode new.
	result name: ((nodes at: 1) at: 1).
	result namespace: ((nodes at: 1) at: 2).
	result colonColon: ((nodes at: 1) at: 3).
	result argumentClause: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributeargumentclause1: nodes [
	| result |
	result := CPPAttributeArgumentClauseNode new.
	result left: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result balancedTokens.
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributedeclaration1: nodes [
	| result |
	result := CPPAttributeDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributelist1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributelist2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributelist3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributelist5: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributelist6: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributescopedtoken1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributespecifier1: nodes [
	| result |
	result := CPPAttributeSpecifierNode new.
	result addToken: (nodes at: 1) to: result leftBrackets.
	result addToken: (nodes at: 2) to: result leftBrackets.
	result addNodes: ((nodes at: 3) at: 1) to: result _attributes.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addTokens: ((nodes at: 3) at: 3) to: result ellipsises.
	result addToken: (nodes at: 4) to: result rightBrackets.
	result addToken: (nodes at: 5) to: result rightBrackets.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributetoken2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: ((nodes at: 1) at: 1).
	result at: 3 put: ((nodes at: 1) at: 2).
	result at: 1 put: ((nodes at: 1) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbaseclause1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier10: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result accessToken: (nodes at: 2).
	result virtualToken: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier1: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier2: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result type: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier3: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result virtualToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier4: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result virtualToken: (nodes at: 1).
	result accessToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier5: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result virtualToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier6: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result virtualToken: (nodes at: 2).
	result accessToken: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier7: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result accessToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier8: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result accessToken: (nodes at: 1).
	result virtualToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbasespecifier9: nodes [
	| result |
	result := CPPBaseSpecifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result accessToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbracedinitlist1: nodes [
	| result |
	result := CPPBracedListInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbracedinitlist2: nodes [
	| result |
	result := CPPBracedListInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbracedinitlist3: nodes [
	| result |
	result := CPPBracedListInitializerNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForbraceorequalinitializer1: nodes [
	| result |
	result := CPPEqualInitializerNode new.
	result equal: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcastexpression2: nodes [
	| result |
	result := CPPCastExpressionNode new.
	result addToken: (nodes at: 1) to: result leftParens.
	result type: (nodes at: 2).
	result addToken: (nodes at: 3) to: result rightParens.
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead10: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 6 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead11: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead12: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 7).
	result at: 6 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead1: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 2) at: 1).
	result at: 5 put: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead2: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 2) at: 1).
	result at: 5 put: ((nodes at: 2) at: 2).
	result at: 6 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 3) at: 4) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead3: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 2) at: 1).
	result at: 5 put: ((nodes at: 2) at: 2).
	result at: 10 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead4: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 2) at: 1).
	result at: 5 put: ((nodes at: 2) at: 2).
	result at: 10 put: (nodes at: 3).
	result at: 6 put: ((nodes at: 4) at: 1).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 4) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 4) at: 4) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead5: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 7).
	result at: 4 put: ((nodes at: 3) at: 1).
	result at: 5 put: ((nodes at: 3) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead6: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 7).
	result at: 4 put: ((nodes at: 3) at: 1).
	result at: 5 put: ((nodes at: 3) at: 2).
	result at: 6 put: ((nodes at: 4) at: 1).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 4) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 4) at: 4) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead7: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 7).
	result at: 4 put: ((nodes at: 3) at: 1).
	result at: 5 put: ((nodes at: 3) at: 2).
	result at: 10 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead8: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 7).
	result at: 4 put: ((nodes at: 3) at: 1).
	result at: 5 put: ((nodes at: 3) at: 2).
	result at: 10 put: (nodes at: 4).
	result at: 6 put: ((nodes at: 5) at: 1).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 7).
	self addAll: ((nodes at: 5) at: 3) to: (result at: 8).
	self addAll: ((nodes at: 5) at: 4) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasshead9: nodes [
	| result |
	result := Array new: 10.
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasskey1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasskey2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclasskey3: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclassspecifier1: nodes [
	| result |
	result := CPPClassSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result name: ((nodes at: 1) at: 4).
	result nameSpecifier: ((nodes at: 1) at: 5).
	result addToken: ((nodes at: 1) at: 6) to: result colons.
	result addNodes: ((nodes at: 1) at: 7) to: result specifiers.
	result addTokens: ((nodes at: 1) at: 8) to: result ellipsises.
	result addTokens: ((nodes at: 1) at: 9) to: result commas.
	result finalToken: ((nodes at: 1) at: 10).
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForclassspecifier2: nodes [
	| result |
	result := CPPClassSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result name: ((nodes at: 1) at: 4).
	result nameSpecifier: ((nodes at: 1) at: 5).
	result addToken: ((nodes at: 1) at: 6) to: result colons.
	result addNodes: ((nodes at: 1) at: 7) to: result specifiers.
	result addTokens: ((nodes at: 1) at: 8) to: result ellipsises.
	result addTokens: ((nodes at: 1) at: 9) to: result commas.
	result finalToken: ((nodes at: 1) at: 10).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result declarations.
	result addTokens: ((nodes at: 3) at: 2) to: result colons.
	result addTokens: ((nodes at: 3) at: 3) to: result accessTokens.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcompoundstatement1: nodes [
	| result |
	result := CPPCompoundStatementNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcompoundstatement2: nodes [
	| result |
	result := CPPCompoundStatementNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcondition2: nodes [
	| result |
	result := CPPConditionNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	result equal: (nodes at: 3).
	result initializer: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcondition3: nodes [
	| result |
	result := CPPConditionNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result declarator: (nodes at: 3).
	result equal: (nodes at: 4).
	result initializer: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcondition4: nodes [
	| result |
	result := CPPConditionNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcondition5: nodes [
	| result |
	result := CPPConditionNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result declarator: (nodes at: 3).
	result initializer: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForconditionalexpression2: nodes [
	| result |
	result := CPPConditionalExpressionNode new.
	result booleanExpression: (nodes at: 1).
	result questionMark: (nodes at: 2).
	result trueExpression: (nodes at: 3).
	result colon: (nodes at: 4).
	result falseExpression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForconversiondeclarator1: nodes [
	| result |
	result := CPPConversionDeclaratorNode new.
	result operator: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForconversiondeclarator2: nodes [
	| result |
	result := CPPConversionDeclaratorNode new.
	result operator: (nodes at: 1).
	result declarator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForconversionfunctionid1: nodes [
	| result |
	result := CPPConversionFunctionIdentifierNode new.
	result operatorToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result specifiers.
	result declarator: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForconversiontypeid1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForconversiontypeid2: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForctorinitializer1: nodes [
	| result |
	result := CPPCtorInitializerNode new.
	result colon: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcvqualifier1: nodes [
	| result |
	result := CPPCVQualifierNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeclarationseq1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeclarationseq2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeclarator2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: ((nodes at: 2) at: 1) to: result leftParens.
	result addToken: ((nodes at: 2) at: 2) to: result ellipsises.
	result addNodes: ((nodes at: 2) at: 3) to: result declarations.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result addToken: ((nodes at: 2) at: 5) to: result rightParens.
	result addNodes: ((nodes at: 2) at: 6) to: result specifiers.
	result
		addNode: ((nodes at: 2) at: 7)
		to: result exceptionSpecifications.
	result addToken: ((nodes at: 2) at: 8) to: result qualifiers.
	result addNodes: ((nodes at: 2) at: 9) to: result cvQualifiers.
	result arrow: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result specifiers.
	result declarator: ((nodes at: 3) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeclaratorid1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeclaratorid2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeclspecifier6: nodes [
	| result |
	result := CPPDeclSpecifierNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeclspecifierseq3: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordecltypespecifier1: nodes [
	| result |
	result := CPPDecltypeSpecifierNode new.
	result decltypeToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordecltypespecifier2: nodes [
	| result |
	result := CPPDecltypeSpecifierNode new.
	result decltypeToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result autoToken: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeleteexpression1: nodes [
	| result |
	result := CPPDeleteExpressionNode new.
	result _deleteToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeleteexpression2: nodes [
	| result |
	result := CPPDeleteExpressionNode new.
	result colonColon: (nodes at: 1).
	result _deleteToken: (nodes at: 2).
	result expression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeleteexpression3: nodes [
	| result |
	result := CPPDeleteExpressionNode new.
	result _deleteToken: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordeleteexpression4: nodes [
	| result |
	result := CPPDeleteExpressionNode new.
	result colonColon: (nodes at: 1).
	result _deleteToken: (nodes at: 2).
	result leftBracket: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	result expression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordynamicexceptionspecification1: nodes [
	| result |
	result := CPPDynamicExceptionSpecificationNode new.
	result throwToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFordynamicexceptionspecification2: nodes [
	| result |
	result := CPPDynamicExceptionSpecificationNode new.
	result throwToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result types.
	result addTokens: ((nodes at: 3) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier1: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier2: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result nameSpecifier: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier3: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result addNodes: (nodes at: 2) to: result specifiers.
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier4: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result addNodes: (nodes at: 2) to: result specifiers.
	result nameSpecifier: (nodes at: 3).
	result name: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier5: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result templateIdentifier: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier6: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result nameSpecifier: (nodes at: 2).
	result templateIdentifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier7: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result classToken: ((nodes at: 1) at: 1).
	result structToken: ((nodes at: 1) at: 2).
	result unionToken: ((nodes at: 1) at: 3).
	result nameSpecifier: (nodes at: 2).
	result templateToken: (nodes at: 3).
	result templateIdentifier: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier8: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForelaboratedtypespecifier9: nodes [
	| result |
	result := CPPElaboratedTypeSpecifierNode new.
	result enumToken: (nodes at: 1).
	result nameSpecifier: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumbase1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumeratordefinition1: nodes [
	| result |
	result := CPPEnumDefinitionNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumeratordefinition2: nodes [
	| result |
	result := CPPEnumDefinitionNode new.
	result name: (nodes at: 1).
	result equal: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead10: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 7 put: (nodes at: 2).
	result at: 6 put: (nodes at: 3).
	result at: 4 put: ((nodes at: 4) at: 1).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead11: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 5).
	result at: 7 put: (nodes at: 3).
	result at: 6 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead12: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 5).
	result at: 7 put: (nodes at: 3).
	result at: 6 put: (nodes at: 4).
	result at: 4 put: ((nodes at: 5) at: 1).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead1: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead2: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 4 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead3: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 6 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead4: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 6 put: (nodes at: 2).
	result at: 4 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead5: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead6: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 5).
	result at: 4 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead7: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead8: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	self addAll: (nodes at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 3).
	result at: 4 put: ((nodes at: 4) at: 1).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumhead9: nodes [
	| result |
	result := Array new: 7.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: ((nodes at: 1) at: 1).
	result at: 2 put: ((nodes at: 1) at: 2).
	result at: 3 put: ((nodes at: 1) at: 3).
	result at: 7 put: (nodes at: 2).
	result at: 6 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumkey2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumkey3: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumspecifier1: nodes [
	| result |
	result := CPPEnumSpecifierNode new.
	result enumToken: ((nodes at: 1) at: 1).
	result classToken: ((nodes at: 1) at: 2).
	result structToken: ((nodes at: 1) at: 3).
	result colon: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result specifiers.
	result name: ((nodes at: 1) at: 6).
	result nameSpecifier: ((nodes at: 1) at: 7).
	result leftBrace: (nodes at: 2).
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumspecifier2: nodes [
	| result |
	result := CPPEnumSpecifierNode new.
	result enumToken: ((nodes at: 1) at: 1).
	result classToken: ((nodes at: 1) at: 2).
	result structToken: ((nodes at: 1) at: 3).
	result colon: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result specifiers.
	result name: ((nodes at: 1) at: 6).
	result nameSpecifier: ((nodes at: 1) at: 7).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result definitions.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForenumspecifier3: nodes [
	| result |
	result := CPPEnumSpecifierNode new.
	result enumToken: ((nodes at: 1) at: 1).
	result classToken: ((nodes at: 1) at: 2).
	result structToken: ((nodes at: 1) at: 3).
	result colon: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result specifiers.
	result name: ((nodes at: 1) at: 6).
	result nameSpecifier: ((nodes at: 1) at: 7).
	result leftBrace: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result definitions.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result addToken: (nodes at: 4) to: result commas.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexceptiondeclaration1: nodes [
	| result |
	result := CPPExceptionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexceptiondeclaration2: nodes [
	| result |
	result := CPPExceptionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result declarator: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexceptiondeclaration3: nodes [
	| result |
	result := CPPExceptionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexceptiondeclaration5: nodes [
	| result |
	result := CPPExceptionDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexceptiondeclaration7: nodes [
	| result |
	result := CPPExceptionDeclarationNode new.
	result ellipsis: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexclusiveorexpression2: nodes [
	| result |
	result := CPPBinaryExpressionNode new.
	result addNode: (nodes at: 1) to: result lefts.
	result operator: (nodes at: 2).
	result addNode: (nodes at: 3) to: result lefts.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexplicitinstantiation1: nodes [
	| result |
	result := CPPExplicitInstantiationNode new.
	result templateToken: (nodes at: 1).
	result declaration: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexplicitinstantiation2: nodes [
	| result |
	result := CPPExplicitInstantiationNode new.
	result externToken: (nodes at: 1).
	result templateToken: (nodes at: 2).
	result declaration: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexplicitspecialization1: nodes [
	| result |
	result := CPPExplicitSpecializationNode new.
	result templateToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result gtToken: (nodes at: 3).
	result declaration: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexpression2: nodes [
	| result |
	result := CPPCommaExpressionNode new.
	result left: (nodes at: 1).
	result comma: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexpressionstatement1: nodes [
	| result |
	result := CPPExpressionStatementNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForexpressionstatement2: nodes [
	| result |
	result := CPPExpressionStatementNode new.
	result expression: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForextensionnamespacedefinition1: nodes [
	| result |
	result := CPPExtensionNamespaceDefinitionNode new.
	result namespaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result declarations.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForextensionnamespacedefinition2: nodes [
	| result |
	result := CPPExtensionNamespaceDefinitionNode new.
	result inlineToken: (nodes at: 1).
	result namespaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result declarations.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForforrangedeclaration1: nodes [
	| result |
	result := CPPForRangeDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForforrangedeclaration2: nodes [
	| result |
	result := CPPForRangeDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result declarator: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctionbody1: nodes [
	| result |
	result := Array new: 6.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctionbody2: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (nodes at: 1).
	result at: 1 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctionbody4: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctionbody5: nodes [
	| result |
	result := Array new: 6.
	result at: 3 put: (nodes at: 1).
	result at: 6 put: (nodes at: 2).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctiondefinition1: nodes [
	| result |
	result := CPPFunctionDefinitionNode new.
	result declarator: (nodes at: 1).
	result body: ((nodes at: 2) at: 1).
	result constructor: ((nodes at: 2) at: 2).
	result equal: ((nodes at: 2) at: 3).
	result defaultToken: ((nodes at: 2) at: 4).
	result semicolon: ((nodes at: 2) at: 5).
	result _deleteToken: ((nodes at: 2) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctiondefinition2: nodes [
	| result |
	result := CPPFunctionDefinitionNode new.
	result declarator: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result virtualSpecifierTokens.
	result body: ((nodes at: 3) at: 1).
	result constructor: ((nodes at: 3) at: 2).
	result equal: ((nodes at: 3) at: 3).
	result defaultToken: ((nodes at: 3) at: 4).
	result semicolon: ((nodes at: 3) at: 5).
	result _deleteToken: ((nodes at: 3) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctiondefinition3: nodes [
	| result |
	result := CPPFunctionDefinitionNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	result body: ((nodes at: 3) at: 1).
	result constructor: ((nodes at: 3) at: 2).
	result equal: ((nodes at: 3) at: 3).
	result defaultToken: ((nodes at: 3) at: 4).
	result semicolon: ((nodes at: 3) at: 5).
	result _deleteToken: ((nodes at: 3) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctiondefinition4: nodes [
	| result |
	result := CPPFunctionDefinitionNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	result addTokens: (nodes at: 3) to: result virtualSpecifierTokens.
	result body: ((nodes at: 4) at: 1).
	result constructor: ((nodes at: 4) at: 2).
	result equal: ((nodes at: 4) at: 3).
	result defaultToken: ((nodes at: 4) at: 4).
	result semicolon: ((nodes at: 4) at: 5).
	result _deleteToken: ((nodes at: 4) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctiondefinition7: nodes [
	| result |
	result := CPPFunctionDefinitionNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result declarator: (nodes at: 3).
	result body: ((nodes at: 4) at: 1).
	result constructor: ((nodes at: 4) at: 2).
	result equal: ((nodes at: 4) at: 3).
	result defaultToken: ((nodes at: 4) at: 4).
	result semicolon: ((nodes at: 4) at: 5).
	result _deleteToken: ((nodes at: 4) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctiondefinition8: nodes [
	| result |
	result := CPPFunctionDefinitionNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result declarator: (nodes at: 3).
	result addTokens: (nodes at: 4) to: result virtualSpecifierTokens.
	result body: ((nodes at: 5) at: 1).
	result constructor: ((nodes at: 5) at: 2).
	result equal: ((nodes at: 5) at: 3).
	result defaultToken: ((nodes at: 5) at: 4).
	result semicolon: ((nodes at: 5) at: 5).
	result _deleteToken: ((nodes at: 5) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctiontryblock1: nodes [
	| result |
	result := CPPTryStatementNode new.
	result tryToken: (nodes at: 1).
	result statement: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result handlers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForfunctiontryblock2: nodes [
	| result |
	result := CPPTryStatementNode new.
	result tryToken: (nodes at: 1).
	result initializer: (nodes at: 2).
	result statement: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result handlers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForhandler1: nodes [
	| result |
	result := CPPCatchHandlerNode new.
	result catchToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result declaration: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForidexpression1: nodes [
	| result |
	result := CPPIdentifierExpressionNode new.
	result identifier: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitcapture1: nodes [
	| result |
	result := CPPInitializedCaptureNode new.
	result name: (nodes at: 1).
	result initializer: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitcapture2: nodes [
	| result |
	result := CPPInitializedCaptureNode new.
	result ampToken: (nodes at: 1).
	result name: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitdeclarator1: nodes [
	| result |
	result := CPPInitDeclaratorNode new.
	result declarator: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitdeclarator2: nodes [
	| result |
	result := CPPInitDeclaratorNode new.
	result declarator: (nodes at: 1).
	result initializer: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitdeclaratorlist1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitdeclaratorlist2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitializer2: nodes [
	| result |
	result := CPPExpressionListInitializerNode new.
	result leftParen: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitializerlist2: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitializerlist3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForinitializerlist4: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForiterationstatement1: nodes [
	| result |
	result := CPPWhileStatementNode new.
	result whileToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result condition: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForiterationstatement2: nodes [
	| result |
	result := CPPDoWhileStatementNode new.
	result doToken: (nodes at: 1).
	result statement: (nodes at: 2).
	result whileToken: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result condition: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForiterationstatement3: nodes [
	| result |
	result := CPPForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result initializerStatement: (nodes at: 3).
	result semicolon: (nodes at: 4).
	result rightParen: (nodes at: 5).
	result statement: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForiterationstatement4: nodes [
	| result |
	result := CPPForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result initializerStatement: (nodes at: 3).
	result semicolon: (nodes at: 4).
	result updateExpression: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForiterationstatement5: nodes [
	| result |
	result := CPPForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result initializerStatement: (nodes at: 3).
	result condition: (nodes at: 4).
	result semicolon: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForiterationstatement6: nodes [
	| result |
	result := CPPForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result initializerStatement: (nodes at: 3).
	result condition: (nodes at: 4).
	result semicolon: (nodes at: 5).
	result updateExpression: (nodes at: 6).
	result rightParen: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForiterationstatement7: nodes [
	| result |
	result := CPPRangeForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result declaration: (nodes at: 3).
	result colon: (nodes at: 4).
	result initializer: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForjumpstatement1: nodes [
	| result |
	result := CPPBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForjumpstatement2: nodes [
	| result |
	result := CPPContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForjumpstatement3: nodes [
	| result |
	result := CPPReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForjumpstatement4: nodes [
	| result |
	result := CPPReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result value: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForjumpstatement6: nodes [
	| result |
	result := CPPGotoStatementNode new.
	result gotoToken: (nodes at: 1).
	result label: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlabeledstatement1: nodes [
	| result |
	result := CPPLabeledStatementNode new.
	result label: (nodes at: 1).
	result colon: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlabeledstatement2: nodes [
	| result |
	result := CPPCaseLabeledStatementNode new.
	result caseToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result colon: (nodes at: 3).
	result statement: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlabeledstatement3: nodes [
	| result |
	result := CPPDefaultLabeledStatementNode new.
	result defaultToken: (nodes at: 1).
	result colon: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdacapture1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdacapture2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdacapture3: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 4).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 3) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator10: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 10 put: (nodes at: 4).
	result at: 6 put: ((nodes at: 5) at: 1).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 7).
	result at: 8 put: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator11: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 10 put: (nodes at: 4).
	self addAll: (nodes at: 5) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator12: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 10 put: (nodes at: 4).
	self addAll: (nodes at: 5) to: (result at: 7).
	result at: 6 put: ((nodes at: 6) at: 1).
	self addAll: ((nodes at: 6) at: 2) to: (result at: 7).
	result at: 8 put: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator13: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 10 put: (nodes at: 4).
	result at: 9 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator14: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 10 put: (nodes at: 4).
	result at: 9 put: (nodes at: 5).
	result at: 6 put: ((nodes at: 6) at: 1).
	self addAll: ((nodes at: 6) at: 2) to: (result at: 7).
	result at: 8 put: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator15: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 10 put: (nodes at: 4).
	result at: 9 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator16: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 10 put: (nodes at: 4).
	result at: 9 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 7).
	result at: 6 put: ((nodes at: 7) at: 1).
	self addAll: ((nodes at: 7) at: 2) to: (result at: 7).
	result at: 8 put: ((nodes at: 7) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator1: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator2: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 6 put: ((nodes at: 4) at: 1).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 7).
	result at: 8 put: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator3: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator4: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 7).
	result at: 6 put: ((nodes at: 5) at: 1).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 7).
	result at: 8 put: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator5: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 9 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator6: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 9 put: (nodes at: 4).
	result at: 6 put: ((nodes at: 5) at: 1).
	self addAll: ((nodes at: 5) at: 2) to: (result at: 7).
	result at: 8 put: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator7: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 9 put: (nodes at: 4).
	self addAll: (nodes at: 5) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator8: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 9 put: (nodes at: 4).
	self addAll: (nodes at: 5) to: (result at: 7).
	result at: 6 put: ((nodes at: 6) at: 1).
	self addAll: ((nodes at: 6) at: 2) to: (result at: 7).
	result at: 8 put: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdadeclarator9: nodes [
	| result |
	result := Array new: 10.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 10 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdaexpression1: nodes [
	| result |
	result := CPPLambdaExpressionNode new.
	result leftBracket: ((nodes at: 1) at: 1).
	result rightBracket: ((nodes at: 1) at: 2).
	result default: ((nodes at: 1) at: 3).
	result addNodes: ((nodes at: 1) at: 4) to: result captures.
	result addTokens: ((nodes at: 1) at: 5) to: result ellipsises.
	result addTokens: ((nodes at: 1) at: 6) to: result commas.
	result statement: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdaexpression2: nodes [
	| result |
	result := CPPLambdaExpressionNode new.
	result leftBracket: ((nodes at: 1) at: 1).
	result rightBracket: ((nodes at: 1) at: 2).
	result default: ((nodes at: 1) at: 3).
	result addNodes: ((nodes at: 1) at: 4) to: result captures.
	result addTokens: ((nodes at: 1) at: 5) to: result ellipsises.
	result addTokens: ((nodes at: 1) at: 6) to: result commas.
	result addToken: ((nodes at: 2) at: 1) to: result leftParens.
	result addToken: ((nodes at: 2) at: 2) to: result ellipsises.
	result addNodes: ((nodes at: 2) at: 3) to: result declarations.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result addToken: ((nodes at: 2) at: 5) to: result rightParens.
	result arrow: ((nodes at: 2) at: 6).
	result addNodes: ((nodes at: 2) at: 7) to: result specifiers.
	result declarator: ((nodes at: 2) at: 8).
	result exceptionSpecification: ((nodes at: 2) at: 9).
	result mutableToken: ((nodes at: 2) at: 10).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdaintroducer1: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlambdaintroducer2: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 3 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 6).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlinkagespecification1: nodes [
	| result |
	result := CPPLinkageSpecificationNode new.
	result externToken: (nodes at: 1).
	result language: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlinkagespecification2: nodes [
	| result |
	result := CPPLinkageSpecificationNode new.
	result externToken: (nodes at: 1).
	result language: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result declarations.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForlinkagespecification3: nodes [
	| result |
	result := CPPLinkageSpecificationNode new.
	result externToken: (nodes at: 1).
	result language: (nodes at: 2).
	result addNode: (nodes at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForliteral1: nodes [
	| result |
	result := CPPNumericLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForliteral2: nodes [
	| result |
	result := CPPCharacterLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForliteral4: nodes [
	| result |
	result := CPPStringLiteralNode new.
	result addTokens: (nodes at: 1) to: result values.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForliteral5: nodes [
	| result |
	result := CPPBooleanLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForliteral6: nodes [
	| result |
	result := CPPPointerLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForliteral7: nodes [
	| result |
	result := CPPUserDefinedLiteralNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForliteraloperatorid1: nodes [
	| result |
	result := CPPLiteralFunctionIdentifierNode new.
	result operatorToken: (nodes at: 1).
	result string: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForliteraloperatorid2: nodes [
	| result |
	result := CPPLiteralFunctionIdentifierNode new.
	result operatorToken: (nodes at: 1).
	result string: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclaration1: nodes [
	| result |
	result := CPPMemberDeclarationNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclaration2: nodes [
	| result |
	result := CPPMemberDeclarationNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result declarators.
	result addTokens: ((nodes at: 1) at: 2) to: result commas.
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclaration3: nodes [
	| result |
	result := CPPMemberDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclaration4: nodes [
	| result |
	result := CPPMemberDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: ((nodes at: 2) at: 1) to: result declarators.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclaration7: nodes [
	| result |
	result := CPPMemberDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclaration8: nodes [
	| result |
	result := CPPMemberDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result addNodes: ((nodes at: 3) at: 1) to: result declarators.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator10: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result name: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result specifiers.
	result colon: (nodes at: 3).
	result initializer: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator1: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result declarator: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator2: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result declarator: (nodes at: 1).
	result pureSpecifier: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator3: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result declarator: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result virtualSpecifierTokens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator4: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result declarator: (nodes at: 1).
	result addTokens: (nodes at: 2) to: result virtualSpecifierTokens.
	result pureSpecifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator6: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result declarator: (nodes at: 1).
	result initializer: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator7: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result colon: (nodes at: 1).
	result initializer: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator8: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result colon: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberdeclarator9: nodes [
	| result |
	result := CPPMemberDeclaratorNode new.
	result name: (nodes at: 1).
	result colon: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberspecification2: nodes [
	| result |
	result := nodes at: 2.
	self addFirst: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberspecification3: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 3).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormemberspecification4: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 3).
	self addFirst: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormeminitializer1: nodes [
	| result |
	result := CPPMemInitializerNode new.
	result identifier: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormeminitializer2: nodes [
	| result |
	result := CPPMemInitializerNode new.
	result identifier: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormeminitializer3: nodes [
	| result |
	result := CPPMemInitializerNode new.
	result identifier: (nodes at: 1).
	result initializer: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormeminitializerlist3: nodes [
	| result |
	result := nodes at: 3.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFormeminitializerlist4: nodes [
	| result |
	result := nodes at: 4.
	self addFirst: (nodes at: 1) to: (result at: 1).
	self addFirst: (nodes at: 2) to: (result at: 2).
	self addFirst: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornamespacealiasdefinition1: nodes [
	| result |
	result := CPPNamespaceAliasDefinitionNode new.
	result namespaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equal: (nodes at: 3).
	result namespaceName: ((nodes at: 4) at: 1).
	result nameSpecifier: ((nodes at: 4) at: 2).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornamespacebody1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornamespacebody2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornestednamespecifier1: nodes [
	| result |
	result := CPPNestedNameSpecifierNode new.
	result colonColon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornestednamespecifier2: nodes [
	| result |
	result := CPPNestedNameSpecifierNode new.
	result type: (nodes at: 1).
	result colonColon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornestednamespecifier4: nodes [
	| result |
	result := CPPNestedNameSpecifierNode new.
	result nameSpecifier: (nodes at: 1).
	result name: (nodes at: 2).
	result colonColon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornestednamespecifier5: nodes [
	| result |
	result := CPPNestedNameSpecifierNode new.
	result nameSpecifier: (nodes at: 1).
	result templateIdentifier: (nodes at: 2).
	result colonColon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornestednamespecifier6: nodes [
	| result |
	result := CPPNestedNameSpecifierNode new.
	result nameSpecifier: (nodes at: 1).
	result templateToken: (nodes at: 2).
	result templateIdentifier: (nodes at: 3).
	result colonColon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewdeclarator1: nodes [
	| result |
	result := CPPNewDeclaratorNode new.
	result addNode: (nodes at: 1) to: result ptrOperators.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewdeclarator3: nodes [
	| result |
	result := CPPNewDeclaratorNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result leftBrackets.
	result addNodes: ((nodes at: 1) at: 2) to: result expressions.
	result addTokens: ((nodes at: 1) at: 3) to: result rightBrackets.
	result addNodes: ((nodes at: 1) at: 4) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression10: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result newToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result type: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	result initializer: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression11: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result newToken: (nodes at: 1).
	result addToken: ((nodes at: 2) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 2) at: 2) to: result values.
	result addTokens: ((nodes at: 2) at: 3) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result addToken: ((nodes at: 2) at: 5) to: result rightParens.
	result addToken: (nodes at: 3) to: result leftParens.
	result type: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression12: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result newToken: (nodes at: 1).
	result addToken: ((nodes at: 2) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 2) at: 2) to: result values.
	result addTokens: ((nodes at: 2) at: 3) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result addToken: ((nodes at: 2) at: 5) to: result rightParens.
	result addToken: (nodes at: 3) to: result leftParens.
	result type: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	result initializer: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression13: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result colonColon: (nodes at: 1).
	result newToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result type: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression14: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result colonColon: (nodes at: 1).
	result newToken: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result type: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	result initializer: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression15: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result colonColon: (nodes at: 1).
	result newToken: (nodes at: 2).
	result addToken: ((nodes at: 3) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 3) at: 2) to: result values.
	result addTokens: ((nodes at: 3) at: 3) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 4) to: result commas.
	result addToken: ((nodes at: 3) at: 5) to: result rightParens.
	result addToken: (nodes at: 4) to: result leftParens.
	result type: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression16: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result colonColon: (nodes at: 1).
	result newToken: (nodes at: 2).
	result addToken: ((nodes at: 3) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 3) at: 2) to: result values.
	result addTokens: ((nodes at: 3) at: 3) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 4) to: result commas.
	result addToken: ((nodes at: 3) at: 5) to: result rightParens.
	result addToken: (nodes at: 4) to: result leftParens.
	result type: (nodes at: 5).
	result addToken: (nodes at: 6) to: result rightParens.
	result initializer: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression1: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression2: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression3: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result newToken: (nodes at: 1).
	result addToken: ((nodes at: 2) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 2) at: 2) to: result values.
	result addTokens: ((nodes at: 2) at: 3) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result addToken: ((nodes at: 2) at: 5) to: result rightParens.
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression4: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result newToken: (nodes at: 1).
	result addToken: ((nodes at: 2) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 2) at: 2) to: result values.
	result addTokens: ((nodes at: 2) at: 3) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result addToken: ((nodes at: 2) at: 5) to: result rightParens.
	result type: (nodes at: 3).
	result initializer: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression5: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result colonColon: (nodes at: 1).
	result newToken: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression6: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result colonColon: (nodes at: 1).
	result newToken: (nodes at: 2).
	result type: (nodes at: 3).
	result initializer: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression7: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result colonColon: (nodes at: 1).
	result newToken: (nodes at: 2).
	result addToken: ((nodes at: 3) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 3) at: 2) to: result values.
	result addTokens: ((nodes at: 3) at: 3) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 4) to: result commas.
	result addToken: ((nodes at: 3) at: 5) to: result rightParens.
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression8: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result colonColon: (nodes at: 1).
	result newToken: (nodes at: 2).
	result addToken: ((nodes at: 3) at: 1) to: result leftParens.
	result addNodes: ((nodes at: 3) at: 2) to: result values.
	result addTokens: ((nodes at: 3) at: 3) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 4) to: result commas.
	result addToken: ((nodes at: 3) at: 5) to: result rightParens.
	result type: (nodes at: 4).
	result initializer: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewexpression9: nodes [
	| result |
	result := CPPNewExpressionNode new.
	result newToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result type: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewinitializer1: nodes [
	| result |
	result := CPPNewInitializerNode new.
	result leftParen: (nodes at: 1).
	result rightParen: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewinitializer2: nodes [
	| result |
	result := CPPNewInitializerNode new.
	result leftParen: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewplacement1: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewtypeid1: nodes [
	| result |
	result := CPPNewTypeIdentifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornewtypeid2: nodes [
	| result |
	result := CPPNewTypeIdentifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoexceptexpression1: nodes [
	| result |
	result := CPPNoexceptExpressionNode new.
	result noexceptToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result expression: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoexceptspecification1: nodes [
	| result |
	result := CPPNoExceptionSpecificiationNode new.
	result noexceptToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoexceptspecification2: nodes [
	| result |
	result := CPPNoExceptionSpecificiationNode new.
	result noexceptToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator10: nodes [
	| result |
	result := Array new: 13.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 6).
	self add: (nodes at: 2) to: (result at: 8).
	self add: (nodes at: 3) to: (result at: 7).
	self addAll: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator11: nodes [
	| result |
	result := Array new: 13.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	result at: 9 put: (nodes at: 2).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator1: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 10).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 13).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 11).
	self add: ((nodes at: 2) at: 5) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 6) to: (result at: 3).
	self add: ((nodes at: 2) at: 7) to: (result at: 4).
	self add: ((nodes at: 2) at: 8) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 9) to: (result at: 12).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator2: nodes [
	| result |
	result := Array new: 13.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 10).
	self addAll: ((nodes at: 1) at: 3) to: (result at: 13).
	self addAll: ((nodes at: 1) at: 4) to: (result at: 11).
	self add: ((nodes at: 1) at: 5) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 6) to: (result at: 3).
	self add: ((nodes at: 1) at: 7) to: (result at: 4).
	self add: ((nodes at: 1) at: 8) to: (result at: 5).
	self addAll: ((nodes at: 1) at: 9) to: (result at: 12).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 6).
	self add: (nodes at: 3) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator4: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 6).
	self add: (nodes at: 3) to: (result at: 7).
	self addAll: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator5: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 6).
	self add: (nodes at: 3) to: (result at: 8).
	self add: (nodes at: 4) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator6: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 6).
	self add: (nodes at: 3) to: (result at: 8).
	self add: (nodes at: 4) to: (result at: 7).
	self addAll: (nodes at: 5) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator7: nodes [
	| result |
	result := Array new: 13.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 6).
	self add: (nodes at: 2) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator8: nodes [
	| result |
	result := Array new: 13.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 6).
	self add: (nodes at: 2) to: (result at: 7).
	self addAll: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractdeclarator9: nodes [
	| result |
	result := Array new: 13.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	result at: 13 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 6).
	self add: (nodes at: 2) to: (result at: 8).
	self add: (nodes at: 3) to: (result at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractpackdeclarator1: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 9).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 12).
	self addAll: ((nodes at: 2) at: 4) to: (result at: 10).
	self add: ((nodes at: 2) at: 5) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 6) to: (result at: 3).
	self add: ((nodes at: 2) at: 7) to: (result at: 4).
	self add: ((nodes at: 2) at: 8) to: (result at: 5).
	self addAll: ((nodes at: 2) at: 9) to: (result at: 11).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrabstractpackdeclarator6: nodes [
	| result |
	result := Array new: 12.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 7 put: (OrderedCollection new: 2).
	result at: 8 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 10 put: (OrderedCollection new: 2).
	result at: 11 put: (OrderedCollection new: 2).
	result at: 12 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrdeclarator1: nodes [
	| result |
	result := CPPDeclaratorNode new.
	result id: ((nodes at: 1) at: 1).
	result addToken: ((nodes at: 1) at: 2) to: result ellipsises.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrdeclarator2: nodes [
	| result |
	result := CPPDeclaratorNode new.
	result id: ((nodes at: 1) at: 1).
	result addToken: ((nodes at: 1) at: 2) to: result ellipsises.
	result addNodes: (nodes at: 2) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrdeclarator3: nodes [
	| result |
	result := nodes at: 1.
	result addToken: ((nodes at: 2) at: 1) to: result leftParens.
	result addToken: ((nodes at: 2) at: 2) to: result ellipsises.
	result addNodes: ((nodes at: 2) at: 3) to: result declarations.
	result addTokens: ((nodes at: 2) at: 4) to: result commas.
	result addToken: ((nodes at: 2) at: 5) to: result rightParens.
	result addNodes: ((nodes at: 2) at: 6) to: result specifiers.
	result
		addNode: ((nodes at: 2) at: 7)
		to: result exceptionSpecifications.
	result addToken: ((nodes at: 2) at: 8) to: result qualifiers.
	result addNodes: ((nodes at: 2) at: 9) to: result cvQualifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrdeclarator4: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result leftBrackets.
	result addToken: (nodes at: 3) to: result rightBrackets.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrdeclarator5: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result leftBrackets.
	result addToken: (nodes at: 3) to: result rightBrackets.
	result addNodes: (nodes at: 4) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrdeclarator6: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result leftBrackets.
	result addNode: (nodes at: 3) to: result expressions.
	result addToken: (nodes at: 4) to: result rightBrackets.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrdeclarator7: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result leftBrackets.
	result addNode: (nodes at: 3) to: result expressions.
	result addToken: (nodes at: 4) to: result rightBrackets.
	result addNodes: (nodes at: 5) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrdeclarator8: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrnewdeclarator1: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrnewdeclarator2: nodes [
	| result |
	result := Array new: 4.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 3).
	self addAll: (nodes at: 4) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrnewdeclarator3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFornoptrnewdeclarator4: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 1).
	self add: (nodes at: 3) to: (result at: 2).
	self add: (nodes at: 4) to: (result at: 3).
	self addAll: (nodes at: 5) to: (result at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForopaqueenumdeclaration1: nodes [
	| result |
	result := CPPOpaqueEnumDeclarationNode new.
	result enumToken: ((nodes at: 1) at: 1).
	result classToken: ((nodes at: 1) at: 2).
	result structToken: ((nodes at: 1) at: 3).
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForopaqueenumdeclaration2: nodes [
	| result |
	result := CPPOpaqueEnumDeclarationNode new.
	result enumToken: ((nodes at: 1) at: 1).
	result classToken: ((nodes at: 1) at: 2).
	result structToken: ((nodes at: 1) at: 3).
	result name: (nodes at: 2).
	result colon: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result specifiers.
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForopaqueenumdeclaration3: nodes [
	| result |
	result := CPPOpaqueEnumDeclarationNode new.
	result enumToken: ((nodes at: 1) at: 1).
	result classToken: ((nodes at: 1) at: 2).
	result structToken: ((nodes at: 1) at: 3).
	result addNodes: (nodes at: 2) to: result specifiers.
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForopaqueenumdeclaration4: nodes [
	| result |
	result := CPPOpaqueEnumDeclarationNode new.
	result enumToken: ((nodes at: 1) at: 1).
	result classToken: ((nodes at: 1) at: 2).
	result structToken: ((nodes at: 1) at: 3).
	result addNodes: (nodes at: 2) to: result specifiers.
	result name: (nodes at: 3).
	result colon: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result specifiers.
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForoperatorfunctionid1: nodes [
	| result |
	result := CPPOperatorFunctionIdentifierNode new.
	result operatorToken: (nodes at: 1).
	result name: ((nodes at: 2) at: 1).
	result leftBracket: ((nodes at: 2) at: 2).
	result rightBracket: ((nodes at: 2) at: 3).
	result leftParen: ((nodes at: 2) at: 4).
	result rightParen: ((nodes at: 2) at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFororiginalnamespacedefinition1: nodes [
	| result |
	result := CPPOriginalNamespaceDefinitionNode new.
	result namespaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result declarations.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFororiginalnamespacedefinition2: nodes [
	| result |
	result := CPPOriginalNamespaceDefinitionNode new.
	result inlineToken: (nodes at: 1).
	result namespaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: (nodes at: 4).
	result addNodes: (nodes at: 5) to: result declarations.
	result rightBrace: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclaration11: nodes [
	| result |
	result := CPPParameterDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result equal: (nodes at: 3).
	result initializer: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclaration1: nodes [
	| result |
	result := CPPParameterDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclaration2: nodes [
	| result |
	result := CPPParameterDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result declarator: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclaration3: nodes [
	| result |
	result := CPPParameterDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	result equal: (nodes at: 3).
	result initializer: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclaration4: nodes [
	| result |
	result := CPPParameterDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result declarator: (nodes at: 3).
	result equal: (nodes at: 4).
	result initializer: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclaration5: nodes [
	| result |
	result := CPPParameterDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclaration7: nodes [
	| result |
	result := CPPParameterDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclaration9: nodes [
	| result |
	result := CPPParameterDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result equal: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclarationclause1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclarationclause2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclarationclause3: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparameterdeclarationclause4: nodes [
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
CPPParser >> reduceActionForparameterdeclarationclause5: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self addAll: ((nodes at: 1) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 1) at: 2) to: (result at: 3).
	self add: (nodes at: 2) to: (result at: 3).
	result at: 1 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers10: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 9).
	self addAll: (nodes at: 5) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers11: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 9).
	result at: 7 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers12: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 9).
	result at: 7 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers13: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 9).
	result at: 8 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers14: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 9).
	result at: 8 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers15: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 9).
	result at: 8 put: (nodes at: 5).
	result at: 7 put: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers16: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 9).
	result at: 8 put: (nodes at: 5).
	result at: 7 put: (nodes at: 6).
	self addAll: (nodes at: 7) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers1: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers2: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers3: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 7 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers4: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 7 put: (nodes at: 4).
	self addAll: (nodes at: 5) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers5: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 8 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers6: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 8 put: (nodes at: 4).
	self addAll: (nodes at: 5) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers7: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 8 put: (nodes at: 4).
	result at: 7 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers8: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	result at: 8 put: (nodes at: 4).
	result at: 7 put: (nodes at: 5).
	self addAll: (nodes at: 6) to: (result at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForparametersandqualifiers9: nodes [
	| result |
	result := Array new: 9.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 9 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 3) to: (result at: 4).
	result at: 5 put: (nodes at: 3).
	self addAll: (nodes at: 4) to: (result at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpmexpression3: nodes [
	| result |
	result := CPPBinaryExpressionNode new.
	result addNode: (nodes at: 1) to: result lefts.
	result operator: (nodes at: 2).
	result right: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression10: nodes [
	| result |
	result := CPPBracedInitializerExpressionNode new.
	result typeSpecifier: (nodes at: 1).
	result initializerList: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression14: nodes [
	| result |
	result := CPPMemberExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 2).
	result id: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression15: nodes [
	| result |
	result := CPPMemberExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 2).
	result templateToken: (nodes at: 3).
	result id: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression18: nodes [
	| result |
	result := CPPPostfixExpressionNode new.
	result expression: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression23: nodes [
	| result |
	result := CPPConversionExpressionNode new.
	result castToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result type: (nodes at: 3).
	result gtToken: (nodes at: 4).
	result addToken: (nodes at: 5) to: result leftParens.
	result value: (nodes at: 6).
	result addToken: (nodes at: 7) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression24: nodes [
	| result |
	result := CPPTypeidExpressionNode new.
	result typeidToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result value: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression2: nodes [
	| result |
	result := CPPSubscriptExpressionNode new.
	result expression: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result subscript: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression4: nodes [
	| result |
	result := CPPCallExpressionNode new.
	result expression: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result addToken: (nodes at: 3) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpostfixexpression5: nodes [
	| result |
	result := CPPCallExpressionNode new.
	result expression: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result addNodes: ((nodes at: 3) at: 1) to: result values.
	result addTokens: ((nodes at: 3) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForprimaryexpression2: nodes [
	| result |
	result := CPPThisExpressionNode new.
	result thisToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpseudodestructorname1: nodes [
	| result |
	result := CPPPseudoDestructorNameNode new.
	result typeName: (nodes at: 1).
	result colonColon: (nodes at: 2).
	result tilde: (nodes at: 3).
	result name: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpseudodestructorname2: nodes [
	| result |
	result := CPPPseudoDestructorNameNode new.
	result nameSpecifier: (nodes at: 1).
	result typeName: (nodes at: 2).
	result colonColon: (nodes at: 3).
	result tilde: (nodes at: 4).
	result name: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpseudodestructorname3: nodes [
	| result |
	result := CPPPseudoDestructorNameNode new.
	result nameSpecifier: (nodes at: 1).
	result templateToken: (nodes at: 2).
	result templateIdentifier: (nodes at: 3).
	result colonColon: (nodes at: 4).
	result tilde: (nodes at: 5).
	result name: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpseudodestructorname4: nodes [
	| result |
	result := CPPPseudoDestructorNameNode new.
	result tilde: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpseudodestructorname5: nodes [
	| result |
	result := CPPPseudoDestructorNameNode new.
	result nameSpecifier: (nodes at: 1).
	result tilde: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpseudodestructorname6: nodes [
	| result |
	result := CPPPseudoDestructorNameNode new.
	result tilde: (nodes at: 1).
	result decltypeSpecifier: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptrabstractdeclarator1: nodes [
	| result |
	result := CPPPtrAbstractDeclaratorNode new.
	result addTokens: ((nodes at: 1) at: 1) to: result leftParens.
	result addTokens: ((nodes at: 1) at: 2) to: result rightParens.
	result addNodes: ((nodes at: 1) at: 3) to: result specifiers.
	result
		addNodes: ((nodes at: 1) at: 4)
		to: result exceptionSpecifications.
	result addTokens: ((nodes at: 1) at: 5) to: result qualifiers.
	result addTokens: ((nodes at: 1) at: 6) to: result leftBrackets.
	result addTokens: ((nodes at: 1) at: 7) to: result rightBrackets.
	result addNodes: ((nodes at: 1) at: 8) to: result expressions.
	result declarator: ((nodes at: 1) at: 9).
	result addTokens: ((nodes at: 1) at: 10) to: result ellipsises.
	result addTokens: ((nodes at: 1) at: 11) to: result commas.
	result addNodes: ((nodes at: 1) at: 12) to: result cvQualifiers.
	result addNodes: ((nodes at: 1) at: 13) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptrabstractdeclarator2: nodes [
	| result |
	result := CPPPtrAbstractDeclaratorNode new.
	result addNode: (nodes at: 1) to: result ptrOperators.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptrdeclarator2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNode: (nodes at: 1) to: result ptrOperators.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptroperator10: nodes [
	| result |
	result := CPPPointerOperatorNode new.
	result nameSpecifier: (nodes at: 1).
	result operator: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result cvQualifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptroperator11: nodes [
	| result |
	result := CPPPointerOperatorNode new.
	result nameSpecifier: (nodes at: 1).
	result operator: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptroperator12: nodes [
	| result |
	result := CPPPointerOperatorNode new.
	result nameSpecifier: (nodes at: 1).
	result operator: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result specifiers.
	result addNodes: (nodes at: 4) to: result cvQualifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptroperator2: nodes [
	| result |
	result := CPPPointerOperatorNode new.
	result operator: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result cvQualifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptroperator4: nodes [
	| result |
	result := CPPPointerOperatorNode new.
	result operator: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result specifiers.
	result addNodes: (nodes at: 3) to: result cvQualifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptroperator5: nodes [
	| result |
	result := CPPPointerOperatorNode new.
	result operator: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptroperator6: nodes [
	| result |
	result := CPPPointerOperatorNode new.
	result operator: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForptroperator9: nodes [
	| result |
	result := CPPPointerOperatorNode new.
	result nameSpecifier: (nodes at: 1).
	result operator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForpurespecifier1: nodes [
	| result |
	result := CPPEqualInitializerNode new.
	result equalToken: (nodes at: 1).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForqualifiedid1: nodes [
	| result |
	result := CPPQualifiedIdentifierNode new.
	result nameSpecifier: (nodes at: 1).
	result templateIdentifier: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForqualifiedid2: nodes [
	| result |
	result := CPPQualifiedIdentifierNode new.
	result nameSpecifier: (nodes at: 1).
	result templateToken: (nodes at: 2).
	result templateIdentifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForselectionstatement1: nodes [
	| result |
	result := CPPIfStatementNode new.
	result ifToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result condition: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result thenStatement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForselectionstatement2: nodes [
	| result |
	result := CPPIfStatementNode new.
	result ifToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result condition: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result thenStatement: (nodes at: 5).
	result elseToken: (nodes at: 6).
	result elseStatement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForselectionstatement3: nodes [
	| result |
	result := CPPSwitchStatementNode new.
	result switchToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result condition: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimplecapture2: nodes [
	| result |
	result := CPPCaptureNode new.
	result ampToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimplecapture3: nodes [
	| result |
	result := CPPCaptureNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpledeclaration1: nodes [
	| result |
	result := CPPSimpleDeclarationNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpledeclaration2: nodes [
	| result |
	result := CPPSimpleDeclarationNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result declarators.
	result addTokens: ((nodes at: 1) at: 2) to: result commas.
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpledeclaration3: nodes [
	| result |
	result := CPPSimpleDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpledeclaration4: nodes [
	| result |
	result := CPPSimpleDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: ((nodes at: 2) at: 1) to: result declarators.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpledeclaration6: nodes [
	| result |
	result := CPPSimpleDeclarationNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result addNodes: (nodes at: 2) to: result specifiers.
	result addNodes: ((nodes at: 3) at: 1) to: result declarators.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpletemplateid1: nodes [
	| result |
	result := CPPTemplateIdentifierNode new.
	result name: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result gtToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpletemplateid2: nodes [
	| result |
	result := CPPTemplateIdentifierNode new.
	result name: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result arguments.
	result addTokens: ((nodes at: 3) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result gtToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpletypespecifier17: nodes [
	| result |
	result := CPPAutoTypeNode new.
	result autoToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpletypespecifier1: nodes [
	| result |
	result := CPPClassTypeNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpletypespecifier2: nodes [
	| result |
	result := CPPClassTypeNode new.
	result nameSpecifier: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpletypespecifier3: nodes [
	| result |
	result := CPPTemplateTypeNode new.
	result nameSpecifier: (nodes at: 1).
	result templateToken: (nodes at: 2).
	result templateIdentifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpletypespecifier8: nodes [
	| result |
	result := CPPPrimitiveTypeNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForstatement2: nodes [
	| result |
	result := nodes at: 2.
	result addFirstNodes: (nodes at: 1) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForstatic_assertdeclaration1: nodes [
	| result |
	result := CPPStaticAssertDeclarationNode new.
	result static_assertToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result condition: (nodes at: 3).
	result comma: (nodes at: 4).
	result label: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortemplatedeclaration1: nodes [
	| result |
	result := CPPTemplateDeclarationNode new.
	result templateToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result gtToken: (nodes at: 4).
	result declaration: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortemplateid2: nodes [
	| result |
	result := CPPOperatorFunctionTemplateIdentifierNode new.
	result identifier: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result gtToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortemplateid3: nodes [
	| result |
	result := CPPOperatorFunctionTemplateIdentifierNode new.
	result identifier: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result arguments.
	result addTokens: ((nodes at: 3) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result gtToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortheoperator14: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortheoperator44: nodes [
	| result |
	result := Array new: 5.
	result at: 4 put: (nodes at: 1).
	result at: 5 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortheoperator45: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortheoperator4: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForthetypeid1: nodes [
	| result |
	result := CPPTypeIdentifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForthetypeid2: nodes [
	| result |
	result := CPPTypeIdentifierNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result declarator: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForthrowexpression1: nodes [
	| result |
	result := CPPThrowExpressionNode new.
	result throwToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForthrowexpression2: nodes [
	| result |
	result := CPPThrowExpressionNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortrailingreturntype1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortrailingreturntype2: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortranslationunit1: nodes [
	| result |
	result := CPPTranslationUnitNode new.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortranslationunit2: nodes [
	| result |
	result := CPPTranslationUnitNode new.
	result addNodes: (nodes at: 1) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypenamespecifier1: nodes [
	| result |
	result := CPPTypeNameSpecifierNode new.
	result typenameToken: (nodes at: 1).
	result nameSpecifier: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypenamespecifier2: nodes [
	| result |
	result := CPPTypeNameSpecifierNode new.
	result typenameToken: (nodes at: 1).
	result nameSpecifier: (nodes at: 2).
	result templateIdentifier: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypenamespecifier3: nodes [
	| result |
	result := CPPTypeNameSpecifierNode new.
	result typenameToken: (nodes at: 1).
	result nameSpecifier: (nodes at: 2).
	result templateToken: (nodes at: 3).
	result templateIdentifier: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter10: nodes [
	| result |
	result := CPPTypenameTypeParameterNode new.
	result typenameToken: (nodes at: 1).
	result ellipsis: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter11: nodes [
	| result |
	result := CPPTypenameTypeParameterNode new.
	result typenameToken: (nodes at: 1).
	result equal: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter12: nodes [
	| result |
	result := CPPTypenameTypeParameterNode new.
	result typenameToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equal: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter13: nodes [
	| result |
	result := CPPTemplateTypeParameterNode new.
	result templateToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result gtToken: (nodes at: 4).
	result classToken: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter14: nodes [
	| result |
	result := CPPTemplateTypeParameterNode new.
	result templateToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result gtToken: (nodes at: 4).
	result classToken: (nodes at: 5).
	result name: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter15: nodes [
	| result |
	result := CPPTemplateTypeParameterNode new.
	result templateToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result gtToken: (nodes at: 4).
	result classToken: (nodes at: 5).
	result ellipsis: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter16: nodes [
	| result |
	result := CPPTemplateTypeParameterNode new.
	result templateToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result gtToken: (nodes at: 4).
	result classToken: (nodes at: 5).
	result ellipsis: (nodes at: 6).
	result name: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter17: nodes [
	| result |
	result := CPPTemplateTypeParameterNode new.
	result templateToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result gtToken: (nodes at: 4).
	result classToken: (nodes at: 5).
	result equal: (nodes at: 6).
	result id: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter18: nodes [
	| result |
	result := CPPTemplateTypeParameterNode new.
	result templateToken: (nodes at: 1).
	result ltToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result gtToken: (nodes at: 4).
	result classToken: (nodes at: 5).
	result name: (nodes at: 6).
	result equal: (nodes at: 7).
	result id: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter1: nodes [
	| result |
	result := CPPClassTypeParameterNode new.
	result classToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter2: nodes [
	| result |
	result := CPPClassTypeParameterNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter3: nodes [
	| result |
	result := CPPClassTypeParameterNode new.
	result classToken: (nodes at: 1).
	result ellipsis: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter4: nodes [
	| result |
	result := CPPClassTypeParameterNode new.
	result classToken: (nodes at: 1).
	result ellipsis: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter5: nodes [
	| result |
	result := CPPClassTypeParameterNode new.
	result classToken: (nodes at: 1).
	result equal: (nodes at: 2).
	result type: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter6: nodes [
	| result |
	result := CPPClassTypeParameterNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result equal: (nodes at: 3).
	result type: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter7: nodes [
	| result |
	result := CPPTypenameTypeParameterNode new.
	result typenameToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter8: nodes [
	| result |
	result := CPPTypenameTypeParameterNode new.
	result typenameToken: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortypeparameter9: nodes [
	| result |
	result := CPPTypenameTypeParameterNode new.
	result typenameToken: (nodes at: 1).
	result ellipsis: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunaryexpression2: nodes [
	| result |
	result := CPPPrefixExpressionNode new.
	result operator: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunaryexpression5: nodes [
	| result |
	result := CPPSizeofExpressionNode new.
	result sizeofToken: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunaryexpression6: nodes [
	| result |
	result := CPPSizeofExpressionNode new.
	result sizeofToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result type: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunaryexpression7: nodes [
	| result |
	result := CPPSizeofExpressionNode new.
	result sizeofToken: (nodes at: 1).
	result ellipsis: (nodes at: 2).
	result addToken: (nodes at: 3) to: result leftParens.
	result name: (nodes at: 4).
	result addToken: (nodes at: 5) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunaryexpression8: nodes [
	| result |
	result := CPPAlignofExpressionNode new.
	result alignofToken: (nodes at: 1).
	result addToken: (nodes at: 2) to: result leftParens.
	result type: (nodes at: 3).
	result addToken: (nodes at: 4) to: result rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunnamednamespacedefinition1: nodes [
	| result |
	result := CPPUnnamedNamespaceDefinitionNode new.
	result namespaceToken: (nodes at: 1).
	result leftBrace: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result declarations.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunnamednamespacedefinition2: nodes [
	| result |
	result := CPPUnnamedNamespaceDefinitionNode new.
	result inlineToken: (nodes at: 1).
	result namespaceToken: (nodes at: 2).
	result leftBrace: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result declarations.
	result rightBrace: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunqualifiedid1: nodes [
	| result |
	result := CPPIdentifierNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForunqualifiedid6: nodes [
	| result |
	result := CPPDestructorIdentifierNode new.
	result tilde: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForusingdeclaration1: nodes [
	| result |
	result := CPPUsingDeclarationNode new.
	result usingToken: (nodes at: 1).
	result nameSpecifier: (nodes at: 2).
	result identifier: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForusingdeclaration2: nodes [
	| result |
	result := CPPUsingDeclarationNode new.
	result usingToken: (nodes at: 1).
	result typenameToken: (nodes at: 2).
	result nameSpecifier: (nodes at: 3).
	result identifier: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForusingdeclaration3: nodes [
	| result |
	result := CPPUsingDeclarationNode new.
	result usingToken: (nodes at: 1).
	result colonColon: (nodes at: 2).
	result identifier: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForusingdirective1: nodes [
	| result |
	result := CPPUsingDirectiveNode new.
	result usingToken: (nodes at: 1).
	result namespaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForusingdirective2: nodes [
	| result |
	result := CPPUsingDirectiveNode new.
	result usingToken: (nodes at: 1).
	result namespaceToken: (nodes at: 2).
	result nameSpecifier: (nodes at: 3).
	result name: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForusingdirective3: nodes [
	| result |
	result := CPPUsingDirectiveNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result usingToken: (nodes at: 2).
	result namespaceToken: (nodes at: 3).
	result name: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForusingdirective4: nodes [
	| result |
	result := CPPUsingDirectiveNode new.
	result addNodes: (nodes at: 1) to: result specifiers.
	result usingToken: (nodes at: 2).
	result namespaceToken: (nodes at: 3).
	result nameSpecifier: (nodes at: 4).
	result name: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]
