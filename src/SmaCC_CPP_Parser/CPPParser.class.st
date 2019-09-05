Class {
	#name : #CPPParser,
	#superclass : #SmaCCGLRParser,
	#category : #'SmaCC_CPP_Parser-C++ Parser'
}

{ #category : #generated }
CPPParser class >> ambiguousTransitions [
^#(
#[ 0 10 0 45] 
#[ 0 10 0 53] 
#[ 0 14 0 45] 
#[ 0 14 0 53] 
#[ 0 18 0 45] 
#[ 0 18 0 53] 
#[ 0 37 0 66] 
#[ 0 66 0 93] 
#[ 0 66 3 221] 
#[ 0 154 0 158] 
#[ 0 154 0 162] 
#[ 0 37 0 206] 
#[ 0 45 0 206] 
#[ 0 53 0 206] 
#[ 0 93 0 206] 
#[ 0 206 3 185] 
#[ 0 230 5 29] 
#[ 0 234 5 33] 
#[ 1 54 5 157] 
#[ 0 45 1 62] 
#[ 1 86 5 213] 
#[ 1 90 5 217] 
#[ 1 98 1 102] 
#[ 0 10 1 126] 
#[ 0 45 1 126] 
#[ 0 18 1 130] 
#[ 0 45 1 130] 
#[ 0 26 1 142] 
#[ 0 93 1 154] 
#[ 1 154 3 185] 
#[ 0 166 1 218] 
#[ 2 10 7 33] 
#[ 0 226 7 133] 
#[ 1 110 7 181] 
#[ 0 45 2 106] 
#[ 0 53 2 106] 
#[ 0 45 2 110] 
#[ 0 53 2 110] 
#[ 0 45 2 114] 
#[ 0 53 2 114] 
#[ 0 158 0 162] 
#[ 0 158 2 150] 
#[ 0 162 2 150] 
#[ 3 42 8 73] 
#[ 3 46 8 77] 
#[ 0 37 3 74] 
#[ 0 45 3 74] 
#[ 0 53 3 74] 
#[ 0 93 3 74] 
#[ 3 74 3 185] 
#[ 0 17 3 78] 
#[ 0 21 3 78] 
#[ 0 29 3 78] 
#[ 0 22 0 49] 
#[ 0 22 0 141] 
#[ 0 22 8 181] 
#[ 0 45 3 94] 
#[ 0 53 3 94] 
#[ 0 158 8 241] 
#[ 1 102 8 245] 
#[ 0 45 3 114] 
#[ 0 53 3 114] 
#[ 0 45 3 202] 
#[ 0 158 3 206] 
#[ 0 162 3 206] 
#[ 1 102 3 226] 
#[ 3 230 10 165] 
#[ 0 17 4 54] 
#[ 0 21 4 54] 
#[ 0 29 4 54] 
#[ 4 214 8 241] 
#[ 0 162 4 214] 
#[ 0 45 4 246] 
#[ 0 53 4 246] 
#[ 0 17 4 250] 
#[ 0 21 4 250] 
#[ 0 29 4 250] 
#[ 0 50 12 241] 
#[ 5 10 13 13] 
#[ 5 26 8 241] 
#[ 0 162 5 26] 
#[ 5 30 8 245] 
#[ 0 45 5 42] 
#[ 0 53 5 42] 
#[ 1 98 5 54] 
#[ 5 54 13 85] 
#[ 0 158 5 142] 
#[ 4 26 5 170] 
#[ 2 42 5 126] 
#[ 0 45 5 198] 
#[ 0 154 0 158 13 253] 
#[ 0 45 0 154 0 158] 
#[ 0 53 0 154 0 158] 
#[ 0 158 6 18] 
#[ 6 18 8 241] 
#[ 0 162 6 18] 
#[ 1 102 6 26] 
#[ 6 26 8 245] 
#[ 0 158 6 30] 
#[ 0 162 6 30] 
#[ 1 218 6 58] 
#[ 6 94 10 161] 
#[ 6 94 10 165] 
#[ 5 157 6 106] 
#[ 5 157 6 114] 
#[ 3 101 3 250] 
#[ 0 17 6 190] 
#[ 0 21 6 190] 
#[ 0 29 6 190] 
#[ 7 30 7 33] 
#[ 7 33 7 34] 
#[ 7 90 15 209] 
#[ 7 90 15 213] 
#[ 7 90 15 217] 
#[ 6 94 13 13] 
#[ 7 170 13 13] 
#[ 7 174 13 85] 
#[ 0 45 8 18] 
#[ 0 45 8 26] 
#[ 0 45 8 30] 
#[ 0 37 8 34] 
#[ 0 45 8 34] 
#[ 0 93 8 34] 
#[ 3 185 8 34] 
#[ 8 38 10 161] 
#[ 8 38 10 165] 
#[ 1 34 3 146] 
#[ 8 98 13 85] 
#[ 0 158 8 102] 
#[ 8 102 8 241] 
#[ 0 162 8 102] 
#[ 0 45 8 134] 
#[ 2 134 8 242] 
#[ 1 70 2 138] 
#[ 3 122 18 33] 
#[ 9 174 18 125] 
#[ 0 45 9 178] 
#[ 0 45 9 182] 
#[ 0 45 9 186] 
#[ 0 45 9 190] 
#[ 0 45 9 210] 
#[ 0 45 9 218] 
#[ 8 42 9 234] 
#[ 2 130 6 5] 
#[ 0 45 10 42] 
#[ 0 45 10 46] 
#[ 0 45 10 50] 
#[ 0 45 10 58] 
#[ 10 90 19 17] 
#[ 0 45 10 110] 
#[ 0 45 10 214] 
#[ 0 45 10 218] 
#[ 0 45 10 222] 
#[ 0 45 10 226] 
#[ 0 45 10 230] 
#[ 0 45 10 234] 
#[ 4 194 5 93] 
#[ 4 2 4 194] 
#[ 0 45 11 6] 
#[ 0 45 11 10] 
#[ 0 45 11 14] 
#[ 0 45 11 18] 
#[ 0 45 11 22] 
#[ 0 45 11 50] 
#[ 0 45 11 54] 
#[ 7 194 20 5] 
#[ 0 45 11 134] 
#[ 0 45 11 138] 
#[ 0 45 11 142] 
#[ 0 45 11 146] 
#[ 0 45 11 150] 
#[ 0 45 11 154] 
#[ 0 45 11 194] 
#[ 0 45 12 2]
	).
]

{ #category : #'generated-accessing' }
CPPParser class >> cacheId [
	^'2019-09-05T16:02:45.786813-05:00'
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

%start statement expression;

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
   | exclusiveorexpression 'left' ""^"" 'operator' andexpression 'right' {{BinaryExpression}}
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
#   | extensionnamespacedefinition	# handled by the previous rule
   ;

originalnamespacedefinition
   : <Inline> 'inlineToken'? <Namespace> 'namespaceToken' fullnamespacename ""{"" 'leftBrace' namespacebody ""}"" 'rightBrace' {{OriginalNamespaceDefinition}}
   ;
fullnamespacename
	: <Identifier> 'name'
	| fullnamespacename ""::"" 'colonColon' <Identifier> 'name'
	;

#extensionnamespacedefinition
#   : <Inline> 'inlineToken'? <Namespace> 'namespaceToken' originalnamespacename 'name' ""{"" 'leftBrace' namespacebody ""}"" 'rightBrace' {{ExtensionNamespaceDefinition}}
#   ;

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
	;

<patternToken>
	: (\`  [^\`]* \`)+
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
	#(143 0 #reduceActionFortranslationunit1: 2939905 false ) 
	#(262 1 #reduceActionForptroperator5: 27497477 false ) 
	#(262 1 #reduceActionForptroperator5: 27497479 false ) 
	#(262 1 #reduceActionForptroperator5: 27497473 false ) 
	#(148 1 #reduceActionFornestednamespecifier1: 3776513 false ) 
	#(207 1 #reduceActionForsimpledeclaration1: 18044929 false ) 
	#(218 1 #reduceActionForsimpletypespecifier17: 19740689 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740680 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740676 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740677 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740678 false ) 
	#(288 1 #reduceActionForclasskey1: 31725569 false ) 
	#(264 1 #reduceActionForcvqualifier1: 27914241 false ) 
	#(210 1 #reduceActionFordeclspecifier6: 18624518 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740687 false ) 
	#(225 1 #reduceActionForclasskey1: 21935105 false ) 
	#(213 1 #liftFirstValue: 19128323 false ) 
	#(212 1 #liftFirstValue: 19018756 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740686 false ) 
	#(210 1 #reduceActionFordeclspecifier6: 18624516 false ) 
	#(213 1 #liftFirstValue: 19128321 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740682 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740683 false ) 
	#(212 1 #liftFirstValue: 19018757 false ) 
	#(212 1 #liftFirstValue: 19018753 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740681 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740684 false ) 
	#(212 1 #liftFirstValue: 19018754 false ) 
	#(288 1 #reduceActionForclasskey2: 31725570 false ) 
	#(212 1 #liftFirstValue: 19018755 false ) 
	#(210 1 #reduceActionFordeclspecifier6: 18624517 false ) 
	#(288 1 #reduceActionForclasskey3: 31725571 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740685 false ) 
	#(213 1 #liftFirstValue: 19128322 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740688 false ) 
	#(264 1 #reduceActionForcvqualifier1: 27914242 false ) 
	#(218 1 #reduceActionForsimpletypespecifier8: 19740679 false ) 
	#(146 1 #reduceActionForunqualifiedid1: 3345409 false ) 
	#(283 1 #reduceActionForunqualifiedid1: 31249409 false ) 
	#(318 1 #liftFirstValue: 36848641 false ) 
	#(266 1 #reduceActionFordeclaratorid1: 28048385 false ) 
	#(145 1 #reduceActionForidexpression1: 3211265 false ) 
	#(145 1 #reduceActionForidexpression1: 3211266 false ) 
	#(143 1 #reduceActionFortranslationunit2: 2939906 false ) 
	#(203 1 #reduceActionFordeclarationseq1: 17270785 false ) 
	#(204 1 #liftFirstValue: 17371137 false ) 
	#(205 1 #liftFirstValue: 17661959 false ) 
	#(205 1 #liftFirstValue: 17661953 false ) 
	#(205 1 #liftFirstValue: 17661958 false ) 
	#(204 1 #liftFirstValue: 17371144 false ) 
	#(211 1 #reduceActionFordeclarationseq1: 18890753 false ) 
	#(210 1 #reduceActionFordeclspecifier6: 18624513 false ) 
	#(210 1 #reduceActionFordeclspecifier6: 18624515 false ) 
	#(210 1 #liftFirstValue: 18624514 false ) 
	#(214 1 #liftFirstValue: 19238913 false ) 
	#(215 1 #liftFirstValue: 19326977 false ) 
	#(218 1 #reduceActionForsimpletypespecifier1: 19740673 false ) 
	#(218 1 #liftFirstValue: 19740690 false ) 
	#(215 1 #liftFirstValue: 19326978 false ) 
	#(214 1 #liftFirstValue: 19238915 false ) 
	#(205 1 #liftFirstValue: 17661960 false ) 
	#(223 1 #reduceActionForenumhead1: 21607425 false ) 
	#(204 1 #liftFirstValue: 17371143 false ) 
	#(232 1 #liftFirstValue: 22611969 false ) 
	#(233 1 #liftFirstValue: 22702081 false ) 
	#(232 1 #liftFirstValue: 22611970 false ) 
	#(205 1 #liftFirstValue: 17661955 false ) 
	#(205 1 #liftFirstValue: 17661956 false ) 
	#(205 1 #liftFirstValue: 17661957 false ) 
	#(205 1 #liftFirstValue: 17661954 false ) 
	#(204 1 #liftFirstValue: 17371142 false ) 
	#(244 1 #reduceActionFordeclarationseq1: 24797185 false ) 
	#(245 1 #liftFirstValue: 24922114 false ) 
	#(255 1 #reduceActionForinitdeclaratorlist1: 26393601 false ) 
	#(256 1 #reduceActionForinitdeclarator1: 26518529 false ) 
	#(257 1 #liftFirstValue: 26616833 false ) 
	#(258 1 #liftFirstValue: 26734593 false ) 
	#(215 1 #liftFirstValue: 19326980 false ) 
	#(259 1 #reduceActionFornoptrdeclarator1: 26838017 false ) 
	#(204 1 #liftFirstValue: 17371138 false ) 
	#(219 1 #liftFirstValue: 20538369 false ) 
	#(214 1 #liftFirstValue: 19238914 false ) 
	#(285 1 #reduceActionForclasshead9: 31440905 false ) 
	#(146 1 #liftFirstValue: 3345411 false ) 
	#(146 1 #liftFirstValue: 3345410 false ) 
	#(146 1 #liftFirstValue: 3345412 false ) 
	#(204 1 #liftFirstValue: 17371139 false ) 
	#(317 1 #liftFirstValue: 36549633 false ) 
	#(283 1 #liftFirstValue: 31249410 false ) 
	#(146 1 #liftFirstValue: 3345415 false ) 
	#(215 1 #liftFirstValue: 19326979 false ) 
	#(204 1 #liftFirstValue: 17371140 false ) 
	#(204 1 #liftFirstValue: 17371141 false ) 
	#(163 1 #liftFirstValue: 9069573 false ) 
	#(163 1 #liftFirstValue: 9069571 false ) 
	#(163 1 #liftFirstValue: 9069570 false ) 
	#(163 1 #liftFirstValue: 9069572 false ) 
	#(163 1 #liftFirstValue: 9069575 false ) 
	#(192 1 #reduceActionForexpressionstatement1: 14823425 false ) 
	#(163 1 #liftFirstValue: 9069576 false ) 
	#(163 1 #liftFirstValue: 9069569 false ) 
	#(163 1 #liftFirstValue: 9069574 false ) 
	#(337 1 #liftFirstValue: 45650945 false ) 
	#(338 1 #liftFirstValue: 45698049 false ) 
	#(144 1 #reduceActionForprimaryexpression2: 3022850 false ) 
	#(329 1 #reduceActionForthrowexpression1: 38468609 false ) 
	#(337 1 #liftFirstValue: 45650946 false ) 
	#(159 1 #liftFirstValue: 7691265 false ) 
	#(335 1 #reduceActionForliteral1: 43006977 false ) 
	#(335 1 #reduceActionForliteral2: 43006978 false ) 
	#(335 1 #reduceActionForliteral1: 43006979 false ) 
	#(336 1 #reduceActionFordeclarationseq1: 43175937 false ) 
	#(339 1 #liftFirstValue: 45735937 false ) 
	#(339 1 #liftFirstValue: 45735938 false ) 
	#(339 1 #liftFirstValue: 45735939 false ) 
	#(339 1 #liftFirstValue: 45735940 false ) 
	#(158 1 #liftFirstValue: 5429249 false ) 
	#(144 1 #liftFirstValue: 3022852 false ) 
	#(144 1 #liftFirstValue: 3022853 false ) 
	#(162 1 #liftFirstValue: 8325121 false ) 
	#(172 1 #liftFirstValue: 10509313 false ) 
	#(162 1 #liftFirstValue: 8325130 false ) 
	#(162 1 #liftFirstValue: 8325131 false ) 
	#(162 1 #liftFirstValue: 8325129 false ) 
	#(173 1 #liftFirstValue: 10656769 false ) 
	#(174 1 #liftFirstValue: 10871809 false ) 
	#(175 1 #liftFirstValue: 11210753 false ) 
	#(176 1 #liftFirstValue: 11471873 false ) 
	#(178 1 #liftFirstValue: 11676673 false ) 
	#(179 1 #liftFirstValue: 12113921 false ) 
	#(180 1 #liftFirstValue: 12364801 false ) 
	#(181 1 #liftFirstValue: 12500993 false ) 
	#(182 1 #liftFirstValue: 12643329 false ) 
	#(183 1 #liftFirstValue: 12802049 false ) 
	#(184 1 #liftFirstValue: 13063169 false ) 
	#(185 1 #liftFirstValue: 13317121 false ) 
	#(186 1 #liftFirstValue: 13544449 false ) 
	#(188 1 #liftFirstValue: 13906945 false ) 
	#(190 1 #reduceActionForstatement1: 14106625 false ) 
	#(190 1 #reduceActionForstatement1: 14106627 false ) 
	#(190 1 #reduceActionForstatement1: 14106629 false ) 
	#(190 1 #reduceActionForstatement1: 14106631 false ) 
	#(190 1 #reduceActionForstatement1: 14106633 false ) 
	#(190 1 #reduceActionForstatement1: 14106635 false ) 
	#(190 1 #liftFirstValue: 14106637 false ) 
	#(202 1 #liftFirstValue: 17202177 false ) 
	#(190 1 #reduceActionForstatement1: 14106638 false ) 
	#(186 1 #liftFirstValue: 13544451 false ) 
	#(144 1 #liftFirstValue: 3022849 false ) 
	#(335 1 #reduceActionForliteral4: 43006980 false ) 
	#(335 1 #reduceActionForliteral5: 43006981 false ) 
	#(335 1 #reduceActionForliteral6: 43006982 false ) 
	#(335 1 #reduceActionForliteral7: 43006983 false ) 
	#(262 2 #reduceActionForptroperator6: 27497478 false ) 
	#(262 2 #reduceActionForptroperator6: 27497480 false ) 
	#(262 2 #reduceActionForptroperator6: 27497475 false ) 
	#(262 2 #reduceActionForptroperator2: 27497474 false ) 
	#(263 1 #reduceActionFordeclarationseq1: 27844609 false ) 
	#(266 2 #reduceActionFordeclaratorid2: 28048386 false ) 
	#(247 0 #reduceActionForattributelist1: 25375745 false ) 
	#(146 2 #reduceActionForunqualifiedid6: 3345414 false ) 
	#(146 2 #reduceActionForunqualifiedid6: 3345413 false ) 
	#(225 2 #reduceActionForenumkey2: 21935106 false ) 
	#(225 2 #reduceActionForenumkey3: 21935107 false ) 
	#(221 2 #reduceActionForelaboratedtypespecifier8: 20876296 false ) 
	#(237 0 #reduceActionFornamespacebody1: 23517185 false ) 
	#(235 1 #reduceActionForinitdeclaratorlist1: 23027713 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540622 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540640 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540617 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540631 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540619 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540643 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540633 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540615 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540629 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540613 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540647 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540627 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540649 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540614 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540648 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540628 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540651 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540650 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540616 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540630 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540625 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540641 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540624 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540639 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540642 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540618 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540632 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540644 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540623 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540646 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540620 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540634 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540645 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540621 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540610 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540609 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540635 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540626 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540636 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540638 false ) 
	#(334 1 #reduceActionFortheoperator14: 41540637 false ) 
	#(311 2 #reduceActionForliteraloperatorid2: 35023874 false ) 
	#(216 1 #reduceActionFordeclarationseq1: 19451905 false ) 
	#(304 1 #reduceActionForconversiontypeid1: 34162689 false ) 
	#(303 2 #reduceActionForconversionfunctionid1: 34051073 false ) 
	#(310 2 #reduceActionForoperatorfunctionid1: 34921473 false ) 
	#(322 2 #reduceActionForexplicitinstantiation1: 37433345 false ) 
	#(262 2 #reduceActionForptroperator9: 27497481 false ) 
	#(147 2 #reduceActionForqualifiedid1: 3627009 false ) 
	#(218 2 #reduceActionForsimpletypespecifier2: 19740674 false ) 
	#(203 2 #reduceActionFordeclarationseq2: 17270786 false ) 
	#(211 2 #reduceActionFordeclspecifierseq3: 18890755 false ) 
	#(211 2 #reduceActionFordeclspecifierseq3: 18890754 false ) 
	#(207 2 #reduceActionForsimpledeclaration3: 18044931 false ) 
	#(148 2 #reduceActionFornestednamespecifier2: 3776514 false ) 
	#(148 2 #reduceActionFornestednamespecifier2: 3776515 false ) 
	#(223 2 #reduceActionForenumhead3: 21607427 false ) 
	#(223 2 #reduceActionForenumhead2: 21607426 false ) 
	#(223 2 #reduceActionForenumhead5: 21607429 false ) 
	#(209 2 #reduceActionForattributedeclaration1: 18527233 false ) 
	#(244 2 #reduceActionFordeclarationseq2: 24797186 false ) 
	#(207 2 #reduceActionForsimpledeclaration2: 18044930 false ) 
	#(294 1 #liftFirstValue: 32868354 false ) 
	#(294 1 #liftFirstValue: 32868353 false ) 
	#(277 1 #reduceActionForfunctionbody1: 30352385 false ) 
	#(276 2 #reduceActionForfunctiondefinition1: 30199809 false ) 
	#(256 2 #reduceActionForinitdeclarator2: 26518530 false ) 
	#(278 1 #liftFirstValue: 30580737 false ) 
	#(279 1 #liftFirstValue: 30713858 false ) 
	#(293 1 #reduceActionFordeclarationseq1: 32739329 false ) 
	#(277 1 #reduceActionForfunctionbody1: 30352387 false ) 
	#(273 0 #reduceActionForparameterdeclarationclause1: 29382657 false ) 
	#(259 2 #reduceActionFornoptrdeclarator3: 26838019 false ) 
	#(258 2 #reduceActionForptrdeclarator2: 26734594 false ) 
	#(259 2 #reduceActionFornoptrdeclarator2: 26838018 false ) 
	#(221 2 #reduceActionForelaboratedtypespecifier1: 20876289 false ) 
	#(285 2 #reduceActionForclasshead11: 31440907 false ) 
	#(286 1 #reduceActionFordeclaratorid1: 31592449 false ) 
	#(285 2 #reduceActionForclasshead1: 31440897 false ) 
	#(285 2 #reduceActionForclasshead10: 31440906 false ) 
	#(221 2 #reduceActionForelaboratedtypespecifier5: 20876293 false ) 
	#(267 1 #reduceActionForthetypeid1: 28109825 false ) 
	#(162 2 #reduceActionForunaryexpression2: 8325122 false ) 
	#(162 2 #reduceActionForunaryexpression2: 8325123 false ) 
	#(152 1 #liftFirstValue: 4651009 false ) 
	#(152 1 #liftFirstValue: 4651010 false ) 
	#(150 2 #reduceActionForlambdaintroducer1: 4465665 false ) 
	#(155 1 #reduceActionForsimplecapture3: 4889603 false ) 
	#(155 1 #reduceActionForsimplecapture3: 4889601 false ) 
	#(151 1 #reduceActionForlambdacapture1: 4547585 false ) 
	#(151 1 #reduceActionForlambdacapture2: 4547586 false ) 
	#(153 1 #reduceActionForcapturelist1: 4711425 false ) 
	#(154 1 #liftFirstValue: 4838401 false ) 
	#(154 1 #liftFirstValue: 4838402 false ) 
	#(193 2 #reduceActionForcompoundstatement1: 14922753 false ) 
	#(194 1 #reduceActionFordeclarationseq1: 15023105 false ) 
	#(201 2 #reduceActionForjumpstatement1: 16790529 false ) 
	#(189 1 #liftFirstValue: 14036993 false ) 
	#(201 2 #reduceActionForjumpstatement2: 16790530 false ) 
	#(170 2 #reduceActionFordeleteexpression1: 10110977 false ) 
	#(164 2 #reduceActionFornewexpression1: 9165825 false ) 
	#(166 1 #reduceActionFornewtypeid1: 9539585 false ) 
	#(201 2 #reduceActionForjumpstatement3: 16790531 false ) 
	#(162 2 #reduceActionForunaryexpression5: 8325125 false ) 
	#(329 2 #reduceActionForthrowexpression2: 38468610 false ) 
	#(149 2 #reduceActionForlambdaexpression1: 4348929 false ) 
	#(158 2 #reduceActionForpostfixexpression18: 5429266 false ) 
	#(158 2 #reduceActionForpostfixexpression18: 5429267 false ) 
	#(162 2 #reduceActionForunaryexpression2: 8325124 false ) 
	#(177 1 #liftFirstValue: 11623426 false ) 
	#(177 1 #liftFirstValue: 11623425 false ) 
	#(187 1 #liftFirstValue: 13742084 false ) 
	#(187 1 #liftFirstValue: 13742089 false ) 
	#(187 1 #liftFirstValue: 13742082 false ) 
	#(187 1 #liftFirstValue: 13742085 false ) 
	#(187 1 #liftFirstValue: 13742086 false ) 
	#(187 1 #liftFirstValue: 13742083 false ) 
	#(187 1 #liftFirstValue: 13742081 false ) 
	#(187 1 #liftFirstValue: 13742090 false ) 
	#(187 1 #liftFirstValue: 13742091 false ) 
	#(187 1 #liftFirstValue: 13742088 false ) 
	#(187 1 #liftFirstValue: 13742087 false ) 
	#(192 2 #reduceActionForexpressionstatement2: 14823426 false ) 
	#(158 2 #reduceActionForpostfixexpression10: 5429258 false ) 
	#(190 2 #reduceActionForstatement2: 14106626 false ) 
	#(190 2 #reduceActionForstatement2: 14106628 false ) 
	#(190 2 #reduceActionForstatement2: 14106630 false ) 
	#(190 2 #reduceActionForstatement2: 14106632 false ) 
	#(190 2 #reduceActionForstatement2: 14106634 false ) 
	#(190 2 #reduceActionForstatement2: 14106636 false ) 
	#(190 2 #reduceActionForstatement2: 14106639 false ) 
	#(158 2 #reduceActionForpostfixexpression10: 5429259 false ) 
	#(336 2 #reduceActionFordeclarationseq2: 43175938 false ) 
	#(259 3 #reduceActionFornoptrdeclarator8: 26838024 false ) 
	#(262 3 #reduceActionForptroperator4: 27497476 false ) 
	#(263 2 #reduceActionFordeclspecifierseq3: 27844610 false ) 
	#(249 1 #reduceActionForclasskey1: 25691137 false ) 
	#(251 1 #liftFirstValue: 25868289 false ) 
	#(247 1 #reduceActionForcapturelist1: 25375746 false ) 
	#(248 1 #reduceActionForattribute1: 25596929 false ) 
	#(249 1 #reduceActionForattributetoken2: 25691138 false ) 
	#(221 3 #reduceActionForelaboratedtypespecifier9: 20876297 false ) 
	#(322 3 #reduceActionForexplicitinstantiation2: 37433346 false ) 
	#(243 3 #reduceActionForlinkagespecification3: 24528899 false ) 
	#(237 1 #reduceActionForstatement1: 23517186 false ) 
	#(334 2 #reduceActionFortheoperator44: 41540652 false ) 
	#(334 2 #reduceActionFortheoperator45: 41540653 false ) 
	#(311 3 #reduceActionForliteraloperatorid1: 35023873 false ) 
	#(216 2 #reduceActionFordeclspecifierseq3: 19451907 false ) 
	#(216 2 #reduceActionFordeclspecifierseq3: 19451906 false ) 
	#(305 1 #reduceActionForconversiondeclarator1: 34244609 false ) 
	#(304 2 #reduceActionForconversiontypeid2: 34162690 false ) 
	#(315 1 #reduceActionFortypeparameter1: 35642369 false ) 
	#(315 1 #reduceActionFortypeparameter7: 35642375 false ) 
	#(275 1 #reduceActionForparameterdeclaration5: 29678597 false ) 
	#(314 1 #liftFirstValue: 35571714 false ) 
	#(313 1 #reduceActionForinitdeclaratorlist1: 35436545 false ) 
	#(314 1 #liftFirstValue: 35571713 false ) 
	#(321 3 #reduceActionFortypenamespecifier1: 37134337 false ) 
	#(321 3 #reduceActionFortypenamespecifier2: 37134338 false ) 
	#(231 1 #liftFirstValue: 22564865 false ) 
	#(230 1 #reduceActionForunqualifiedid1: 22436865 false ) 
	#(262 3 #reduceActionForptroperator11: 27497483 false ) 
	#(262 3 #reduceActionForptroperator10: 27497482 false ) 
	#(147 3 #reduceActionForqualifiedid2: 3627010 false ) 
	#(218 3 #reduceActionForsimpletypespecifier3: 19740675 false ) 
	#(148 3 #reduceActionFornestednamespecifier4: 3776516 false ) 
	#(148 3 #reduceActionFornestednamespecifier5: 3776517 false ) 
	#(207 3 #reduceActionForsimpledeclaration4: 18044932 false ) 
	#(276 3 #reduceActionForfunctiondefinition3: 30199811 false ) 
	#(222 3 #reduceActionForenumspecifier1: 21409793 false ) 
	#(229 1 #liftFirstValue: 22401025 false ) 
	#(227 1 #reduceActionForinitdeclaratorlist1: 22118401 false ) 
	#(228 1 #reduceActionForenumeratordefinition1: 22247425 false ) 
	#(226 2 #reduceActionForenumbase1: 22068225 false ) 
	#(224 3 #reduceActionForopaqueenumdeclaration1: 21795841 false ) 
	#(223 3 #reduceActionForenumhead4: 21607428 false ) 
	#(223 3 #reduceActionForenumhead9: 21607433 false ) 
	#(223 3 #reduceActionForenumhead7: 21607431 false ) 
	#(223 3 #reduceActionForenumhead6: 21607430 false ) 
	#(207 3 #reduceActionForsimpledeclaration4: 18044933 false ) 
	#(276 3 #reduceActionForfunctiondefinition3: 30199813 false ) 
	#(255 3 #reduceActionForinitdeclaratorlist2: 26393602 false ) 
	#(280 1 #liftFirstValue: 30830593 false ) 
	#(281 1 #reduceActionForcapturelist1: 30902273 false ) 
	#(160 1 #reduceActionForstatement1: 7745537 false ) 
	#(280 1 #liftFirstValue: 30830594 false ) 
	#(309 1 #reduceActionForunqualifiedid1: 34818050 false ) 
	#(300 1 #liftFirstValue: 33740803 false ) 
	#(300 1 #reduceActionForsimpletypespecifier1: 33740801 false ) 
	#(309 1 #liftFirstValue: 34818049 false ) 
	#(306 2 #reduceActionForctorinitializer1: 34362369 false ) 
	#(307 1 #reduceActionForcapturelist1: 34442241 false ) 
	#(279 2 #reduceActionForbraceorequalinitializer1: 30713857 false ) 
	#(282 2 #reduceActionForbracedinitlist3: 31053827 false ) 
	#(276 3 #reduceActionForfunctiondefinition2: 30199810 false ) 
	#(293 2 #reduceActionFordeclarationseq2: 32739330 false ) 
	#(277 2 #reduceActionForfunctionbody2: 30352386 false ) 
	#(273 1 #reduceActionForparameterdeclarationclause2: 29382658 false ) 
	#(273 1 #reduceActionForparameterdeclarationclause3: 29382659 false ) 
	#(274 1 #reduceActionForinitdeclaratorlist1: 29527041 false ) 
	#(259 3 #reduceActionFornoptrdeclarator4: 26838020 false ) 
	#(257 3 #reduceActionFordeclarator2: 26616834 false ) 
	#(290 1 #reduceActionFormemberdeclaration1: 31964161 false ) 
	#(284 3 #reduceActionForclassspecifier1: 31329281 false ) 
	#(302 1 #liftFirstValue: 33907713 false ) 
	#(302 1 #liftFirstValue: 33907714 false ) 
	#(302 1 #liftFirstValue: 33907715 false ) 
	#(290 1 #liftFirstValue: 31964173 false ) 
	#(290 1 #liftFirstValue: 31964171 false ) 
	#(290 1 #liftFirstValue: 31964170 false ) 
	#(292 1 #reduceActionFormemberdeclarator1: 32405505 false ) 
	#(290 1 #liftFirstValue: 31964169 false ) 
	#(289 1 #reduceActionForcapturelist1: 31822849 false ) 
	#(291 1 #reduceActionForinitdeclaratorlist1: 32272385 false ) 
	#(290 1 #liftFirstValue: 31964172 false ) 
	#(297 2 #reduceActionForbaseclause1: 33207297 false ) 
	#(298 1 #reduceActionForcapturelist1: 33260545 false ) 
	#(301 1 #liftFirstValue: 33861633 false ) 
	#(299 1 #reduceActionForbasespecifier1: 33416193 false ) 
	#(221 3 #reduceActionForelaboratedtypespecifier2: 20876290 false ) 
	#(286 2 #reduceActionFordeclaratorid2: 31592450 false ) 
	#(221 3 #reduceActionForelaboratedtypespecifier6: 20876294 false ) 
	#(221 3 #reduceActionForelaboratedtypespecifier3: 20876291 false ) 
	#(285 3 #reduceActionForclasshead5: 31440901 false ) 
	#(285 3 #reduceActionForclasshead12: 31440908 false ) 
	#(287 1 #liftFirstValue: 31673345 false ) 
	#(285 3 #reduceActionForclasshead3: 31440899 false ) 
	#(285 3 #reduceActionForclasshead2: 31440898 false ) 
	#(317 3 #reduceActionFortemplateid2: 36549634 false ) 
	#(320 1 #liftFirstValue: 37052419 false ) 
	#(320 1 #liftFirstValue: 37052418 false ) 
	#(320 1 #liftFirstValue: 37052417 false ) 
	#(319 1 #reduceActionForcapturelist1: 36886529 false ) 
	#(317 3 #reduceActionFortemplateid2: 36549636 false ) 
	#(316 3 #reduceActionForsimpletemplateid1: 36424705 false ) 
	#(144 3 #reduceActionFornoptrdeclarator8: 3022851 false ) 
	#(272 1 #reduceActionFornoptrabstractpackdeclarator6: 29137926 false ) 
	#(270 1 #reduceActionFornoptrabstractdeclarator2: 28549122 false ) 
	#(269 1 #reduceActionForptrabstractdeclarator2: 28382210 false ) 
	#(267 2 #reduceActionForthetypeid2: 28109826 false ) 
	#(268 1 #liftFirstValue: 28201985 false ) 
	#(269 1 #reduceActionForptrabstractdeclarator1: 28382209 false ) 
	#(268 1 #liftFirstValue: 28201988 false ) 
	#(271 1 #reduceActionForabstractpackdeclarator1: 28963841 false ) 
	#(170 3 #reduceActionFordeleteexpression2: 10110978 false ) 
	#(164 3 #reduceActionFornewexpression5: 9165829 false ) 
	#(155 2 #reduceActionForsimplecapture2: 4889602 false ) 
	#(156 2 #reduceActionForinitcapture1: 5032961 false ) 
	#(150 3 #reduceActionForlambdaintroducer2: 4465666 false ) 
	#(153 2 #reduceActionForcapturelist2: 4711426 false ) 
	#(193 3 #reduceActionForcompoundstatement2: 14922754 false ) 
	#(194 2 #reduceActionFordeclarationseq2: 15023106 false ) 
	#(191 3 #reduceActionForlabeledstatement3: 14504963 false ) 
	#(198 1 #liftFirstValue: 16532481 false ) 
	#(198 1 #liftFirstValue: 16532482 false ) 
	#(201 3 #reduceActionForjumpstatement6: 16790534 false ) 
	#(196 1 #liftFirstValue: 15550465 false ) 
	#(164 3 #reduceActionFornewexpression3: 9165827 false ) 
	#(164 3 #reduceActionFornewexpression2: 9165826 false ) 
	#(169 1 #liftFirstValue: 9994243 false ) 
	#(166 2 #reduceActionFornewtypeid2: 9539586 false ) 
	#(167 1 #reduceActionFornewdeclarator3: 9629699 false ) 
	#(167 1 #reduceActionFornewdeclarator1: 9629697 false ) 
	#(201 3 #reduceActionForjumpstatement4: 16790532 false ) 
	#(201 3 #reduceActionForjumpstatement4: 16790533 false ) 
	#(324 3 #reduceActionFortryblock1: 37743617 false ) 
	#(326 1 #reduceActionFordeclarationseq1: 37978113 false ) 
	#(191 3 #reduceActionForlabeledstatement1: 14504961 false ) 
	#(149 3 #reduceActionForlambdaexpression2: 4348930 false ) 
	#(158 3 #reduceActionForpostfixexpression4: 5429252 false ) 
	#(158 3 #reduceActionForpostfixexpression14: 5429262 false ) 
	#(158 3 #reduceActionForpostfixexpression14: 5429265 false ) 
	#(158 3 #reduceActionForpostfixexpression14: 5429260 false ) 
	#(158 3 #reduceActionForpostfixexpression14: 5429264 false ) 
	#(173 3 #reduceActionForpmexpression3: 10656771 false ) 
	#(173 3 #reduceActionForpmexpression3: 10656770 false ) 
	#(174 3 #reduceActionForpmexpression3: 10871812 false ) 
	#(174 3 #reduceActionForpmexpression3: 10871810 false ) 
	#(174 3 #reduceActionForpmexpression3: 10871811 false ) 
	#(175 3 #reduceActionForpmexpression3: 11210754 false ) 
	#(175 3 #reduceActionForpmexpression3: 11210755 false ) 
	#(176 3 #reduceActionForpmexpression3: 11471874 false ) 
	#(178 3 #reduceActionForpmexpression3: 11676674 false ) 
	#(178 3 #reduceActionForpmexpression3: 11676676 false ) 
	#(178 3 #reduceActionForpmexpression3: 11676677 false ) 
	#(178 3 #reduceActionForpmexpression3: 11676675 false ) 
	#(179 3 #reduceActionForpmexpression3: 12113923 false ) 
	#(179 3 #reduceActionForpmexpression3: 12113922 false ) 
	#(180 3 #reduceActionForpmexpression3: 12364802 false ) 
	#(181 3 #reduceActionForpmexpression3: 12500994 false ) 
	#(182 3 #reduceActionForpmexpression3: 12643330 false ) 
	#(183 3 #reduceActionForpmexpression3: 12802050 false ) 
	#(183 3 #reduceActionForpmexpression3: 12802051 false ) 
	#(184 3 #reduceActionForpmexpression3: 13063171 false ) 
	#(184 3 #reduceActionForpmexpression3: 13063170 false ) 
	#(186 3 #reduceActionForassignmentexpression2: 13544450 false ) 
	#(188 3 #reduceActionForexpression2: 13906946 false ) 
	#(158 3 #reduceActionForpostfixexpression4: 5429254 false ) 
	#(158 3 #reduceActionForpostfixexpression4: 5429256 false ) 
	#(247 2 #reduceActionForattributelist3: 25375747 false ) 
	#(247 2 #reduceActionForattributelist5: 25375749 false ) 
	#(253 0 #reduceActionFornamespacebody1: 26017793 false ) 
	#(248 2 #reduceActionForattribute2: 25596930 false ) 
	#(246 4 #reduceActionForalignmentspecifier3: 25091075 false ) 
	#(246 4 #reduceActionForalignmentspecifier3: 25091073 false ) 
	#(220 4 #reduceActionFordecltypespecifier2: 20629506 false ) 
	#(220 4 #reduceActionFordecltypespecifier1: 20629505 false ) 
	#(243 4 #reduceActionForlinkagespecification1: 24528897 false ) 
	#(236 4 #reduceActionForunnamednamespacedefinition1: 23344129 false ) 
	#(239 1 #reduceActionFordeclaratorid1: 23795713 false ) 
	#(235 3 #reduceActionForinitdeclaratorlist2: 23027714 false ) 
	#(334 3 #reduceActionFortheoperator4: 41540612 false ) 
	#(334 3 #reduceActionFortheoperator4: 41540611 false ) 
	#(305 2 #reduceActionForconversiondeclarator2: 34244610 false ) 
	#(315 2 #reduceActionFortypeparameter3: 35642371 false ) 
	#(315 2 #reduceActionFortypeparameter2: 35642370 false ) 
	#(315 2 #reduceActionFortypeparameter9: 35642377 false ) 
	#(315 2 #reduceActionFortypeparameter8: 35642376 false ) 
	#(323 4 #reduceActionForexplicitspecialization1: 37572609 false ) 
	#(275 2 #reduceActionForparameterdeclaration1: 29678593 false ) 
	#(275 2 #reduceActionForparameterdeclaration1: 29678598 false ) 
	#(275 2 #reduceActionForparameterdeclaration7: 29678599 false ) 
	#(321 4 #reduceActionFortypenamespecifier3: 37134339 false ) 
	#(240 4 #reduceActionForusingdeclaration3: 23904259 false ) 
	#(241 4 #reduceActionForusingdirective1: 24197121 false ) 
	#(240 4 #reduceActionForusingdeclaration1: 23904257 false ) 
	#(262 4 #reduceActionForptroperator12: 27497484 false ) 
	#(148 4 #reduceActionFornestednamespecifier6: 3776518 false ) 
	#(276 4 #reduceActionForfunctiondefinition4: 30199812 false ) 
	#(222 4 #reduceActionForenumspecifier2: 21409794 false ) 
	#(224 4 #reduceActionForopaqueenumdeclaration2: 21795842 false ) 
	#(223 4 #reduceActionForenumhead10: 21607434 false ) 
	#(224 4 #reduceActionForopaqueenumdeclaration3: 21795843 false ) 
	#(223 4 #reduceActionForenumhead8: 21607432 false ) 
	#(223 4 #reduceActionForenumhead11: 21607435 false ) 
	#(207 4 #reduceActionForsimpledeclaration6: 18044934 false ) 
	#(276 4 #reduceActionForfunctiondefinition7: 30199815 false ) 
	#(276 4 #reduceActionForfunctiondefinition4: 30199814 false ) 
	#(278 3 #reduceActionForinitializer2: 30580738 false ) 
	#(281 2 #reduceActionForcapturelist2: 30902274 false ) 
	#(300 2 #reduceActionForsimpletypespecifier2: 33740802 false ) 
	#(307 2 #reduceActionForcapturelist2: 34442242 false ) 
	#(308 2 #reduceActionFormeminitializer3: 34606083 false ) 
	#(277 3 #reduceActionForfunctionbody4: 30352388 false ) 
	#(277 3 #reduceActionForfunctionbody5: 30352389 false ) 
	#(282 3 #reduceActionForbracedinitlist1: 31053825 false ) 
	#(325 3 #reduceActionFortryblock1: 37840897 false ) 
	#(260 3 #reduceActionForparametersandqualifiers1: 27180033 false ) 
	#(273 2 #reduceActionForparameterdeclarationclause4: 29382660 false ) 
	#(259 4 #reduceActionFornoptrdeclarator5: 26838021 false ) 
	#(259 4 #reduceActionFornoptrdeclarator6: 26838022 false ) 
	#(217 1 #reduceActionFordeclarationseq1: 19579905 false ) 
	#(261 2 #reduceActionFortrailingreturntype1: 27394049 false ) 
	#(292 2 #reduceActionFormemberdeclarator7: 32405511 false ) 
	#(290 2 #reduceActionFormemberdeclaration3: 31964163 false ) 
	#(290 2 #reduceActionFormemberdeclaration3: 31964165 false ) 
	#(292 2 #reduceActionFormemberdeclarator6: 32405510 false ) 
	#(292 2 #reduceActionFormemberdeclarator3: 32405507 false ) 
	#(292 2 #reduceActionFormemberdeclarator2: 32405506 false ) 
	#(284 4 #reduceActionForclassspecifier2: 31329282 false ) 
	#(289 2 #reduceActionFormemberspecification2: 31822850 false ) 
	#(290 2 #reduceActionFormemberdeclaration2: 31964162 false ) 
	#(289 2 #reduceActionFormemberspecification3: 31822851 false ) 
	#(299 2 #reduceActionForbasespecifier3: 33416195 false ) 
	#(299 2 #reduceActionForbasespecifier2: 33416194 false ) 
	#(298 2 #reduceActionForcapturelist2: 33260546 false ) 
	#(299 2 #reduceActionForbasespecifier7: 33416199 false ) 
	#(221 4 #reduceActionForelaboratedtypespecifier7: 20876295 false ) 
	#(221 4 #reduceActionForelaboratedtypespecifier4: 20876292 false ) 
	#(285 4 #reduceActionForclasshead7: 31440903 false ) 
	#(285 4 #reduceActionForclasshead6: 31440902 false ) 
	#(285 4 #reduceActionForclasshead4: 31440900 false ) 
	#(317 4 #reduceActionFortemplateid3: 36549635 false ) 
	#(319 2 #reduceActionForcapturelist2: 36886530 false ) 
	#(317 4 #reduceActionFortemplateid3: 36549637 false ) 
	#(316 4 #reduceActionForsimpletemplateid2: 36424706 false ) 
	#(270 2 #reduceActionFornoptrabstractdeclarator7: 28549127 false ) 
	#(268 2 #reduceActionForabstractdeclarator2: 28201986 false ) 
	#(269 2 #reduceActionForptrdeclarator2: 28382211 false ) 
	#(271 2 #reduceActionForptrdeclarator2: 28963842 false ) 
	#(270 2 #reduceActionFornoptrabstractdeclarator1: 28549121 false ) 
	#(272 2 #reduceActionFornoptrabstractpackdeclarator1: 29137921 false ) 
	#(172 4 #reduceActionForcastexpression2: 10509314 false ) 
	#(164 4 #reduceActionFornewexpression7: 9165831 false ) 
	#(164 4 #reduceActionFornewexpression6: 9165830 false ) 
	#(156 3 #reduceActionForinitcapture2: 5032962 false ) 
	#(151 3 #reduceActionForlambdacapture3: 4547587 false ) 
	#(153 3 #reduceActionForcapturelist3: 4711427 false ) 
	#(162 4 #reduceActionForunaryexpression8: 8325128 false ) 
	#(191 4 #reduceActionForlabeledstatement2: 14504962 false ) 
	#(170 4 #reduceActionFordeleteexpression3: 10110979 false ) 
	#(199 2 #reduceActionForforrangedeclaration1: 16605185 false ) 
	#(165 3 #reduceActionFornewplacement1: 9465857 false ) 
	#(164 4 #reduceActionFornewexpression9: 9165833 false ) 
	#(164 4 #reduceActionFornewexpression4: 9165828 false ) 
	#(169 2 #reduceActionFornewinitializer1: 9994241 false ) 
	#(167 2 #reduceActionForptrdeclarator2: 9629698 false ) 
	#(171 4 #reduceActionFornoexceptexpression1: 10369025 false ) 
	#(162 4 #reduceActionForunaryexpression6: 8325126 false ) 
	#(326 2 #reduceActionFordeclspecifierseq3: 37978114 false ) 
	#(157 3 #reduceActionForlambdadeclarator1: 5218305 false ) 
	#(158 4 #reduceActionForpostfixexpression5: 5429253 false ) 
	#(161 2 #reduceActionForpseudodestructorname4: 7788548 false ) 
	#(161 2 #reduceActionForpseudodestructorname6: 7788550 false ) 
	#(158 4 #reduceActionForpostfixexpression15: 5429263 false ) 
	#(158 4 #reduceActionForpostfixexpression15: 5429261 false ) 
	#(158 4 #reduceActionForpostfixexpression2: 5429250 false ) 
	#(158 4 #reduceActionForpostfixexpression2: 5429251 false ) 
	#(158 4 #reduceActionForpostfixexpression24: 5429272 false ) 
	#(158 4 #reduceActionForpostfixexpression24: 5429273 false ) 
	#(158 4 #reduceActionForpostfixexpression5: 5429255 false ) 
	#(158 4 #reduceActionForpostfixexpression5: 5429257 false ) 
	#(247 3 #reduceActionForinitdeclaratorlist2: 25375748 false ) 
	#(245 5 #reduceActionForattributespecifier1: 24922113 false ) 
	#(253 1 #reduceActionFordeclarationseq1: 26017794 false ) 
	#(250 3 #reduceActionForattributescopedtoken1: 25764865 false ) 
	#(246 5 #reduceActionForalignmentspecifier4: 25091076 false ) 
	#(246 5 #reduceActionForalignmentspecifier4: 25091074 false ) 
	#(242 5 #reduceActionForasmdefinition1: 24393729 false ) 
	#(243 5 #reduceActionForlinkagespecification2: 24528898 false ) 
	#(236 5 #reduceActionForunnamednamespacedefinition2: 23344130 false ) 
	#(239 2 #reduceActionFordeclaratorid2: 23795714 false ) 
	#(238 5 #reduceActionFornamespacealiasdefinition1: 23621633 false ) 
	#(234 5 #reduceActionFororiginalnamespacedefinition1: 22835201 false ) 
	#(315 3 #reduceActionFortypeparameter4: 35642372 false ) 
	#(315 3 #reduceActionFortypeparameter5: 35642373 false ) 
	#(315 3 #reduceActionFortypeparameter10: 35642378 false ) 
	#(315 3 #reduceActionFortypeparameter11: 35642379 false ) 
	#(275 3 #reduceActionForparameterdeclaration9: 29678601 false ) 
	#(275 3 #reduceActionForparameterdeclaration2: 29678594 false ) 
	#(275 3 #reduceActionForparameterdeclaration2: 29678600 false ) 
	#(313 3 #reduceActionForinitdeclaratorlist2: 35436546 false ) 
	#(312 5 #reduceActionFortemplatedeclaration1: 35273729 false ) 
	#(241 5 #reduceActionForusingdirective2: 24197122 false ) 
	#(240 5 #reduceActionForusingdeclaration2: 23904258 false ) 
	#(206 5 #reduceActionForaliasdeclaration1: 17883137 false ) 
	#(222 5 #reduceActionForenumspecifier3: 21409795 false ) 
	#(227 3 #reduceActionForinitdeclaratorlist2: 22118402 false ) 
	#(228 3 #reduceActionForenumeratordefinition2: 22247426 false ) 
	#(224 5 #reduceActionForopaqueenumdeclaration4: 21795844 false ) 
	#(223 5 #reduceActionForenumhead12: 21607436 false ) 
	#(241 5 #reduceActionForusingdirective3: 24197123 false ) 
	#(276 5 #reduceActionForfunctiondefinition8: 30199816 false ) 
	#(281 3 #reduceActionForcapturelist3: 30902275 false ) 
	#(307 3 #reduceActionFormeminitializerlist3: 34442243 false ) 
	#(308 3 #reduceActionFormeminitializer1: 34606081 false ) 
	#(282 4 #reduceActionForbracedinitlist2: 31053826 false ) 
	#(325 4 #reduceActionForfunctiontryblock2: 37840898 false ) 
	#(265 1 #liftFirstValue: 28009473 false ) 
	#(265 1 #liftFirstValue: 28009474 false ) 
	#(333 1 #reduceActionFornoexceptspecification2: 38934530 false ) 
	#(260 4 #reduceActionForparametersandqualifiers2: 27180034 false ) 
	#(260 4 #reduceActionForparametersandqualifiers9: 27180041 false ) 
	#(260 4 #reduceActionForparametersandqualifiers5: 27180037 false ) 
	#(260 4 #reduceActionForparametersandqualifiers3: 27180035 false ) 
	#(330 1 #liftFirstValue: 38574081 false ) 
	#(330 1 #liftFirstValue: 38574082 false ) 
	#(273 3 #reduceActionForparameterdeclarationclause5: 29382661 false ) 
	#(274 3 #reduceActionForinitdeclaratorlist2: 29527042 false ) 
	#(259 5 #reduceActionFornoptrdeclarator7: 26838023 false ) 
	#(217 2 #reduceActionFordeclspecifierseq3: 19579907 false ) 
	#(217 2 #reduceActionFordeclspecifierseq3: 19579906 false ) 
	#(261 3 #reduceActionFortrailingreturntype2: 27394050 false ) 
	#(292 3 #reduceActionFormemberdeclarator9: 32405513 false ) 
	#(290 3 #reduceActionFormemberdeclaration4: 31964164 false ) 
	#(292 3 #reduceActionFormemberdeclarator8: 32405512 false ) 
	#(290 3 #reduceActionFormemberdeclaration7: 31964167 false ) 
	#(290 3 #reduceActionFormemberdeclaration4: 31964166 false ) 
	#(296 1 #reduceActionForliteral1: 33108993 false ) 
	#(295 2 #reduceActionForpurespecifier1: 32918529 false ) 
	#(292 3 #reduceActionFormemberdeclarator4: 32405508 false ) 
	#(291 3 #reduceActionForinitdeclaratorlist2: 32272386 false ) 
	#(289 3 #reduceActionFormemberspecification4: 31822852 false ) 
	#(299 3 #reduceActionForbasespecifier4: 33416196 false ) 
	#(299 3 #reduceActionForbasespecifier5: 33416197 false ) 
	#(299 3 #reduceActionForbasespecifier9: 33416201 false ) 
	#(298 3 #reduceActionForcapturelist3: 33260547 false ) 
	#(299 3 #reduceActionForbasespecifier8: 33416200 false ) 
	#(285 5 #reduceActionForclasshead8: 31440904 false ) 
	#(319 3 #reduceActionForcapturelist3: 36886531 false ) 
	#(270 3 #reduceActionFornoptrabstractdeclarator11: 28549131 false ) 
	#(270 3 #reduceActionFornoptrabstractdeclarator8: 28549128 false ) 
	#(270 3 #reduceActionFornoptrabstractdeclarator9: 28549129 false ) 
	#(270 3 #reduceActionFornoptrabstractdeclarator3: 28549123 false ) 
	#(268 3 #reduceActionForabstractdeclarator3: 28201987 false ) 
	#(272 3 #reduceActionFornoptrabstractdeclarator3: 29137922 false ) 
	#(170 5 #reduceActionFordeleteexpression4: 10110980 false ) 
	#(164 5 #reduceActionFornewexpression13: 9165837 false ) 
	#(164 5 #reduceActionFornewexpression8: 9165832 false ) 
	#(153 4 #reduceActionForcapturelist4: 4711428 false ) 
	#(200 1 #liftFirstValue: 16727041 false ) 
	#(200 1 #liftFirstValue: 16727042 false ) 
	#(199 3 #reduceActionForforrangedeclaration2: 16605186 false ) 
	#(195 5 #reduceActionForselectionstatement1: 15111169 false ) 
	#(196 3 #reduceActionForcondition4: 15550468 false ) 
	#(164 5 #reduceActionFornewexpression10: 9165834 false ) 
	#(164 5 #reduceActionFornewexpression11: 9165835 false ) 
	#(169 3 #reduceActionFornewinitializer2: 9994242 false ) 
	#(168 3 #reduceActionFornoptrnewdeclarator1: 9758721 false ) 
	#(162 5 #reduceActionForunaryexpression7: 8325127 false ) 
	#(195 5 #reduceActionForselectionstatement3: 15111171 false ) 
	#(328 1 #reduceActionForexceptiondeclaration7: 38190087 false ) 
	#(328 1 #reduceActionForexceptiondeclaration3: 38190083 false ) 
	#(197 5 #reduceActionForiterationstatement1: 15827969 false ) 
	#(157 4 #reduceActionForlambdadeclarator9: 5218313 false ) 
	#(157 4 #reduceActionForlambdadeclarator3: 5218307 false ) 
	#(157 4 #reduceActionForlambdadeclarator2: 5218306 false ) 
	#(157 4 #reduceActionForlambdadeclarator5: 5218309 false ) 
	#(161 3 #reduceActionForpseudodestructorname5: 7788549 false ) 
	#(185 5 #reduceActionForconditionalexpression2: 13317122 false ) 
	#(247 4 #reduceActionForattributelist6: 25375750 false ) 
	#(252 3 #reduceActionForattributeargumentclause1: 25912321 false ) 
	#(253 2 #reduceActionFordeclarationseq2: 26017795 false ) 
	#(234 6 #reduceActionFororiginalnamespacedefinition2: 22835202 false ) 
	#(315 4 #reduceActionFortypeparameter6: 35642374 false ) 
	#(315 4 #reduceActionFortypeparameter12: 35642380 false ) 
	#(275 4 #reduceActionForparameterdeclaration3: 29678595 false ) 
	#(275 4 #reduceActionForparameterdeclaration3: 29678602 false ) 
	#(275 4 #reduceActionForparameterdeclaration11: 29678603 false ) 
	#(206 6 #reduceActionForaliasdeclaration2: 17883138 false ) 
	#(241 6 #reduceActionForusingdirective4: 24197124 false ) 
	#(281 4 #reduceActionForcapturelist4: 30902276 false ) 
	#(307 4 #reduceActionFormeminitializerlist4: 34442244 false ) 
	#(308 4 #reduceActionFormeminitializer2: 34606082 false ) 
	#(260 5 #reduceActionForparametersandqualifiers10: 27180042 false ) 
	#(260 5 #reduceActionForparametersandqualifiers13: 27180045 false ) 
	#(260 5 #reduceActionForparametersandqualifiers11: 27180043 false ) 
	#(260 5 #reduceActionForparametersandqualifiers6: 27180038 false ) 
	#(260 5 #reduceActionForparametersandqualifiers7: 27180039 false ) 
	#(260 5 #reduceActionForparametersandqualifiers4: 27180036 false ) 
	#(292 4 #reduceActionFormemberdeclarator10: 32405514 false ) 
	#(290 4 #reduceActionFormemberdeclaration8: 31964168 false ) 
	#(299 4 #reduceActionForbasespecifier6: 33416198 false ) 
	#(299 4 #reduceActionForbasespecifier10: 33416202 false ) 
	#(298 4 #reduceActionForcapturelist4: 33260548 false ) 
	#(319 4 #reduceActionForcapturelist4: 36886532 false ) 
	#(270 4 #reduceActionFornoptrabstractdeclarator10: 28549130 false ) 
	#(270 4 #reduceActionFornoptrabstractdeclarator4: 28549124 false ) 
	#(270 4 #reduceActionFornoptrabstractdeclarator5: 28549125 false ) 
	#(272 4 #reduceActionFornoptrabstractdeclarator4: 29137923 false ) 
	#(272 4 #reduceActionFornoptrabstractdeclarator5: 29137924 false ) 
	#(164 6 #reduceActionFornewexpression14: 9165838 false ) 
	#(164 6 #reduceActionFornewexpression15: 9165839 false ) 
	#(197 6 #reduceActionForiterationstatement3: 15827971 false ) 
	#(196 4 #reduceActionForcondition2: 15550466 false ) 
	#(196 4 #reduceActionForcondition5: 15550469 false ) 
	#(164 6 #reduceActionFornewexpression12: 9165836 false ) 
	#(168 4 #reduceActionFornoptrnewdeclarator2: 9758722 false ) 
	#(168 4 #reduceActionFornoptrnewdeclarator3: 9758723 false ) 
	#(328 2 #reduceActionForexceptiondeclaration1: 38190081 false ) 
	#(328 2 #reduceActionForexceptiondeclaration1: 38190084 false ) 
	#(328 2 #reduceActionForexceptiondeclaration5: 38190085 false ) 
	#(157 5 #reduceActionForlambdadeclarator11: 5218315 false ) 
	#(157 5 #reduceActionForlambdadeclarator10: 5218314 false ) 
	#(157 5 #reduceActionForlambdadeclarator13: 5218317 false ) 
	#(157 5 #reduceActionForlambdadeclarator4: 5218308 false ) 
	#(157 5 #reduceActionForlambdadeclarator7: 5218311 false ) 
	#(157 5 #reduceActionForlambdadeclarator6: 5218310 false ) 
	#(161 4 #reduceActionForpseudodestructorname1: 7788545 false ) 
	#(254 3 #reduceActionForattributeargumentclause1: 26131457 false ) 
	#(254 3 #reduceActionForattributeargumentclause1: 26131458 false ) 
	#(254 3 #reduceActionForattributeargumentclause1: 26131459 false ) 
	#(208 7 #reduceActionForstatic_assertdeclaration1: 18256897 false ) 
	#(315 5 #reduceActionFortypeparameter13: 35642381 false ) 
	#(275 5 #reduceActionForparameterdeclaration4: 29678596 false ) 
	#(275 5 #reduceActionForparameterdeclaration4: 29678604 false ) 
	#(331 3 #reduceActionFordynamicexceptionspecification1: 38667265 false ) 
	#(332 1 #reduceActionForcapturelist1: 38811649 false ) 
	#(260 6 #reduceActionForparametersandqualifiers14: 27180046 false ) 
	#(260 6 #reduceActionForparametersandqualifiers15: 27180047 false ) 
	#(260 6 #reduceActionForparametersandqualifiers12: 27180044 false ) 
	#(260 6 #reduceActionForparametersandqualifiers8: 27180040 false ) 
	#(270 5 #reduceActionFornoptrabstractdeclarator6: 28549126 false ) 
	#(272 5 #reduceActionFornoptrabstractdeclarator6: 29137925 false ) 
	#(164 7 #reduceActionFornewexpression16: 9165840 false ) 
	#(158 7 #reduceActionForpostfixexpression23: 5429271 false ) 
	#(197 7 #reduceActionForiterationstatement2: 15827970 false ) 
	#(158 7 #reduceActionForpostfixexpression23: 5429268 false ) 
	#(197 7 #reduceActionForiterationstatement4: 15827972 false ) 
	#(197 7 #reduceActionForiterationstatement5: 15827973 false ) 
	#(197 7 #reduceActionForiterationstatement7: 15827975 false ) 
	#(195 7 #reduceActionForselectionstatement2: 15111170 false ) 
	#(196 5 #reduceActionForcondition3: 15550467 false ) 
	#(168 5 #reduceActionFornoptrnewdeclarator4: 9758724 false ) 
	#(158 7 #reduceActionForpostfixexpression23: 5429270 false ) 
	#(158 7 #reduceActionForpostfixexpression23: 5429269 false ) 
	#(328 3 #reduceActionForexceptiondeclaration2: 38190082 false ) 
	#(328 3 #reduceActionForexceptiondeclaration2: 38190086 false ) 
	#(327 5 #reduceActionForhandler1: 38031361 false ) 
	#(157 6 #reduceActionForlambdadeclarator12: 5218316 false ) 
	#(157 6 #reduceActionForlambdadeclarator15: 5218319 false ) 
	#(157 6 #reduceActionForlambdadeclarator14: 5218318 false ) 
	#(157 6 #reduceActionForlambdadeclarator8: 5218312 false ) 
	#(161 5 #reduceActionForpseudodestructorname2: 7788546 false ) 
	#(315 6 #reduceActionFortypeparameter15: 35642383 false ) 
	#(315 6 #reduceActionFortypeparameter14: 35642382 false ) 
	#(333 4 #reduceActionFornoexceptspecification1: 38934529 false ) 
	#(332 2 #reduceActionForcapturelist2: 38811650 false ) 
	#(331 4 #reduceActionFordynamicexceptionspecification2: 38667266 false ) 
	#(260 7 #reduceActionForparametersandqualifiers16: 27180048 false ) 
	#(197 8 #reduceActionForiterationstatement6: 15827974 false ) 
	#(157 7 #reduceActionForlambdadeclarator16: 5218320 false ) 
	#(161 6 #reduceActionForpseudodestructorname3: 7788547 false ) 
	#(315 7 #reduceActionFortypeparameter16: 35642384 false ) 
	#(315 7 #reduceActionFortypeparameter17: 35642385 false ) 
	#(332 3 #reduceActionForcapturelist3: 38811651 false ) 
	#(315 8 #reduceActionFortypeparameter18: 35642386 false ) 
	#(332 4 #reduceActionForcapturelist4: 38811652 false )
	).
]

{ #category : #'generated-accessing' }
CPPParser class >> scannerClass [
	^CPPScanner
]

{ #category : #generated }
CPPParser class >> startingStateForexpression [
	^ 3
]

{ #category : #generated }
CPPParser class >> startingStateForstatement [
	^ 2
]

{ #category : #generated }
CPPParser class >> startingStateFortranslationunit [
	^ 1
]

{ #category : #generated }
CPPParser class >> symbolNames [
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"->*"' '"."' '".*"' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<="' '"="' '"=="' '">="' '"?"' '"["' '"]"' '"^"' '"^="' '"and"' '"not"' '"or"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<directive>' '<Alignas>' '<Alignof>' '<Asm>' '<Auto>' '<Bool>' '<Break>' '<Case>' '<Catch>' '<Char>' '<Char16>' '<Char32>' '<Class>' '<Const>' '<Constexpr>' '<Const_cast>' '<Continue>' '<Decltype>' '<Default>' '<Delete>' '<Do>' '<Double>' '<Dynamic_cast>' '<Else>' '<Enum>' '<Explicit>' '<Extern>' '<False>' '<Final>' '<Float>' '<For>' '<Friend>' '<Goto>' '<If>' '<Inline>' '<Int>' '<Long>' '<Mutable>' '<Namespace>' '<New>' '<Noexcept>' '<Nullptr>' '<Operator>' '<Override>' '<Private>' '<Protected>' '<Public>' '<Register>' '<Reinterpret_cast>' '<Return>' '<Short>' '<Signed>' '<Sizeof>' '<Static>' '<Static_assert>' '<Static_cast>' '<Struct>' '<Switch>' '<Template>' '<This>' '<Thread_local>' '<Throw>' '<True>' '<Try>' '<Typedef>' '<Typeid_>' '<Typename_>' '<Union>' '<Unsigned>' '<Using>' '<Virtual>' '<Void>' '<Volatile>' '<Wchar>' '<While>' '<LeftShift>' '<gt>' '<RightShift>' '<LeftShiftAssign>' '<RightShiftAssign>' '<Identifier>' '<Integerliteral>' '<Octalliteral>' '<Characterliteral>' '<Floatingliteral>' '<Stringliteral>' '<Userdefinedintegerliteral>' '<Userdefinedfloatingliteral>' '<Userdefinedstringliteral>' '<Userdefinedcharacterliteral>' '<whitespace>' '<comment>' '<lineContinuation>' '<patternToken>' 'B e g i n' 'translationunit' 'primaryexpression' 'idexpression' 'unqualifiedid' 'qualifiedid' 'nestednamespecifier' 'lambdaexpression' 'lambdaintroducer' 'lambdacapture' 'capturedefault' 'capturelist' 'capture' 'simplecapture' 'initcapture' 'lambdadeclarator' 'postfixexpression' 'typeidofthetypeid' 'expressionlist' 'pseudodestructorname' 'unaryexpression' 'unaryoperator' 'newexpression' 'newplacement' 'newtypeid' 'newdeclarator' 'noptrnewdeclarator' 'newinitializer' 'deleteexpression' 'noexceptexpression' 'castexpression' 'pmexpression' 'multiplicativeexpression' 'additiveexpression' 'shiftexpression' 'shiftoperator' 'relationalexpression' 'equalityexpression' 'andexpression' 'exclusiveorexpression' 'inclusiveorexpression' 'logicalandexpression' 'logicalorexpression' 'conditionalexpression' 'assignmentexpression' 'assignmentoperator' 'expression' 'constantexpression' 'statement' 'labeledstatement' 'expressionstatement' 'compoundstatement' 'statementseq' 'selectionstatement' 'condition' 'iterationstatement' 'forinitstatement' 'forrangedeclaration' 'forrangeinitializer' 'jumpstatement' 'declarationstatement' 'declarationseq' 'declaration' 'blockdeclaration' 'aliasdeclaration' 'simpledeclaration' 'static_assertdeclaration' 'attributedeclaration' 'declspecifier' 'declspecifierseq' 'storageclassspecifier' 'functionspecifier' 'typespecifier' 'trailingtypespecifier' 'typespecifierseq' 'trailingtypespecifierseq' 'simpletypespecifier' 'thetypename' 'decltypespecifier' 'elaboratedtypespecifier' 'enumspecifier' 'enumhead' 'opaqueenumdeclaration' 'enumkey' 'enumbase' 'enumeratorlist' 'enumeratordefinition' 'enumerator' 'namespacename' 'originalnamespacename' 'namespacedefinition' 'namednamespacedefinition' 'originalnamespacedefinition' 'fullnamespacename' 'unnamednamespacedefinition' 'namespacebody' 'namespacealiasdefinition' 'qualifiednamespacespecifier' 'usingdeclaration' 'usingdirective' 'asmdefinition' 'linkagespecification' 'attributespecifierseq' 'attributespecifier' 'alignmentspecifier' 'attributelist' 'attribute' 'attributetoken' 'attributescopedtoken' 'attributenamespace' 'attributeargumentclause' 'balancedtokenseq' 'balancedtoken' 'initdeclaratorlist' 'initdeclarator' 'declarator' 'ptrdeclarator' 'noptrdeclarator' 'parametersandqualifiers' 'trailingreturntype' 'ptroperator' 'cvqualifierseq' 'cvqualifier' 'refqualifier' 'declaratorid' 'thetypeid' 'abstractdeclarator' 'ptrabstractdeclarator' 'noptrabstractdeclarator' 'abstractpackdeclarator' 'noptrabstractpackdeclarator' 'parameterdeclarationclause' 'parameterdeclarationlist' 'parameterdeclaration' 'functiondefinition' 'functionbody' 'initializer' 'braceorequalinitializer' 'initializerclause' 'initializerlist' 'bracedinitlist' 'classname' 'classspecifier' 'classhead' 'classheadname' 'classvirtspecifier' 'classkey' 'memberspecification' 'memberdeclaration' 'memberdeclaratorlist' 'memberdeclarator' 'virtspecifierseq' 'virtspecifier' 'purespecifier' 'purespecifier_value' 'baseclause' 'basespecifierlist' 'basespecifier' 'classordecltype' 'basetypespecifier' 'accessspecifier' 'conversionfunctionid' 'conversiontypeid' 'conversiondeclarator' 'ctorinitializer' 'meminitializerlist' 'meminitializer' 'meminitializerid' 'operatorfunctionid' 'literaloperatorid' 'templatedeclaration' 'templateparameterlist' 'templateparameter' 'typeparameter' 'simpletemplateid' 'templateid' 'templatename' 'templateargumentlist' 'templateargument' 'typenamespecifier' 'explicitinstantiation' 'explicitspecialization' 'tryblock' 'functiontryblock' 'handlerseq' 'handler' 'exceptiondeclaration' 'throwexpression' 'exceptionspecification' 'dynamicexceptionspecification' 'typeidlist' 'noexceptspecification' 'theoperator' 'literal' '<Stringliteral> ''value''+' 'booleanliteral' 'pointerliteral' 'userdefinedliteral' 'E O F' 'error')
]

{ #category : #generated }
CPPParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CPPTranslationUnitNode #CPPTranslationUnitNode #CPPExpressionNode #CPPIdentifierExpressionNode #CPPProgramNode #CPPQualifiedIdentifierNode #CPPNestedNameSpecifierNode #CPPLambdaExpressionNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CPPCaptureNode #CPPCaptureNode #CPPInitializedCaptureNode #OrderedCollection #CPPExpressionNode #SmaCCToken #OrderedCollection #CPPPseudoDestructorNameNode #CPPExpressionNode #SmaCCToken #CPPNewExpressionNode #OrderedCollection #CPPNewTypeIdentifierNode #CPPNewDeclaratorNode #OrderedCollection #CPPProgramNode #CPPDeleteExpressionNode #CPPNoexceptExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #SmaCCToken #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #SmaCCToken #CPPExpressionNode #CPPExpressionNode #CPPProgramNode #CPPStatementNode #CPPExpressionStatementNode #CPPCompoundStatementNode #OrderedCollection #CPPStatementNode #CPPProgramNode #CPPStatementNode #CPPProgramNode #CPPForRangeDeclarationNode #CPPProgramNode #CPPStatementNode #CPPProgramNode #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPAliasDeclarationNode #CPPSimpleDeclarationNode #CPPStaticAssertDeclarationNode #CPPAttributeDeclarationNode #CPPProgramNode #OrderedCollection #SmaCCToken #SmaCCToken #CPPProgramNode #CPPProgramNode #OrderedCollection #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPDecltypeSpecifierNode #CPPElaboratedTypeSpecifierNode #CPPEnumSpecifierNode #OrderedCollection #CPPOpaqueEnumDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #CPPEnumDefinitionNode #SmaCCToken #CPPIdentifierNode #SmaCCToken #CPPProgramNode #CPPOriginalNamespaceDefinitionNode #CPPOriginalNamespaceDefinitionNode #OrderedCollection #CPPUnnamedNamespaceDefinitionNode #OrderedCollection #CPPNamespaceAliasDefinitionNode #OrderedCollection #CPPUsingDeclarationNode #CPPUsingDirectiveNode #CPPAsmDefinitionNode #CPPLinkageSpecificationNode #OrderedCollection #CPPProgramNode #CPPAlignmentSpecifierNode #OrderedCollection #CPPAttributeNode #OrderedCollection #OrderedCollection #SmaCCToken #CPPAttributeArgumentClauseNode #OrderedCollection #CPPAttributeArgumentClauseNode #OrderedCollection #CPPInitDeclaratorNode #CPPDeclaratorNode #CPPDeclaratorNode #CPPDeclaratorNode #OrderedCollection #OrderedCollection #CPPPointerOperatorNode #OrderedCollection #CPPCVQualifierNode #SmaCCToken #OrderedCollection #CPPTypeIdentifierNode #CPPProgramNode #CPPPtrAbstractDeclaratorNode #OrderedCollection #CPPAbstractPackDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #CPPParameterDeclarationNode #CPPFunctionDefinitionNode #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPProgramNode #OrderedCollection #CPPBracedListInitializerNode #CPPProgramNode #CPPClassSpecifierNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #CPPProgramNode #OrderedCollection #CPPMemberDeclaratorNode #OrderedCollection #SmaCCToken #CPPEqualInitializerNode #CPPNumericLiteralNode #OrderedCollection #OrderedCollection #CPPBaseSpecifierNode #CPPProgramNode #CPPProgramNode #SmaCCToken #CPPConversionFunctionIdentifierNode #OrderedCollection #CPPConversionDeclaratorNode #CPPCtorInitializerNode #OrderedCollection #CPPMemInitializerNode #CPPProgramNode #CPPOperatorFunctionIdentifierNode #CPPLiteralFunctionIdentifierNode #CPPTemplateDeclarationNode #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPTemplateIdentifierNode #CPPProgramNode #SmaCCToken #OrderedCollection #CPPProgramNode #CPPTypeNameSpecifierNode #CPPExplicitInstantiationNode #CPPExplicitSpecializationNode #CPPTryStatementNode #CPPTryStatementNode #OrderedCollection #CPPCatchHandlerNode #CPPExceptionDeclarationNode #CPPThrowExpressionNode #CPPProgramNode #CPPDynamicExceptionSpecificationNode #OrderedCollection #CPPNoExceptionSpecificiationNode #OrderedCollection #CPPLiteralNode #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
CPPParser class >> transitionTable [
^#(
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 217 0 143 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 0 237 0 203 0 241 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 0 241 0 224 1 61 0 225 0 241 0 232 0 241 0 233 0 241 0 234 0 241 0 236 0 241 0 238 0 241 0 240 0 241 0 241 0 241 0 242 0 241 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 0 241 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 0 241 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 0 241 1 66 0 241 1 67 0 6 1 84] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 3 13 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 3 13 0 202 3 13 0 205 3 13 0 206 3 13 0 207 3 13 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 3 13 0 224 1 61 0 225 3 13 0 238 3 13 0 240 3 13 0 241 3 13 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 121 0 185 3 121 0 186 3 121 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 3 121 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 0 10 0 2 0 10 0 3 0 10 0 4 0 10 0 5 0 10 0 6 0 10 0 7 0 10 0 8 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 24 0 10 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 29 0 10 0 30 0 10 0 31 0 10 0 32 0 10 0 33 0 10 0 34 0 7 0 35 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 41 0 10 0 42 0 10 0 43 0 10 0 44 0 10 0 45 0 10 0 46 0 10 0 47 0 11 0 49 0 10 0 65 0 10 0 76 0 10 0 90 0 10 0 91 0 10 0 111 0 10 0 123 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 127 0 10 0 128 3 133 0 244 1 105 0 245 1 105 0 246 0 10 1 84] 
#[1 0 14 0 2 0 14 0 3 0 14 0 4 0 14 0 5 0 14 0 6 0 14 0 7 0 14 0 8 0 14 0 9 0 14 0 10 0 14 0 11 0 14 0 12 0 14 0 13 0 14 0 14 0 14 0 15 0 14 0 16 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 20 0 14 0 21 0 14 0 22 0 14 0 23 0 14 0 24 0 14 0 25 0 14 0 26 0 14 0 27 0 14 0 28 0 14 0 29 0 14 0 30 0 14 0 31 0 14 0 32 0 14 0 33 0 14 0 34 0 15 0 35 0 14 0 36 0 14 0 37 0 14 0 38 0 14 0 39 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 44 0 14 0 45 0 14 0 46 0 14 0 47 0 19 0 49 0 14 0 65 0 14 0 76 0 14 0 90 0 14 0 91 0 14 0 111 0 14 0 123 0 14 0 124 0 14 0 125 0 14 0 126 0 14 0 127 0 14 0 128 3 137 0 244 1 105 0 245 1 105 0 246 0 14 1 84] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 3 153 1 2 3 157 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 18 0 2 0 18 0 3 0 18 0 4 0 18 0 5 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 11 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 17 0 18 0 18 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 23 0 18 0 24 0 18 0 25 0 18 0 26 0 18 0 27 0 18 0 28 0 18 0 29 0 18 0 30 0 18 0 31 0 18 0 32 0 18 0 33 0 18 0 34 0 23 0 35 0 18 0 36 0 18 0 37 0 18 0 38 0 18 0 39 0 18 0 41 0 18 0 42 0 18 0 43 0 18 0 44 0 18 0 45 0 18 0 46 0 18 0 47 0 27 0 49 0 85 0 61 0 18 0 65 0 18 0 76 0 18 0 90 0 18 0 91 0 18 0 111 0 205 0 120 0 18 0 123 0 18 0 124 0 18 0 125 0 18 0 126 0 18 0 127 0 18 0 128 3 161 0 244 1 105 0 245 1 105 0 246 3 165 1 7 3 169 1 8 0 18 1 84] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 3 173 0 145 0 225 0 146 0 229 0 147 3 177 0 148 3 145 0 219 3 149 0 220 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 0 22 0 10 0 47 0 90 0 106 0 128] 
#[0 0 26 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 3 181 0 35] 
#[1 0 93 0 65 3 185 0 128 3 189 0 220 3 193 1 27 3 193 1 60 1 189 1 62] 
#[0 3 201 0 8] 
#[0 3 205 0 8] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 50 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 88 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 109 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 58 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 3 209 0 8] 
#[0 0 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 0 66 0 26 0 31 0 27 0 66 0 35 0 66 0 42 0 66 0 49 3 213 0 60 0 35 0 65 3 217 0 104 0 39 0 128 3 225 0 148 3 145 0 219 3 149 0 220 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 0 70 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[1 0 74 0 5 0 74 0 6 0 74 0 8 0 74 0 10 0 74 0 23 0 74 0 27 0 74 0 28 0 74 0 35 0 74 0 47 0 74 0 49 0 74 0 52 0 74 0 53 0 74 0 57 0 74 0 58 0 74 0 59 0 74 0 60 0 74 0 61 0 74 0 62 0 74 0 65 0 74 0 69 0 74 0 72 0 74 0 73 0 74 0 74 0 74 0 77 0 74 0 79 0 74 0 82 0 74 0 83 0 74 0 84 0 74 0 85 0 74 0 90 0 74 0 95 0 74 0 98 0 74 0 99 0 74 0 101 0 74 0 104 3 229 0 106 0 74 0 108 0 74 0 112 0 74 0 114 0 74 0 115 0 74 0 116 0 74 0 118 0 74 0 119 0 74 0 120 0 74 0 121 0 74 0 128 3 233 0 133] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 82 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[1 0 86 0 5 0 86 0 6 0 86 0 8 0 86 0 10 0 86 0 23 0 86 0 27 0 86 0 28 0 86 0 35 0 86 0 47 0 86 0 49 0 86 0 52 0 86 0 53 0 86 0 57 0 86 0 58 0 86 0 59 0 86 0 60 0 86 0 61 0 86 0 62 0 86 0 65 0 86 0 69 0 86 0 72 0 86 0 73 0 86 0 74 0 86 0 77 0 86 0 79 0 86 0 82 0 86 0 83 0 86 0 84 0 86 0 85 3 237 0 86 0 86 0 90 0 86 0 95 0 86 0 98 0 86 0 99 0 86 0 101 0 86 0 104 0 86 0 108 0 86 0 112 0 86 0 114 0 86 0 115 0 86 0 116 0 86 0 118 0 86 0 119 0 86 0 120 0 86 0 121 0 86 0 128] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 98 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[1 3 241 0 42 3 245 0 128 3 249 0 235] 
#[1 3 253 0 1 4 1 0 2 4 5 0 3 4 9 0 4 4 13 0 5 4 17 0 6 4 21 0 7 4 25 0 8 4 29 0 10 4 33 0 11 4 37 0 12 4 41 0 13 4 45 0 14 4 49 0 15 4 53 0 16 4 57 0 17 4 61 0 18 4 65 0 19 4 69 0 20 4 73 0 24 4 77 0 25 0 37 0 27 4 81 0 29 4 85 0 30 4 89 0 31 4 93 0 32 4 97 0 33 4 101 0 35 4 105 0 37 4 109 0 38 4 113 0 39 4 117 0 40 4 121 0 41 4 125 0 43 4 129 0 44 4 133 0 45 4 137 0 47 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 4 141 0 67 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 4 145 0 87 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 4 149 0 123 4 153 0 124 4 157 0 125 4 161 0 126 4 165 0 127 3 185 0 128 4 169 0 133 4 173 0 136 4 177 0 148 4 181 0 214 4 181 0 215 4 185 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 4 193 1 48 1 37 1 60 1 189 1 62 4 181 1 65 4 197 1 78] 
#[0 0 102 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 114 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 4 201 0 8] 
#[0 0 118 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 4 205 0 29 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 4 209 0 204 4 209 0 205 4 209 0 206 4 209 0 207 4 209 0 208 4 209 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 209 0 224 1 61 0 225 4 209 0 232 4 209 0 233 4 209 0 234 4 209 0 236 4 209 0 238 4 209 0 240 4 209 0 241 4 209 0 242 4 209 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 4 209 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 4 209 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 4 209 1 66 4 209 1 67] 
#[0 0 122 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 126 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[1 0 37 0 27 0 93 0 65 3 185 0 128 4 213 0 148 3 145 0 219 3 149 0 220 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 0 130 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 4 217 0 27 0 93 0 65 4 221 0 86 4 225 0 114 4 229 0 128 4 233 0 148 3 145 0 219 3 149 0 220 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 0 138 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 88 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 109 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 43 0 5 0 43 0 6 0 154 0 7 0 43 0 8 0 43 0 9 0 43 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 43 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 43 0 23 0 154 0 24 0 154 0 25 0 154 0 26 0 158 0 27 0 43 0 28 0 47 0 29 0 154 0 30 0 43 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 43 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 43 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 158 0 47 0 43 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 154 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 154 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 154 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 154 0 123 0 43 0 124 0 154 0 125 0 154 0 126 0 154 0 127 0 158 0 128 0 154 1 84] 
#[0 0 0 1 84] 
#[0 0 166 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 4 237 0 10 0 49 0 47 0 141 0 90 4 241 0 106 4 245 0 128 4 249 0 146 4 253 0 219 4 253 1 27 4 249 1 47 1 169 1 54 1 173 1 55 5 1 1 60 4 249 1 61 1 189 1 62] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 5 5 0 204 5 5 0 205 5 5 0 206 5 5 0 207 5 5 0 208 5 5 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 5 5 0 224 1 61 0 225 5 5 0 232 5 5 0 233 5 5 0 234 5 5 0 236 5 5 0 238 5 5 0 240 5 5 0 241 5 5 0 242 5 5 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 5 5 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 5 5 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 5 5 1 66 5 5 1 67 0 178 1 84] 
#[0 0 182 0 5 0 6 0 8 0 10 0 23 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 0 186 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 0 190 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 0 194 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 0 198 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 0 202 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 0 206 0 5 0 206 0 6 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 15 0 206 0 23 0 206 0 26 0 51 0 27 0 206 0 28 0 206 0 31 0 55 0 35 0 206 0 47 0 59 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 63 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 206 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 206 0 124 0 67 0 128 4 177 0 148 1 9 0 210 5 9 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 5 13 0 244 1 105 0 245 1 105 0 246 1 9 1 8 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 1 9 1 65] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 5 17 0 28 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 5 21 0 255 1 117 1 0 5 25 1 1 5 25 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 0 210 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 214 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 218 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 0 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 0 230 0 2 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 0 230 0 9 0 230 0 10 0 230 0 11 0 230 0 12 0 230 0 13 0 230 0 14 0 230 0 15 0 230 0 16 0 230 0 17 0 230 0 18 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 22 0 230 0 23 0 230 0 24 0 230 0 25 0 230 0 26 0 71 0 27 0 230 0 28 0 230 0 29 0 230 0 30 0 230 0 31 0 230 0 32 0 230 0 33 0 230 0 34 0 230 0 35 0 230 0 36 0 230 0 37 0 230 0 38 0 230 0 39 0 230 0 41 0 230 0 42 0 230 0 43 0 230 0 44 0 230 0 45 0 230 0 46 0 230 0 47 0 230 0 49 0 230 0 52 0 230 0 53 0 230 0 57 0 230 0 58 0 230 0 59 0 230 0 60 0 230 0 61 0 230 0 62 0 230 0 65 0 230 0 69 0 230 0 72 0 230 0 73 0 230 0 74 0 230 0 76 0 230 0 77 0 230 0 79 0 230 0 82 0 230 0 83 0 230 0 84 0 230 0 85 0 230 0 90 0 230 0 91 0 230 0 95 0 230 0 98 0 230 0 99 0 230 0 101 0 230 0 104 0 230 0 108 0 230 0 111 0 230 0 112 0 230 0 114 0 230 0 115 0 230 0 116 0 230 0 118 0 230 0 119 0 230 0 120 0 230 0 121 0 230 0 123 0 230 0 124 0 230 0 125 0 230 0 126 0 230 0 127 0 230 0 128 0 230 1 84] 
#[1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 234 0 15 0 234 0 16 0 234 0 17 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 21 0 234 0 22 0 234 0 23 0 234 0 24 0 234 0 25 0 234 0 26 0 75 0 27 0 234 0 28 0 234 0 29 0 234 0 30 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 34 0 234 0 35 0 234 0 36 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 41 0 234 0 42 0 234 0 43 0 234 0 44 0 234 0 45 0 234 0 46 0 234 0 47 0 234 0 49 0 234 0 52 0 234 0 53 0 234 0 57 0 234 0 58 0 234 0 59 0 234 0 60 0 234 0 61 0 234 0 62 0 234 0 65 0 234 0 69 0 234 0 72 0 234 0 73 0 234 0 74 0 234 0 76 0 234 0 77 0 234 0 79 0 234 0 82 0 234 0 83 0 234 0 84 0 234 0 85 0 234 0 90 0 234 0 91 0 234 0 95 0 234 0 98 0 234 0 99 0 234 0 101 0 234 0 104 0 234 0 108 0 234 0 111 0 234 0 112 0 234 0 114 0 234 0 115 0 234 0 116 0 234 0 118 0 234 0 119 0 234 0 120 0 234 0 121 0 234 0 123 0 234 0 124 0 234 0 125 0 234 0 126 0 234 0 127 0 234 0 128 0 234 1 84] 
#[0 0 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 5 37 0 42] 
#[0 0 246 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 5 41 0 26 0 37 0 27 0 45 0 35 0 250 0 42 0 53 0 49 0 93 0 65 5 45 0 128 5 49 0 148 3 145 0 219 3 149 0 220 5 53 0 226 5 57 0 244 1 105 0 245 1 105 0 246 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 0 254 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 1 2 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 1 6 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 1 10 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 1 14 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 1 18 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 1 22 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 1 26 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 1 30 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 5 61 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 5 65 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 1 9 0 210 5 69 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 5 73 0 245 5 73 0 246 5 77 0 255 1 117 1 0 5 81 1 1 5 81 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 5 85 0 15 5 89 0 28] 
#[0 1 42 0 15 0 28] 
#[1 5 93 0 8 1 46 0 15 5 97 0 26 1 46 0 28 5 101 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 193 5 125 1 21 5 129 1 22 5 129 1 23 5 129 1 26 5 141 1 37 5 145 1 38 5 149 1 50 5 153 1 69] 
#[0 1 50 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 0 79 0 8 1 54 0 9 1 54 0 15 1 54 0 23 1 54 0 26 1 54 0 28 1 54 0 31 5 161 0 35 1 54 0 42 1 54 0 76 1 54 0 91 1 54 0 111 1 54 0 124 5 165 1 4] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 5 169 1 2 3 157 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 1 62 0 8 1 62 0 9 1 62 0 15 1 62 0 23 1 62 0 26 1 62 0 28 1 62 0 31 0 83 0 35 1 62 0 42 0 53 0 49 1 62 0 76 1 62 0 91 1 62 0 111 1 62 0 124 5 173 0 244 1 105 0 245 1 105 0 246] 
#[0 1 66 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 5 177 0 42] 
#[1 5 181 0 26 0 37 0 27 0 45 0 35 1 78 0 42 0 53 0 49 0 93 0 65 5 185 0 128 5 189 0 148 3 145 0 219 3 149 0 220 5 193 0 244 1 105 0 245 1 105 0 246 5 197 1 27 5 201 1 30 5 205 1 41 5 209 1 60 1 189 1 62] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 1 86 0 2 1 86 0 3 1 86 0 4 1 86 0 5 1 86 0 6 1 86 0 7 1 86 0 8 1 86 0 9 1 86 0 10 1 86 0 11 1 86 0 12 1 86 0 13 1 86 0 14 1 86 0 15 1 86 0 16 1 86 0 17 1 86 0 18 1 86 0 19 1 86 0 20 1 86 0 21 1 86 0 22 1 86 0 23 1 86 0 24 1 86 0 25 1 86 0 26 1 86 0 28 0 87 0 29 1 86 0 30 1 86 0 31 1 86 0 32 1 86 0 33 1 86 0 34 1 86 0 35 1 86 0 36 1 86 0 37 1 86 0 38 1 86 0 39 1 86 0 41 1 86 0 42 1 86 0 43 1 86 0 44 1 86 0 45 1 86 0 46 1 86 0 49 1 86 0 76 1 86 0 91 1 86 0 111 1 86 0 123 1 86 0 124 1 86 0 125 1 86 0 126 1 86 0 127 1 86 1 84] 
#[1 1 90 0 2 1 90 0 3 1 90 0 4 1 90 0 5 1 90 0 6 1 90 0 7 1 90 0 8 1 90 0 9 1 90 0 10 1 90 0 11 1 90 0 12 1 90 0 13 1 90 0 14 1 90 0 15 1 90 0 16 1 90 0 17 1 90 0 18 1 90 0 19 1 90 0 20 1 90 0 21 1 90 0 22 1 90 0 23 1 90 0 24 1 90 0 25 1 90 0 26 1 90 0 28 0 91 0 29 1 90 0 30 1 90 0 31 1 90 0 32 1 90 0 33 1 90 0 34 1 90 0 35 1 90 0 36 1 90 0 37 1 90 0 38 1 90 0 39 1 90 0 41 1 90 0 42 1 90 0 43 1 90 0 44 1 90 0 45 1 90 0 46 1 90 0 49 1 90 0 76 1 90 0 91 1 90 0 111 1 90 0 123 1 90 0 124 1 90 0 125 1 90 0 126 1 90 0 127 1 90 1 84] 
#[0 1 94 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 1 98 0 2 1 98 0 3 1 98 0 4 0 95 0 5 0 95 0 6 1 98 0 7 0 95 0 8 0 95 0 9 0 95 0 10 1 98 0 11 1 98 0 12 1 98 0 13 1 98 0 14 0 95 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 22 0 95 0 23 1 98 0 24 1 98 0 25 0 95 0 26 1 102 0 27 0 95 0 28 1 98 0 29 1 98 0 30 0 95 0 31 1 98 0 32 1 98 0 33 1 98 0 34 0 95 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 41 0 95 0 42 1 98 0 43 1 98 0 44 1 98 0 45 1 98 0 46 1 102 0 47 0 95 0 49 1 102 0 52 1 102 0 53 1 102 0 57 1 102 0 58 1 102 0 59 1 102 0 60 1 102 0 61 1 102 0 62 1 102 0 65 1 102 0 69 1 102 0 72 1 102 0 73 1 102 0 74 1 98 0 76 1 102 0 77 1 102 0 79 1 102 0 82 1 102 0 83 1 102 0 84 1 102 0 85 1 102 0 90 1 98 0 91 1 102 0 95 1 102 0 98 1 102 0 99 1 102 0 101 1 102 0 104 1 102 0 108 1 98 0 111 1 102 0 112 1 102 0 114 1 102 0 115 1 102 0 116 1 102 0 118 1 102 0 119 1 102 0 120 1 102 0 121 1 98 0 123 0 95 0 124 1 98 0 125 1 98 0 126 1 98 0 127 1 102 0 128 1 98 1 84] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 5 221 0 29] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 1 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 1 118 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 1 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 1 126 0 1 0 99 0 5 0 10 0 6 0 99 0 8 0 99 0 10 1 126 0 12 1 126 0 13 1 126 0 16 1 126 0 17 0 10 0 23 0 99 0 27 0 103 0 35 1 126 0 40 1 126 0 43 0 99 0 47 0 53 0 49 1 126 0 50 1 126 0 52 1 126 0 53 1 126 0 57 1 126 0 58 1 126 0 59 1 126 0 63 0 99 0 65 1 126 0 67 1 126 0 69 1 126 0 70 1 126 0 75 1 126 0 77 1 126 0 83 1 126 0 84 1 126 0 87 1 126 0 88 1 126 0 89 0 99 0 90 1 126 0 96 1 126 0 98 1 126 0 99 1 126 0 100 1 126 0 103 1 126 0 107 1 126 0 110 1 126 0 113 1 126 0 114 1 126 0 116 1 126 0 119 1 126 0 121 0 99 0 128 1 126 0 129 1 126 0 131 1 126 0 132 1 126 0 133 1 126 0 134 1 126 0 135 1 126 0 136 1 126 0 137 3 133 0 244 1 105 0 245 1 105 0 246] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 5 225 0 185 5 225 0 186 5 225 0 188 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 3 153 1 2 3 157 1 3 1 133 1 6 4 181 1 8 1 141 1 10 5 233 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 5 225 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 1 130 0 1 0 107 0 5 0 18 0 6 0 107 0 8 0 107 0 10 1 130 0 12 1 130 0 13 1 130 0 16 1 130 0 17 0 18 0 23 0 107 0 27 0 111 0 35 1 130 0 40 1 130 0 43 0 107 0 47 0 53 0 49 1 130 0 50 1 130 0 52 1 130 0 53 1 130 0 57 1 130 0 58 1 130 0 59 0 85 0 61 1 130 0 63 0 107 0 65 1 130 0 67 1 130 0 69 1 130 0 70 1 130 0 75 1 130 0 77 1 130 0 83 1 130 0 84 1 130 0 87 1 130 0 88 1 130 0 89 0 107 0 90 1 130 0 96 1 130 0 98 1 130 0 99 1 130 0 100 1 130 0 103 1 130 0 107 1 130 0 110 1 130 0 113 1 130 0 114 1 130 0 116 1 130 0 119 0 205 0 120 1 130 0 121 0 107 0 128 1 130 0 129 1 130 0 131 1 130 0 132 1 130 0 133 1 130 0 134 1 130 0 135 1 130 0 136 1 130 0 137 3 161 0 244 1 105 0 245 1 105 0 246 3 165 1 7 3 169 1 8] 
#[0 1 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 5 237 0 162 2 193 0 163 5 237 0 164 5 237 0 170 5 237 0 171 5 237 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 1 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 5 241 0 162 2 193 0 163 5 241 0 164 5 241 0 170 5 241 0 171 5 241 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 0 22 0 10 0 22 0 47 5 245 0 67 5 249 0 87 0 22 0 90 0 22 0 106 0 22 0 128] 
#[0 0 115 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 5 253 0 5 6 21 0 31 3 181 0 35 6 5 0 36 6 9 0 107 6 13 0 128 6 17 0 151 6 21 0 152 6 25 0 153 6 29 0 154 6 29 0 155 6 29 0 156] 
#[0 1 146 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 6 41 0 46 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 6 45 0 190 3 17 0 191 3 21 0 192 3 25 0 193 6 49 0 194 3 29 0 195 3 33 0 197 3 37 0 201 6 45 0 202 6 45 0 205 6 45 0 206 6 45 0 207 6 45 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 6 45 0 224 1 61 0 225 6 45 0 238 6 45 0 240 6 45 0 241 6 45 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 1 154 0 1 1 154 0 5 1 154 0 8 1 154 0 10 1 154 0 12 1 154 0 13 1 154 0 16 1 154 0 17 1 154 0 27 1 154 0 35 1 154 0 40 1 154 0 43 1 154 0 47 1 154 0 50 1 154 0 52 1 154 0 53 1 154 0 57 1 154 0 58 1 154 0 59 1 154 0 63 0 119 0 65 1 154 0 67 1 154 0 69 1 154 0 70 1 154 0 75 1 154 0 77 1 154 0 83 1 154 0 84 1 154 0 87 1 154 0 88 1 154 0 89 1 154 0 90 1 154 0 96 1 154 0 98 1 154 0 99 1 154 0 100 1 154 0 103 1 154 0 107 1 154 0 110 1 154 0 113 1 154 0 114 1 154 0 116 1 154 0 119 1 154 0 121 0 123 0 128 1 154 0 129 1 154 0 131 1 154 0 132 1 154 0 133 1 154 0 134 1 154 0 135 1 154 0 136 1 154 0 137 3 189 0 220 3 193 1 27 3 193 1 60 1 189 1 62] 
#[0 6 53 0 8] 
#[0 6 57 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 6 69 0 185 6 69 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 6 73 0 29] 
#[0 6 77 0 28] 
#[0 6 81 0 26] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 6 85 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 6 89 0 162 2 193 0 163 6 89 0 164 6 89 0 170 6 89 0 171 6 89 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 6 93 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 6 93 0 202 6 93 0 205 6 93 0 206 6 93 0 207 6 93 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 6 93 0 224 1 61 0 225 6 93 0 238 6 93 0 240 6 93 0 241 6 93 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 6 97 0 29] 
#[0 0 74 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 1 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 6 101 0 8] 
#[0 6 105 0 128] 
#[0 6 109 0 8] 
#[0 0 86 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 128] 
#[0 6 113 0 128] 
#[1 6 117 0 8 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 6 121 0 165 6 125 0 166 4 181 0 214 4 181 0 215 6 129 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[0 6 133 0 8] 
#[0 1 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 6 137 0 29] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 6 141 0 28 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 6 149 0 185 6 149 0 186 6 149 0 188 3 125 0 218 1 37 0 219 1 41 0 220 6 153 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 6 149 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 6 157 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 6 161 0 23 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 6 165 0 162 2 193 0 163 6 165 0 164 6 165 0 170 6 165 0 171 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 6 169 0 29] 
#[0 6 173 0 8] 
#[0 1 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 1 170 0 9 2 193 0 10 2 193 0 12 1 225 0 13 1 170 0 15 2 193 0 16 1 233 0 17 1 170 0 23 1 170 0 26 1 237 0 27 1 170 0 28 3 109 0 35 1 170 0 36 2 193 0 40 2 193 0 43 1 170 0 46 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 1 170 0 124 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 6 177 0 185 6 177 0 186 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 6 177 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83 1 170 1 84] 
#[0 1 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 1 253 0 42 6 181 0 193] 
#[0 1 178 0 8] 
#[0 6 185 0 8] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 43 0 5 0 43 0 6 0 154 0 7 0 43 0 8 0 43 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 43 0 23 0 154 0 24 0 154 0 25 6 189 0 26 0 158 0 27 0 43 0 28 0 47 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 43 0 35 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 43 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 158 0 47 0 43 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 154 0 123 0 154 0 124 0 154 0 125 0 154 0 126 0 154 0 127 0 158 0 128] 
#[0 1 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 133 1 84] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 1 218 0 2 1 218 0 3 1 218 0 4 1 218 0 5 1 218 0 6 1 218 0 7 0 127 0 8 0 127 0 9 1 218 0 10 1 218 0 11 1 218 0 12 1 218 0 13 1 218 0 14 0 127 0 15 1 218 0 16 1 218 0 17 1 218 0 18 1 218 0 19 1 218 0 20 1 218 0 21 1 218 0 22 1 218 0 23 1 218 0 24 1 218 0 25 0 127 0 28 1 218 0 29 1 218 0 30 0 127 0 31 1 218 0 32 1 218 0 33 1 218 0 34 0 127 0 35 1 218 0 37 1 218 0 38 1 218 0 39 1 218 0 41 0 166 0 42 1 218 0 43 1 218 0 44 1 218 0 45 1 218 0 46 0 166 0 49 1 218 0 123 1 218 0 124 1 218 0 125 1 218 0 126 1 218 0 127] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 6 193 0 8 1 253 0 42 6 197 0 157 6 201 0 193] 
#[1 1 226 0 2 1 226 0 3 1 226 0 4 1 226 0 5 1 226 0 6 1 226 0 7 6 205 0 8 1 226 0 9 1 226 0 10 1 226 0 11 1 226 0 12 6 209 0 13 1 226 0 14 1 226 0 15 1 226 0 16 6 213 0 17 1 226 0 18 6 217 0 19 1 226 0 20 6 221 0 21 1 226 0 22 1 226 0 23 1 226 0 24 1 226 0 25 1 226 0 26 1 226 0 28 1 226 0 29 1 226 0 30 1 226 0 31 1 226 0 32 1 226 0 33 1 226 0 34 6 225 0 35 1 226 0 36 1 226 0 37 1 226 0 38 1 226 0 39 1 226 0 41 1 226 0 43 1 226 0 44 1 226 0 45 1 226 0 46 1 226 0 123 1 226 0 124 1 226 0 125 1 226 0 126 1 226 0 127 1 226 1 84] 
#[0 6 229 0 8] 
#[0 1 230 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 6 233 0 162 2 193 0 163 6 233 0 164 6 233 0 170 6 233 0 171 6 233 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 1 234 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 238 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 242 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 246 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 1 250 0 2 1 250 0 3 1 250 0 4 1 250 0 5 1 250 0 6 1 250 0 7 1 250 0 9 1 250 0 10 1 250 0 11 1 250 0 12 1 250 0 14 1 250 0 15 1 250 0 16 1 250 0 18 6 237 0 20 6 241 0 22 1 250 0 23 1 250 0 24 1 250 0 25 1 250 0 26 1 250 0 28 1 250 0 29 1 250 0 30 1 250 0 31 1 250 0 32 1 250 0 33 1 250 0 34 1 250 0 36 1 250 0 37 1 250 0 38 1 250 0 39 1 250 0 41 1 250 0 43 1 250 0 44 1 250 0 45 1 250 0 46 1 250 0 123 1 250 0 124 1 250 0 125 1 250 0 126 1 250 0 127 1 250 1 84] 
#[1 1 254 0 2 6 245 0 3 1 254 0 4 1 254 0 5 1 254 0 6 1 254 0 7 1 254 0 9 6 249 0 10 1 254 0 11 1 254 0 12 1 254 0 14 1 254 0 15 1 254 0 16 1 254 0 18 1 254 0 23 6 253 0 24 1 254 0 25 1 254 0 26 1 254 0 28 1 254 0 29 1 254 0 30 1 254 0 31 1 254 0 32 1 254 0 33 1 254 0 34 1 254 0 36 1 254 0 37 1 254 0 38 1 254 0 39 1 254 0 41 1 254 0 43 1 254 0 44 1 254 0 45 1 254 0 46 1 254 0 123 1 254 0 124 1 254 0 125 1 254 0 126 1 254 0 127 1 254 1 84] 
#[1 2 2 0 2 2 2 0 4 2 2 0 5 2 2 0 6 2 2 0 7 2 2 0 9 2 2 0 11 7 1 0 12 2 2 0 14 2 2 0 15 7 5 0 16 2 2 0 18 2 2 0 23 2 2 0 25 2 2 0 26 2 2 0 28 2 2 0 29 2 2 0 30 2 2 0 31 2 2 0 32 2 2 0 33 2 2 0 34 2 2 0 36 2 2 0 37 2 2 0 38 2 2 0 39 2 2 0 41 2 2 0 43 2 2 0 44 2 2 0 45 2 2 0 46 2 2 0 123 2 2 0 124 2 2 0 125 2 2 0 126 2 2 0 127 2 2 1 84] 
#[1 2 6 0 2 2 6 0 4 2 6 0 5 2 6 0 6 2 6 0 7 2 6 0 9 2 6 0 11 2 6 0 14 2 6 0 15 2 6 0 18 2 6 0 23 2 6 0 25 2 6 0 26 2 6 0 28 2 6 0 29 2 6 0 30 2 6 0 31 2 6 0 32 2 6 0 33 2 6 0 34 2 6 0 36 2 6 0 37 2 6 0 38 2 6 0 39 2 6 0 41 2 6 0 43 2 6 0 44 2 6 0 45 2 6 0 46 7 17 0 123 2 6 0 124 7 17 0 125 2 6 0 126 2 6 0 127 7 17 0 177 2 6 1 84] 
#[1 2 10 0 2 2 10 0 4 2 10 0 5 2 10 0 6 2 10 0 7 2 10 0 9 2 10 0 11 2 10 0 14 2 10 0 15 2 10 0 18 2 10 0 23 2 10 0 25 2 10 0 26 2 10 0 28 7 21 0 29 7 25 0 30 2 10 0 31 2 10 0 32 7 29 0 33 2 10 0 34 2 10 0 36 2 10 0 37 2 10 0 38 2 10 0 39 2 10 0 41 2 10 0 43 2 10 0 44 2 10 0 45 2 10 0 46 0 131 0 124 2 10 0 126 2 10 0 127 2 10 1 84] 
#[1 7 37 0 2 2 14 0 4 2 14 0 5 2 14 0 6 2 14 0 7 2 14 0 9 2 14 0 11 2 14 0 14 2 14 0 15 2 14 0 18 2 14 0 23 2 14 0 25 2 14 0 26 2 14 0 28 2 14 0 31 7 41 0 32 2 14 0 34 2 14 0 36 2 14 0 37 2 14 0 38 2 14 0 39 2 14 0 41 2 14 0 43 2 14 0 44 2 14 0 45 2 14 0 46 2 14 0 124 2 14 0 126 2 14 0 127 2 14 1 84] 
#[1 2 18 0 4 7 45 0 5 2 18 0 6 2 18 0 7 2 18 0 9 2 18 0 11 2 18 0 14 2 18 0 15 2 18 0 18 2 18 0 23 2 18 0 25 2 18 0 26 2 18 0 28 2 18 0 31 2 18 0 34 2 18 0 36 2 18 0 37 2 18 0 38 2 18 0 39 2 18 0 41 2 18 0 43 2 18 0 44 2 18 0 45 2 18 0 46 2 18 0 124 2 18 0 126 2 18 0 127 2 18 1 84] 
#[1 2 22 0 4 2 22 0 6 2 22 0 7 2 22 0 9 2 22 0 11 2 22 0 14 2 22 0 15 2 22 0 18 2 22 0 23 2 22 0 25 2 22 0 26 2 22 0 28 2 22 0 31 2 22 0 34 2 22 0 36 7 49 0 37 2 22 0 38 2 22 0 39 2 22 0 41 2 22 0 43 2 22 0 44 2 22 0 45 2 22 0 46 2 22 0 124 2 22 0 126 2 22 0 127 2 22 1 84] 
#[1 2 26 0 4 2 26 0 6 2 26 0 7 2 26 0 9 2 26 0 11 2 26 0 14 2 26 0 15 2 26 0 18 2 26 0 23 2 26 0 25 2 26 0 26 2 26 0 28 2 26 0 31 2 26 0 34 2 26 0 36 2 26 0 38 2 26 0 39 2 26 0 41 7 53 0 43 2 26 0 44 2 26 0 45 2 26 0 46 2 26 0 124 2 26 0 126 2 26 0 127 2 26 1 84] 
#[1 2 30 0 4 7 57 0 6 2 30 0 7 2 30 0 9 2 30 0 11 2 30 0 14 2 30 0 15 2 30 0 18 2 30 0 23 2 30 0 25 2 30 0 26 2 30 0 28 2 30 0 31 2 30 0 34 2 30 0 36 2 30 0 38 7 61 0 39 2 30 0 41 2 30 0 44 2 30 0 45 2 30 0 46 2 30 0 124 2 30 0 126 2 30 0 127 2 30 1 84] 
#[1 7 121 0 4 7 121 0 7 2 34 0 9 7 121 0 11 7 121 0 14 2 34 0 15 7 121 0 18 2 34 0 23 7 121 0 25 2 34 0 26 2 34 0 28 7 121 0 31 7 93 0 34 2 34 0 36 7 121 0 38 7 101 0 41 7 121 0 44 7 109 0 45 2 34 0 46 2 34 0 124 7 121 0 126 7 121 0 127 7 121 0 187 2 34 1 84] 
#[0 2 38 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 1 84] 
#[0 2 42 0 9 0 15 0 26 0 28 0 36 1 84] 
#[1 7 125 0 15 7 129 0 28] 
#[0 0 0 1 84] 
#[0 2 46 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 2 50 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 2 54 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 2 58 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 2 62 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 2 66 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 2 70 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 2 74 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 5 17 0 28 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 5 21 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 226 0 5 0 226 0 6 0 135 0 8 0 226 0 9 0 226 0 10 0 226 0 15 0 226 0 23 0 226 0 27 0 226 0 28 0 226 0 35 6 145 0 42 0 226 0 47 0 226 0 49 0 226 0 52 0 226 0 53 0 226 0 57 0 226 0 58 0 226 0 59 0 226 0 60 0 226 0 61 0 226 0 62 0 226 0 65 0 226 0 69 0 226 0 72 0 226 0 73 0 226 0 74 0 226 0 77 0 226 0 79 0 226 0 82 0 226 0 83 0 226 0 84 0 226 0 85 0 226 0 90 0 226 0 95 0 226 0 98 0 226 0 99 0 226 0 101 0 226 0 104 0 226 0 108 0 226 0 112 0 226 0 114 0 226 0 115 0 226 0 116 0 226 0 118 0 226 0 119 0 226 0 120 0 226 0 121 0 226 0 124 0 226 0 128 7 137 1 26] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 7 141 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 5 65 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 7 145 0 191 7 149 0 192 7 153 0 193 7 157 0 195 7 161 0 197 7 165 0 201 1 9 0 210 7 169 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 5 73 0 245 5 73 0 246 5 77 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 7 173 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 5 93 0 8 1 46 0 15 1 46 0 28 7 177 0 31 6 145 0 42 5 129 1 22 5 129 1 23 5 129 1 26] 
#[1 1 110 0 5 1 110 0 6 0 139 0 8 1 110 0 9 1 110 0 10 1 110 0 15 1 110 0 23 1 110 0 27 1 110 0 28 1 110 0 35 6 145 0 42 1 110 0 47 1 110 0 49 1 110 0 52 1 110 0 53 1 110 0 57 1 110 0 58 1 110 0 59 1 110 0 60 1 110 0 61 1 110 0 62 1 110 0 65 1 110 0 69 1 110 0 72 1 110 0 73 1 110 0 74 1 110 0 77 1 110 0 79 1 110 0 82 1 110 0 83 1 110 0 84 1 110 0 85 1 110 0 90 1 110 0 95 1 110 0 98 1 110 0 99 1 110 0 101 1 110 0 104 1 110 0 108 1 110 0 112 1 110 0 114 1 110 0 115 1 110 0 116 1 110 0 118 1 110 0 119 1 110 0 120 1 110 0 121 1 110 0 124 1 110 0 128 7 185 1 26] 
#[0 2 78 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 2 82 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 1 84] 
#[0 2 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 90 0 2 2 90 0 3 2 90 0 4 2 90 0 5 2 90 0 6 2 90 0 7 2 90 0 8 2 90 0 9 2 90 0 10 2 90 0 11 2 90 0 12 2 90 0 13 2 90 0 14 2 90 0 15 2 90 0 16 2 90 0 17 2 90 0 18 2 90 0 19 2 90 0 20 2 90 0 21 2 90 0 22 2 90 0 23 2 90 0 24 2 90 0 25 2 90 0 26 2 90 0 28 2 90 0 29 2 90 0 30 2 90 0 31 2 90 0 32 2 90 0 33 2 90 0 34 2 90 0 35 2 90 0 36 2 90 0 37 2 90 0 38 2 90 0 39 2 90 0 41 2 90 0 43 2 90 0 44 2 90 0 45 2 90 0 46 2 90 0 123 2 90 0 124 2 90 0 125 2 90 0 126 2 90 0 127 7 189 0 133 2 90 1 84] 
#[0 2 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 5 225 0 185 5 225 0 186 5 225 0 188 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 5 233 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 5 225 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 1 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 5 253 0 5 6 21 0 31 6 5 0 36 6 9 0 107 6 13 0 128 6 17 0 151 6 21 0 152 6 25 0 153 6 29 0 154 6 29 0 155 6 29 0 156] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 0 49 0 47 0 141 0 90 4 241 0 106 4 245 0 128 4 249 0 146 4 253 0 219 4 253 1 27 4 249 1 47 1 169 1 54 1 173 1 55 5 1 1 60 4 249 1 61 1 189 1 62] 
#[1 7 125 0 15 0 0 1 84] 
#[1 7 133 0 8 6 145 0 42 7 137 1 26] 
#[1 7 181 0 8 6 145 0 42 7 185 1 26] 
#[1 2 106 0 2 2 106 0 3 2 106 0 4 2 106 0 5 2 106 0 6 2 106 0 7 2 106 0 8 2 106 0 9 2 106 0 10 2 106 0 11 2 106 0 12 2 106 0 13 2 106 0 14 2 106 0 15 2 106 0 16 2 106 0 17 2 106 0 18 2 106 0 19 2 106 0 20 2 106 0 21 2 106 0 22 2 106 0 23 2 106 0 24 2 106 0 25 2 106 0 26 2 106 0 27 2 106 0 28 2 106 0 29 2 106 0 30 2 106 0 31 2 106 0 32 2 106 0 33 2 106 0 34 0 143 0 35 2 106 0 36 2 106 0 37 2 106 0 38 2 106 0 39 2 106 0 41 2 106 0 42 2 106 0 43 2 106 0 44 2 106 0 45 2 106 0 46 2 106 0 47 0 147 0 49 2 106 0 65 2 106 0 76 2 106 0 90 2 106 0 91 2 106 0 111 2 106 0 123 2 106 0 124 2 106 0 125 2 106 0 126 2 106 0 127 2 106 0 128 5 73 0 245 5 73 0 246 2 106 1 84] 
#[1 2 110 0 2 2 110 0 3 2 110 0 4 2 110 0 5 2 110 0 6 2 110 0 7 2 110 0 8 2 110 0 9 2 110 0 10 2 110 0 11 2 110 0 12 2 110 0 13 2 110 0 14 2 110 0 15 2 110 0 16 2 110 0 17 2 110 0 18 2 110 0 19 2 110 0 20 2 110 0 21 2 110 0 22 2 110 0 23 2 110 0 24 2 110 0 25 2 110 0 26 2 110 0 27 2 110 0 28 2 110 0 29 2 110 0 30 2 110 0 31 2 110 0 32 2 110 0 33 2 110 0 34 0 151 0 35 2 110 0 36 2 110 0 37 2 110 0 38 2 110 0 39 2 110 0 41 2 110 0 42 2 110 0 43 2 110 0 44 2 110 0 45 2 110 0 46 2 110 0 47 0 155 0 49 2 110 0 65 2 110 0 76 2 110 0 90 2 110 0 91 2 110 0 111 2 110 0 123 2 110 0 124 2 110 0 125 2 110 0 126 2 110 0 127 2 110 0 128 5 73 0 245 5 73 0 246 2 110 1 84] 
#[1 4 237 0 10 0 49 0 47 0 141 0 90 7 193 0 106 7 197 0 128 4 249 0 146 4 249 1 47 1 169 1 54 1 173 1 55 7 201 1 60 4 249 1 61 1 189 1 62] 
#[0 5 29 0 27] 
#[0 5 33 0 27] 
#[0 7 205 0 9] 
#[1 0 79 0 8 1 54 0 9 1 54 0 15 1 54 0 23 1 54 0 26 1 54 0 28 1 54 0 31 5 161 0 35 1 54 0 42 1 54 0 76 1 54 0 91 1 54 0 111 1 54 0 124 7 209 1 4] 
#[1 2 114 0 2 2 114 0 3 2 114 0 4 2 114 0 5 2 114 0 6 2 114 0 7 2 114 0 8 2 114 0 9 2 114 0 10 2 114 0 11 2 114 0 12 2 114 0 13 2 114 0 14 2 114 0 15 2 114 0 16 2 114 0 17 2 114 0 18 2 114 0 19 2 114 0 20 2 114 0 21 2 114 0 22 2 114 0 23 2 114 0 24 2 114 0 25 2 114 0 26 2 114 0 27 2 114 0 28 2 114 0 29 2 114 0 30 2 114 0 31 2 114 0 32 2 114 0 33 2 114 0 34 0 159 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 39 2 114 0 41 2 114 0 42 2 114 0 43 2 114 0 44 2 114 0 45 2 114 0 46 2 114 0 47 0 163 0 49 0 85 0 61 2 114 0 65 2 114 0 76 2 114 0 90 2 114 0 91 2 114 0 111 0 205 0 120 2 114 0 123 2 114 0 124 2 114 0 125 2 114 0 126 2 114 0 127 2 114 0 128 5 73 0 245 5 73 0 246 7 213 1 7 3 169 1 8 2 114 1 84] 
#[0 2 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 2 122 0 2 2 122 0 3 2 122 0 4 2 122 0 5 2 122 0 6 2 122 0 7 2 122 0 8 2 122 0 9 2 122 0 10 2 122 0 11 2 122 0 12 2 122 0 13 2 122 0 14 2 122 0 15 2 122 0 16 2 122 0 17 2 122 0 18 2 122 0 19 2 122 0 20 2 122 0 21 2 122 0 22 2 122 0 23 2 122 0 24 2 122 0 25 2 122 0 26 2 122 0 27 2 122 0 28 2 122 0 29 2 122 0 30 2 122 0 31 2 122 0 32 2 122 0 33 2 122 0 34 2 122 0 35 2 122 0 36 2 122 0 37 2 122 0 38 2 122 0 39 2 122 0 41 2 122 0 42 2 122 0 43 2 122 0 44 2 122 0 45 2 122 0 46 2 122 0 47 2 122 0 49 0 85 0 61 2 122 0 65 2 122 0 76 2 122 0 88 2 122 0 90 2 122 0 91 2 122 0 109 2 122 0 111 0 205 0 120 2 122 0 123 2 122 0 124 2 122 0 125 2 122 0 126 2 122 0 127 2 122 0 128 7 217 1 7 3 169 1 8 2 122 1 84] 
#[0 2 126 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[1 0 49 0 47 0 141 0 90 7 193 0 106 7 197 0 128 4 249 0 146 4 249 1 47 1 169 1 54 1 173 1 55 7 201 1 60 4 249 1 61 1 189 1 62] 
#[1 2 130 0 15 2 130 0 36 7 221 0 128 7 225 0 247 7 229 0 248 7 233 0 249 7 237 0 250 7 241 0 251] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 167 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 158 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 158 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 158 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 158 0 123 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128 0 158 1 84] 
#[0 2 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 7 245 0 185 7 245 0 189 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 7 249 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 7 253 0 133] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 8 1 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 8 5 0 185 8 5 0 186 8 5 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 8 5 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 2 142 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[0 2 146 0 26 0 27 0 35 0 42 0 49 0 65 0 128] 
#[1 2 150 0 2 2 150 0 3 2 150 0 4 2 150 0 5 2 150 0 6 2 150 0 7 2 150 0 8 2 150 0 9 2 150 0 10 2 150 0 11 2 150 0 12 2 150 0 13 2 150 0 14 2 150 0 15 2 150 0 16 2 150 0 17 2 150 0 18 2 150 0 19 2 150 0 20 2 150 0 21 2 150 0 22 2 150 0 23 2 150 0 24 2 150 0 25 2 150 0 26 0 171 0 27 2 150 0 28 0 175 0 29 2 150 0 30 2 150 0 31 2 150 0 32 2 150 0 33 2 150 0 34 2 150 0 35 2 150 0 36 2 150 0 37 2 150 0 38 2 150 0 39 2 150 0 41 2 150 0 42 2 150 0 43 2 150 0 44 2 150 0 45 2 150 0 46 2 150 0 47 2 150 0 49 2 150 0 52 2 150 0 53 2 150 0 57 2 150 0 58 2 150 0 59 2 150 0 60 2 150 0 61 2 150 0 62 2 150 0 65 2 150 0 69 2 150 0 72 2 150 0 73 2 150 0 74 2 150 0 76 2 150 0 77 2 150 0 79 2 150 0 82 2 150 0 83 2 150 0 84 2 150 0 85 2 150 0 90 2 150 0 91 2 150 0 95 2 150 0 98 2 150 0 99 2 150 0 101 2 150 0 104 2 150 0 108 2 150 0 111 2 150 0 112 2 150 0 114 2 150 0 115 2 150 0 116 2 150 0 118 2 150 0 119 2 150 0 120 2 150 0 121 2 150 0 123 2 150 0 124 2 150 0 125 2 150 0 126 2 150 0 127 2 150 0 128 2 150 1 84] 
#[1 8 9 0 106 8 13 0 128 8 17 1 60 1 189 1 62] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 8 21 0 204 8 21 0 205 8 21 0 206 8 21 0 207 8 21 0 208 8 21 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 8 21 0 224 1 61 0 225 8 21 0 232 8 21 0 233 8 21 0 234 8 21 0 236 8 21 0 238 8 21 0 240 8 21 0 241 8 21 0 242 8 21 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 8 21 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 8 21 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 8 21 1 66 8 21 1 67] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 8 25 0 42 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 8 29 0 204 8 29 0 205 8 29 0 206 8 29 0 207 8 29 0 208 8 29 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 8 29 0 224 1 61 0 225 8 29 0 232 8 29 0 233 8 29 0 234 8 29 0 236 8 29 0 238 8 29 0 240 8 29 0 241 8 29 0 242 8 29 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 8 29 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 8 29 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 8 29 1 66 8 29 1 67] 
#[1 8 33 0 42 8 37 0 128 8 41 0 235] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 2 154 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 8 45 0 203 0 241 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 0 241 0 224 1 61 0 225 0 241 0 232 0 241 0 233 0 241 0 234 0 241 0 236 8 49 0 237 0 241 0 238 0 241 0 240 0 241 0 241 0 241 0 242 0 241 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 0 241 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 0 241 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 0 241 1 66 0 241 1 67] 
#[1 2 158 0 27 8 53 0 31 2 158 0 42] 
#[1 8 57 0 27 8 61 0 42] 
#[0 2 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 65 0 9] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 69 0 36] 
#[0 3 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 3 42 0 2 3 42 0 3 3 42 0 4 3 42 0 5 3 42 0 6 3 42 0 7 3 42 0 8 3 42 0 9 3 42 0 10 3 42 0 11 3 42 0 12 3 42 0 13 3 42 0 14 3 42 0 15 3 42 0 16 3 42 0 17 3 42 0 18 3 42 0 19 3 42 0 20 3 42 0 21 3 42 0 22 3 42 0 23 3 42 0 24 3 42 0 25 3 42 0 26 3 42 0 28 3 42 0 29 3 42 0 30 3 42 0 31 3 42 0 32 3 42 0 33 3 42 0 34 0 179 0 35 3 42 0 36 3 42 0 37 3 42 0 38 3 42 0 39 3 42 0 41 3 42 0 42 3 42 0 43 3 42 0 44 3 42 0 45 3 42 0 46 3 42 0 49 3 42 0 76 3 42 0 91 3 42 0 111 3 42 0 123 3 42 0 124 3 42 0 125 3 42 0 126 3 42 0 127 3 42 1 84] 
#[1 3 46 0 2 3 46 0 3 3 46 0 4 3 46 0 5 3 46 0 6 3 46 0 7 3 46 0 8 3 46 0 9 3 46 0 10 3 46 0 11 3 46 0 12 3 46 0 13 3 46 0 14 3 46 0 15 3 46 0 16 3 46 0 17 3 46 0 18 3 46 0 19 3 46 0 20 3 46 0 21 3 46 0 22 3 46 0 23 3 46 0 24 3 46 0 25 3 46 0 26 3 46 0 28 3 46 0 29 3 46 0 30 3 46 0 31 3 46 0 32 3 46 0 33 3 46 0 34 0 183 0 35 3 46 0 36 3 46 0 37 3 46 0 38 3 46 0 39 3 46 0 41 3 46 0 42 3 46 0 43 3 46 0 44 3 46 0 45 3 46 0 46 3 46 0 49 3 46 0 76 3 46 0 91 3 46 0 111 3 46 0 123 3 46 0 124 3 46 0 125 3 46 0 126 3 46 0 127 3 46 1 84] 
#[0 3 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 81 0 128] 
#[0 3 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 8 85 0 106 8 89 0 128 4 253 0 219 4 253 1 27 8 93 1 60 1 189 1 62] 
#[1 3 74 0 2 3 74 0 3 3 74 0 4 3 74 0 5 3 74 0 6 3 74 0 7 3 74 0 8 3 74 0 9 3 74 0 10 3 74 0 11 3 74 0 12 3 74 0 13 3 74 0 14 3 74 0 15 3 74 0 16 3 74 0 17 3 74 0 18 3 74 0 19 3 74 0 20 3 74 0 21 3 74 0 22 3 74 0 23 3 74 0 24 3 74 0 25 3 74 0 26 0 187 0 27 3 74 0 28 3 74 0 29 3 74 0 30 3 74 0 31 3 74 0 32 3 74 0 33 3 74 0 34 0 191 0 35 3 74 0 36 3 74 0 37 3 74 0 38 3 74 0 39 3 74 0 41 3 74 0 42 3 74 0 43 3 74 0 44 3 74 0 45 3 74 0 46 3 74 0 47 0 195 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 199 0 65 0 97 0 69 0 101 0 72 3 74 0 76 0 113 0 77 0 125 0 83 0 129 0 84 3 74 0 90 3 74 0 91 0 149 0 98 0 153 0 99 0 165 0 104 3 74 0 111 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 74 0 123 3 74 0 124 3 74 0 125 3 74 0 126 3 74 0 127 0 203 0 128 4 177 0 148 4 181 0 214 4 181 0 215 8 97 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 8 101 0 244 1 105 0 245 1 105 0 246 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65 3 74 1 84] 
#[1 3 78 0 2 3 78 0 3 3 78 0 4 0 207 0 5 0 211 0 6 3 78 0 7 3 78 0 8 3 78 0 9 0 215 0 10 3 78 0 11 3 78 0 12 3 78 0 13 3 78 0 14 3 78 0 15 3 78 0 16 3 78 0 17 3 78 0 18 3 78 0 19 3 78 0 20 3 78 0 21 3 78 0 22 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 0 37 0 27 3 78 0 28 3 78 0 29 3 78 0 30 3 78 0 31 3 78 0 32 3 78 0 33 3 78 0 34 3 78 0 35 3 78 0 36 3 78 0 37 3 78 0 38 3 78 0 39 3 78 0 41 3 78 0 42 3 78 0 43 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 49 0 93 0 65 3 78 0 76 3 78 0 91 3 78 0 111 3 78 0 123 3 78 0 124 3 78 0 125 3 78 0 126 3 78 0 127 3 185 0 128 8 105 0 148 3 145 0 219 3 149 0 220 8 109 1 6 3 145 1 27 8 113 1 49 3 145 1 60 1 189 1 62 3 78 1 84] 
#[1 5 41 0 26 0 37 0 27 0 45 0 35 0 250 0 42 0 53 0 49 0 93 0 65 8 117 0 128 5 49 0 148 3 145 0 219 3 149 0 220 5 53 0 226 8 121 0 244 1 105 0 245 1 105 0 246 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 3 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 8 125 0 185 8 125 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 8 129 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 8 133 0 106 1 17 0 108 0 177 0 112 8 137 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 8 141 0 124 3 185 0 128 4 177 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 1 9 1 8 8 161 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 8 157 1 57 8 161 1 58 8 161 1 59 1 37 1 60 1 189 1 62 1 9 1 65] 
#[0 3 90 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 8 169 0 106 8 173 0 128 8 177 1 60 1 189 1 62] 
#[1 0 219 0 47 0 223 0 90 0 22 0 106 0 227 0 128 8 185 0 146 8 185 1 47 1 169 1 54 1 173 1 55 8 185 1 60 8 185 1 61 1 189 1 62] 
#[1 0 37 0 27 0 93 0 65 8 193 0 128 8 197 0 148 3 145 0 219 3 149 0 220 8 201 0 230 8 205 0 231 3 145 1 27 3 145 1 60 1 189 1 62] 
#[1 0 37 0 27 0 93 0 65 3 185 0 128 8 209 0 148 3 145 0 219 3 149 0 220 3 145 1 27 3 145 1 60 1 189 1 62] 
#[1 0 158 0 27 0 162 0 29 8 213 0 31 0 45 0 35 0 53 0 49 8 217 0 244 1 105 0 245 1 105 0 246] 
#[1 0 49 0 47 0 141 0 90 8 9 0 106 7 197 0 128 8 221 0 146 8 221 1 47 1 169 1 54 1 173 1 55 7 201 1 60 8 221 1 61 1 189 1 62] 
#[1 3 94 0 2 3 94 0 3 3 94 0 4 3 94 0 5 3 94 0 6 3 94 0 7 3 94 0 8 3 94 0 9 3 94 0 10 3 94 0 11 3 94 0 12 3 94 0 13 3 94 0 14 3 94 0 15 3 94 0 16 3 94 0 17 3 94 0 18 3 94 0 19 3 94 0 20 3 94 0 21 3 94 0 22 3 94 0 23 3 94 0 24 3 94 0 25 3 94 0 26 3 94 0 27 3 94 0 28 3 94 0 29 3 94 0 30 3 94 0 31 3 94 0 32 3 94 0 33 3 94 0 34 0 231 0 35 3 94 0 36 3 94 0 37 3 94 0 38 3 94 0 39 3 94 0 41 3 94 0 42 3 94 0 43 3 94 0 44 3 94 0 45 3 94 0 46 3 94 0 47 0 235 0 49 0 85 0 61 3 94 0 65 3 94 0 76 3 94 0 90 3 94 0 91 3 94 0 111 0 205 0 120 3 94 0 123 3 94 0 124 3 94 0 125 3 94 0 126 3 94 0 127 3 94 0 128 8 225 0 244 1 105 0 245 1 105 0 246 8 229 1 7 3 169 1 8 3 94 1 84] 
#[1 0 49 0 47 0 141 0 90 8 181 0 128 8 233 0 146 8 233 1 47 1 169 1 54 1 173 1 55 8 237 1 60 8 233 1 61 1 189 1 62] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 43 0 5 0 43 0 6 0 154 0 7 0 43 0 8 0 43 0 9 0 43 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 43 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 43 0 23 0 154 0 24 0 154 0 25 0 43 0 26 0 239 0 27 0 43 0 28 0 47 0 29 0 154 0 30 0 43 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 43 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 43 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 158 0 47 0 43 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 154 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 154 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 154 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 154 0 123 0 43 0 124 0 154 0 125 0 154 0 126 0 154 0 127 0 158 0 128 0 154 1 84] 
#[0 3 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 1 98 0 2 1 98 0 3 1 98 0 4 0 95 0 5 0 95 0 6 1 98 0 7 0 95 0 8 0 95 0 9 0 95 0 10 1 98 0 11 1 98 0 12 1 98 0 13 1 98 0 14 0 95 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 22 0 95 0 23 1 98 0 24 1 98 0 25 0 95 0 26 0 243 0 27 0 95 0 28 1 98 0 29 1 98 0 30 0 95 0 31 1 98 0 32 1 98 0 33 1 98 0 34 0 95 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 41 0 95 0 42 1 98 0 43 1 98 0 44 1 98 0 45 1 98 0 46 1 102 0 47 0 95 0 49 1 102 0 52 1 102 0 53 1 102 0 57 1 102 0 58 1 102 0 59 1 102 0 60 1 102 0 61 1 102 0 62 1 102 0 65 1 102 0 69 1 102 0 72 1 102 0 73 1 102 0 74 1 98 0 76 1 102 0 77 1 102 0 79 1 102 0 82 1 102 0 83 1 102 0 84 1 102 0 85 1 102 0 90 1 98 0 91 1 102 0 95 1 102 0 98 1 102 0 99 1 102 0 101 1 102 0 104 1 102 0 108 1 98 0 111 1 102 0 112 1 102 0 114 1 102 0 115 1 102 0 116 1 102 0 118 1 102 0 119 1 102 0 120 1 102 0 121 1 98 0 123 0 95 0 124 1 98 0 125 1 98 0 126 1 98 0 127 1 102 0 128 1 98 1 84] 
#[0 3 106 0 5 0 6 0 8 0 10 0 23 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 3 110 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 65 0 90 0 124 0 128] 
#[1 3 114 0 5 3 114 0 6 3 114 0 8 3 114 0 9 3 114 0 10 3 114 0 15 3 114 0 23 3 114 0 26 3 114 0 27 3 114 0 28 3 114 0 31 0 247 0 35 3 114 0 47 0 251 0 49 3 114 0 65 3 114 0 90 3 114 0 124 3 114 0 128 5 73 0 245 5 73 0 246] 
#[0 3 118 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 5 85 0 15 8 249 0 28] 
#[1 5 93 0 8 1 46 0 15 5 97 0 26 1 46 0 28 5 101 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 193 8 253 1 21 5 129 1 22 5 129 1 23 5 129 1 26 9 1 1 37 5 145 1 38 5 149 1 50 5 153 1 69] 
#[0 3 122 0 10 0 47 0 90 0 106 0 128] 
#[0 3 126 0 10 0 47 0 90 0 106 0 128] 
#[1 9 5 0 46 9 21 0 128 9 13 0 227 9 17 0 228 9 21 0 229] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 9 25 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 5 41 0 26 0 158 0 27 9 29 0 28 0 162 0 29 3 130 0 42 9 33 0 226] 
#[1 8 9 0 106 9 37 0 128 8 17 1 60 1 189 1 62] 
#[0 3 134 0 42] 
#[1 5 41 0 26 0 37 0 27 0 45 0 35 3 138 0 42 0 53 0 49 0 93 0 65 9 41 0 128 9 45 0 148 3 145 0 219 3 149 0 220 9 49 0 226 5 73 0 245 5 73 0 246 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 3 142 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 9 53 0 86] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 9 57 0 255 1 117 1 0 9 61 1 1 9 61 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 3 146 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 5 85 0 15 9 65 0 28] 
#[1 5 93 0 8 1 46 0 15 5 97 0 26 1 46 0 28 5 101 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 193 9 69 1 21 5 129 1 22 5 129 1 23 5 129 1 26 9 73 1 37 5 145 1 38 5 149 1 50 5 153 1 69] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 9 77 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 3 150 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 9 81 0 160 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 89 1 24 9 93 1 25 9 89 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 0 37 0 27 0 93 0 65 9 101 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 9 129 1 44 9 121 1 51 9 125 1 52 9 129 1 53 9 113 1 60 1 189 1 62] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 9 133 0 66 9 137 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 141 0 185 9 141 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 141 1 24 9 141 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 141 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 5 105 0 42 2 193 0 43 9 145 0 46 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 149 0 185 9 149 0 186 3 9 0 188 6 45 0 190 3 17 0 191 3 21 0 192 3 25 0 193 6 49 0 194 3 29 0 195 3 33 0 197 3 37 0 201 6 45 0 202 6 45 0 205 6 45 0 206 6 45 0 207 6 45 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 6 45 0 224 1 61 0 225 6 45 0 238 6 45 0 240 6 45 0 241 6 45 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 9 89 1 24 9 153 1 25 9 89 1 26 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 9 149 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 3 154 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[0 3 158 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[1 5 97 0 26 1 253 0 42 9 157 0 193 9 161 1 50] 
#[0 3 162 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 3 166 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 3 170 0 15 0 28] 
#[0 3 174 0 15 0 23 0 28 0 36] 
#[0 3 178 0 15 0 23 0 28 0 36] 
#[1 5 97 0 26 9 165 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 193 9 169 1 21 9 173 1 38 5 149 1 50 5 153 1 69] 
#[0 3 182 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[1 1 253 0 42 9 177 0 193] 
#[0 3 186 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 3 190 0 9 9 181 0 23 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 1 9 1 8 9 185 1 17 9 189 1 18 9 193 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 1 9 1 65] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 9 197 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 9 201 0 185 9 201 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 3 194 0 8 3 194 0 9 3 194 0 15 9 205 0 19 3 194 0 23 3 194 0 26 3 194 0 28 3 194 0 31 3 194 0 35 3 194 0 42 3 194 0 76 3 194 0 91 3 194 0 111 3 194 0 124 9 209 1 5] 
#[0 3 198 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 3 202 0 8 3 202 0 9 3 202 0 15 3 202 0 23 3 202 0 26 3 202 0 28 3 202 0 31 0 255 0 35 3 202 0 42 0 53 0 49 3 202 0 76 3 202 0 91 3 202 0 111 3 202 0 124 5 73 0 245 5 73 0 246] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 9 217 0 28 0 45 0 35 9 221 0 46 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 10 37 0 92 10 37 0 93 10 37 0 94 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 9 237 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 9 241 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 9 245 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 10 25 0 206 10 25 0 208 1 9 0 210 10 1 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 10 25 0 240 10 9 0 244 1 105 0 245 1 105 0 246 10 13 1 1 10 13 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 10 25 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 10 21 1 33 10 25 1 34 10 29 1 35 10 33 1 36 10 37 1 46 0 225 1 47 1 169 1 54 1 173 1 55 10 25 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 10 69 0 92 10 69 0 93 10 69 0 94 10 45 0 118 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 10 49 0 244 1 105 0 245 1 105 0 246 9 113 1 27 10 53 1 42 10 57 1 43 10 65 1 44 10 65 1 45 10 69 1 46 9 113 1 60 1 189 1 62] 
#[1 3 206 0 2 3 206 0 3 3 206 0 4 3 206 0 5 3 206 0 6 3 206 0 7 3 206 0 8 3 206 0 9 3 206 0 10 3 206 0 11 3 206 0 12 3 206 0 13 3 206 0 14 3 206 0 15 3 206 0 16 3 206 0 17 3 206 0 18 3 206 0 19 3 206 0 20 3 206 0 21 3 206 0 22 3 206 0 23 3 206 0 24 3 206 0 25 1 3 0 26 1 3 0 27 3 206 0 28 1 7 0 29 3 206 0 30 3 206 0 31 3 206 0 32 3 206 0 33 3 206 0 34 3 206 0 35 3 206 0 36 3 206 0 37 3 206 0 38 3 206 0 39 3 206 0 41 1 3 0 42 3 206 0 43 3 206 0 44 3 206 0 45 3 206 0 46 3 206 0 47 3 206 0 49 3 206 0 52 3 206 0 53 3 206 0 57 3 206 0 58 3 206 0 59 3 206 0 60 3 206 0 61 3 206 0 62 3 206 0 65 3 206 0 69 3 206 0 72 3 206 0 73 3 206 0 74 1 3 0 76 3 206 0 77 3 206 0 79 3 206 0 82 3 206 0 83 3 206 0 84 3 206 0 85 3 206 0 90 3 206 0 91 3 206 0 95 3 206 0 98 3 206 0 99 3 206 0 101 3 206 0 104 3 206 0 108 3 206 0 111 3 206 0 112 3 206 0 114 3 206 0 115 3 206 0 116 3 206 0 118 3 206 0 119 3 206 0 120 3 206 0 121 3 206 0 123 3 206 0 124 3 206 0 125 3 206 0 126 3 206 0 127 3 206 0 128 3 206 1 84] 
#[1 10 73 0 106 10 77 0 128 10 81 1 27 10 85 1 60 1 189 1 62] 
#[1 5 181 0 26 0 37 0 27 0 45 0 35 3 210 0 42 0 53 0 49 0 93 0 65 10 89 0 128 10 93 0 148 3 145 0 219 3 149 0 220 5 73 0 245 5 73 0 246 5 197 1 27 10 97 1 30 10 101 1 41 5 197 1 60 1 189 1 62] 
#[1 3 214 0 26 1 70 0 27 3 214 0 42 3 214 0 76] 
#[1 5 181 0 26 3 218 0 42 10 109 0 76 10 109 1 31 10 113 1 41] 
#[0 3 222 0 42] 
#[1 3 226 0 2 3 226 0 3 3 226 0 4 3 226 0 5 3 226 0 6 3 226 0 7 3 226 0 8 3 226 0 9 3 226 0 10 3 226 0 11 3 226 0 12 3 226 0 13 3 226 0 14 3 226 0 15 3 226 0 16 3 226 0 17 3 226 0 18 3 226 0 19 3 226 0 20 3 226 0 21 3 226 0 22 3 226 0 23 3 226 0 24 3 226 0 25 1 11 0 26 1 11 0 27 3 226 0 28 3 226 0 29 3 226 0 30 3 226 0 31 3 226 0 32 3 226 0 33 3 226 0 34 3 226 0 35 3 226 0 36 3 226 0 37 3 226 0 38 3 226 0 39 3 226 0 41 1 11 0 42 3 226 0 43 3 226 0 44 3 226 0 45 3 226 0 46 3 226 0 47 3 226 0 49 3 226 0 52 3 226 0 53 3 226 0 57 3 226 0 58 3 226 0 59 3 226 0 60 3 226 0 61 3 226 0 62 3 226 0 65 3 226 0 69 3 226 0 72 3 226 0 73 3 226 0 74 1 11 0 76 3 226 0 77 3 226 0 79 3 226 0 82 3 226 0 83 3 226 0 84 3 226 0 85 3 226 0 90 3 226 0 91 3 226 0 95 3 226 0 98 3 226 0 99 3 226 0 101 3 226 0 104 3 226 0 108 3 226 0 111 3 226 0 112 3 226 0 114 3 226 0 115 3 226 0 116 3 226 0 118 3 226 0 119 3 226 0 120 3 226 0 121 3 226 0 123 3 226 0 124 3 226 0 125 3 226 0 126 3 226 0 127 3 226 0 128 3 226 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 10 117 0 124 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 10 121 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 10 137 0 185 10 137 0 189 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 10 137 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 10 133 1 63 10 137 1 64 3 65 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 10 141 0 124 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 10 121 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 10 137 0 185 10 137 0 189 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 10 137 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 10 145 1 63 10 137 1 64 3 65 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 10 149 0 124 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 10 121 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 10 137 0 185 10 137 0 189 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 10 137 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 10 153 1 63 10 137 1 64 3 65 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 10 157 0 9 7 125 0 15] 
#[1 0 17 0 5 0 21 0 6 10 161 0 8 3 230 0 9 0 29 0 10 3 230 0 15 1 15 0 23 0 37 0 27 3 230 0 28 10 169 0 35 0 93 0 65 3 230 0 124 3 185 0 128 8 105 0 148 3 145 0 219 3 149 0 220 10 173 1 4 10 177 1 6 10 181 1 12 10 181 1 13 10 189 1 14 10 181 1 15 10 197 1 16 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 10 201 0 9] 
#[0 3 234 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 3 238 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 10 205 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 10 209 0 162 2 193 0 163 10 209 0 164 10 209 0 170 10 209 0 171 10 209 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 10 213 0 8 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 10 217 0 165 10 221 0 166 4 181 0 214 4 181 0 215 6 129 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 3 242 0 15 3 242 0 36 10 225 0 128] 
#[0 3 246 0 15 0 36] 
#[0 3 250 0 8 0 42] 
#[0 3 254 0 15 0 23 0 36] 
#[1 5 93 0 8 4 2 0 15 4 2 0 23 7 177 0 31 4 2 0 36 6 145 0 42 10 229 1 22 10 229 1 23 10 229 1 26] 
#[0 10 233 0 36] 
#[1 10 237 0 15 4 6 0 36] 
#[1 10 241 0 15 4 10 0 36] 
#[1 4 14 0 15 10 245 0 23 4 14 0 36] 
#[0 4 18 0 15 0 23 0 36] 
#[0 4 22 0 15 0 23 0 36] 
#[0 4 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 4 30 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 10 249 0 46 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 10 253 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 10 253 0 202 10 253 0 205 10 253 0 206 10 253 0 207 10 253 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 10 253 0 224 1 61 0 225 10 253 0 238 10 253 0 240 10 253 0 241 10 253 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 11 1 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[0 4 34 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 34 0 9 2 34 0 15 2 34 0 23 2 34 0 26 2 34 0 28 7 93 0 34 2 34 0 36 7 101 0 41 7 109 0 45 2 34 0 46 2 34 0 124] 
#[0 4 38 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124] 
#[0 11 5 0 26] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 11 9 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[0 4 42 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 11 13 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 11 13 0 202 11 13 0 205 11 13 0 206 11 13 0 207 11 13 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 11 13 0 224 1 61 0 225 11 13 0 238 11 13 0 240 11 13 0 241 11 13 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 5 253 0 5 6 21 0 31 11 17 0 36 6 9 0 107 6 13 0 128 6 17 0 151 6 21 0 152 6 25 0 153 6 29 0 154 6 29 0 155 6 29 0 156] 
#[0 4 46 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 11 21 0 122] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 11 25 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 11 33 0 192 11 33 0 198 11 37 0 199 11 33 0 207 1 9 0 210 11 45 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 11 49 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 11 53 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 11 57 0 185 11 57 0 186 11 57 0 188 11 61 0 196 1 9 0 210 11 65 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 11 69 0 244 1 105 0 245 1 105 0 246 1 9 1 8 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 11 57 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 8 53 0 31] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 11 73 0 160 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 11 77 1 11 9 89 1 24 9 93 1 25 9 89 1 26 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 11 81 0 8 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 11 85 0 166 4 181 0 214 4 181 0 215 6 129 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 4 50 0 2 4 50 0 3 4 50 0 4 4 50 0 5 4 50 0 6 4 50 0 7 11 89 0 8 4 50 0 9 4 50 0 10 4 50 0 11 4 50 0 12 4 50 0 14 4 50 0 15 4 50 0 16 4 50 0 18 4 50 0 20 4 50 0 22 4 50 0 23 4 50 0 24 4 50 0 25 4 50 0 26 4 50 0 28 4 50 0 29 4 50 0 30 4 50 0 31 4 50 0 32 4 50 0 33 4 50 0 34 4 50 0 36 4 50 0 37 4 50 0 38 4 50 0 39 4 50 0 41 6 145 0 42 4 50 0 43 4 50 0 44 4 50 0 45 4 50 0 46 4 50 0 123 4 50 0 124 4 50 0 125 4 50 0 126 4 50 0 127 11 93 0 169 11 93 1 26 4 50 1 84] 
#[1 4 54 0 2 4 54 0 3 4 54 0 4 1 19 0 5 1 23 0 6 4 54 0 7 4 54 0 8 4 54 0 9 1 27 0 10 4 54 0 11 4 54 0 12 4 54 0 14 4 54 0 15 4 54 0 16 4 54 0 18 4 54 0 20 4 54 0 22 4 54 0 23 4 54 0 24 4 54 0 25 4 54 0 26 0 37 0 27 4 54 0 28 4 54 0 29 4 54 0 30 4 54 0 31 4 54 0 32 4 54 0 33 4 54 0 34 11 101 0 35 4 54 0 36 4 54 0 37 4 54 0 38 4 54 0 39 4 54 0 41 4 54 0 42 4 54 0 43 4 54 0 44 4 54 0 45 4 54 0 46 0 93 0 65 4 54 0 123 4 54 0 124 4 54 0 125 4 54 0 126 4 54 0 127 3 185 0 128 8 105 0 148 11 105 0 167 11 109 0 168 3 145 0 219 3 149 0 220 11 113 1 6 3 145 1 27 3 145 1 60 1 189 1 62 4 54 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 11 117 0 185 11 117 0 186 11 117 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 11 117 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 11 121 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[0 4 58 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 11 125 0 46 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 89 1 24 9 153 1 25 9 89 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 7 125 0 15 11 129 0 28] 
#[0 11 133 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 5 225 0 185 5 225 0 186 5 225 0 188 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 11 137 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 5 225 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 11 141 0 8] 
#[0 4 62 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 11 145 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 11 57 0 185 11 57 0 186 11 57 0 188 11 149 0 196 1 9 0 210 11 65 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 11 69 0 244 1 105 0 245 1 105 0 246 1 9 1 8 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 11 57 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 66 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 1 84] 
#[1 11 153 0 56 11 157 1 70 11 161 1 71] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 11 57 0 185 11 57 0 186 11 57 0 188 11 165 0 196 1 9 0 210 11 65 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 11 69 0 244 1 105 0 245 1 105 0 246 1 9 1 8 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 11 57 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 11 169 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 11 169 0 202 11 169 0 205 11 169 0 206 11 169 0 207 11 169 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 11 169 0 224 1 61 0 225 11 169 0 238 11 169 0 240 11 169 0 241 11 169 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 3 190 0 9 9 181 0 23 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 1 9 1 8 11 173 1 17 9 189 1 18 9 193 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 1 9 1 65] 
#[1 1 253 0 42 11 177 0 193] 
#[0 4 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 11 181 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 11 185 0 160 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 89 1 24 9 93 1 25 9 89 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 4 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 0 37 0 27 11 189 0 47 0 93 0 65 0 141 0 90 11 193 0 106 0 213 0 128 11 197 0 145 0 225 0 146 0 229 0 147 11 201 0 148 11 205 0 161 11 209 0 219 3 149 0 220 11 209 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 37 0 27 11 189 0 47 0 93 0 65 0 141 0 90 11 213 0 106 0 213 0 128 11 217 0 145 0 225 0 146 0 229 0 147 11 201 0 148 11 221 0 161 11 209 0 219 3 149 0 220 11 209 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 11 225 0 185 11 225 0 186 11 225 0 188 3 125 0 218 1 37 0 219 1 41 0 220 11 229 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 11 225 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 11 233 0 185 11 233 0 186 11 233 0 188 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 11 237 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 11 233 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 82 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 11 241 0 162 2 193 0 163 11 241 0 164 11 241 0 170 11 241 0 171 11 241 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 11 245 0 162 2 193 0 163 11 245 0 164 11 245 0 170 11 245 0 171 11 245 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 11 249 0 162 2 193 0 163 11 249 0 164 11 249 0 170 11 249 0 171 11 249 0 172 11 249 0 173 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 11 253 0 162 2 193 0 163 11 253 0 164 11 253 0 170 11 253 0 171 11 253 0 172 11 253 0 173 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 12 1 0 162 2 193 0 163 12 1 0 164 12 1 0 170 12 1 0 171 12 1 0 172 12 1 0 173 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 12 5 0 174 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 12 9 0 174 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 86 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 12 13 0 175 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 12 17 0 176 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 12 21 0 176 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 12 25 0 176 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 12 29 0 176 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 12 33 0 178 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 12 37 0 178 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 12 41 0 179 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 12 45 0 180 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 12 49 0 181 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 12 53 0 182 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 12 57 0 182 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 12 61 0 185 12 61 0 186 12 61 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 12 61 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 12 65 0 183 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 12 69 0 183 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 4 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 12 73 0 185 12 73 0 186 3 125 0 218 1 37 0 219 1 41 0 220 12 73 1 24 12 73 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 12 73 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 12 77 0 185 12 77 0 186 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 12 77 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 138 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 12 81 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 12 85 0 160 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 89 1 24 9 93 1 25 9 89 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 1 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 4 146 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 4 150 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 4 158 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 4 162 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 4 166 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 9 57 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 4 170 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 141 0 185 9 141 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 141 1 24 9 141 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 141 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 12 89 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 12 93 0 160 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 89 1 24 9 93 1 25 9 89 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 4 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 4 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 133 1 84] 
#[1 0 49 0 47 0 141 0 90 8 181 0 128 8 233 0 146 8 233 1 47 1 169 1 54 1 173 1 55 12 97 1 60 8 233 1 61 1 189 1 62] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 154 0 5 0 154 0 6 0 154 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 154 0 23 0 154 0 24 0 154 0 25 0 154 0 26 8 241 0 27 0 154 0 28 0 47 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 154 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 49 0 154 0 76 0 154 0 91 0 154 0 111 0 154 0 123 0 154 0 124 0 154 0 125 0 154 0 126 0 154 0 127 0 154 1 84] 
#[1 1 98 0 2 1 98 0 3 1 98 0 4 1 98 0 5 1 98 0 6 1 98 0 7 1 98 0 8 1 98 0 9 1 98 0 10 1 98 0 11 1 98 0 12 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 22 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 8 245 0 27 1 98 0 28 1 98 0 29 1 98 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 41 1 98 0 42 1 98 0 43 1 98 0 44 1 98 0 45 1 98 0 46 1 98 0 49 1 98 0 76 1 98 0 91 1 98 0 111 1 98 0 123 1 98 0 124 1 98 0 125 1 98 0 126 1 98 0 127 1 98 1 84] 
#[0 4 182 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 3 194 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 4 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 4 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 88 0 90 0 91 0 109 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 4 194 0 8 4 194 0 15 4 194 0 23 4 198 0 27 4 194 0 36] 
#[1 12 101 0 15 12 105 0 36] 
#[1 4 202 0 15 12 109 0 23 4 202 0 36] 
#[1 12 113 0 8 4 206 0 15 4 206 0 23 4 206 0 36 12 117 0 252] 
#[0 4 210 0 8 0 15 0 23 0 36] 
#[0 12 121 0 27] 
#[1 12 125 0 9 12 129 0 23] 
#[1 12 133 0 9 12 137 0 23] 
#[0 12 141 0 9] 
#[1 0 30 0 8 12 145 0 9 0 30 0 42] 
#[1 12 149 0 9 7 125 0 15] 
#[1 1 189 0 128 12 157 1 60 1 189 1 62] 
#[1 4 214 0 2 4 214 0 3 4 214 0 4 4 214 0 5 4 214 0 6 4 214 0 7 4 214 0 8 4 214 0 9 4 214 0 10 4 214 0 11 4 214 0 12 4 214 0 13 4 214 0 14 4 214 0 15 4 214 0 16 4 214 0 17 4 214 0 18 4 214 0 19 4 214 0 20 4 214 0 21 4 214 0 22 4 214 0 23 4 214 0 24 4 214 0 25 4 214 0 26 1 31 0 27 4 214 0 28 1 35 0 29 4 214 0 30 4 214 0 31 4 214 0 32 4 214 0 33 4 214 0 34 4 214 0 35 4 214 0 36 4 214 0 37 4 214 0 38 4 214 0 39 4 214 0 41 4 214 0 42 4 214 0 43 4 214 0 44 4 214 0 45 4 214 0 46 4 214 0 47 4 214 0 49 4 214 0 52 4 214 0 53 4 214 0 57 4 214 0 58 4 214 0 59 4 214 0 60 4 214 0 61 4 214 0 62 4 214 0 65 4 214 0 69 4 214 0 72 4 214 0 73 4 214 0 74 4 214 0 76 4 214 0 77 4 214 0 79 4 214 0 82 4 214 0 83 4 214 0 84 4 214 0 85 4 214 0 90 4 214 0 91 4 214 0 95 4 214 0 98 4 214 0 99 4 214 0 101 4 214 0 104 4 214 0 108 4 214 0 111 4 214 0 112 4 214 0 114 4 214 0 115 4 214 0 116 4 214 0 118 4 214 0 119 4 214 0 120 4 214 0 121 4 214 0 123 4 214 0 124 4 214 0 125 4 214 0 126 4 214 0 127 4 214 0 128 4 214 1 84] 
#[0 8 245 0 27] 
#[0 4 218 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 12 161 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 12 165 0 203 0 241 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 0 241 0 224 1 61 0 225 0 241 0 232 0 241 0 233 0 241 0 234 0 241 0 236 0 241 0 238 0 241 0 240 0 241 0 241 0 241 0 242 0 241 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 0 241 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 0 241 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 0 241 1 66 0 241 1 67] 
#[0 4 222 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 2 154 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 8 45 0 203 0 241 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 0 241 0 224 1 61 0 225 0 241 0 232 0 241 0 233 0 241 0 234 0 241 0 236 12 169 0 237 0 241 0 238 0 241 0 240 0 241 0 241 0 241 0 242 0 241 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 0 241 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 0 241 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 0 241 1 66 0 241 1 67] 
#[0 2 158 0 27 0 42] 
#[1 8 57 0 27 12 173 0 42] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 4 226 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 5 5 0 204 5 5 0 205 5 5 0 206 5 5 0 207 5 5 0 208 5 5 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 5 5 0 224 1 61 0 225 5 5 0 232 5 5 0 233 5 5 0 234 5 5 0 236 5 5 0 238 5 5 0 240 5 5 0 241 5 5 0 242 5 5 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 5 5 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 5 5 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 5 5 1 66 5 5 1 67] 
#[0 12 177 0 46] 
#[1 0 37 0 27 0 93 0 65 8 193 0 128 12 181 0 148 3 145 0 219 3 149 0 220 12 185 0 230 8 205 0 231 12 189 0 239 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 12 193 0 128] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 2 154 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 8 45 0 203 0 241 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 0 241 0 224 1 61 0 225 0 241 0 232 0 241 0 233 0 241 0 234 0 241 0 236 12 197 0 237 0 241 0 238 0 241 0 240 0 241 0 241 0 241 0 242 0 241 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 0 241 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 0 241 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 0 241 1 66 0 241 1 67] 
#[0 4 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 4 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 12 201 0 36] 
#[0 12 205 0 36] 
#[0 4 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 1 189 0 128 12 209 1 60 1 189 1 62] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 239 0 27 0 158 0 28 0 167 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 158 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 158 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 158 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 158 0 123 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128 0 158 1 84] 
#[1 1 102 0 2 1 102 0 3 1 102 0 4 1 102 0 5 1 102 0 6 1 102 0 7 1 102 0 8 1 102 0 9 1 102 0 10 1 102 0 11 1 102 0 12 1 102 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 22 1 102 0 23 1 102 0 24 1 102 0 25 1 102 0 26 0 243 0 27 1 102 0 28 1 102 0 29 1 102 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 41 1 102 0 42 1 102 0 43 1 102 0 44 1 102 0 45 1 102 0 46 1 102 0 47 1 102 0 49 1 102 0 52 1 102 0 53 1 102 0 57 1 102 0 58 1 102 0 59 1 102 0 60 1 102 0 61 1 102 0 62 1 102 0 65 1 102 0 69 1 102 0 72 1 102 0 73 1 102 0 74 1 102 0 76 1 102 0 77 1 102 0 79 1 102 0 82 1 102 0 83 1 102 0 84 1 102 0 85 1 102 0 90 1 102 0 91 1 102 0 95 1 102 0 98 1 102 0 99 1 102 0 101 1 102 0 104 1 102 0 108 1 102 0 111 1 102 0 112 1 102 0 114 1 102 0 115 1 102 0 116 1 102 0 118 1 102 0 119 1 102 0 120 1 102 0 121 1 102 0 123 1 102 0 124 1 102 0 125 1 102 0 126 1 102 0 127 1 102 0 128 1 102 1 84] 
#[0 4 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 4 246 0 2 4 246 0 3 4 246 0 4 4 246 0 5 4 246 0 6 4 246 0 7 4 246 0 8 4 246 0 9 4 246 0 10 4 246 0 11 4 246 0 12 4 246 0 13 4 246 0 14 4 246 0 15 4 246 0 16 4 246 0 17 4 246 0 18 4 246 0 19 4 246 0 20 4 246 0 21 4 246 0 22 4 246 0 23 4 246 0 24 4 246 0 25 4 246 0 26 4 246 0 27 4 246 0 28 4 246 0 29 4 246 0 30 4 246 0 31 4 246 0 32 4 246 0 33 4 246 0 34 1 39 0 35 4 246 0 36 4 246 0 37 4 246 0 38 4 246 0 39 4 246 0 41 4 246 0 42 4 246 0 43 4 246 0 44 4 246 0 45 4 246 0 46 4 246 0 47 1 43 0 49 4 246 0 65 4 246 0 76 4 246 0 90 4 246 0 91 4 246 0 111 4 246 0 123 4 246 0 124 4 246 0 125 4 246 0 126 4 246 0 127 4 246 0 128 5 73 0 245 5 73 0 246 4 246 1 84] 
#[1 4 237 0 10 8 9 0 106 12 213 0 128 8 17 1 60 1 189 1 62] 
#[1 4 250 0 2 4 250 0 3 4 250 0 4 1 47 0 5 1 51 0 6 4 250 0 7 4 250 0 8 4 250 0 9 1 55 0 10 4 250 0 11 4 250 0 12 4 250 0 13 4 250 0 14 4 250 0 15 4 250 0 16 4 250 0 17 4 250 0 18 4 250 0 19 4 250 0 20 4 250 0 21 4 250 0 22 4 250 0 23 4 250 0 24 4 250 0 25 4 250 0 26 0 37 0 27 4 250 0 28 4 250 0 29 4 250 0 30 4 250 0 31 4 250 0 32 4 250 0 33 4 250 0 34 4 250 0 35 4 250 0 36 4 250 0 37 4 250 0 38 4 250 0 39 4 250 0 41 4 250 0 42 4 250 0 43 4 250 0 44 4 250 0 45 4 250 0 46 4 250 0 49 0 93 0 65 4 250 0 76 4 250 0 91 4 250 0 111 4 250 0 123 4 250 0 124 4 250 0 125 4 250 0 126 4 250 0 127 3 185 0 128 8 105 0 148 3 145 0 219 3 149 0 220 8 109 1 6 3 145 1 27 12 217 1 49 3 145 1 60 1 189 1 62 4 250 1 84] 
#[0 4 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 5 41 0 26 0 158 0 27 0 162 0 29 3 130 0 42 12 221 0 226] 
#[1 5 41 0 26 0 37 0 27 0 45 0 35 3 138 0 42 0 53 0 49 0 93 0 65 12 225 0 128 9 45 0 148 3 145 0 219 3 149 0 220 9 49 0 226 5 73 0 245 5 73 0 246 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 12 229 0 15] 
#[1 5 2 0 15 12 233 0 23 0 50 0 26 0 50 0 27 12 237 0 31 0 50 0 35 0 50 0 42 0 50 0 49 0 50 0 65 5 2 0 124 1 59 0 128] 
#[0 12 245 0 29] 
#[1 5 6 0 15 12 249 0 23 0 37 0 27 12 253 0 31 0 93 0 65 5 6 0 124 13 1 0 128 4 213 0 148 3 145 0 219 3 149 0 220 3 145 1 27 3 145 1 60 1 189 1 62] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 13 5 0 204 13 5 0 205 13 5 0 206 13 5 0 207 13 5 0 208 13 5 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 13 5 0 224 1 61 0 225 13 5 0 232 13 5 0 233 13 5 0 234 13 5 0 236 13 5 0 238 13 5 0 240 13 5 0 241 13 5 0 242 13 5 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 13 5 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 13 5 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 13 5 1 66 13 5 1 67] 
#[1 0 17 0 5 0 21 0 6 13 9 0 8 5 10 0 9 0 29 0 10 5 10 0 15 1 63 0 23 0 37 0 27 13 17 0 31 10 169 0 35 0 49 0 47 0 93 0 65 0 141 0 90 5 10 0 124 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 13 21 1 1 13 21 1 2 1 129 1 3 10 173 1 4 13 25 1 6 1 141 1 10 13 29 1 12 13 29 1 13 10 189 1 14 13 29 1 15 10 197 1 16 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 1 9 0 210 13 33 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 5 73 0 245 5 73 0 246 1 9 1 8 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 1 9 1 65] 
#[0 5 14 0 15 0 124] 
#[1 13 37 0 15 13 41 0 124] 
#[0 5 18 0 15 0 124] 
#[0 5 22 0 15 0 124] 
#[1 1 189 0 128 13 45 1 60 1 189 1 62] 
#[1 5 26 0 2 5 26 0 3 5 26 0 4 5 26 0 5 5 26 0 6 5 26 0 7 5 26 0 8 5 26 0 9 5 26 0 10 5 26 0 11 5 26 0 12 5 26 0 13 5 26 0 14 5 26 0 15 5 26 0 16 5 26 0 17 5 26 0 18 5 26 0 19 5 26 0 20 5 26 0 21 5 26 0 22 5 26 0 23 5 26 0 24 5 26 0 25 5 26 0 26 1 67 0 27 5 26 0 28 1 71 0 29 5 26 0 30 5 26 0 31 5 26 0 32 5 26 0 33 5 26 0 34 5 26 0 35 5 26 0 36 5 26 0 37 5 26 0 38 5 26 0 39 5 26 0 41 5 26 0 42 5 26 0 43 5 26 0 44 5 26 0 45 5 26 0 46 5 26 0 47 5 26 0 49 5 26 0 52 5 26 0 53 5 26 0 57 5 26 0 58 5 26 0 59 5 26 0 60 5 26 0 61 5 26 0 62 5 26 0 65 5 26 0 69 5 26 0 72 5 26 0 73 5 26 0 74 5 26 0 76 5 26 0 77 5 26 0 79 5 26 0 82 5 26 0 83 5 26 0 84 5 26 0 85 5 26 0 90 5 26 0 91 5 26 0 95 5 26 0 98 5 26 0 99 5 26 0 101 5 26 0 104 5 26 0 108 5 26 0 111 5 26 0 112 5 26 0 114 5 26 0 115 5 26 0 116 5 26 0 118 5 26 0 119 5 26 0 120 5 26 0 121 5 26 0 123 5 26 0 124 5 26 0 125 5 26 0 126 5 26 0 127 5 26 0 128 5 26 1 84] 
#[1 5 30 0 2 5 30 0 3 5 30 0 4 5 30 0 5 5 30 0 6 5 30 0 7 5 30 0 8 5 30 0 9 5 30 0 10 5 30 0 11 5 30 0 12 5 30 0 13 5 30 0 14 5 30 0 15 5 30 0 16 5 30 0 17 5 30 0 18 5 30 0 19 5 30 0 20 5 30 0 21 5 30 0 22 5 30 0 23 5 30 0 24 5 30 0 25 5 30 0 26 1 75 0 27 5 30 0 28 5 30 0 29 5 30 0 30 5 30 0 31 5 30 0 32 5 30 0 33 5 30 0 34 5 30 0 35 5 30 0 36 5 30 0 37 5 30 0 38 5 30 0 39 5 30 0 41 5 30 0 42 5 30 0 43 5 30 0 44 5 30 0 45 5 30 0 46 5 30 0 47 5 30 0 49 5 30 0 52 5 30 0 53 5 30 0 57 5 30 0 58 5 30 0 59 5 30 0 60 5 30 0 61 5 30 0 62 5 30 0 65 5 30 0 69 5 30 0 72 5 30 0 73 5 30 0 74 5 30 0 76 5 30 0 77 5 30 0 79 5 30 0 82 5 30 0 83 5 30 0 84 5 30 0 85 5 30 0 90 5 30 0 91 5 30 0 95 5 30 0 98 5 30 0 99 5 30 0 101 5 30 0 104 5 30 0 108 5 30 0 111 5 30 0 112 5 30 0 114 5 30 0 115 5 30 0 116 5 30 0 118 5 30 0 119 5 30 0 120 5 30 0 121 5 30 0 123 5 30 0 124 5 30 0 125 5 30 0 126 5 30 0 127 5 30 0 128 5 30 1 84] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 154 0 5 0 154 0 6 0 154 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 154 0 23 0 154 0 24 0 154 0 25 0 154 0 26 0 154 0 28 0 47 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 154 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 49 0 154 0 76 0 154 0 91 0 154 0 111 0 154 0 123 0 154 0 124 0 154 0 125 0 154 0 126 0 154 0 127 0 154 1 84] 
#[0 13 49 0 28] 
#[0 1 98 0 28] 
#[1 0 158 0 27 5 34 0 28 0 162 0 29] 
#[1 8 9 0 106 13 53 0 128 13 57 0 230 8 205 0 231 8 17 1 60 1 189 1 62] 
#[0 13 61 0 28] 
#[0 5 38 0 28] 
#[1 0 49 0 47 0 141 0 90 8 9 0 106 7 197 0 128 13 65 0 146 13 65 1 47 1 169 1 54 1 173 1 55 7 201 1 60 13 65 1 61 1 189 1 62] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 13 69 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 13 73 0 31 0 45 0 35 0 53 0 49 5 73 0 245 5 73 0 246] 
#[0 13 77 0 28] 
#[1 5 42 0 2 5 42 0 3 5 42 0 4 5 42 0 5 5 42 0 6 5 42 0 7 5 42 0 8 5 42 0 9 5 42 0 10 5 42 0 11 5 42 0 12 5 42 0 13 5 42 0 14 5 42 0 15 5 42 0 16 5 42 0 17 5 42 0 18 5 42 0 19 5 42 0 20 5 42 0 21 5 42 0 22 5 42 0 23 5 42 0 24 5 42 0 25 5 42 0 26 5 42 0 27 5 42 0 28 5 42 0 29 5 42 0 30 5 42 0 31 5 42 0 32 5 42 0 33 5 42 0 34 1 79 0 35 5 42 0 36 5 42 0 37 5 42 0 38 5 42 0 39 5 42 0 41 5 42 0 42 5 42 0 43 5 42 0 44 5 42 0 45 5 42 0 46 5 42 0 47 1 83 0 49 0 85 0 61 5 42 0 65 5 42 0 76 5 42 0 90 5 42 0 91 5 42 0 111 0 205 0 120 5 42 0 123 5 42 0 124 5 42 0 125 5 42 0 126 5 42 0 127 5 42 0 128 5 73 0 245 5 73 0 246 13 81 1 7 3 169 1 8 5 42 1 84] 
#[0 5 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 5 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 1 98 0 2 1 98 0 3 1 98 0 4 1 87 0 5 1 87 0 6 1 98 0 7 1 87 0 8 1 87 0 9 1 87 0 10 1 98 0 11 1 98 0 12 1 98 0 13 1 98 0 14 1 87 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 22 1 87 0 23 1 98 0 24 1 98 0 25 1 87 0 26 1 91 0 27 1 87 0 28 1 98 0 29 1 98 0 30 1 87 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 87 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 41 1 87 0 42 1 98 0 43 1 98 0 44 1 98 0 45 1 98 0 46 5 54 0 47 1 87 0 49 5 54 0 52 5 54 0 53 5 54 0 57 5 54 0 58 5 54 0 59 5 54 0 60 5 54 0 61 5 54 0 62 5 54 0 65 5 54 0 69 5 54 0 72 5 54 0 73 5 54 0 74 1 98 0 76 5 54 0 77 5 54 0 79 5 54 0 82 5 54 0 83 5 54 0 84 5 54 0 85 5 54 0 90 1 98 0 91 5 54 0 95 5 54 0 98 5 54 0 99 5 54 0 101 5 54 0 104 5 54 0 108 1 98 0 111 5 54 0 112 5 54 0 114 5 54 0 115 5 54 0 116 5 54 0 118 5 54 0 119 5 54 0 120 5 54 0 121 1 98 0 123 1 87 0 124 1 98 0 125 1 98 0 126 1 98 0 127 5 54 0 128 1 98 1 84] 
#[0 5 58 0 10 0 47 0 90 0 106 0 128] 
#[0 5 62 0 10 0 47 0 90 0 106 0 128] 
#[0 5 66 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 5 70 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 5 97 0 26 9 165 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 193 13 89 1 21 9 173 1 38 5 149 1 50 5 153 1 69] 
#[0 5 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 5 78 0 15 0 31 0 46] 
#[1 13 93 0 15 13 97 0 46] 
#[0 5 82 0 15 0 46] 
#[1 5 86 0 15 13 101 0 31 5 86 0 46] 
#[0 5 90 0 28 0 42] 
#[0 5 94 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 13 105 0 28 5 98 0 42] 
#[1 5 41 0 26 8 241 0 27 0 162 0 29 5 102 0 42 13 109 0 226] 
#[1 5 41 0 26 0 158 0 27 13 113 0 28 0 162 0 29 5 106 0 42 13 117 0 226] 
#[1 8 9 0 106 13 121 0 128 8 17 1 60 1 189 1 62] 
#[0 5 110 0 42] 
#[1 0 37 0 27 0 93 0 65 8 193 0 128 13 125 0 148 3 145 0 219 3 149 0 220 13 129 0 230 8 205 0 231 3 145 1 27 3 145 1 60 1 189 1 62] 
#[1 5 85 0 15 13 133 0 28] 
#[1 5 93 0 8 1 46 0 15 5 97 0 26 1 46 0 28 5 101 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 193 13 137 1 21 5 129 1 22 5 129 1 23 5 129 1 26 13 141 1 37 5 145 1 38 5 149 1 50 5 153 1 69] 
#[0 5 114 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 5 118 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 5 97 0 26 9 165 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 193 13 145 1 21 9 173 1 38 5 149 1 50 5 153 1 69] 
#[0 5 122 0 15 0 28] 
#[0 13 149 0 9] 
#[0 5 126 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 1 84] 
#[1 5 130 0 9 5 130 0 15 13 153 0 23 5 130 0 46] 
#[1 5 134 0 9 13 157 0 15] 
#[0 5 138 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 1 84] 
#[1 1 95 0 8 0 158 0 27 0 162 0 29 1 95 0 42] 
#[1 8 9 0 106 8 89 0 128 13 161 1 27 8 93 1 60 1 189 1 62] 
#[1 5 146 0 8 5 146 0 15 5 146 0 23 5 33 0 27 5 146 0 42] 
#[1 5 150 0 8 5 150 0 15 5 150 0 23 1 70 0 27 5 150 0 42] 
#[0 5 154 0 8 0 42] 
#[0 5 158 0 42] 
#[1 13 165 0 15 13 169 0 23 5 162 0 42] 
#[1 13 173 0 8 6 145 0 42 13 177 1 26] 
#[0 13 181 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 13 185 0 28 6 85 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 6 89 0 162 2 193 0 163 6 89 0 164 6 89 0 170 6 89 0 171 6 89 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 5 166 0 15 0 23 0 28 0 36] 
#[1 4 26 0 1 4 26 0 5 4 26 0 6 4 26 0 8 4 26 0 10 4 26 0 12 4 26 0 13 5 170 0 15 4 26 0 16 4 26 0 17 1 99 0 23 4 26 0 26 4 26 0 27 1 99 0 28 4 26 0 35 4 26 0 40 4 26 0 42 4 26 0 43 1 99 0 46 4 26 0 47 4 26 0 49 4 26 0 50 4 26 0 51 4 26 0 52 4 26 0 53 4 26 0 54 4 26 0 55 4 26 0 57 4 26 0 58 4 26 0 59 4 26 0 60 4 26 0 61 4 26 0 62 4 26 0 63 4 26 0 64 4 26 0 65 4 26 0 66 4 26 0 67 4 26 0 68 4 26 0 69 4 26 0 70 4 26 0 72 4 26 0 73 4 26 0 74 4 26 0 75 4 26 0 77 4 26 0 78 4 26 0 79 4 26 0 80 4 26 0 81 4 26 0 82 4 26 0 83 4 26 0 84 4 26 0 85 4 26 0 86 4 26 0 87 4 26 0 88 4 26 0 89 4 26 0 90 4 26 0 92 4 26 0 93 4 26 0 94 4 26 0 95 4 26 0 96 4 26 0 97 4 26 0 98 4 26 0 99 4 26 0 100 4 26 0 101 4 26 0 102 4 26 0 103 4 26 0 104 4 26 0 105 4 26 0 106 4 26 0 107 4 26 0 108 4 26 0 109 4 26 0 110 4 26 0 111 4 26 0 112 4 26 0 113 4 26 0 114 4 26 0 115 4 26 0 116 4 26 0 117 4 26 0 118 4 26 0 119 4 26 0 120 4 26 0 121 4 26 0 122 4 26 0 128 4 26 0 129 4 26 0 131 4 26 0 132 4 26 0 133 4 26 0 134 4 26 0 135 4 26 0 136 4 26 0 137 4 26 1 84] 
#[1 1 103 0 15 5 126 0 23 2 42 0 28 5 126 0 46] 
#[1 13 189 0 15 13 193 0 46] 
#[1 11 153 0 56 13 197 1 70 11 161 1 71] 
#[1 1 253 0 42 13 201 0 193] 
#[1 9 133 0 66 13 205 0 67] 
#[0 5 174 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 5 178 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[0 5 182 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 5 186 0 9] 
#[0 13 209 0 9] 
#[1 5 190 0 9 13 213 0 15 13 217 0 23] 
#[0 5 194 0 9 0 15 0 23] 
#[1 5 198 0 8 5 198 0 9 5 198 0 15 5 198 0 23 5 198 0 26 5 198 0 28 5 198 0 31 1 107 0 35 5 198 0 42 0 53 0 49 5 198 0 76 5 198 0 91 5 198 0 111 5 198 0 124 13 221 0 244 1 105 0 245 1 105 0 246] 
#[0 13 225 0 36] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 13 229 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 13 233 0 215 13 237 0 217 13 233 0 218 1 37 0 219 1 41 0 220 13 233 0 221 13 233 1 8 1 37 1 27 13 241 1 32 1 37 1 60 1 189 1 62 13 233 1 65] 
#[0 5 202 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 13 245 0 185 13 245 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 5 206 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 5 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 5 214 0 26 0 27 0 65 0 118 0 128] 
#[0 5 218 0 26 0 27 0 65 0 118 0 128] 
#[0 5 222 0 26 0 27 0 65 0 118 0 128] 
#[0 13 249 0 29] 
#[1 4 217 0 27 0 93 0 65 4 225 0 114 4 229 0 128 4 233 0 148 3 145 0 219 3 149 0 220 3 145 1 27 3 145 1 60 1 189 1 62] 
#[1 0 158 0 5 0 158 0 6 0 43 0 8 0 158 0 10 0 154 0 15 0 158 0 23 1 111 0 26 0 158 0 27 0 43 0 28 0 162 0 29 0 154 0 31 1 115 0 35 0 154 0 42 0 158 0 47 1 119 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 154 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 154 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 154 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 158 0 128 14 1 0 244 1 105 0 245 1 105 0 246] 
#[0 5 226 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 5 230 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 14 5 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 93 0 65 0 141 0 90 9 245 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 14 9 0 244 1 105 0 245 1 105 0 246 14 13 1 1 14 13 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 14 17 1 35 10 33 1 36 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 5 234 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 14 21 0 26 0 37 0 27 14 25 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 9 245 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 1 9 0 210 14 29 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 14 9 0 244 14 33 0 245 14 33 0 246 14 37 1 1 14 37 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 14 41 1 35 10 33 1 36 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65] 
#[1 5 238 0 15 5 97 0 26 5 238 0 28 14 45 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 193 5 125 1 21 14 49 1 23 14 49 1 26 14 53 1 37 5 145 1 38 14 57 1 39 5 149 1 50 5 153 1 69] 
#[0 5 242 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 14 61 0 46] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 9 217 0 28 0 45 0 35 5 246 0 46 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 10 37 0 92 10 37 0 93 10 37 0 94 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 9 237 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 9 241 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 9 245 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 10 25 0 206 10 25 0 208 1 9 0 210 10 1 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 10 25 0 240 10 9 0 244 1 105 0 245 1 105 0 246 10 13 1 1 10 13 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 10 25 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 14 65 1 33 10 25 1 34 10 29 1 35 10 33 1 36 10 37 1 46 0 225 1 47 1 169 1 54 1 173 1 55 10 25 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65] 
#[1 14 69 0 15 14 73 0 28] 
#[0 5 250 0 15 0 28] 
#[0 14 77 0 26] 
#[0 5 254 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 37 0 27 0 93 0 65 14 85 0 92 14 85 0 93 14 85 0 94 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 14 81 1 44 14 81 1 45 14 85 1 46 9 113 1 60 1 189 1 62] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 14 97 0 92 14 97 0 93 14 97 0 94 14 89 0 118 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 5 73 0 245 5 73 0 246 9 113 1 27 14 93 1 44 14 93 1 45 14 97 1 46 9 113 1 60 1 189 1 62] 
#[1 14 101 0 15 6 2 0 42] 
#[1 6 6 0 15 14 105 0 23 6 6 0 42] 
#[0 6 10 0 15 0 23 0 42] 
#[0 6 14 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 14 109 0 118 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 14 113 1 44 14 113 1 45 9 113 1 60 1 189 1 62] 
#[1 1 189 0 128 14 117 1 60 1 189 1 62] 
#[1 6 18 0 2 6 18 0 3 6 18 0 4 6 18 0 5 6 18 0 6 6 18 0 7 6 18 0 8 6 18 0 9 6 18 0 10 6 18 0 11 6 18 0 12 6 18 0 13 6 18 0 14 6 18 0 15 6 18 0 16 6 18 0 17 6 18 0 18 6 18 0 19 6 18 0 20 6 18 0 21 6 18 0 22 6 18 0 23 6 18 0 24 6 18 0 25 1 123 0 26 1 127 0 27 6 18 0 28 1 131 0 29 6 18 0 30 6 18 0 31 6 18 0 32 6 18 0 33 6 18 0 34 6 18 0 35 6 18 0 36 6 18 0 37 6 18 0 38 6 18 0 39 6 18 0 41 1 123 0 42 6 18 0 43 6 18 0 44 6 18 0 45 6 18 0 46 6 18 0 47 6 18 0 49 6 18 0 52 6 18 0 53 6 18 0 57 6 18 0 58 6 18 0 59 6 18 0 60 6 18 0 61 6 18 0 62 6 18 0 65 6 18 0 69 6 18 0 72 6 18 0 73 6 18 0 74 1 123 0 76 6 18 0 77 6 18 0 79 6 18 0 82 6 18 0 83 6 18 0 84 6 18 0 85 6 18 0 90 6 18 0 91 6 18 0 95 6 18 0 98 6 18 0 99 6 18 0 101 6 18 0 104 6 18 0 108 6 18 0 111 6 18 0 112 6 18 0 114 6 18 0 115 6 18 0 116 6 18 0 118 6 18 0 119 6 18 0 120 6 18 0 121 6 18 0 123 6 18 0 124 6 18 0 125 6 18 0 126 6 18 0 127 6 18 0 128 6 18 1 84] 
#[0 6 22 0 26 0 42 0 76] 
#[1 6 26 0 2 6 26 0 3 6 26 0 4 6 26 0 5 6 26 0 6 6 26 0 7 6 26 0 8 6 26 0 9 6 26 0 10 6 26 0 11 6 26 0 12 6 26 0 13 6 26 0 14 6 26 0 15 6 26 0 16 6 26 0 17 6 26 0 18 6 26 0 19 6 26 0 20 6 26 0 21 6 26 0 22 6 26 0 23 6 26 0 24 6 26 0 25 1 135 0 26 1 139 0 27 6 26 0 28 6 26 0 29 6 26 0 30 6 26 0 31 6 26 0 32 6 26 0 33 6 26 0 34 6 26 0 35 6 26 0 36 6 26 0 37 6 26 0 38 6 26 0 39 6 26 0 41 1 135 0 42 6 26 0 43 6 26 0 44 6 26 0 45 6 26 0 46 6 26 0 47 6 26 0 49 6 26 0 52 6 26 0 53 6 26 0 57 6 26 0 58 6 26 0 59 6 26 0 60 6 26 0 61 6 26 0 62 6 26 0 65 6 26 0 69 6 26 0 72 6 26 0 73 6 26 0 74 1 135 0 76 6 26 0 77 6 26 0 79 6 26 0 82 6 26 0 83 6 26 0 84 6 26 0 85 6 26 0 90 6 26 0 91 6 26 0 95 6 26 0 98 6 26 0 99 6 26 0 101 6 26 0 104 6 26 0 108 6 26 0 111 6 26 0 112 6 26 0 114 6 26 0 115 6 26 0 116 6 26 0 118 6 26 0 119 6 26 0 120 6 26 0 121 6 26 0 123 6 26 0 124 6 26 0 125 6 26 0 126 6 26 0 127 6 26 0 128 6 26 1 84] 
#[1 6 30 0 2 6 30 0 3 6 30 0 4 6 30 0 5 6 30 0 6 6 30 0 7 6 30 0 8 6 30 0 9 6 30 0 10 6 30 0 11 6 30 0 12 6 30 0 13 6 30 0 14 6 30 0 15 6 30 0 16 6 30 0 17 6 30 0 18 6 30 0 19 6 30 0 20 6 30 0 21 6 30 0 22 6 30 0 23 6 30 0 24 6 30 0 25 1 143 0 26 1 143 0 27 6 30 0 28 1 147 0 29 6 30 0 30 6 30 0 31 6 30 0 32 6 30 0 33 6 30 0 34 6 30 0 35 6 30 0 36 6 30 0 37 6 30 0 38 6 30 0 39 6 30 0 41 1 143 0 42 6 30 0 43 6 30 0 44 6 30 0 45 6 30 0 46 6 30 0 47 6 30 0 49 6 30 0 52 6 30 0 53 6 30 0 57 6 30 0 58 6 30 0 59 6 30 0 60 6 30 0 61 6 30 0 62 6 30 0 65 6 30 0 69 6 30 0 72 6 30 0 73 6 30 0 74 1 143 0 76 6 30 0 77 6 30 0 79 6 30 0 82 6 30 0 83 6 30 0 84 6 30 0 85 6 30 0 90 6 30 0 91 6 30 0 95 6 30 0 98 6 30 0 99 6 30 0 101 6 30 0 104 6 30 0 108 6 30 0 111 6 30 0 112 6 30 0 114 6 30 0 115 6 30 0 116 6 30 0 118 6 30 0 119 6 30 0 120 6 30 0 121 6 30 0 123 6 30 0 124 6 30 0 125 6 30 0 126 6 30 0 127 6 30 0 128 6 30 1 84] 
#[1 8 9 0 106 14 121 0 128 10 81 1 27 8 93 1 60 1 189 1 62] 
#[1 5 181 0 26 6 34 0 42 14 125 0 76 14 125 1 31 14 129 1 41] 
#[0 6 38 0 42] 
#[0 6 42 0 26 0 42] 
#[1 5 181 0 26 6 46 0 42 14 133 1 41] 
#[0 6 50 0 42] 
#[0 6 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 1 218 0 2 1 218 0 3 1 218 0 5 1 218 0 6 1 218 0 8 1 218 0 10 1 218 0 12 1 218 0 13 1 151 0 15 1 218 0 16 1 218 0 17 1 218 0 19 1 218 0 20 1 218 0 21 1 218 0 22 1 151 0 23 1 218 0 24 1 218 0 29 1 218 0 30 1 218 0 32 1 218 0 33 1 218 0 34 1 218 0 35 1 218 0 37 1 218 0 39 1 218 0 41 1 218 0 43 1 218 0 45 1 218 0 123 1 151 0 124 1 218 0 125] 
#[0 6 62 0 15 0 23 0 124] 
#[0 6 66 0 15 0 23 0 124] 
#[1 14 137 0 15 14 141 0 124] 
#[1 6 70 0 15 14 145 0 23 6 70 0 124] 
#[0 6 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 14 137 0 15 14 149 0 124] 
#[0 6 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 14 137 0 15 14 153 0 124] 
#[0 6 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 0 17 0 5 0 21 0 6 10 161 0 8 3 190 0 9 0 29 0 10 9 181 0 23 0 37 0 27 14 157 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 14 161 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 14 165 1 4 14 169 1 6 1 9 1 8 14 173 1 13 14 177 1 14 9 185 1 17 9 189 1 18 9 193 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 1 9 1 65] 
#[0 6 86 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 14 181 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 14 185 0 185 14 185 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 6 90 0 8 6 90 0 9 6 90 0 15 9 205 0 19 6 90 0 23 6 90 0 26 6 90 0 28 6 90 0 31 6 90 0 35 6 90 0 42 6 90 0 76 6 90 0 91 6 90 0 111 6 90 0 124 14 189 1 5] 
#[1 0 17 0 5 0 21 0 6 1 155 0 8 6 94 0 9 0 29 0 10 6 94 0 15 1 159 0 23 6 94 0 26 0 37 0 27 6 94 0 28 6 94 0 31 10 169 0 35 6 94 0 42 0 93 0 65 6 94 0 76 6 94 0 91 6 94 0 111 6 94 0 124 3 185 0 128 8 105 0 148 3 145 0 219 3 149 0 220 14 165 1 4 10 177 1 6 14 193 1 13 14 177 1 14 14 197 1 15 10 197 1 16 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 6 98 0 9 0 15 0 23 0 28 0 124] 
#[0 6 102 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 1 163 0 8 6 106 0 9 6 106 0 15 6 106 0 23 6 106 0 26 6 106 0 28 6 106 0 31 14 201 0 35 6 106 0 42 6 106 0 76 6 106 0 91 6 106 0 111 6 106 0 124 14 205 1 4] 
#[0 6 110 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 1 167 0 8 6 114 0 9 6 114 0 15 6 114 0 23 6 114 0 26 6 114 0 28 6 114 0 31 14 209 0 35 6 114 0 42 6 114 0 76 6 114 0 91 6 114 0 111 6 114 0 124 14 213 1 4] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 14 217 0 162 2 193 0 163 14 217 0 164 14 217 0 170 14 217 0 171 14 217 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 5 253 0 5 6 21 0 31 14 221 0 36 6 9 0 107 6 13 0 128 6 17 0 151 6 21 0 152 6 25 0 153 6 29 0 154 6 29 0 155 6 29 0 156] 
#[0 6 118 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 11 73 0 160 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 14 225 1 11 9 89 1 24 9 93 1 25 9 89 1 26 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 14 229 0 8 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 14 233 0 166 4 181 0 214 4 181 0 215 6 129 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 6 122 0 2 6 122 0 3 6 122 0 4 6 122 0 5 6 122 0 6 6 122 0 7 11 89 0 8 6 122 0 9 6 122 0 10 6 122 0 11 6 122 0 12 6 122 0 14 6 122 0 15 6 122 0 16 6 122 0 18 6 122 0 20 6 122 0 22 6 122 0 23 6 122 0 24 6 122 0 25 6 122 0 26 6 122 0 28 6 122 0 29 6 122 0 30 6 122 0 31 6 122 0 32 6 122 0 33 6 122 0 34 6 122 0 36 6 122 0 37 6 122 0 38 6 122 0 39 6 122 0 41 6 145 0 42 6 122 0 43 6 122 0 44 6 122 0 45 6 122 0 46 6 122 0 123 6 122 0 124 6 122 0 125 6 122 0 126 6 122 0 127 14 237 0 169 14 237 1 26 6 122 1 84] 
#[1 5 93 0 8 6 126 0 15 6 126 0 23 7 177 0 31 6 126 0 36 6 145 0 42 14 241 1 22 14 241 1 23 14 241 1 26] 
#[0 6 130 0 15 0 23 0 36] 
#[0 6 134 0 8 0 42] 
#[1 14 245 0 5 6 9 0 107 6 13 0 128 14 249 0 153 6 29 0 154 6 29 0 155 6 29 0 156] 
#[1 14 245 0 5 6 9 0 107 6 13 0 128 14 253 0 154 14 253 0 155 14 253 0 156] 
#[0 6 138 0 15 0 36] 
#[0 6 142 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 6 146 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[0 15 1 0 9] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 15 5 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 15 5 0 202 15 5 0 205 15 5 0 206 15 5 0 207 15 5 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 15 5 0 224 1 61 0 225 15 5 0 238 15 5 0 240 15 5 0 241 15 5 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 15 9 0 124] 
#[0 6 150 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 2 193 0 5 1 171 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 3 250 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 15 13 0 162 2 193 0 163 15 13 0 164 15 13 0 170 15 13 0 171 15 13 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 15 17 0 8] 
#[0 15 21 0 124] 
#[0 6 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 28 0 35 0 40 0 43 0 47 0 49 0 50 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 67 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 79 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 15 25 0 28 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 11 57 0 185 11 57 0 186 11 57 0 188 15 29 0 196 1 9 0 210 11 65 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 11 69 0 244 1 105 0 245 1 105 0 246 1 9 1 8 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 11 57 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 15 33 0 26] 
#[0 6 158 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 28 0 35 0 40 0 43 0 47 0 49 0 50 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 67 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 79 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 5 17 0 28 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 5 21 0 255 1 117 1 0 15 37 1 1 15 37 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 45 0 35 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 1 9 0 210 15 41 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 5 73 0 245 5 73 0 246 5 77 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65] 
#[0 6 162 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 6 166 0 9 7 125 0 15 6 166 0 28] 
#[0 15 45 0 9] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 15 49 1 1 15 49 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 1 9 0 210 15 53 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 5 73 0 245 5 73 0 246 1 9 1 8 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 1 9 1 65] 
#[0 15 57 0 9] 
#[0 15 61 0 9] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 15 65 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 6 170 0 2 6 170 0 3 6 170 0 4 6 170 0 5 6 170 0 6 6 170 0 7 11 89 0 8 6 170 0 9 6 170 0 10 6 170 0 11 6 170 0 12 6 170 0 14 6 170 0 15 6 170 0 16 6 170 0 18 6 170 0 20 6 170 0 22 6 170 0 23 6 170 0 24 6 170 0 25 6 170 0 26 6 170 0 28 6 170 0 29 6 170 0 30 6 170 0 31 6 170 0 32 6 170 0 33 6 170 0 34 6 170 0 36 6 170 0 37 6 170 0 38 6 170 0 39 6 170 0 41 6 145 0 42 6 170 0 43 6 170 0 44 6 170 0 45 6 170 0 46 6 170 0 123 6 170 0 124 6 170 0 125 6 170 0 126 6 170 0 127 15 69 0 169 15 69 1 26 6 170 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 15 73 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 15 77 0 160 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 89 1 24 9 93 1 25 9 89 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 6 174 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 6 178 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 15 81 0 185 15 81 0 186 15 81 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 15 81 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 6 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 6 186 0 2 6 186 0 3 6 186 0 4 6 186 0 5 6 186 0 6 6 186 0 7 6 186 0 8 6 186 0 9 6 186 0 10 6 186 0 11 6 186 0 12 6 186 0 14 6 186 0 15 6 186 0 16 6 186 0 18 6 186 0 20 6 186 0 22 6 186 0 23 6 186 0 24 6 186 0 25 6 186 0 26 6 186 0 28 6 186 0 29 6 186 0 30 6 186 0 31 6 186 0 32 6 186 0 33 6 186 0 34 15 85 0 35 6 186 0 36 6 186 0 37 6 186 0 38 6 186 0 39 6 186 0 41 6 186 0 42 6 186 0 43 6 186 0 44 6 186 0 45 6 186 0 46 6 186 0 123 6 186 0 124 6 186 0 125 6 186 0 126 6 186 0 127 6 186 1 84] 
#[1 6 190 0 2 6 190 0 3 6 190 0 4 1 175 0 5 1 179 0 6 6 190 0 7 6 190 0 8 6 190 0 9 1 183 0 10 6 190 0 11 6 190 0 12 6 190 0 14 6 190 0 15 6 190 0 16 6 190 0 18 6 190 0 20 6 190 0 22 6 190 0 23 6 190 0 24 6 190 0 25 6 190 0 26 0 37 0 27 6 190 0 28 6 190 0 29 6 190 0 30 6 190 0 31 6 190 0 32 6 190 0 33 6 190 0 34 11 101 0 35 6 190 0 36 6 190 0 37 6 190 0 38 6 190 0 39 6 190 0 41 6 190 0 42 6 190 0 43 6 190 0 44 6 190 0 45 6 190 0 46 0 93 0 65 6 190 0 123 6 190 0 124 6 190 0 125 6 190 0 126 6 190 0 127 3 185 0 128 8 105 0 148 15 89 0 167 11 109 0 168 3 145 0 219 3 149 0 220 11 113 1 6 3 145 1 27 3 145 1 60 1 189 1 62 6 190 1 84] 
#[1 15 93 0 9 7 125 0 15] 
#[0 15 97 0 124] 
#[0 5 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 6 194 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 6 198 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 15 101 0 9] 
#[0 15 105 0 128] 
#[0 15 109 0 124] 
#[0 15 113 0 9] 
#[0 15 117 0 8] 
#[0 6 202 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 6 206 0 1 6 206 0 5 6 206 0 6 6 206 0 8 6 206 0 10 6 206 0 12 6 206 0 13 6 206 0 16 6 206 0 17 6 206 0 23 6 206 0 26 6 206 0 27 6 206 0 28 6 206 0 35 6 206 0 40 6 206 0 42 6 206 0 43 6 206 0 46 6 206 0 47 6 206 0 49 6 206 0 50 6 206 0 51 6 206 0 52 6 206 0 53 6 206 0 54 6 206 0 55 11 153 0 56 6 206 0 57 6 206 0 58 6 206 0 59 6 206 0 60 6 206 0 61 6 206 0 62 6 206 0 63 6 206 0 64 6 206 0 65 6 206 0 66 6 206 0 67 6 206 0 68 6 206 0 69 6 206 0 70 6 206 0 71 6 206 0 72 6 206 0 73 6 206 0 74 6 206 0 75 6 206 0 77 6 206 0 78 6 206 0 79 6 206 0 80 6 206 0 81 6 206 0 82 6 206 0 83 6 206 0 84 6 206 0 85 6 206 0 86 6 206 0 87 6 206 0 88 6 206 0 89 6 206 0 90 6 206 0 92 6 206 0 93 6 206 0 94 6 206 0 95 6 206 0 96 6 206 0 97 6 206 0 98 6 206 0 99 6 206 0 100 6 206 0 101 6 206 0 102 6 206 0 103 6 206 0 104 6 206 0 105 6 206 0 106 6 206 0 107 6 206 0 108 6 206 0 109 6 206 0 110 6 206 0 111 6 206 0 112 6 206 0 113 6 206 0 114 6 206 0 115 6 206 0 116 6 206 0 117 6 206 0 118 6 206 0 119 6 206 0 120 6 206 0 121 6 206 0 122 6 206 0 128 6 206 0 129 6 206 0 131 6 206 0 132 6 206 0 133 6 206 0 134 6 206 0 135 6 206 0 136 6 206 0 137 15 121 1 70 11 161 1 71 6 206 1 84] 
#[0 15 125 0 9] 
#[0 6 210 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 15 129 0 9] 
#[0 6 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 6 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 15 133 0 9] 
#[1 0 93 0 65 3 185 0 128 15 137 0 219 15 141 0 220 15 145 1 27 15 145 1 60 1 189 1 62] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 15 149 0 145 0 225 0 146 0 229 0 147 3 177 0 148 3 145 0 219 3 149 0 220 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 6 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 15 153 0 47 0 141 0 90 15 157 0 106 4 245 0 128 4 249 0 146 15 161 0 219 15 161 1 27 4 249 1 47 1 169 1 54 1 173 1 55 5 1 1 60 4 249 1 61 1 189 1 62] 
#[0 6 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 15 165 0 27] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 15 169 0 145 0 225 0 146 0 229 0 147 3 177 0 148 3 145 0 219 3 149 0 220 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 6 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 6 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 7 125 0 15 15 173 0 36] 
#[0 15 177 0 36] 
#[1 15 181 0 9 7 125 0 15] 
#[0 15 185 0 9] 
#[0 6 238 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 6 242 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 6 246 0 2 6 246 0 3 6 246 0 4 6 246 0 5 6 246 0 6 6 246 0 7 6 246 0 9 6 246 0 10 6 246 0 11 6 246 0 12 6 246 0 14 6 246 0 15 6 246 0 16 6 246 0 18 6 237 0 20 6 241 0 22 6 246 0 23 6 246 0 24 6 246 0 25 6 246 0 26 6 246 0 28 6 246 0 29 6 246 0 30 6 246 0 31 6 246 0 32 6 246 0 33 6 246 0 34 6 246 0 36 6 246 0 37 6 246 0 38 6 246 0 39 6 246 0 41 6 246 0 43 6 246 0 44 6 246 0 45 6 246 0 46 6 246 0 123 6 246 0 124 6 246 0 125 6 246 0 126 6 246 0 127 6 246 1 84] 
#[1 6 250 0 2 6 250 0 3 6 250 0 4 6 250 0 5 6 250 0 6 6 250 0 7 6 250 0 9 6 250 0 10 6 250 0 11 6 250 0 12 6 250 0 14 6 250 0 15 6 250 0 16 6 250 0 18 6 237 0 20 6 241 0 22 6 250 0 23 6 250 0 24 6 250 0 25 6 250 0 26 6 250 0 28 6 250 0 29 6 250 0 30 6 250 0 31 6 250 0 32 6 250 0 33 6 250 0 34 6 250 0 36 6 250 0 37 6 250 0 38 6 250 0 39 6 250 0 41 6 250 0 43 6 250 0 44 6 250 0 45 6 250 0 46 6 250 0 123 6 250 0 124 6 250 0 125 6 250 0 126 6 250 0 127 6 250 1 84] 
#[1 6 254 0 2 6 254 0 3 6 254 0 4 6 254 0 5 6 254 0 6 6 254 0 7 6 254 0 9 6 254 0 10 6 254 0 11 6 254 0 12 6 254 0 14 6 254 0 15 6 254 0 16 6 254 0 18 6 237 0 20 6 241 0 22 6 254 0 23 6 254 0 24 6 254 0 25 6 254 0 26 6 254 0 28 6 254 0 29 6 254 0 30 6 254 0 31 6 254 0 32 6 254 0 33 6 254 0 34 6 254 0 36 6 254 0 37 6 254 0 38 6 254 0 39 6 254 0 41 6 254 0 43 6 254 0 44 6 254 0 45 6 254 0 46 6 254 0 123 6 254 0 124 6 254 0 125 6 254 0 126 6 254 0 127 6 254 1 84] 
#[1 7 2 0 2 6 245 0 3 7 2 0 4 7 2 0 5 7 2 0 6 7 2 0 7 7 2 0 9 6 249 0 10 7 2 0 11 7 2 0 12 7 2 0 14 7 2 0 15 7 2 0 16 7 2 0 18 7 2 0 23 6 253 0 24 7 2 0 25 7 2 0 26 7 2 0 28 7 2 0 29 7 2 0 30 7 2 0 31 7 2 0 32 7 2 0 33 7 2 0 34 7 2 0 36 7 2 0 37 7 2 0 38 7 2 0 39 7 2 0 41 7 2 0 43 7 2 0 44 7 2 0 45 7 2 0 46 7 2 0 123 7 2 0 124 7 2 0 125 7 2 0 126 7 2 0 127 7 2 1 84] 
#[1 7 6 0 2 6 245 0 3 7 6 0 4 7 6 0 5 7 6 0 6 7 6 0 7 7 6 0 9 6 249 0 10 7 6 0 11 7 6 0 12 7 6 0 14 7 6 0 15 7 6 0 16 7 6 0 18 7 6 0 23 6 253 0 24 7 6 0 25 7 6 0 26 7 6 0 28 7 6 0 29 7 6 0 30 7 6 0 31 7 6 0 32 7 6 0 33 7 6 0 34 7 6 0 36 7 6 0 37 7 6 0 38 7 6 0 39 7 6 0 41 7 6 0 43 7 6 0 44 7 6 0 45 7 6 0 46 7 6 0 123 7 6 0 124 7 6 0 125 7 6 0 126 7 6 0 127 7 6 1 84] 
#[1 7 10 0 2 7 10 0 4 7 10 0 5 7 10 0 6 7 10 0 7 7 10 0 9 7 10 0 11 7 1 0 12 7 10 0 14 7 10 0 15 7 5 0 16 7 10 0 18 7 10 0 23 7 10 0 25 7 10 0 26 7 10 0 28 7 10 0 29 7 10 0 30 7 10 0 31 7 10 0 32 7 10 0 33 7 10 0 34 7 10 0 36 7 10 0 37 7 10 0 38 7 10 0 39 7 10 0 41 7 10 0 43 7 10 0 44 7 10 0 45 7 10 0 46 7 10 0 123 7 10 0 124 7 10 0 125 7 10 0 126 7 10 0 127 7 10 1 84] 
#[1 7 14 0 2 7 14 0 4 7 14 0 5 7 14 0 6 7 14 0 7 7 14 0 9 7 14 0 11 7 14 0 14 7 14 0 15 7 14 0 18 7 14 0 23 7 14 0 25 7 14 0 26 7 14 0 28 7 14 0 29 7 14 0 30 7 14 0 31 7 14 0 32 7 14 0 33 7 14 0 34 7 14 0 36 7 14 0 37 7 14 0 38 7 14 0 39 7 14 0 41 7 14 0 43 7 14 0 44 7 14 0 45 7 14 0 46 7 17 0 123 7 14 0 124 7 17 0 125 7 14 0 126 7 14 0 127 7 17 0 177 7 14 1 84] 
#[1 7 18 0 2 7 18 0 4 7 18 0 5 7 18 0 6 7 18 0 7 7 18 0 9 7 18 0 11 7 18 0 14 7 18 0 15 7 18 0 18 7 18 0 23 7 18 0 25 7 18 0 26 7 18 0 28 7 18 0 29 7 18 0 30 7 18 0 31 7 18 0 32 7 18 0 33 7 18 0 34 7 18 0 36 7 18 0 37 7 18 0 38 7 18 0 39 7 18 0 41 7 18 0 43 7 18 0 44 7 18 0 45 7 18 0 46 7 17 0 123 7 18 0 124 7 17 0 125 7 18 0 126 7 18 0 127 7 17 0 177 7 18 1 84] 
#[1 7 22 0 2 7 22 0 4 7 22 0 5 7 22 0 6 7 22 0 7 7 22 0 9 7 22 0 11 7 22 0 14 7 22 0 15 7 22 0 18 7 22 0 23 7 22 0 25 7 22 0 26 7 22 0 28 7 22 0 29 7 22 0 30 7 22 0 31 7 22 0 32 7 22 0 33 7 22 0 34 7 22 0 36 7 22 0 37 7 22 0 38 7 22 0 39 7 22 0 41 7 22 0 43 7 22 0 44 7 22 0 45 7 22 0 46 7 17 0 123 7 22 0 124 7 17 0 125 7 22 0 126 7 22 0 127 7 17 0 177 7 22 1 84] 
#[1 7 26 0 2 7 26 0 4 7 26 0 5 7 26 0 6 7 26 0 7 7 26 0 9 7 26 0 11 7 26 0 14 7 26 0 15 7 26 0 18 7 26 0 23 7 26 0 25 7 26 0 26 7 26 0 28 7 26 0 29 7 26 0 30 7 26 0 31 7 26 0 32 7 26 0 33 7 26 0 34 7 26 0 36 7 26 0 37 7 26 0 38 7 26 0 39 7 26 0 41 7 26 0 43 7 26 0 44 7 26 0 45 7 26 0 46 7 17 0 123 7 26 0 124 7 17 0 125 7 26 0 126 7 26 0 127 7 17 0 177 7 26 1 84] 
#[1 7 30 0 2 7 30 0 4 7 30 0 5 7 30 0 6 7 30 0 7 7 30 0 9 7 30 0 11 7 30 0 14 7 30 0 15 7 30 0 18 7 30 0 23 7 30 0 25 7 30 0 26 7 30 0 28 7 21 0 29 7 25 0 30 7 30 0 31 7 30 0 32 7 29 0 33 7 30 0 34 7 30 0 36 7 30 0 37 7 30 0 38 7 30 0 39 7 30 0 41 7 30 0 43 7 30 0 44 7 30 0 45 7 30 0 46 1 187 0 124 7 30 0 126 7 30 0 127 7 30 1 84] 
#[1 7 34 0 2 7 34 0 4 7 34 0 5 7 34 0 6 7 34 0 7 7 34 0 9 7 34 0 11 7 34 0 14 7 34 0 15 7 34 0 18 7 34 0 23 7 34 0 25 7 34 0 26 7 34 0 28 7 21 0 29 7 25 0 30 7 34 0 31 7 34 0 32 7 29 0 33 7 34 0 34 7 34 0 36 7 34 0 37 7 34 0 38 7 34 0 39 7 34 0 41 7 34 0 43 7 34 0 44 7 34 0 45 7 34 0 46 1 191 0 124 7 34 0 126 7 34 0 127 7 34 1 84] 
#[1 7 37 0 2 7 38 0 4 7 38 0 5 7 38 0 6 7 38 0 7 7 38 0 9 7 38 0 11 7 38 0 14 7 38 0 15 7 38 0 18 7 38 0 23 7 38 0 25 7 38 0 26 7 38 0 28 7 38 0 31 7 41 0 32 7 38 0 34 7 38 0 36 7 38 0 37 7 38 0 38 7 38 0 39 7 38 0 41 7 38 0 43 7 38 0 44 7 38 0 45 7 38 0 46 7 38 0 124 7 38 0 126 7 38 0 127 7 38 1 84] 
#[1 7 42 0 4 7 45 0 5 7 42 0 6 7 42 0 7 7 42 0 9 7 42 0 11 7 42 0 14 7 42 0 15 7 42 0 18 7 42 0 23 7 42 0 25 7 42 0 26 7 42 0 28 7 42 0 31 7 42 0 34 7 42 0 36 7 42 0 37 7 42 0 38 7 42 0 39 7 42 0 41 7 42 0 43 7 42 0 44 7 42 0 45 7 42 0 46 7 42 0 124 7 42 0 126 7 42 0 127 7 42 1 84] 
#[1 7 46 0 4 7 46 0 6 7 46 0 7 7 46 0 9 7 46 0 11 7 46 0 14 7 46 0 15 7 46 0 18 7 46 0 23 7 46 0 25 7 46 0 26 7 46 0 28 7 46 0 31 7 46 0 34 7 46 0 36 7 49 0 37 7 46 0 38 7 46 0 39 7 46 0 41 7 46 0 43 7 46 0 44 7 46 0 45 7 46 0 46 7 46 0 124 7 46 0 126 7 46 0 127 7 46 1 84] 
#[1 7 50 0 4 7 50 0 6 7 50 0 7 7 50 0 9 7 50 0 11 7 50 0 14 7 50 0 15 7 50 0 18 7 50 0 23 7 50 0 25 7 50 0 26 7 50 0 28 7 50 0 31 7 50 0 34 7 50 0 36 7 50 0 38 7 50 0 39 7 50 0 41 7 53 0 43 7 50 0 44 7 50 0 45 7 50 0 46 7 50 0 124 7 50 0 126 7 50 0 127 7 50 1 84] 
#[1 7 54 0 4 7 54 0 6 7 54 0 7 7 54 0 9 7 54 0 11 7 54 0 14 7 54 0 15 7 54 0 18 7 54 0 23 7 54 0 25 7 54 0 26 7 54 0 28 7 54 0 31 7 54 0 34 7 54 0 36 7 54 0 38 7 54 0 39 7 54 0 41 7 53 0 43 7 54 0 44 7 54 0 45 7 54 0 46 7 54 0 124 7 54 0 126 7 54 0 127 7 54 1 84] 
#[1 7 125 0 15 15 189 0 26] 
#[1 7 58 0 4 7 57 0 6 7 58 0 7 7 58 0 9 7 58 0 11 7 58 0 14 7 58 0 15 7 58 0 18 7 58 0 23 7 58 0 25 7 58 0 26 7 58 0 28 7 58 0 31 7 58 0 34 7 58 0 36 7 58 0 38 7 61 0 39 7 58 0 41 7 58 0 44 7 58 0 45 7 58 0 46 7 58 0 124 7 58 0 126 7 58 0 127 7 58 1 84] 
#[1 7 62 0 4 7 57 0 6 7 62 0 7 7 62 0 9 7 62 0 11 7 62 0 14 7 62 0 15 7 62 0 18 7 62 0 23 7 62 0 25 7 62 0 26 7 62 0 28 7 62 0 31 7 62 0 34 7 62 0 36 7 62 0 38 7 61 0 39 7 62 0 41 7 62 0 44 7 62 0 45 7 62 0 46 7 62 0 124 7 62 0 126 7 62 0 127 7 62 1 84] 
#[0 7 66 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 1 84] 
#[0 7 70 0 9 0 15 0 26 0 28 0 36 1 84] 
#[0 7 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 15 193 0 9] 
#[0 7 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 15 197 0 9] 
#[1 1 98 0 2 1 98 0 3 1 98 0 4 1 98 0 5 1 98 0 6 1 98 0 7 1 98 0 8 1 98 0 9 1 98 0 10 1 98 0 11 1 98 0 12 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 22 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 13 85 0 27 1 98 0 28 1 98 0 29 1 98 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 41 1 98 0 42 1 98 0 43 1 98 0 44 1 98 0 45 1 98 0 46 1 98 0 49 1 98 0 76 1 98 0 91 1 98 0 111 1 98 0 123 1 98 0 124 1 98 0 125 1 98 0 126 1 98 0 127 1 98 1 84] 
#[1 7 82 0 15 7 82 0 36 7 221 0 128 15 201 0 248 7 233 0 249 7 237 0 250 7 241 0 251] 
#[0 15 205 0 36] 
#[0 7 86 0 15 0 36] 
#[1 1 195 0 8 7 90 0 9 1 199 0 35 1 203 0 42 15 221 0 253 15 225 0 254] 
#[0 7 94 0 15 0 23 0 36] 
#[0 15 229 0 128] 
#[0 7 98 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 15 233 0 9] 
#[0 7 102 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 15 237 0 9] 
#[0 15 241 0 28] 
#[0 7 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 7 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 0 162 0 29] 
#[0 13 85 0 27] 
#[0 7 114 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 15 245 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 5 5 0 204 5 5 0 205 5 5 0 206 5 5 0 207 5 5 0 208 5 5 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 5 5 0 224 1 61 0 225 5 5 0 232 5 5 0 233 5 5 0 234 5 5 0 236 5 5 0 238 5 5 0 240 5 5 0 241 5 5 0 242 5 5 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 5 5 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 5 5 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 5 5 1 66 5 5 1 67] 
#[0 15 249 0 46] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 2 154 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 8 45 0 203 0 241 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 0 241 0 224 1 61 0 225 0 241 0 232 0 241 0 233 0 241 0 234 0 241 0 236 15 253 0 237 0 241 0 238 0 241 0 240 0 241 0 241 0 241 0 242 0 241 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 0 241 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 0 241 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 0 241 1 66 0 241 1 67] 
#[0 7 118 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 8 9 0 106 13 53 0 128 16 1 0 230 8 205 0 231 8 17 1 60 1 189 1 62] 
#[0 7 122 0 28] 
#[0 16 5 0 28] 
#[0 7 126 0 27 0 42] 
#[0 16 9 0 46] 
#[0 7 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 7 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 5 54 0 2 5 54 0 3 5 54 0 4 5 54 0 5 5 54 0 6 5 54 0 7 5 54 0 8 5 54 0 9 5 54 0 10 5 54 0 11 5 54 0 12 5 54 0 13 5 54 0 14 5 54 0 15 5 54 0 16 5 54 0 17 5 54 0 18 5 54 0 19 5 54 0 20 5 54 0 21 5 54 0 22 5 54 0 23 5 54 0 24 5 54 0 25 5 54 0 26 1 91 0 27 5 54 0 28 5 54 0 29 5 54 0 30 5 54 0 31 5 54 0 32 5 54 0 33 5 54 0 34 5 54 0 35 5 54 0 36 5 54 0 37 5 54 0 38 5 54 0 39 5 54 0 41 5 54 0 42 5 54 0 43 5 54 0 44 5 54 0 45 5 54 0 46 5 54 0 47 5 54 0 49 5 54 0 52 5 54 0 53 5 54 0 57 5 54 0 58 5 54 0 59 5 54 0 60 5 54 0 61 5 54 0 62 5 54 0 65 5 54 0 69 5 54 0 72 5 54 0 73 5 54 0 74 5 54 0 76 5 54 0 77 5 54 0 79 5 54 0 82 5 54 0 83 5 54 0 84 5 54 0 85 5 54 0 90 5 54 0 91 5 54 0 95 5 54 0 98 5 54 0 99 5 54 0 101 5 54 0 104 5 54 0 108 5 54 0 111 5 54 0 112 5 54 0 114 5 54 0 115 5 54 0 116 5 54 0 118 5 54 0 119 5 54 0 120 5 54 0 121 5 54 0 123 5 54 0 124 5 54 0 125 5 54 0 126 5 54 0 127 5 54 0 128 5 54 1 84] 
#[1 8 241 0 27 0 162 0 29] 
#[0 7 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 5 98 0 42] 
#[1 5 41 0 26 0 158 0 27 0 162 0 29 5 106 0 42 16 13 0 226] 
#[0 16 17 0 133] 
#[1 7 142 0 15 7 142 0 124 16 21 0 128] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 16 25 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 7 146 0 15 16 29 0 31 7 146 0 124] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 8 129 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 8 133 0 106 1 17 0 108 0 177 0 112 8 137 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 1 9 1 8 8 161 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 16 33 1 57 8 161 1 58 8 161 1 59 1 37 1 60 1 189 1 62 1 9 1 65] 
#[1 7 150 0 15 7 150 0 124 16 37 0 128] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 16 41 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 7 154 0 15 0 158 0 27 0 162 0 29 16 45 0 31 7 154 0 124] 
#[0 7 158 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 0 17 0 5 0 21 0 6 13 9 0 8 3 190 0 9 0 29 0 10 16 49 0 23 0 37 0 27 14 157 0 35 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 3 153 1 2 3 157 1 3 14 165 1 4 16 53 1 6 1 9 1 8 1 141 1 10 14 173 1 13 14 177 1 14 9 185 1 17 9 189 1 18 9 193 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65] 
#[1 6 86 0 8 6 86 0 9 6 86 0 15 6 86 0 23 0 37 0 27 6 86 0 31 6 86 0 35 0 49 0 47 0 93 0 65 0 141 0 90 6 86 0 124 0 213 0 128 3 173 0 145 0 225 0 146 0 229 0 147 3 177 0 148 3 145 0 219 3 149 0 220 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 16 57 0 185 16 57 0 186 3 125 0 218 1 37 0 219 1 41 0 220 16 57 1 24 16 57 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 16 57 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 7 162 0 9 7 162 0 15 7 162 0 23 16 61 0 31 7 162 0 124] 
#[1 0 17 0 5 0 21 0 6 13 9 0 8 6 94 0 9 0 29 0 10 6 94 0 15 1 207 0 23 0 37 0 27 6 94 0 31 10 169 0 35 0 49 0 47 0 93 0 65 0 141 0 90 6 94 0 124 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 5 169 1 2 3 157 1 3 14 165 1 4 13 25 1 6 1 141 1 10 14 193 1 13 14 177 1 14 14 197 1 15 10 197 1 16 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 7 166 0 9 7 166 0 15 7 166 0 23 16 65 0 31 7 166 0 124] 
#[1 0 17 0 5 0 21 0 6 13 9 0 8 7 170 0 9 0 29 0 10 7 170 0 15 1 211 0 23 0 37 0 27 16 69 0 31 10 169 0 35 0 49 0 47 0 93 0 65 0 141 0 90 7 170 0 124 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 16 73 1 1 16 73 1 2 1 129 1 3 10 173 1 4 13 25 1 6 1 141 1 10 16 77 1 12 16 77 1 13 10 189 1 14 16 77 1 15 10 197 1 16 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 8 129 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 8 133 0 106 1 17 0 108 0 177 0 112 8 137 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 1 9 1 8 16 81 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 16 81 1 58 16 81 1 59 1 37 1 60 1 189 1 62 1 9 1 65] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 16 85 0 204 16 85 0 205 16 85 0 206 16 85 0 207 16 85 0 208 16 85 0 209 1 9 0 210 1 13 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 16 85 0 224 1 61 0 225 16 85 0 232 16 85 0 233 16 85 0 234 16 85 0 236 16 85 0 238 16 85 0 240 16 85 0 241 16 85 0 242 16 85 0 243 1 101 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 1 121 1 1 1 121 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 16 85 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 16 85 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65 16 85 1 66 16 85 1 67] 
#[1 7 174 0 2 7 174 0 3 7 174 0 4 7 174 0 5 7 174 0 6 7 174 0 7 7 174 0 8 7 174 0 9 7 174 0 10 7 174 0 11 7 174 0 12 7 174 0 13 7 174 0 14 7 174 0 15 7 174 0 16 7 174 0 17 7 174 0 18 7 174 0 19 7 174 0 20 7 174 0 21 7 174 0 22 7 174 0 23 7 174 0 24 7 174 0 25 7 174 0 26 1 215 0 27 7 174 0 28 7 174 0 29 7 174 0 30 7 174 0 31 7 174 0 32 7 174 0 33 7 174 0 34 7 174 0 35 7 174 0 36 7 174 0 37 7 174 0 38 7 174 0 39 7 174 0 41 7 174 0 42 7 174 0 43 7 174 0 44 7 174 0 45 7 174 0 46 7 174 0 47 7 174 0 49 7 174 0 52 7 174 0 53 7 174 0 57 7 174 0 58 7 174 0 59 7 174 0 60 7 174 0 61 7 174 0 62 7 174 0 65 7 174 0 69 7 174 0 72 7 174 0 73 7 174 0 74 7 174 0 76 7 174 0 77 7 174 0 79 7 174 0 82 7 174 0 83 7 174 0 84 7 174 0 85 7 174 0 90 7 174 0 91 7 174 0 95 7 174 0 98 7 174 0 99 7 174 0 101 7 174 0 104 7 174 0 108 7 174 0 111 7 174 0 112 7 174 0 114 7 174 0 115 7 174 0 116 7 174 0 118 7 174 0 119 7 174 0 120 7 174 0 121 7 174 0 123 7 174 0 124 7 174 0 125 7 174 0 126 7 174 0 127 7 174 0 128 7 174 1 84] 
#[0 7 178 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 8 241 0 27 5 34 0 28 0 162 0 29] 
#[0 16 89 0 28] 
#[0 7 182 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 16 93 0 28] 
#[0 16 97 0 28] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 16 101 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[0 7 186 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 7 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 7 194 0 10 0 47 0 90 0 106 0 128] 
#[0 7 198 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 16 105 0 46 9 21 0 128 16 109 0 228 9 21 0 229] 
#[0 7 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 16 113 0 185 16 113 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 7 206 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 7 210 0 42] 
#[0 7 214 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 16 117 0 28 7 218 0 42] 
#[1 5 41 0 26 8 241 0 27 0 162 0 29 7 222 0 42 16 121 0 226] 
#[1 8 9 0 106 13 53 0 128 16 125 0 230 8 205 0 231 8 17 1 60 1 189 1 62] 
#[0 16 129 0 28] 
#[0 7 226 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 7 230 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 5 97 0 26 9 165 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 193 16 133 1 21 9 173 1 38 5 149 1 50 5 153 1 69] 
#[0 7 234 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 7 238 0 15 0 23 0 28 0 36] 
#[0 7 242 0 9 0 15 0 46] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 16 137 0 185 16 137 0 186 3 125 0 218 1 37 0 219 1 41 0 220 16 137 1 24 16 137 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 16 137 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 7 246 0 8 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 9 101 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 9 129 1 44 16 141 1 51 9 125 1 52 9 129 1 53 9 113 1 60 1 189 1 62] 
#[1 16 145 0 15 7 250 0 42] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 16 149 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 16 153 0 160 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 89 0 185 9 89 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 89 1 24 9 93 1 25 9 89 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 7 254 0 15 0 23 0 42] 
#[0 8 2 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 8 6 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 16 157 0 46 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 16 137 0 185 16 137 0 186 3 125 0 218 1 37 0 219 1 41 0 220 16 137 1 24 16 137 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 16 137 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 8 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 14 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 11 153 0 56 16 161 1 70 11 161 1 71] 
#[0 13 185 0 28] 
#[1 16 189 0 5 16 189 0 6 8 18 0 8 8 18 0 9 8 18 0 15 8 18 0 19 8 18 0 23 8 18 0 26 8 18 0 28 8 18 0 31 1 219 0 35 8 18 0 42 0 53 0 49 0 85 0 61 8 18 0 76 16 173 0 88 8 18 0 91 16 177 0 109 8 18 0 111 0 205 0 120 8 18 0 124 16 181 0 244 1 105 0 245 1 105 0 246 16 185 1 7 3 169 1 8 16 189 1 9 16 193 1 74 16 193 1 75 16 193 1 77] 
#[1 16 205 0 23 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 1 9 1 8 16 209 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 1 9 1 65] 
#[0 8 22 0 9] 
#[1 8 26 0 8 8 26 0 9 8 26 0 15 8 26 0 23 8 26 0 26 8 26 0 28 8 26 0 31 1 223 0 35 8 26 0 42 0 53 0 49 8 26 0 76 8 26 0 91 8 26 0 111 8 26 0 124 5 73 0 245 5 73 0 246] 
#[1 8 30 0 8 8 30 0 9 8 30 0 15 8 30 0 23 8 30 0 26 8 30 0 28 8 30 0 31 1 227 0 35 8 30 0 42 0 53 0 49 8 30 0 76 8 30 0 91 8 30 0 111 8 30 0 124 16 213 0 244 1 105 0 245 1 105 0 246] 
#[1 0 37 0 27 0 93 0 65 3 221 0 128 3 225 0 148 3 145 0 219 3 149 0 220 3 145 1 27 3 145 1 60 1 189 1 62] 
#[1 8 34 0 5 8 34 0 6 8 34 0 8 8 34 0 9 8 34 0 10 8 34 0 15 8 34 0 23 8 34 0 26 1 231 0 27 8 34 0 28 8 34 0 31 1 235 0 35 8 34 0 42 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 1 239 0 65 0 97 0 69 13 229 0 72 8 34 0 76 0 113 0 77 0 125 0 83 0 129 0 84 8 34 0 91 0 149 0 98 0 153 0 99 0 165 0 104 8 34 0 111 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 8 34 0 124 1 243 0 128 4 177 0 148 13 233 0 215 16 217 0 217 13 233 0 218 1 37 0 219 1 41 0 220 13 233 0 221 16 221 0 244 1 105 0 245 1 105 0 246 13 233 1 8 1 37 1 27 13 241 1 32 1 37 1 60 1 189 1 62 13 233 1 65] 
#[1 0 17 0 5 0 21 0 6 1 247 0 8 8 38 0 9 0 29 0 10 8 38 0 15 1 251 0 23 8 38 0 26 0 37 0 27 8 38 0 28 8 38 0 31 10 169 0 35 8 38 0 42 0 93 0 65 8 38 0 76 8 38 0 91 8 38 0 111 8 38 0 124 3 185 0 128 8 105 0 148 3 145 0 219 3 149 0 220 10 173 1 4 10 177 1 6 16 225 1 12 16 225 1 13 10 189 1 14 16 225 1 15 10 197 1 16 3 145 1 27 3 145 1 60 1 189 1 62] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 5 185 0 128 16 229 0 148 3 145 0 219 3 149 0 220 16 233 0 244 1 105 0 245 1 105 0 246 3 145 1 27 5 209 1 60 1 189 1 62] 
#[0 8 42 0 15 0 28] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 8 129 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 8 133 0 106 1 17 0 108 0 177 0 112 8 137 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 1 9 0 210 8 145 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 8 149 0 244 1 105 0 245 1 105 0 246 1 9 1 8 8 161 1 19 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 8 157 1 57 8 161 1 58 8 161 1 59 1 37 1 60 1 189 1 62 1 9 1 65] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 16 237 0 185 16 237 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 16 241 0 26 0 45 0 35 0 53 0 49 5 73 0 245 5 73 0 246] 
#[0 8 46 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 16 245 0 26 0 45 0 35 0 53 0 49 5 73 0 245 5 73 0 246] 
#[1 5 238 0 15 5 97 0 26 5 238 0 28 14 45 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 193 8 253 1 21 14 49 1 23 14 49 1 26 16 249 1 37 5 145 1 38 14 57 1 39 5 149 1 50 5 153 1 69] 
#[1 14 69 0 15 16 253 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 17 1 0 185 17 1 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 8 50 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 17 5 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 93 0 65 0 141 0 90 9 245 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 14 9 0 244 1 105 0 245 1 105 0 246 17 9 1 1 17 9 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 17 13 1 35 10 33 1 36 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 3 146 0 5 3 146 0 6 3 146 0 8 3 146 0 10 3 146 0 23 1 255 0 26 3 146 0 27 3 146 0 28 1 255 0 35 3 146 0 47 1 255 0 49 3 146 0 52 3 146 0 53 3 146 0 57 3 146 0 58 3 146 0 59 3 146 0 60 3 146 0 61 3 146 0 62 3 146 0 65 3 146 0 69 3 146 0 72 3 146 0 73 3 146 0 74 3 146 0 77 3 146 0 79 3 146 0 82 3 146 0 83 3 146 0 84 3 146 0 85 3 146 0 90 3 146 0 95 3 146 0 98 3 146 0 99 3 146 0 101 3 146 0 104 3 146 0 108 3 146 0 112 3 146 0 114 3 146 0 115 3 146 0 116 3 146 0 118 3 146 0 119 3 146 0 120 3 146 0 121 3 146 0 128] 
#[1 5 238 0 15 5 97 0 26 5 238 0 28 14 45 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 193 9 69 1 21 14 49 1 23 14 49 1 26 17 17 1 37 5 145 1 38 14 57 1 39 5 149 1 50 5 153 1 69] 
#[1 14 69 0 15 17 21 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 9 133 0 66 9 137 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 17 25 0 130 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 141 0 185 9 141 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 141 1 24 9 141 1 26 1 37 1 27 17 29 1 40 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 141 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 8 54 0 15 0 28] 
#[1 8 58 0 15 5 97 0 26 8 58 0 28 17 33 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 193 9 169 1 21 9 173 1 38 17 37 1 39 5 149 1 50 5 153 1 69] 
#[0 8 62 0 15 0 28] 
#[0 8 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 8 70 0 46] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 0 45 0 35 0 49 0 47 0 53 0 49 0 93 0 65 0 141 0 90 9 245 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 14 9 0 244 1 105 0 245 1 105 0 246 17 41 1 1 17 41 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 17 45 1 36 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 8 74 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 9 217 0 28 0 45 0 35 8 78 0 46 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 10 37 0 92 10 37 0 93 10 37 0 94 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 9 237 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 9 241 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 9 245 0 128 0 221 0 145 0 225 0 146 0 229 0 147 0 233 0 148 10 25 0 206 10 25 0 208 1 9 0 210 10 1 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 1 9 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 4 189 0 225 10 25 0 240 10 9 0 244 1 105 0 245 1 105 0 246 10 13 1 1 10 13 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 10 25 1 20 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 17 49 1 33 10 25 1 34 10 29 1 35 10 33 1 36 10 37 1 46 0 225 1 47 1 169 1 54 1 173 1 55 10 25 1 56 1 181 1 60 0 225 1 61 1 189 1 62 1 9 1 65] 
#[0 8 82 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 17 53 1 44 17 53 1 45 9 113 1 60 1 189 1 62] 
#[1 0 37 0 27 0 93 0 65 17 61 0 92 17 61 0 93 17 61 0 94 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 17 57 1 44 17 57 1 45 17 61 1 46 9 113 1 60 1 189 1 62] 
#[0 8 86 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 17 65 0 118 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 17 69 1 44 17 69 1 45 9 113 1 60 1 189 1 62] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 10 69 0 92 10 69 0 93 10 69 0 94 10 45 0 118 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 10 49 0 244 1 105 0 245 1 105 0 246 9 113 1 27 17 73 1 43 10 65 1 44 10 65 1 45 10 69 1 46 9 113 1 60 1 189 1 62] 
#[0 8 90 0 15 0 42] 
#[1 0 37 0 27 0 93 0 65 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 17 77 1 44 17 77 1 45 9 113 1 60 1 189 1 62] 
#[0 8 94 0 15 0 23 0 42] 
#[1 8 98 0 2 8 98 0 3 8 98 0 4 8 98 0 5 8 98 0 6 8 98 0 7 8 98 0 8 8 98 0 9 8 98 0 10 8 98 0 11 8 98 0 12 8 98 0 13 8 98 0 14 8 98 0 15 8 98 0 16 8 98 0 17 8 98 0 18 8 98 0 19 8 98 0 20 8 98 0 21 8 98 0 22 8 98 0 23 8 98 0 24 8 98 0 25 8 98 0 26 2 3 0 27 8 98 0 28 8 98 0 29 8 98 0 30 8 98 0 31 8 98 0 32 8 98 0 33 8 98 0 34 8 98 0 35 8 98 0 36 8 98 0 37 8 98 0 38 8 98 0 39 8 98 0 41 8 98 0 42 8 98 0 43 8 98 0 44 8 98 0 45 8 98 0 46 8 98 0 47 8 98 0 49 8 98 0 52 8 98 0 53 8 98 0 57 8 98 0 58 8 98 0 59 8 98 0 60 8 98 0 61 8 98 0 62 8 98 0 65 8 98 0 69 8 98 0 72 8 98 0 73 8 98 0 74 8 98 0 76 8 98 0 77 8 98 0 79 8 98 0 82 8 98 0 83 8 98 0 84 8 98 0 85 8 98 0 90 8 98 0 91 8 98 0 95 8 98 0 98 8 98 0 99 8 98 0 101 8 98 0 104 8 98 0 108 8 98 0 111 8 98 0 112 8 98 0 114 8 98 0 115 8 98 0 116 8 98 0 118 8 98 0 119 8 98 0 120 8 98 0 121 8 98 0 123 8 98 0 124 8 98 0 125 8 98 0 126 8 98 0 127 8 98 0 128 8 98 1 84] 
#[1 8 102 0 2 8 102 0 3 8 102 0 4 8 102 0 5 8 102 0 6 8 102 0 7 8 102 0 8 8 102 0 9 8 102 0 10 8 102 0 11 8 102 0 12 8 102 0 13 8 102 0 14 8 102 0 15 8 102 0 16 8 102 0 17 8 102 0 18 8 102 0 19 8 102 0 20 8 102 0 21 8 102 0 22 8 102 0 23 8 102 0 24 8 102 0 25 2 7 0 26 2 11 0 27 8 102 0 28 2 15 0 29 8 102 0 30 8 102 0 31 8 102 0 32 8 102 0 33 8 102 0 34 8 102 0 35 8 102 0 36 8 102 0 37 8 102 0 38 8 102 0 39 8 102 0 41 2 7 0 42 8 102 0 43 8 102 0 44 8 102 0 45 8 102 0 46 8 102 0 47 8 102 0 49 8 102 0 52 8 102 0 53 8 102 0 57 8 102 0 58 8 102 0 59 8 102 0 60 8 102 0 61 8 102 0 62 8 102 0 65 8 102 0 69 8 102 0 72 8 102 0 73 8 102 0 74 2 7 0 76 8 102 0 77 8 102 0 79 8 102 0 82 8 102 0 83 8 102 0 84 8 102 0 85 8 102 0 90 8 102 0 91 8 102 0 95 8 102 0 98 8 102 0 99 8 102 0 101 8 102 0 104 8 102 0 108 8 102 0 111 8 102 0 112 8 102 0 114 8 102 0 115 8 102 0 116 8 102 0 118 8 102 0 119 8 102 0 120 8 102 0 121 8 102 0 123 8 102 0 124 8 102 0 125 8 102 0 126 8 102 0 127 8 102 0 128 8 102 1 84] 
#[1 5 181 0 26 8 106 0 42 17 81 1 41] 
#[0 8 110 0 42] 
#[0 8 114 0 42] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 10 121 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 17 85 0 185 17 85 0 189 4 181 0 214 4 181 0 215 5 229 0 216 3 53 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 17 85 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 17 85 1 64 3 65 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 8 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 122 0 15 0 124] 
#[0 8 126 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 130 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 17 89 0 35 14 181 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 14 185 0 185 14 185 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 4 237 0 10 8 85 0 106 8 89 0 128 4 253 0 219 4 253 1 27 8 93 1 60 1 189 1 62] 
#[0 6 90 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[1 0 17 0 5 0 21 0 6 10 161 0 8 6 94 0 9 0 29 0 10 0 37 0 27 10 169 0 35 0 93 0 65 3 185 0 128 8 105 0 148 3 145 0 219 3 149 0 220 14 165 1 4 14 169 1 6 14 193 1 13 14 177 1 14 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 17 93 0 9] 
#[1 1 163 0 8 6 106 0 9 6 106 0 15 6 106 0 23 6 106 0 26 6 106 0 28 6 106 0 31 14 201 0 35 6 106 0 42 6 106 0 76 6 106 0 91 6 106 0 111 6 106 0 124 17 97 1 4] 
#[1 8 134 0 8 8 134 0 9 8 134 0 15 8 134 0 23 8 134 0 26 8 134 0 28 8 134 0 31 2 19 0 35 8 134 0 42 0 53 0 49 8 134 0 76 8 134 0 91 8 134 0 111 8 134 0 124 17 101 0 244 1 105 0 245 1 105 0 246] 
#[0 17 105 0 36] 
#[0 8 138 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[0 8 142 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[0 8 146 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 17 109 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 17 113 0 185 17 113 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 8 150 0 8 8 150 0 9 8 150 0 15 9 205 0 19 8 150 0 23 8 150 0 26 8 150 0 28 8 150 0 31 8 150 0 35 8 150 0 42 8 150 0 76 8 150 0 91 8 150 0 111 8 150 0 124 17 117 1 5] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 17 121 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 17 125 0 185 17 125 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 8 154 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 8 158 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 1 171 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 3 250 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 17 129 0 162 2 193 0 163 17 129 0 164 17 129 0 170 17 129 0 171 17 129 0 172 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 17 133 0 9] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 17 137 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 8 162 0 2 8 162 0 3 8 162 0 4 8 162 0 5 8 162 0 6 8 162 0 7 11 89 0 8 8 162 0 9 8 162 0 10 8 162 0 11 8 162 0 12 8 162 0 14 8 162 0 15 8 162 0 16 8 162 0 18 8 162 0 20 8 162 0 22 8 162 0 23 8 162 0 24 8 162 0 25 8 162 0 26 8 162 0 28 8 162 0 29 8 162 0 30 8 162 0 31 8 162 0 32 8 162 0 33 8 162 0 34 8 162 0 36 8 162 0 37 8 162 0 38 8 162 0 39 8 162 0 41 6 145 0 42 8 162 0 43 8 162 0 44 8 162 0 45 8 162 0 46 8 162 0 123 8 162 0 124 8 162 0 125 8 162 0 126 8 162 0 127 17 141 0 169 17 141 1 26 8 162 1 84] 
#[0 8 166 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 170 0 15 0 23 0 36] 
#[0 10 225 0 128] 
#[1 10 241 0 15 8 174 0 36] 
#[1 8 178 0 15 17 145 0 23 8 178 0 36] 
#[0 8 182 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 186 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 17 149 0 8] 
#[0 8 190 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 17 153 0 185 17 153 0 186 17 153 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 17 153 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 17 157 0 8] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 17 161 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 17 165 0 185 17 165 0 186 17 165 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 17 165 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 17 169 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 17 173 0 185 17 173 0 186 17 173 0 188 17 177 0 200 3 125 0 218 1 37 0 219 1 41 0 220 17 177 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 17 173 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 5 93 0 8 1 46 0 15 8 194 0 26 1 46 0 28 7 177 0 31 6 145 0 42 5 129 1 22 5 129 1 23 5 129 1 26] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 9 57 0 255 1 117 1 0 17 185 1 1 17 185 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 17 189 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 17 189 0 202 17 189 0 205 17 189 0 206 17 189 0 207 17 189 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 17 189 0 224 1 61 0 225 17 189 0 238 17 189 0 240 17 189 0 241 17 189 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 17 193 0 31 6 145 0 42 17 197 1 26] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 17 201 1 1 17 201 1 2 1 129 1 3 1 133 1 6 1 141 1 10 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 8 198 0 8 0 27 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 65 0 69 0 72 0 77 0 83 0 84 0 98 0 99 0 104 0 114 0 115 0 116 0 119 0 120 0 121 0 128] 
#[1 8 202 0 2 8 202 0 3 8 202 0 4 8 202 0 5 8 202 0 6 8 202 0 7 11 89 0 8 8 202 0 9 8 202 0 10 8 202 0 11 8 202 0 12 8 202 0 14 8 202 0 15 8 202 0 16 8 202 0 18 8 202 0 20 8 202 0 22 8 202 0 23 8 202 0 24 8 202 0 25 8 202 0 26 8 202 0 28 8 202 0 29 8 202 0 30 8 202 0 31 8 202 0 32 8 202 0 33 8 202 0 34 8 202 0 36 8 202 0 37 8 202 0 38 8 202 0 39 8 202 0 41 6 145 0 42 8 202 0 43 8 202 0 44 8 202 0 45 8 202 0 46 8 202 0 123 8 202 0 124 8 202 0 125 8 202 0 126 8 202 0 127 17 205 0 169 17 205 1 26 8 202 1 84] 
#[0 17 209 0 9] 
#[0 8 206 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 210 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 17 213 0 9] 
#[1 7 125 0 15 17 217 0 36] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 17 221 0 185 17 221 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 8 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 218 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 17 225 0 8] 
#[0 8 222 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 17 229 0 9] 
#[0 17 233 0 8] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 17 237 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 17 237 0 202 17 237 0 205 17 237 0 206 17 237 0 207 17 237 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 17 237 0 224 1 61 0 225 17 237 0 238 17 237 0 240 17 237 0 241 17 237 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 17 241 0 23 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 17 245 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 17 249 0 244 1 105 0 245 1 105 0 246 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65 17 253 1 72] 
#[0 8 226 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 18 1 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 18 1 0 202 18 1 0 205 18 1 0 206 18 1 0 207 18 1 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 18 1 0 224 1 61 0 225 18 1 0 238 18 1 0 240 18 1 0 241 18 1 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 9 205 0 19 0 45 0 35 8 230 0 42 0 53 0 49 18 5 0 85 16 173 0 88 16 177 0 109 18 9 0 244 1 105 0 245 1 105 0 246 18 13 1 5 18 17 1 74 18 17 1 75 18 17 1 77] 
#[0 8 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 23 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 2 27 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 0 93 0 65 3 185 0 128 18 21 0 219 3 189 0 220 15 145 1 27 15 145 1 60 1 189 1 62] 
#[1 0 49 0 47 0 141 0 90 8 181 0 128 8 233 0 146 8 233 1 47 1 169 1 54 1 173 1 55 18 25 1 60 8 233 1 61 1 189 1 62] 
#[0 18 29 0 27] 
#[1 2 31 0 47 3 122 0 90 3 122 0 106 3 122 0 128] 
#[0 8 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 8 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 9 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 9 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 9 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 18 37 0 185 18 37 0 186 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 18 37 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 9 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 9 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 9 22 0 15 18 41 0 23 9 22 0 36] 
#[0 9 26 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 1 195 0 8 7 90 0 9 1 199 0 35 1 203 0 42 18 45 0 253 15 225 0 254] 
#[1 1 195 0 8 1 199 0 35 7 90 0 36 1 203 0 42 18 49 0 253 15 225 0 254] 
#[1 1 195 0 8 1 199 0 35 1 203 0 42 7 90 0 46 18 53 0 253 15 225 0 254] 
#[1 15 209 0 8 18 57 0 9 15 213 0 35 15 217 0 42 18 61 0 254] 
#[0 9 30 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 9 34 0 8 0 15 0 23 0 36] 
#[0 9 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 9 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 9 46 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 9 50 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 9 54 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 18 65 0 46] 
#[0 9 58 0 28] 
#[0 9 62 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 9 66 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 7 218 0 42] 
#[0 18 69 0 9] 
#[0 9 70 0 15 0 124] 
#[0 9 74 0 15 0 124] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 18 73 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 13 37 0 15 18 77 0 124] 
#[0 9 78 0 15 0 124] 
#[0 9 82 0 15 0 124] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 18 81 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 5 186 0 9 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 3 173 0 145 0 225 0 146 0 229 0 147 3 177 0 148 3 145 0 219 3 149 0 220 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 17 0 5 0 21 0 6 13 9 0 8 6 94 0 9 0 29 0 10 0 33 0 23 0 37 0 27 10 169 0 35 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 5 169 1 2 3 157 1 3 14 165 1 4 16 53 1 6 1 141 1 10 14 193 1 13 14 177 1 14 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[0 9 86 0 9 0 15 0 23 0 124] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 18 85 0 185 18 85 0 186 3 125 0 218 1 37 0 219 1 41 0 220 18 85 1 24 18 85 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 18 85 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 18 89 0 185 18 89 0 186 3 125 0 218 1 37 0 219 1 41 0 220 18 89 1 24 18 89 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 18 89 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 18 93 0 185 18 93 0 186 3 125 0 218 1 37 0 219 1 41 0 220 18 93 1 24 18 93 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 18 93 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 9 90 0 9 9 90 0 15 9 90 0 23 18 97 0 31 9 90 0 124] 
#[1 9 94 0 9 9 94 0 15 9 94 0 23 18 101 0 31 9 94 0 124] 
#[0 9 98 0 15 0 124] 
#[0 9 102 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 9 106 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 9 110 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 9 114 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 18 105 0 28] 
#[0 9 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 1 84] 
#[0 9 122 0 15 0 46] 
#[0 9 126 0 15 0 46] 
#[0 9 130 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 9 134 0 42] 
#[0 18 109 0 28] 
#[0 9 138 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 9 142 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[1 9 146 0 9 9 146 0 15 18 113 0 23 9 146 0 46] 
#[0 9 150 0 42] 
#[1 0 37 0 27 0 93 0 65 9 101 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 9 129 1 44 18 117 1 51 9 125 1 52 9 129 1 53 9 113 1 60 1 189 1 62] 
#[0 9 154 0 15 0 23 0 42] 
#[0 18 121 0 9] 
#[0 9 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 9 162 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 9 166 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 88 0 91 0 109 0 111 0 124] 
#[0 9 170 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 88 0 91 0 109 0 111 0 124] 
#[1 2 35 0 8 9 174 0 9 9 174 0 15 9 174 0 19 9 174 0 23 9 174 0 26 9 174 0 28 9 174 0 31 9 174 0 35 9 174 0 42 9 174 0 49 9 174 0 76 9 174 0 91 9 174 0 111 9 174 0 124] 
#[0 18 129 0 8] 
#[1 9 178 0 8 9 178 0 9 9 178 0 15 9 178 0 19 9 178 0 23 9 178 0 26 9 178 0 28 9 178 0 31 2 39 0 35 9 178 0 42 0 53 0 49 9 178 0 76 9 178 0 91 9 178 0 111 9 178 0 124 5 73 0 245 5 73 0 246] 
#[1 18 137 0 5 18 137 0 6 9 182 0 8 9 182 0 9 9 182 0 15 9 182 0 19 9 182 0 23 9 182 0 26 9 182 0 28 9 182 0 31 2 43 0 35 9 182 0 42 0 53 0 49 9 182 0 76 16 173 0 88 9 182 0 91 16 177 0 109 9 182 0 111 9 182 0 124 18 133 0 244 1 105 0 245 1 105 0 246 18 137 1 9 18 141 1 74 18 141 1 75 18 141 1 77] 
#[1 9 186 0 8 9 186 0 9 9 186 0 15 9 186 0 19 9 186 0 23 9 186 0 26 9 186 0 28 9 186 0 31 2 47 0 35 9 186 0 42 0 53 0 49 9 186 0 76 16 173 0 88 9 186 0 91 16 177 0 109 9 186 0 111 9 186 0 124 18 145 0 244 1 105 0 245 1 105 0 246 18 149 1 74 18 149 1 75 18 149 1 77] 
#[1 9 190 0 8 9 190 0 9 9 190 0 15 9 190 0 19 9 190 0 23 9 190 0 26 9 190 0 28 9 190 0 31 2 51 0 35 9 190 0 42 0 53 0 49 9 190 0 76 9 190 0 91 9 190 0 111 9 190 0 124 18 153 0 244 1 105 0 245 1 105 0 246] 
#[0 9 194 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 9 198 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 9 202 0 9] 
#[0 9 206 0 9 0 15 0 23] 
#[1 9 210 0 8 9 210 0 9 9 210 0 15 9 210 0 23 9 210 0 26 9 210 0 28 9 210 0 31 2 55 0 35 9 210 0 42 0 53 0 49 9 210 0 76 9 210 0 91 9 210 0 111 9 210 0 124 5 73 0 245 5 73 0 246] 
#[0 9 214 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 42 0 65 0 76 0 91 0 111 0 124 0 128] 
#[1 9 218 0 5 9 218 0 6 9 218 0 8 9 218 0 9 9 218 0 10 9 218 0 15 9 218 0 23 9 218 0 26 9 218 0 27 9 218 0 28 9 218 0 31 2 59 0 35 9 218 0 42 0 53 0 49 9 218 0 65 9 218 0 76 9 218 0 91 9 218 0 111 9 218 0 124 9 218 0 128 5 73 0 245 5 73 0 246] 
#[0 9 222 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 10 73 0 106 18 157 0 128 18 161 1 60 1 189 1 62] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 10 89 0 128 18 165 0 148 3 145 0 219 3 149 0 220 5 73 0 245 5 73 0 246 3 145 1 27 3 145 1 60 1 189 1 62] 
#[0 9 226 0 15 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 18 169 0 185 18 169 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 18 173 0 185 18 173 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 8 58 0 15 5 97 0 26 8 58 0 28 17 33 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 193 13 89 1 21 9 173 1 38 17 37 1 39 5 149 1 50 5 153 1 69] 
#[0 9 230 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 2 63 0 15 0 28] 
#[0 9 238 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 5 238 0 15 5 97 0 26 5 238 0 28 14 45 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 193 13 137 1 21 14 49 1 23 14 49 1 26 18 177 1 37 5 145 1 38 14 57 1 39 5 149 1 50 5 153 1 69] 
#[1 14 69 0 15 18 181 0 28] 
#[1 8 58 0 15 5 97 0 26 8 58 0 28 17 33 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 193 13 145 1 21 9 173 1 38 17 37 1 39 5 149 1 50 5 153 1 69] 
#[0 9 242 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[0 9 246 0 15 0 28] 
#[0 9 250 0 15 0 28] 
#[1 9 133 0 66 13 205 0 67 17 25 0 130 17 29 1 40] 
#[0 9 254 0 15 0 28] 
#[1 5 238 0 15 5 238 0 28 18 185 0 31 6 145 0 42 5 145 0 76 5 145 0 91 14 49 1 23 14 49 1 26 18 189 1 37 5 145 1 38 14 57 1 39] 
#[0 10 2 0 15 0 28] 
#[0 10 6 0 46] 
#[0 10 10 0 15 0 23 0 42] 
#[0 10 14 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 18 193 1 44 18 193 1 45 9 113 1 60 1 189 1 62] 
#[1 0 37 0 27 0 93 0 65 3 185 0 128 9 105 0 148 3 145 0 219 9 109 0 220 9 113 1 27 18 197 1 44 18 197 1 45 9 113 1 60 1 189 1 62] 
#[0 10 18 0 15 0 23 0 42] 
#[1 10 22 0 15 18 201 0 23 10 22 0 42] 
#[0 10 26 0 15 0 23 0 42] 
#[0 10 30 0 42] 
#[1 10 34 0 15 18 205 0 23 10 34 0 124] 
#[1 5 253 0 5 2 130 0 15 6 21 0 31 2 67 0 36 6 9 0 107 18 209 0 128 6 17 0 151 6 21 0 152 6 25 0 153 6 29 0 154 6 29 0 155 6 29 0 156 7 225 0 247 7 229 0 248 7 233 0 249 7 237 0 250 7 241 0 251] 
#[0 10 38 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 8 150 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[1 10 42 0 8 10 42 0 9 10 42 0 15 10 42 0 23 10 42 0 26 10 42 0 28 10 42 0 31 2 71 0 35 10 42 0 42 0 53 0 49 10 42 0 76 10 42 0 91 10 42 0 111 10 42 0 124 5 73 0 245 5 73 0 246] 
#[1 10 46 0 8 10 46 0 9 10 46 0 15 10 46 0 23 10 46 0 26 10 46 0 28 10 46 0 31 2 75 0 35 10 46 0 42 0 53 0 49 10 46 0 76 10 46 0 91 10 46 0 111 10 46 0 124 18 213 0 244 1 105 0 245 1 105 0 246] 
#[1 10 50 0 8 10 50 0 9 10 50 0 15 10 50 0 23 10 50 0 26 10 50 0 28 10 50 0 31 2 79 0 35 10 50 0 42 0 53 0 49 10 50 0 76 10 50 0 91 10 50 0 111 10 50 0 124 18 217 0 244 1 105 0 245 1 105 0 246] 
#[0 18 221 0 36] 
#[0 10 54 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 10 58 0 8 10 58 0 9 10 58 0 15 10 58 0 23 10 58 0 26 10 58 0 28 10 58 0 31 2 83 0 35 10 58 0 42 0 53 0 49 10 58 0 76 10 58 0 91 10 58 0 111 10 58 0 124 18 225 0 244 1 105 0 245 1 105 0 246] 
#[0 18 229 0 36] 
#[0 10 62 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 10 66 0 2 10 66 0 3 10 66 0 4 10 66 0 5 10 66 0 6 10 66 0 7 11 89 0 8 10 66 0 9 10 66 0 10 10 66 0 11 10 66 0 12 10 66 0 14 10 66 0 15 10 66 0 16 10 66 0 18 10 66 0 20 10 66 0 22 10 66 0 23 10 66 0 24 10 66 0 25 10 66 0 26 10 66 0 28 10 66 0 29 10 66 0 30 10 66 0 31 10 66 0 32 10 66 0 33 10 66 0 34 10 66 0 36 10 66 0 37 10 66 0 38 10 66 0 39 10 66 0 41 6 145 0 42 10 66 0 43 10 66 0 44 10 66 0 45 10 66 0 46 10 66 0 123 10 66 0 124 10 66 0 125 10 66 0 126 10 66 0 127 18 233 0 169 18 233 1 26 10 66 1 84] 
#[0 18 237 0 9] 
#[0 10 70 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 10 74 0 15 0 36] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 18 241 0 185 18 241 0 186 18 241 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 18 241 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 18 245 0 9 7 125 0 15] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 18 249 0 185 18 249 0 186 18 249 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 18 249 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 18 253 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 18 253 0 202 18 253 0 205 18 253 0 206 18 253 0 207 18 253 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 18 253 0 224 1 61 0 225 18 253 0 238 18 253 0 240 18 253 0 241 18 253 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 19 1 0 9 7 125 0 15] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 19 5 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 19 9 0 185 19 9 0 186 19 9 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 19 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 10 78 0 9 7 125 0 15] 
#[0 19 13 0 9] 
#[0 10 82 0 9] 
#[1 5 93 0 8 1 46 0 15 10 86 0 26 1 46 0 28 7 177 0 31 6 145 0 42 5 129 1 22 5 129 1 23 5 129 1 26] 
#[1 10 90 0 1 10 90 0 5 10 90 0 6 10 90 0 8 10 90 0 10 10 90 0 12 10 90 0 13 10 90 0 16 10 90 0 17 10 90 0 23 10 90 0 27 10 90 0 28 10 90 0 35 10 90 0 40 10 90 0 42 10 90 0 43 10 90 0 46 10 90 0 47 10 90 0 49 10 90 0 50 10 90 0 51 10 90 0 52 10 90 0 53 10 90 0 54 10 90 0 55 10 90 0 57 10 90 0 58 10 90 0 59 10 90 0 60 10 90 0 61 10 90 0 62 10 90 0 63 10 90 0 64 10 90 0 65 10 90 0 66 10 90 0 67 10 90 0 68 10 90 0 69 10 90 0 70 2 87 0 71 10 90 0 72 10 90 0 73 10 90 0 74 10 90 0 75 10 90 0 77 10 90 0 78 10 90 0 79 10 90 0 80 10 90 0 81 10 90 0 82 10 90 0 83 10 90 0 84 10 90 0 85 10 90 0 86 10 90 0 87 10 90 0 88 10 90 0 89 10 90 0 90 10 90 0 95 10 90 0 96 10 90 0 97 10 90 0 98 10 90 0 99 10 90 0 100 10 90 0 101 10 90 0 102 10 90 0 103 10 90 0 104 10 90 0 105 10 90 0 107 10 90 0 108 10 90 0 109 10 90 0 110 10 90 0 111 10 90 0 112 10 90 0 113 10 90 0 114 10 90 0 115 10 90 0 116 10 90 0 117 10 90 0 118 10 90 0 119 10 90 0 120 10 90 0 121 10 90 0 122 10 90 0 128 10 90 0 129 10 90 0 131 10 90 0 132 10 90 0 133 10 90 0 134 10 90 0 135 10 90 0 136 10 90 0 137 10 90 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 19 21 0 185 19 21 0 186 3 125 0 218 1 37 0 219 1 41 0 220 19 21 1 24 19 21 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 19 21 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 10 94 0 9 0 28] 
#[1 19 25 0 31 6 145 0 42 19 29 1 26] 
#[0 10 98 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 10 102 0 2 10 102 0 3 10 102 0 4 10 102 0 5 10 102 0 6 10 102 0 7 11 89 0 8 10 102 0 9 10 102 0 10 10 102 0 11 10 102 0 12 10 102 0 14 10 102 0 15 10 102 0 16 10 102 0 18 10 102 0 20 10 102 0 22 10 102 0 23 10 102 0 24 10 102 0 25 10 102 0 26 10 102 0 28 10 102 0 29 10 102 0 30 10 102 0 31 10 102 0 32 10 102 0 33 10 102 0 34 10 102 0 36 10 102 0 37 10 102 0 38 10 102 0 39 10 102 0 41 6 145 0 42 10 102 0 43 10 102 0 44 10 102 0 45 10 102 0 46 10 102 0 123 10 102 0 124 10 102 0 125 10 102 0 126 10 102 0 127 19 33 0 169 19 33 1 26 10 102 1 84] 
#[0 10 106 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 10 110 0 2 10 110 0 3 10 110 0 4 10 110 0 5 10 110 0 6 10 110 0 7 10 110 0 8 10 110 0 9 10 110 0 10 10 110 0 11 10 110 0 12 10 110 0 14 10 110 0 15 10 110 0 16 10 110 0 18 10 110 0 20 10 110 0 22 10 110 0 23 10 110 0 24 10 110 0 25 10 110 0 26 10 110 0 28 10 110 0 29 10 110 0 30 10 110 0 31 10 110 0 32 10 110 0 33 10 110 0 34 2 91 0 35 10 110 0 36 10 110 0 37 10 110 0 38 10 110 0 39 10 110 0 41 10 110 0 42 10 110 0 43 10 110 0 44 10 110 0 45 10 110 0 46 0 53 0 49 10 110 0 123 10 110 0 124 10 110 0 125 10 110 0 126 10 110 0 127 19 37 0 244 1 105 0 245 1 105 0 246 10 110 1 84] 
#[0 19 41 0 36] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 19 45 0 185 19 45 0 186 19 45 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 19 45 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 10 114 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 19 49 0 185 19 49 0 186 19 49 0 188 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 19 49 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 10 118 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 10 122 0 9] 
#[1 0 17 0 5 0 21 0 6 13 9 0 8 10 126 0 9 0 29 0 10 13 13 0 23 0 37 0 27 10 169 0 35 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 19 53 1 1 19 53 1 2 1 129 1 3 10 173 1 4 13 25 1 6 1 141 1 10 19 57 1 12 19 57 1 13 10 189 1 14 19 57 1 15 10 197 1 16 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 19 61 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 5 73 0 245 5 73 0 246 4 181 1 8 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[0 19 65 0 9] 
#[0 10 130 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 9 205 0 19 0 45 0 35 10 134 0 42 0 53 0 49 16 173 0 88 16 177 0 109 19 69 0 244 1 105 0 245 1 105 0 246 19 73 1 5 19 77 1 74 19 77 1 75 19 77 1 77] 
#[1 9 205 0 19 0 45 0 35 10 138 0 42 0 53 0 49 5 73 0 245 5 73 0 246 19 81 1 5] 
#[0 10 142 0 42] 
#[1 9 205 0 19 0 45 0 35 10 146 0 42 0 53 0 49 19 85 0 244 1 105 0 245 1 105 0 246 19 89 1 5] 
#[0 10 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 1 98 0 2 1 98 0 3 1 98 0 4 1 98 0 5 1 98 0 6 1 98 0 7 1 98 0 8 1 98 0 9 1 98 0 10 1 98 0 11 1 98 0 12 1 98 0 13 1 98 0 14 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 18 1 98 0 19 1 98 0 20 1 98 0 21 1 98 0 22 1 98 0 23 1 98 0 24 1 98 0 25 1 98 0 26 19 93 0 27 1 98 0 28 1 98 0 29 1 98 0 30 1 98 0 31 1 98 0 32 1 98 0 33 1 98 0 34 1 98 0 35 1 98 0 36 1 98 0 37 1 98 0 38 1 98 0 39 1 98 0 41 1 98 0 43 1 98 0 44 1 98 0 45 1 98 0 46 1 98 0 123 1 98 0 124 1 98 0 125 1 98 0 126 1 98 0 127 1 98 1 84] 
#[0 19 97 0 47] 
#[1 3 185 0 128 19 101 0 219 19 101 1 27 19 101 1 60 1 189 1 62] 
#[0 10 154 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 1 84] 
#[0 10 158 0 15 0 36] 
#[1 15 209 0 8 19 105 0 9 15 213 0 35 15 217 0 42 18 61 0 254] 
#[1 15 209 0 8 15 213 0 35 19 109 0 36 15 217 0 42 18 61 0 254] 
#[1 15 209 0 8 15 213 0 35 15 217 0 42 19 113 0 46 18 61 0 254] 
#[0 10 162 0 15 0 23 0 36] 
#[0 10 166 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 10 170 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128 1 84] 
#[0 19 117 0 28] 
#[0 10 174 0 15 0 124] 
#[0 19 121 0 60] 
#[0 10 178 0 15 0 124] 
#[0 10 182 0 9 0 15 0 23 0 124] 
#[0 10 186 0 9 0 15 0 23 0 124] 
#[0 10 190 0 9 0 15 0 23 0 124] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 19 125 0 185 19 125 0 186 3 125 0 218 1 37 0 219 1 41 0 220 19 125 1 24 19 125 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 19 125 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 19 129 0 185 19 129 0 186 3 125 0 218 1 37 0 219 1 41 0 220 19 129 1 24 19 129 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 19 129 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 10 194 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 10 198 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 10 202 0 9 0 15 0 46] 
#[0 10 206 0 42] 
#[0 10 210 0 15 0 23 0 42] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 6 61 0 184 19 133 0 185 19 133 0 189 3 125 0 218 1 37 0 219 1 41 0 220 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 19 137 0 9 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 19 141 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65 19 145 1 76] 
#[1 10 214 0 8 10 214 0 9 10 214 0 15 10 214 0 19 10 214 0 23 10 214 0 26 10 214 0 28 10 214 0 31 2 95 0 35 10 214 0 42 0 53 0 49 10 214 0 76 10 214 0 91 10 214 0 111 10 214 0 124 5 73 0 245 5 73 0 246] 
#[1 10 218 0 8 10 218 0 9 10 218 0 15 10 218 0 19 10 218 0 23 10 218 0 26 10 218 0 28 10 218 0 31 2 99 0 35 10 218 0 42 0 53 0 49 10 218 0 76 16 173 0 88 10 218 0 91 16 177 0 109 10 218 0 111 10 218 0 124 19 149 0 244 1 105 0 245 1 105 0 246 19 153 1 74 19 153 1 75 19 153 1 77] 
#[1 10 222 0 8 10 222 0 9 10 222 0 15 10 222 0 19 10 222 0 23 10 222 0 26 10 222 0 28 10 222 0 31 2 103 0 35 10 222 0 42 0 53 0 49 10 222 0 76 10 222 0 91 10 222 0 111 10 222 0 124 19 157 0 244 1 105 0 245 1 105 0 246] 
#[1 10 226 0 8 10 226 0 9 10 226 0 15 10 226 0 19 10 226 0 23 10 226 0 26 10 226 0 28 10 226 0 31 2 107 0 35 10 226 0 42 0 53 0 49 10 226 0 76 10 226 0 91 10 226 0 111 10 226 0 124 5 73 0 245 5 73 0 246] 
#[1 10 230 0 8 10 230 0 9 10 230 0 15 10 230 0 19 10 230 0 23 10 230 0 26 10 230 0 28 10 230 0 31 2 111 0 35 10 230 0 42 0 53 0 49 10 230 0 76 10 230 0 91 10 230 0 111 10 230 0 124 19 161 0 244 1 105 0 245 1 105 0 246] 
#[1 10 234 0 8 10 234 0 9 10 234 0 15 10 234 0 19 10 234 0 23 10 234 0 26 10 234 0 28 10 234 0 31 2 115 0 35 10 234 0 42 0 53 0 49 10 234 0 76 10 234 0 91 10 234 0 111 10 234 0 124 5 73 0 245 5 73 0 246] 
#[1 6 18 0 5 6 18 0 6 6 18 0 8 6 18 0 9 6 18 0 10 6 18 0 15 6 18 0 23 6 18 0 26 1 127 0 27 6 18 0 28 0 162 0 29 6 18 0 31 6 18 0 35 6 18 0 42 6 18 0 49 6 18 0 52 6 18 0 53 6 18 0 57 6 18 0 58 6 18 0 59 6 18 0 60 6 18 0 61 6 18 0 65 6 18 0 69 6 18 0 72 6 18 0 76 6 18 0 77 6 18 0 83 6 18 0 84 6 18 0 91 6 18 0 98 6 18 0 99 6 18 0 104 6 18 0 111 6 18 0 114 6 18 0 115 6 18 0 116 6 18 0 119 6 18 0 120 6 18 0 121 6 18 0 124 6 18 0 128] 
#[1 6 26 0 5 6 26 0 6 6 26 0 8 6 26 0 9 6 26 0 10 6 26 0 15 6 26 0 23 6 26 0 26 1 139 0 27 6 26 0 28 6 26 0 31 6 26 0 35 6 26 0 42 6 26 0 49 6 26 0 52 6 26 0 53 6 26 0 57 6 26 0 58 6 26 0 59 6 26 0 60 6 26 0 61 6 26 0 65 6 26 0 69 6 26 0 72 6 26 0 76 6 26 0 77 6 26 0 83 6 26 0 84 6 26 0 91 6 26 0 98 6 26 0 99 6 26 0 104 6 26 0 111 6 26 0 114 6 26 0 115 6 26 0 116 6 26 0 119 6 26 0 120 6 26 0 121 6 26 0 124 6 26 0 128] 
#[1 8 9 0 106 19 165 0 128 8 17 1 60 1 189 1 62] 
#[0 10 238 0 15 0 28] 
#[0 9 234 0 15 0 28] 
#[1 8 58 0 15 5 97 0 26 8 58 0 28 17 33 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 193 16 133 1 21 9 173 1 38 17 37 1 39 5 149 1 50 5 153 1 69] 
#[0 10 242 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 128] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 17 25 0 130 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 9 141 0 185 9 141 0 186 3 125 0 218 1 37 0 219 1 41 0 220 9 141 1 24 9 141 1 26 1 37 1 27 17 29 1 40 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 9 141 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 8 58 0 15 8 58 0 28 19 169 0 31 9 173 0 76 9 173 0 91 9 173 1 38 17 37 1 39] 
#[0 10 246 0 15 0 23 0 42] 
#[0 10 250 0 15 0 23 0 42] 
#[0 10 254 0 15 0 42] 
#[0 11 2 0 15 0 124] 
#[1 2 119 0 8 2 123 0 15 2 123 0 23 4 198 0 27 7 177 0 31 2 123 0 36 6 145 0 42 10 229 1 22 10 229 1 23 10 229 1 26] 
#[1 11 6 0 8 11 6 0 9 11 6 0 15 11 6 0 23 11 6 0 26 11 6 0 28 11 6 0 31 2 127 0 35 11 6 0 42 0 53 0 49 11 6 0 76 11 6 0 91 11 6 0 111 11 6 0 124 5 73 0 245 5 73 0 246] 
#[1 11 10 0 8 11 10 0 9 11 10 0 15 11 10 0 23 11 10 0 26 11 10 0 28 11 10 0 31 2 131 0 35 11 10 0 42 0 53 0 49 11 10 0 76 11 10 0 91 11 10 0 111 11 10 0 124 5 73 0 245 5 73 0 246] 
#[1 11 14 0 8 11 14 0 9 11 14 0 15 11 14 0 23 11 14 0 26 11 14 0 28 11 14 0 31 2 135 0 35 11 14 0 42 0 53 0 49 11 14 0 76 11 14 0 91 11 14 0 111 11 14 0 124 19 173 0 244 1 105 0 245 1 105 0 246] 
#[1 11 18 0 8 11 18 0 9 11 18 0 15 11 18 0 23 11 18 0 26 11 18 0 28 11 18 0 31 2 139 0 35 11 18 0 42 0 53 0 49 11 18 0 76 11 18 0 91 11 18 0 111 11 18 0 124 5 73 0 245 5 73 0 246] 
#[1 11 22 0 8 11 22 0 9 11 22 0 15 11 22 0 23 11 22 0 26 11 22 0 28 11 22 0 31 2 143 0 35 11 22 0 42 0 53 0 49 11 22 0 76 11 22 0 91 11 22 0 111 11 22 0 124 19 177 0 244 1 105 0 245 1 105 0 246] 
#[0 11 26 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 11 30 0 2 11 30 0 3 11 30 0 4 11 30 0 5 11 30 0 6 11 30 0 7 11 89 0 8 11 30 0 9 11 30 0 10 11 30 0 11 11 30 0 12 11 30 0 14 11 30 0 15 11 30 0 16 11 30 0 18 11 30 0 20 11 30 0 22 11 30 0 23 11 30 0 24 11 30 0 25 11 30 0 26 11 30 0 28 11 30 0 29 11 30 0 30 11 30 0 31 11 30 0 32 11 30 0 33 11 30 0 34 11 30 0 36 11 30 0 37 11 30 0 38 11 30 0 39 11 30 0 41 6 145 0 42 11 30 0 43 11 30 0 44 11 30 0 45 11 30 0 46 11 30 0 123 11 30 0 124 11 30 0 125 11 30 0 126 11 30 0 127 19 181 0 169 19 181 1 26 11 30 1 84] 
#[1 19 185 0 9 7 125 0 15] 
#[0 19 189 0 28] 
#[1 19 193 0 9 7 125 0 15] 
#[0 11 34 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 19 197 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 19 197 0 202 19 197 0 205 19 197 0 206 19 197 0 207 19 197 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 19 197 0 224 1 61 0 225 19 197 0 238 19 197 0 240 19 197 0 241 19 197 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 19 201 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 19 201 0 202 19 201 0 205 19 201 0 206 19 201 0 207 19 201 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 19 201 0 224 1 61 0 225 19 201 0 238 19 201 0 240 19 201 0 241 19 201 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 19 205 0 9 7 125 0 15] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 19 209 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 19 209 0 202 19 209 0 205 19 209 0 206 19 209 0 207 19 209 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 19 209 0 224 1 61 0 225 19 209 0 238 19 209 0 240 19 209 0 241 19 209 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 19 213 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 19 213 0 202 19 213 0 205 19 213 0 206 19 213 0 207 19 213 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 19 213 0 224 1 61 0 225 19 213 0 238 19 213 0 240 19 213 0 241 19 213 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 11 38 0 9 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 181 0 145 0 225 0 146 0 229 0 147 3 117 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 19 217 0 185 19 217 0 186 3 125 0 218 1 37 0 219 1 41 0 220 19 217 1 24 19 217 1 26 1 37 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 129 1 65 19 217 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 11 42 0 9 0 28] 
#[0 11 46 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 11 50 0 2 11 50 0 3 11 50 0 4 11 50 0 5 11 50 0 6 11 50 0 7 11 50 0 8 11 50 0 9 11 50 0 10 11 50 0 11 11 50 0 12 11 50 0 14 11 50 0 15 11 50 0 16 11 50 0 18 11 50 0 20 11 50 0 22 11 50 0 23 11 50 0 24 11 50 0 25 11 50 0 26 11 50 0 28 11 50 0 29 11 50 0 30 11 50 0 31 11 50 0 32 11 50 0 33 11 50 0 34 2 147 0 35 11 50 0 36 11 50 0 37 11 50 0 38 11 50 0 39 11 50 0 41 11 50 0 42 11 50 0 43 11 50 0 44 11 50 0 45 11 50 0 46 0 53 0 49 11 50 0 123 11 50 0 124 11 50 0 125 11 50 0 126 11 50 0 127 5 73 0 245 5 73 0 246 11 50 1 84] 
#[1 11 54 0 2 11 54 0 3 11 54 0 4 11 54 0 5 11 54 0 6 11 54 0 7 11 54 0 8 11 54 0 9 11 54 0 10 11 54 0 11 11 54 0 12 11 54 0 14 11 54 0 15 11 54 0 16 11 54 0 18 11 54 0 20 11 54 0 22 11 54 0 23 11 54 0 24 11 54 0 25 11 54 0 26 11 54 0 28 11 54 0 29 11 54 0 30 11 54 0 31 11 54 0 32 11 54 0 33 11 54 0 34 2 151 0 35 11 54 0 36 11 54 0 37 11 54 0 38 11 54 0 39 11 54 0 41 11 54 0 42 11 54 0 43 11 54 0 44 11 54 0 45 11 54 0 46 0 53 0 49 11 54 0 123 11 54 0 124 11 54 0 125 11 54 0 126 11 54 0 127 19 221 0 244 1 105 0 245 1 105 0 246 11 54 1 84] 
#[1 19 225 0 9 7 125 0 15] 
#[1 19 229 0 9 7 125 0 15] 
#[0 11 58 0 9] 
#[0 11 62 0 9] 
#[1 0 17 0 5 0 21 0 6 13 9 0 8 11 66 0 9 0 29 0 10 13 13 0 23 0 37 0 27 10 169 0 35 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 0 221 0 145 0 225 0 146 0 229 0 147 3 141 0 148 3 145 0 219 3 149 0 220 19 233 1 1 19 233 1 2 1 129 1 3 10 173 1 4 13 25 1 6 1 141 1 10 19 237 1 12 19 237 1 13 10 189 1 14 19 237 1 15 10 197 1 16 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 1 253 0 42 19 241 0 193] 
#[1 9 205 0 19 0 45 0 35 11 70 0 42 0 53 0 49 5 73 0 245 5 73 0 246 19 245 1 5] 
#[0 11 74 0 42] 
#[1 9 205 0 19 0 45 0 35 11 78 0 42 0 53 0 49 19 249 0 244 1 105 0 245 1 105 0 246 19 253 1 5] 
#[0 11 82 0 42] 
#[1 9 205 0 19 0 45 0 35 11 86 0 42 0 53 0 49 5 73 0 245 5 73 0 246 20 1 1 5] 
#[0 11 90 0 42] 
#[1 2 155 0 47 7 194 0 90 7 194 0 106 7 194 0 128] 
#[1 3 185 0 128 20 9 0 219 20 9 1 27 20 9 1 60 1 189 1 62] 
#[0 11 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 11 98 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 11 102 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 11 106 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 11 110 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 11 114 0 15 20 13 0 23 20 17 0 31 11 114 0 124 20 21 0 128] 
#[0 11 118 0 9 0 15 0 23 0 124] 
#[0 11 122 0 9 0 15 0 23 0 124] 
#[0 20 25 0 9] 
#[0 11 126 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[1 11 130 0 9 11 130 0 15 20 29 0 23] 
#[1 20 33 0 9 20 37 0 15] 
#[1 11 134 0 8 11 134 0 9 11 134 0 15 11 134 0 19 11 134 0 23 11 134 0 26 11 134 0 28 11 134 0 31 2 159 0 35 11 134 0 42 0 53 0 49 11 134 0 76 11 134 0 91 11 134 0 111 11 134 0 124 5 73 0 245 5 73 0 246] 
#[1 11 138 0 8 11 138 0 9 11 138 0 15 11 138 0 19 11 138 0 23 11 138 0 26 11 138 0 28 11 138 0 31 2 163 0 35 11 138 0 42 0 53 0 49 11 138 0 76 11 138 0 91 11 138 0 111 11 138 0 124 20 41 0 244 1 105 0 245 1 105 0 246] 
#[1 11 142 0 8 11 142 0 9 11 142 0 15 11 142 0 19 11 142 0 23 11 142 0 26 11 142 0 28 11 142 0 31 2 167 0 35 11 142 0 42 0 53 0 49 11 142 0 76 11 142 0 91 11 142 0 111 11 142 0 124 5 73 0 245 5 73 0 246] 
#[1 11 146 0 8 11 146 0 9 11 146 0 15 11 146 0 19 11 146 0 23 11 146 0 26 11 146 0 28 11 146 0 31 2 171 0 35 11 146 0 42 0 53 0 49 11 146 0 76 11 146 0 91 11 146 0 111 11 146 0 124 5 73 0 245 5 73 0 246] 
#[1 8 102 0 5 8 102 0 6 8 102 0 8 8 102 0 9 8 102 0 10 8 102 0 15 8 102 0 23 8 102 0 26 2 11 0 27 8 102 0 28 0 162 0 29 8 102 0 31 8 102 0 35 8 102 0 42 8 102 0 49 8 102 0 52 8 102 0 53 8 102 0 57 8 102 0 58 8 102 0 59 8 102 0 60 8 102 0 61 8 102 0 65 8 102 0 69 8 102 0 72 8 102 0 76 8 102 0 77 8 102 0 83 8 102 0 84 8 102 0 91 8 102 0 98 8 102 0 99 8 102 0 104 8 102 0 111 8 102 0 114 8 102 0 115 8 102 0 116 8 102 0 119 8 102 0 120 8 102 0 121 8 102 0 124 8 102 0 128] 
#[1 17 25 0 130 17 29 1 40] 
#[1 11 150 0 8 11 150 0 9 11 150 0 15 11 150 0 23 11 150 0 26 11 150 0 28 11 150 0 31 2 175 0 35 11 150 0 42 0 53 0 49 11 150 0 76 11 150 0 91 11 150 0 111 11 150 0 124 5 73 0 245 5 73 0 246] 
#[1 11 154 0 8 11 154 0 9 11 154 0 15 11 154 0 23 11 154 0 26 11 154 0 28 11 154 0 31 2 179 0 35 11 154 0 42 0 53 0 49 11 154 0 76 11 154 0 91 11 154 0 111 11 154 0 124 5 73 0 245 5 73 0 246] 
#[0 11 158 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 11 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 11 166 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 11 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 11 174 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 11 178 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 128 2 133 0 129 2 137 0 131 2 141 0 132 2 145 0 133 3 93 0 134 3 93 0 135 3 93 0 136 3 93 0 137 2 181 0 144 2 169 0 145 0 225 0 146 0 229 0 147 0 233 0 148 2 181 0 149 2 177 0 150 2 181 0 158 2 185 0 159 2 213 0 162 2 193 0 163 2 213 0 164 2 213 0 170 2 213 0 171 2 213 0 172 2 213 0 173 2 217 0 174 2 221 0 175 2 225 0 176 2 229 0 178 2 233 0 179 2 237 0 180 2 241 0 181 2 245 0 182 2 249 0 183 2 253 0 184 3 9 0 185 3 9 0 186 3 9 0 188 20 45 0 190 3 17 0 191 3 21 0 192 3 25 0 193 3 29 0 195 3 33 0 197 3 37 0 201 20 45 0 202 20 45 0 205 20 45 0 206 20 45 0 207 20 45 0 208 1 9 0 210 3 49 0 211 1 17 0 212 1 21 0 213 1 9 0 214 1 9 0 215 3 53 0 218 1 37 0 219 1 41 0 220 1 9 0 221 1 9 0 222 1 53 0 223 20 45 0 224 1 61 0 225 20 45 0 238 20 45 0 240 20 45 0 241 20 45 0 242 3 57 0 244 1 105 0 245 1 105 0 246 1 113 0 255 1 117 1 0 3 61 1 1 3 61 1 2 1 129 1 3 1 133 1 6 1 9 1 8 1 141 1 10 1 37 1 27 1 9 1 28 1 157 1 29 1 161 1 32 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62 3 65 1 65 3 69 1 68 3 9 1 73 2 181 1 79 3 81 1 80 3 85 1 81 3 89 1 82 3 93 1 83] 
#[0 11 182 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 11 186 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 11 190 0 9 0 28] 
#[1 11 194 0 2 11 194 0 3 11 194 0 4 11 194 0 5 11 194 0 6 11 194 0 7 11 194 0 8 11 194 0 9 11 194 0 10 11 194 0 11 11 194 0 12 11 194 0 14 11 194 0 15 11 194 0 16 11 194 0 18 11 194 0 20 11 194 0 22 11 194 0 23 11 194 0 24 11 194 0 25 11 194 0 26 11 194 0 28 11 194 0 29 11 194 0 30 11 194 0 31 11 194 0 32 11 194 0 33 11 194 0 34 2 183 0 35 11 194 0 36 11 194 0 37 11 194 0 38 11 194 0 39 11 194 0 41 11 194 0 42 11 194 0 43 11 194 0 44 11 194 0 45 11 194 0 46 0 53 0 49 11 194 0 123 11 194 0 124 11 194 0 125 11 194 0 126 11 194 0 127 5 73 0 245 5 73 0 246 11 194 1 84] 
#[0 11 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 11 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 11 206 0 9] 
#[0 11 210 0 9] 
#[0 11 214 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 11 218 0 42] 
#[1 9 205 0 19 0 45 0 35 11 222 0 42 0 53 0 49 5 73 0 245 5 73 0 246 20 49 1 5] 
#[0 11 226 0 42] 
#[0 11 230 0 42] 
#[1 3 185 0 128 20 53 0 219 20 53 1 27 20 53 1 60 1 189 1 62] 
#[0 11 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[1 11 238 0 15 11 238 0 124 20 57 0 128] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 20 61 0 145 0 225 0 146 0 229 0 147 3 177 0 148 3 145 0 219 3 149 0 220 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 11 242 0 15 20 65 0 31 11 242 0 124] 
#[0 11 246 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 11 250 0 9 0 15] 
#[0 11 254 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 128 4 177 0 148 4 181 0 214 4 181 0 215 5 229 0 216 4 181 0 218 1 37 0 219 1 41 0 220 4 181 0 221 4 181 0 222 1 53 0 223 4 189 0 225 4 181 1 8 20 69 1 11 1 37 1 27 4 181 1 28 1 157 1 29 1 161 1 32 1 37 1 60 1 189 1 62 4 181 1 65] 
#[1 12 2 0 8 12 2 0 9 12 2 0 15 12 2 0 19 12 2 0 23 12 2 0 26 12 2 0 28 12 2 0 31 2 187 0 35 12 2 0 42 0 53 0 49 12 2 0 76 12 2 0 91 12 2 0 111 12 2 0 124 5 73 0 245 5 73 0 246] 
#[0 12 6 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 128 0 129 0 131 0 132 0 133 0 134 0 135 0 136 0 137 1 84] 
#[0 12 10 0 42] 
#[0 12 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 1 84] 
#[0 12 18 0 15 0 124] 
#[0 12 22 0 15 0 124] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 128 20 73 0 145 0 225 0 146 0 229 0 147 3 177 0 148 3 145 0 219 3 149 0 220 3 145 1 27 0 225 1 47 1 169 1 54 1 173 1 55 1 181 1 60 0 225 1 61 1 189 1 62] 
#[1 12 26 0 9 12 26 0 15 20 77 0 23] 
#[0 12 30 0 15 0 124] 
#[0 12 34 0 9 0 15]
	).
]

{ #category : #accessing }
CPPParser >> parse [
	| node |
	node := super parse.
	(node isKindOf: SmaCCParseNode)
		ifTrue: [ node
				attributeNamed: #preprocessorDirectives
				put: scanner preprocessorDirectives ].
	^ node
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
CPPParser >> reduceActionForcapturelist1: nodes [
	| result |
	result := Array new: 3.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcapturelist2: nodes [
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
CPPParser >> reduceActionForcapturelist3: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForcapturelist4: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 1).
	self add: (nodes at: 4) to: (result at: 2).
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
	result addTokens: ((nodes at: 2) at: 1) to: result names.
	result addTokens: ((nodes at: 2) at: 2) to: result colonColons.
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
	result addTokens: ((nodes at: 3) at: 1) to: result names.
	result addTokens: ((nodes at: 3) at: 2) to: result colonColons.
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
	result left: (nodes at: 1).
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
CPPParser >> reduceActionForstatement1: nodes [
	| result |
	result := nodes at: 1.
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
CPPParser >> reduceActionFortryblock1: nodes [
	| result |
	result := CPPTryStatementNode new.
	result tryToken: (nodes at: 1).
	result statement: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result handlers.
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

{ #category : #private }
CPPParser >> tryAllTokens [
	^ true
]

{ #category : #private }
CPPParser >> useAllTokenIds [
	^ false
]
