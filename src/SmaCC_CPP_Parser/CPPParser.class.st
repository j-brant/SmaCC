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
#[ 1 86 1 90] 
#[ 1 90 1 94] 
#[ 1 102 1 106] 
#[ 0 10 1 130] 
#[ 0 45 1 130] 
#[ 0 18 1 134] 
#[ 0 45 1 134] 
#[ 0 26 1 146] 
#[ 0 93 1 158] 
#[ 1 158 3 185] 
#[ 0 166 1 222] 
#[ 2 14 7 33] 
#[ 0 226 7 133] 
#[ 1 114 7 181] 
#[ 0 45 2 110] 
#[ 0 53 2 110] 
#[ 0 45 2 114] 
#[ 0 53 2 114] 
#[ 0 45 2 118] 
#[ 0 53 2 118] 
#[ 0 158 0 162] 
#[ 0 158 2 154] 
#[ 0 162 2 154] 
#[ 3 46 8 73] 
#[ 3 50 8 77] 
#[ 0 37 3 78] 
#[ 0 45 3 78] 
#[ 0 53 3 78] 
#[ 0 93 3 78] 
#[ 3 78 3 185] 
#[ 0 17 3 82] 
#[ 0 21 3 82] 
#[ 0 29 3 82] 
#[ 0 22 0 49] 
#[ 0 22 0 141] 
#[ 0 22 8 181] 
#[ 0 45 3 98] 
#[ 0 53 3 98] 
#[ 0 158 8 241] 
#[ 1 106 8 245] 
#[ 0 45 3 118] 
#[ 0 53 3 118] 
#[ 0 45 3 206] 
#[ 0 158 3 210] 
#[ 0 162 3 210] 
#[ 1 106 3 230] 
#[ 3 234 10 137] 
#[ 0 17 4 58] 
#[ 0 21 4 58] 
#[ 0 29 4 58] 
#[ 4 218 8 241] 
#[ 0 162 4 218] 
#[ 0 45 4 250] 
#[ 0 53 4 250] 
#[ 0 17 4 254] 
#[ 0 21 4 254] 
#[ 0 29 4 254] 
#[ 0 50 12 213] 
#[ 5 14 12 241] 
#[ 5 30 8 241] 
#[ 0 162 5 30] 
#[ 5 34 8 245] 
#[ 0 45 5 46] 
#[ 0 53 5 46] 
#[ 1 102 5 58] 
#[ 5 58 13 57] 
#[ 0 158 5 146] 
#[ 4 30 5 174] 
#[ 2 46 5 130] 
#[ 0 45 5 202] 
#[ 0 154 0 158 13 225] 
#[ 0 45 0 154 0 158] 
#[ 0 53 0 154 0 158] 
#[ 0 158 6 22] 
#[ 6 22 8 241] 
#[ 0 162 6 22] 
#[ 1 106 6 30] 
#[ 6 30 8 245] 
#[ 0 158 6 34] 
#[ 0 162 6 34] 
#[ 6 70 10 133] 
#[ 6 70 10 137] 
#[ 5 157 6 82] 
#[ 5 157 6 90] 
#[ 3 101 3 254] 
#[ 0 17 6 166] 
#[ 0 21 6 166] 
#[ 0 29 6 166] 
#[ 7 6 7 33] 
#[ 7 10 7 33] 
#[ 3 101 7 66] 
#[ 7 66 7 70 15 201] 
#[ 3 109 7 66] 
#[ 6 70 12 241] 
#[ 7 150 12 241] 
#[ 7 154 13 57] 
#[ 0 45 7 254] 
#[ 0 45 8 6] 
#[ 0 45 8 10] 
#[ 0 37 8 14] 
#[ 0 45 8 14] 
#[ 0 93 8 14] 
#[ 3 185 8 14] 
#[ 8 18 10 133] 
#[ 8 18 10 137] 
#[ 1 34 3 150] 
#[ 8 78 13 57] 
#[ 0 158 8 82] 
#[ 8 82 8 241] 
#[ 0 162 8 82] 
#[ 1 222 8 102] 
#[ 0 45 8 126] 
#[ 2 138 8 234] 
#[ 1 70 2 142] 
#[ 3 126 18 41] 
#[ 9 174 18 141] 
#[ 0 45 9 178] 
#[ 0 45 9 182] 
#[ 0 45 9 186] 
#[ 0 45 9 190] 
#[ 0 45 9 210] 
#[ 0 45 9 218] 
#[ 8 22 9 234] 
#[ 2 134 6 5] 
#[ 0 45 10 54] 
#[ 0 45 10 58] 
#[ 0 45 10 62] 
#[ 0 45 10 70] 
#[ 10 102 19 33] 
#[ 0 45 10 122] 
#[ 0 45 10 230] 
#[ 0 45 10 234] 
#[ 0 45 10 238] 
#[ 0 45 10 242] 
#[ 0 45 10 246] 
#[ 0 45 10 250] 
#[ 4 198 5 93] 
#[ 4 6 4 198] 
#[ 0 45 11 22] 
#[ 0 45 11 26] 
#[ 0 45 11 30] 
#[ 0 45 11 34] 
#[ 0 45 11 38] 
#[ 0 45 11 66] 
#[ 0 45 11 70] 
#[ 7 174 20 29] 
#[ 0 45 11 142] 
#[ 0 45 11 146] 
#[ 0 45 11 150] 
#[ 0 45 11 154] 
#[ 0 45 11 162] 
#[ 0 45 11 166] 
#[ 0 45 11 206] 
#[ 0 45 12 26]
	).
]

{ #category : #'generated-accessing' }
CPPParser class >> cacheId [
	^'2020-09-14T14:22:47.914792-05:00'
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
%hierarchy TypeParameter (
	ClassTypeParameter
	TypenameTypeParameter
	TemplateTypeParameter
);

%id <gt> <GT> <RightShift>;


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
   : attributetoken attributeargumentclause? {{Attribute}}
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
   : ""("" 'left' balancedtokenseq "")"" 'right'
   | ""("" 'left' attributearguments? "")"" 'right'	# added for [[deprecated(""reason"")]]
   ;
attributearguments
	: attributeargument 'argument'
	| attributearguments "","" 'comma' attributeargument 'argument'
	;
attributeargument
	: constantexpression
	| 
	;

balancedtokenseq
   : 
   | balancedtokenseq balancedtoken 'balancedToken'
   ;

balancedtoken
   : ""("" 'left' balancedtokenseq "")"" 'right' {{BalancedToken}}
   | ""["" 'left' balancedtokenseq ""]"" 'right' {{BalancedToken}}
   | ""{"" 'left' balancedtokenseq ""}"" 'right' {{BalancedToken}}
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
   | <Template> 'templateToken' ""<"" 'ltToken' templateparameterlist <gt> 'gtToken' <Class> 'classToken' <Identifier> 'name'? ""="" 'equal' idexpression 'type' {{TemplateTypeParameter}}
   ;

simpletemplateid
   : templatename 'name' StartTemplateArgs ""<"" 'ltToken' templateargumentlist? <GT> 'gtToken' {{TemplateIdentifier}}
   ;

templateid
   : simpletemplateid
   | operatorfunctionid 'identifier' StartTemplateArgs ""<"" 'ltToken' templateargumentlist? <GT> 'gtToken' {{OperatorFunctionTemplateIdentifier}}
   | literaloperatorid 'identifier' StartTemplateArgs ""<"" 'ltToken' templateargumentlist? <GT> 'gtToken' {{OperatorFunctionTemplateIdentifier}}
   ;

StartTemplateArgs
    : [#templateArgs]
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
<GT>
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
	#(144 0 #reduceActionFortranslationunit1: 3027969 false ) 
	#(265 1 #reduceActionForptroperator5: 27732997 false ) 
	#(265 1 #reduceActionForptroperator5: 27732999 false ) 
	#(265 1 #reduceActionForptroperator5: 27732993 false ) 
	#(149 1 #reduceActionFornestednamespecifier1: 3864577 false ) 
	#(208 1 #reduceActionForsimpledeclaration1: 18132993 false ) 
	#(219 1 #reduceActionForsimpletypespecifier17: 19828753 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828744 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828740 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828741 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828742 false ) 
	#(291 1 #reduceActionForclasskey1: 31961089 false ) 
	#(267 1 #reduceActionForcvqualifier1: 28149761 false ) 
	#(211 1 #reduceActionFordeclspecifier6: 18712582 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828751 false ) 
	#(226 1 #reduceActionForclasskey1: 22023169 false ) 
	#(214 1 #liftFirstValue: 19216387 false ) 
	#(213 1 #liftFirstValue: 19106820 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828750 false ) 
	#(211 1 #reduceActionFordeclspecifier6: 18712580 false ) 
	#(214 1 #liftFirstValue: 19216385 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828746 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828747 false ) 
	#(213 1 #liftFirstValue: 19106821 false ) 
	#(213 1 #liftFirstValue: 19106817 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828745 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828748 false ) 
	#(213 1 #liftFirstValue: 19106818 false ) 
	#(291 1 #reduceActionForclasskey2: 31961090 false ) 
	#(213 1 #liftFirstValue: 19106819 false ) 
	#(211 1 #reduceActionFordeclspecifier6: 18712581 false ) 
	#(291 1 #reduceActionForclasskey3: 31961091 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828749 false ) 
	#(214 1 #liftFirstValue: 19216386 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828752 false ) 
	#(267 1 #reduceActionForcvqualifier1: 28149762 false ) 
	#(219 1 #reduceActionForsimpletypespecifier8: 19828743 false ) 
	#(147 1 #reduceActionForunqualifiedid1: 3433473 false ) 
	#(286 1 #reduceActionForunqualifiedid1: 31484929 false ) 
	#(322 1 #liftFirstValue: 37193729 false ) 
	#(269 1 #reduceActionFordeclaratorid1: 28283905 false ) 
	#(146 1 #reduceActionForidexpression1: 3299329 false ) 
	#(146 1 #reduceActionForidexpression1: 3299330 false ) 
	#(144 1 #reduceActionFortranslationunit2: 3027970 false ) 
	#(204 1 #reduceActionFordeclarationseq1: 17358849 false ) 
	#(205 1 #liftFirstValue: 17459201 false ) 
	#(206 1 #liftFirstValue: 17750023 false ) 
	#(206 1 #liftFirstValue: 17750017 false ) 
	#(206 1 #liftFirstValue: 17750022 false ) 
	#(205 1 #liftFirstValue: 17459208 false ) 
	#(212 1 #reduceActionFordeclarationseq1: 18978817 false ) 
	#(211 1 #reduceActionFordeclspecifier6: 18712577 false ) 
	#(211 1 #reduceActionFordeclspecifier6: 18712579 false ) 
	#(211 1 #liftFirstValue: 18712578 false ) 
	#(215 1 #liftFirstValue: 19326977 false ) 
	#(216 1 #liftFirstValue: 19415041 false ) 
	#(219 1 #reduceActionForsimpletypespecifier1: 19828737 false ) 
	#(219 1 #liftFirstValue: 19828754 false ) 
	#(216 1 #liftFirstValue: 19415042 false ) 
	#(215 1 #liftFirstValue: 19326979 false ) 
	#(206 1 #liftFirstValue: 17750024 false ) 
	#(224 1 #reduceActionForenumhead1: 21695489 false ) 
	#(205 1 #liftFirstValue: 17459207 false ) 
	#(233 1 #liftFirstValue: 22700033 false ) 
	#(234 1 #liftFirstValue: 22790145 false ) 
	#(233 1 #liftFirstValue: 22700034 false ) 
	#(206 1 #liftFirstValue: 17750019 false ) 
	#(206 1 #liftFirstValue: 17750020 false ) 
	#(206 1 #liftFirstValue: 17750021 false ) 
	#(206 1 #liftFirstValue: 17750018 false ) 
	#(205 1 #liftFirstValue: 17459206 false ) 
	#(245 1 #reduceActionFordeclarationseq1: 24885249 false ) 
	#(246 1 #liftFirstValue: 25010178 false ) 
	#(258 1 #reduceActionForinitdeclaratorlist1: 26629121 false ) 
	#(259 1 #reduceActionForinitdeclarator1: 26754049 false ) 
	#(260 1 #liftFirstValue: 26852353 false ) 
	#(261 1 #liftFirstValue: 26970113 false ) 
	#(216 1 #liftFirstValue: 19415044 false ) 
	#(262 1 #reduceActionFornoptrdeclarator1: 27073537 false ) 
	#(205 1 #liftFirstValue: 17459202 false ) 
	#(220 1 #liftFirstValue: 20626433 false ) 
	#(215 1 #liftFirstValue: 19326978 false ) 
	#(288 1 #reduceActionForclasshead9: 31676425 false ) 
	#(147 1 #liftFirstValue: 3433475 false ) 
	#(147 1 #liftFirstValue: 3433474 false ) 
	#(321 0 #reduceActionForStartTemplateArgs1: 37141505 true ) 
	#(147 1 #liftFirstValue: 3433476 false ) 
	#(205 1 #liftFirstValue: 17459203 false ) 
	#(320 1 #liftFirstValue: 36805633 false ) 
	#(286 1 #liftFirstValue: 31484930 false ) 
	#(147 1 #liftFirstValue: 3433479 false ) 
	#(216 1 #liftFirstValue: 19415043 false ) 
	#(205 1 #liftFirstValue: 17459204 false ) 
	#(205 1 #liftFirstValue: 17459205 false ) 
	#(164 1 #liftFirstValue: 9157637 false ) 
	#(164 1 #liftFirstValue: 9157635 false ) 
	#(164 1 #liftFirstValue: 9157634 false ) 
	#(164 1 #liftFirstValue: 9157636 false ) 
	#(164 1 #liftFirstValue: 9157639 false ) 
	#(193 1 #reduceActionForexpressionstatement1: 14911489 false ) 
	#(164 1 #liftFirstValue: 9157640 false ) 
	#(164 1 #liftFirstValue: 9157633 false ) 
	#(164 1 #liftFirstValue: 9157638 false ) 
	#(341 1 #liftFirstValue: 46016513 false ) 
	#(342 1 #liftFirstValue: 46063617 false ) 
	#(145 1 #reduceActionForprimaryexpression2: 3110914 false ) 
	#(333 1 #reduceActionForthrowexpression1: 38813697 false ) 
	#(341 1 #liftFirstValue: 46016514 false ) 
	#(160 1 #liftFirstValue: 7779329 false ) 
	#(339 1 #reduceActionForliteral1: 43372545 false ) 
	#(339 1 #reduceActionForliteral2: 43372546 false ) 
	#(339 1 #reduceActionForliteral1: 43372547 false ) 
	#(340 1 #reduceActionFordeclarationseq1: 43541505 false ) 
	#(343 1 #liftFirstValue: 46101505 false ) 
	#(343 1 #liftFirstValue: 46101506 false ) 
	#(343 1 #liftFirstValue: 46101507 false ) 
	#(343 1 #liftFirstValue: 46101508 false ) 
	#(159 1 #liftFirstValue: 5517313 false ) 
	#(145 1 #liftFirstValue: 3110916 false ) 
	#(145 1 #liftFirstValue: 3110917 false ) 
	#(163 1 #liftFirstValue: 8413185 false ) 
	#(173 1 #liftFirstValue: 10597377 false ) 
	#(163 1 #liftFirstValue: 8413194 false ) 
	#(163 1 #liftFirstValue: 8413195 false ) 
	#(163 1 #liftFirstValue: 8413193 false ) 
	#(174 1 #liftFirstValue: 10744833 false ) 
	#(175 1 #liftFirstValue: 10959873 false ) 
	#(176 1 #liftFirstValue: 11298817 false ) 
	#(177 1 #liftFirstValue: 11559937 false ) 
	#(179 1 #liftFirstValue: 11764737 false ) 
	#(180 1 #liftFirstValue: 12201985 false ) 
	#(181 1 #liftFirstValue: 12452865 false ) 
	#(182 1 #liftFirstValue: 12589057 false ) 
	#(183 1 #liftFirstValue: 12731393 false ) 
	#(184 1 #liftFirstValue: 12890113 false ) 
	#(185 1 #liftFirstValue: 13151233 false ) 
	#(186 1 #liftFirstValue: 13405185 false ) 
	#(187 1 #liftFirstValue: 13632513 false ) 
	#(189 1 #liftFirstValue: 13995009 false ) 
	#(191 1 #reduceActionForstatement1: 14194689 false ) 
	#(191 1 #reduceActionForstatement1: 14194691 false ) 
	#(191 1 #reduceActionForstatement1: 14194693 false ) 
	#(191 1 #reduceActionForstatement1: 14194695 false ) 
	#(191 1 #reduceActionForstatement1: 14194697 false ) 
	#(191 1 #reduceActionForstatement1: 14194699 false ) 
	#(191 1 #liftFirstValue: 14194701 false ) 
	#(203 1 #liftFirstValue: 17290241 false ) 
	#(191 1 #reduceActionForstatement1: 14194702 false ) 
	#(187 1 #liftFirstValue: 13632515 false ) 
	#(145 1 #liftFirstValue: 3110913 false ) 
	#(339 1 #reduceActionForliteral4: 43372548 false ) 
	#(339 1 #reduceActionForliteral5: 43372549 false ) 
	#(339 1 #reduceActionForliteral6: 43372550 false ) 
	#(339 1 #reduceActionForliteral7: 43372551 false ) 
	#(265 2 #reduceActionForptroperator6: 27732998 false ) 
	#(265 2 #reduceActionForptroperator6: 27733000 false ) 
	#(265 2 #reduceActionForptroperator6: 27732995 false ) 
	#(265 2 #reduceActionForptroperator2: 27732994 false ) 
	#(266 1 #reduceActionFordeclarationseq1: 28080129 false ) 
	#(269 2 #reduceActionFordeclaratorid2: 28283906 false ) 
	#(248 0 #reduceActionForattributelist1: 25463809 false ) 
	#(147 2 #reduceActionForunqualifiedid6: 3433478 false ) 
	#(147 2 #reduceActionForunqualifiedid6: 3433477 false ) 
	#(226 2 #reduceActionForenumkey2: 22023170 false ) 
	#(226 2 #reduceActionForenumkey3: 22023171 false ) 
	#(222 2 #reduceActionForelaboratedtypespecifier8: 20964360 false ) 
	#(238 0 #reduceActionFornamespacebody1: 23605249 false ) 
	#(236 1 #reduceActionForinitdeclaratorlist1: 23115777 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906190 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906208 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906185 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906199 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906187 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906211 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906201 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906183 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906197 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906181 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906215 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906195 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906217 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906182 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906216 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906196 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906219 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906218 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906184 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906198 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906193 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906209 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906192 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906207 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906210 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906186 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906200 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906212 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906191 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906214 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906188 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906202 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906213 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906189 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906178 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906177 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906203 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906194 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906204 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906206 false ) 
	#(338 1 #reduceActionFortheoperator14: 41906205 false ) 
	#(314 2 #reduceActionForliteraloperatorid2: 35259394 false ) 
	#(217 1 #reduceActionFordeclarationseq1: 19539969 false ) 
	#(307 1 #reduceActionForconversiontypeid1: 34398209 false ) 
	#(306 2 #reduceActionForconversionfunctionid1: 34286593 false ) 
	#(313 2 #reduceActionForoperatorfunctionid1: 35156993 false ) 
	#(326 2 #reduceActionForexplicitinstantiation1: 37778433 false ) 
	#(265 2 #reduceActionForptroperator9: 27733001 false ) 
	#(148 2 #reduceActionForqualifiedid1: 3715073 false ) 
	#(219 2 #reduceActionForsimpletypespecifier2: 19828738 false ) 
	#(204 2 #reduceActionFordeclarationseq2: 17358850 false ) 
	#(212 2 #reduceActionFordeclspecifierseq3: 18978819 false ) 
	#(212 2 #reduceActionFordeclspecifierseq3: 18978818 false ) 
	#(208 2 #reduceActionForsimpledeclaration3: 18132995 false ) 
	#(149 2 #reduceActionFornestednamespecifier2: 3864578 false ) 
	#(149 2 #reduceActionFornestednamespecifier2: 3864579 false ) 
	#(224 2 #reduceActionForenumhead3: 21695491 false ) 
	#(224 2 #reduceActionForenumhead2: 21695490 false ) 
	#(224 2 #reduceActionForenumhead5: 21695493 false ) 
	#(210 2 #reduceActionForattributedeclaration1: 18615297 false ) 
	#(245 2 #reduceActionFordeclarationseq2: 24885250 false ) 
	#(208 2 #reduceActionForsimpledeclaration2: 18132994 false ) 
	#(297 1 #liftFirstValue: 33103874 false ) 
	#(297 1 #liftFirstValue: 33103873 false ) 
	#(280 1 #reduceActionForfunctionbody1: 30587905 false ) 
	#(279 2 #reduceActionForfunctiondefinition1: 30435329 false ) 
	#(259 2 #reduceActionForinitdeclarator2: 26754050 false ) 
	#(281 1 #liftFirstValue: 30816257 false ) 
	#(282 1 #liftFirstValue: 30949378 false ) 
	#(296 1 #reduceActionFordeclarationseq1: 32974849 false ) 
	#(280 1 #reduceActionForfunctionbody1: 30587907 false ) 
	#(276 0 #reduceActionForparameterdeclarationclause1: 29618177 false ) 
	#(262 2 #reduceActionFornoptrdeclarator3: 27073539 false ) 
	#(261 2 #reduceActionForptrdeclarator2: 26970114 false ) 
	#(262 2 #reduceActionFornoptrdeclarator2: 27073538 false ) 
	#(222 2 #reduceActionForelaboratedtypespecifier1: 20964353 false ) 
	#(288 2 #reduceActionForclasshead11: 31676427 false ) 
	#(289 1 #reduceActionFordeclaratorid1: 31827969 false ) 
	#(288 2 #reduceActionForclasshead1: 31676417 false ) 
	#(288 2 #reduceActionForclasshead10: 31676426 false ) 
	#(222 2 #reduceActionForelaboratedtypespecifier5: 20964357 false ) 
	#(270 1 #reduceActionForthetypeid1: 28345345 false ) 
	#(163 2 #reduceActionForunaryexpression2: 8413186 false ) 
	#(163 2 #reduceActionForunaryexpression2: 8413187 false ) 
	#(153 1 #liftFirstValue: 4739073 false ) 
	#(153 1 #liftFirstValue: 4739074 false ) 
	#(151 2 #reduceActionForlambdaintroducer1: 4553729 false ) 
	#(156 1 #reduceActionForsimplecapture3: 4977667 false ) 
	#(156 1 #reduceActionForsimplecapture3: 4977665 false ) 
	#(152 1 #reduceActionForlambdacapture1: 4635649 false ) 
	#(152 1 #reduceActionForlambdacapture2: 4635650 false ) 
	#(154 1 #reduceActionForcapturelist1: 4799489 false ) 
	#(155 1 #liftFirstValue: 4926465 false ) 
	#(155 1 #liftFirstValue: 4926466 false ) 
	#(194 2 #reduceActionForcompoundstatement1: 15010817 false ) 
	#(195 1 #reduceActionFordeclarationseq1: 15111169 false ) 
	#(202 2 #reduceActionForjumpstatement1: 16878593 false ) 
	#(190 1 #liftFirstValue: 14125057 false ) 
	#(202 2 #reduceActionForjumpstatement2: 16878594 false ) 
	#(171 2 #reduceActionFordeleteexpression1: 10199041 false ) 
	#(165 2 #reduceActionFornewexpression1: 9253889 false ) 
	#(167 1 #reduceActionFornewtypeid1: 9627649 false ) 
	#(202 2 #reduceActionForjumpstatement3: 16878595 false ) 
	#(163 2 #reduceActionForunaryexpression5: 8413189 false ) 
	#(333 2 #reduceActionForthrowexpression2: 38813698 false ) 
	#(150 2 #reduceActionForlambdaexpression1: 4436993 false ) 
	#(159 2 #reduceActionForpostfixexpression18: 5517330 false ) 
	#(159 2 #reduceActionForpostfixexpression18: 5517331 false ) 
	#(163 2 #reduceActionForunaryexpression2: 8413188 false ) 
	#(178 1 #liftFirstValue: 11711490 false ) 
	#(178 1 #liftFirstValue: 11711489 false ) 
	#(188 1 #liftFirstValue: 13830148 false ) 
	#(188 1 #liftFirstValue: 13830153 false ) 
	#(188 1 #liftFirstValue: 13830146 false ) 
	#(188 1 #liftFirstValue: 13830149 false ) 
	#(188 1 #liftFirstValue: 13830150 false ) 
	#(188 1 #liftFirstValue: 13830147 false ) 
	#(188 1 #liftFirstValue: 13830145 false ) 
	#(188 1 #liftFirstValue: 13830154 false ) 
	#(188 1 #liftFirstValue: 13830155 false ) 
	#(188 1 #liftFirstValue: 13830152 false ) 
	#(188 1 #liftFirstValue: 13830151 false ) 
	#(193 2 #reduceActionForexpressionstatement2: 14911490 false ) 
	#(159 2 #reduceActionForpostfixexpression10: 5517322 false ) 
	#(191 2 #reduceActionForstatement2: 14194690 false ) 
	#(191 2 #reduceActionForstatement2: 14194692 false ) 
	#(191 2 #reduceActionForstatement2: 14194694 false ) 
	#(191 2 #reduceActionForstatement2: 14194696 false ) 
	#(191 2 #reduceActionForstatement2: 14194698 false ) 
	#(191 2 #reduceActionForstatement2: 14194700 false ) 
	#(191 2 #reduceActionForstatement2: 14194703 false ) 
	#(159 2 #reduceActionForpostfixexpression10: 5517323 false ) 
	#(340 2 #reduceActionFordeclarationseq2: 43541506 false ) 
	#(262 3 #reduceActionFornoptrdeclarator8: 27073544 false ) 
	#(265 3 #reduceActionForptroperator4: 27732996 false ) 
	#(266 2 #reduceActionFordeclspecifierseq3: 28080130 false ) 
	#(250 1 #reduceActionForclasskey1: 25761793 false ) 
	#(252 1 #liftFirstValue: 25938945 false ) 
	#(248 1 #reduceActionForcapturelist1: 25463810 false ) 
	#(249 1 #reduceActionForattribute1: 25684993 false ) 
	#(250 1 #reduceActionForattributetoken2: 25761794 false ) 
	#(222 3 #reduceActionForelaboratedtypespecifier9: 20964361 false ) 
	#(326 3 #reduceActionForexplicitinstantiation2: 37778434 false ) 
	#(244 3 #reduceActionForlinkagespecification3: 24616963 false ) 
	#(238 1 #reduceActionForstatement1: 23605250 false ) 
	#(338 2 #reduceActionFortheoperator44: 41906220 false ) 
	#(338 2 #reduceActionFortheoperator45: 41906221 false ) 
	#(314 3 #reduceActionForliteraloperatorid1: 35259393 false ) 
	#(217 2 #reduceActionFordeclspecifierseq3: 19539971 false ) 
	#(217 2 #reduceActionFordeclspecifierseq3: 19539970 false ) 
	#(308 1 #reduceActionForconversiondeclarator1: 34480129 false ) 
	#(307 2 #reduceActionForconversiontypeid2: 34398210 false ) 
	#(318 1 #reduceActionFortypeparameter1: 35877889 false ) 
	#(318 1 #reduceActionFortypeparameter7: 35877895 false ) 
	#(278 1 #reduceActionForparameterdeclaration5: 29914117 false ) 
	#(317 1 #liftFirstValue: 35807234 false ) 
	#(316 1 #reduceActionForinitdeclaratorlist1: 35672065 false ) 
	#(317 1 #liftFirstValue: 35807233 false ) 
	#(325 3 #reduceActionFortypenamespecifier1: 37479425 false ) 
	#(325 3 #reduceActionFortypenamespecifier2: 37479426 false ) 
	#(232 1 #liftFirstValue: 22652929 false ) 
	#(231 1 #reduceActionForunqualifiedid1: 22524929 false ) 
	#(265 3 #reduceActionForptroperator11: 27733003 false ) 
	#(265 3 #reduceActionForptroperator10: 27733002 false ) 
	#(148 3 #reduceActionForqualifiedid2: 3715074 false ) 
	#(219 3 #reduceActionForsimpletypespecifier3: 19828739 false ) 
	#(149 3 #reduceActionFornestednamespecifier4: 3864580 false ) 
	#(149 3 #reduceActionFornestednamespecifier5: 3864581 false ) 
	#(208 3 #reduceActionForsimpledeclaration4: 18132996 false ) 
	#(279 3 #reduceActionForfunctiondefinition3: 30435331 false ) 
	#(223 3 #reduceActionForenumspecifier1: 21497857 false ) 
	#(230 1 #liftFirstValue: 22489089 false ) 
	#(228 1 #reduceActionForinitdeclaratorlist1: 22206465 false ) 
	#(229 1 #reduceActionForenumeratordefinition1: 22335489 false ) 
	#(227 2 #reduceActionForenumbase1: 22156289 false ) 
	#(225 3 #reduceActionForopaqueenumdeclaration1: 21883905 false ) 
	#(224 3 #reduceActionForenumhead4: 21695492 false ) 
	#(224 3 #reduceActionForenumhead9: 21695497 false ) 
	#(224 3 #reduceActionForenumhead7: 21695495 false ) 
	#(224 3 #reduceActionForenumhead6: 21695494 false ) 
	#(208 3 #reduceActionForsimpledeclaration4: 18132997 false ) 
	#(279 3 #reduceActionForfunctiondefinition3: 30435333 false ) 
	#(258 3 #reduceActionForinitdeclaratorlist2: 26629122 false ) 
	#(283 1 #liftFirstValue: 31066113 false ) 
	#(284 1 #reduceActionForcapturelist1: 31137793 false ) 
	#(161 1 #reduceActionForstatement1: 7833601 false ) 
	#(283 1 #liftFirstValue: 31066114 false ) 
	#(312 1 #reduceActionForunqualifiedid1: 35053570 false ) 
	#(303 1 #liftFirstValue: 33976323 false ) 
	#(303 1 #reduceActionForsimpletypespecifier1: 33976321 false ) 
	#(312 1 #liftFirstValue: 35053569 false ) 
	#(309 2 #reduceActionForctorinitializer1: 34597889 false ) 
	#(310 1 #reduceActionForcapturelist1: 34677761 false ) 
	#(282 2 #reduceActionForbraceorequalinitializer1: 30949377 false ) 
	#(285 2 #reduceActionForbracedinitlist3: 31289347 false ) 
	#(279 3 #reduceActionForfunctiondefinition2: 30435330 false ) 
	#(296 2 #reduceActionFordeclarationseq2: 32974850 false ) 
	#(280 2 #reduceActionForfunctionbody2: 30587906 false ) 
	#(276 1 #reduceActionForparameterdeclarationclause2: 29618178 false ) 
	#(276 1 #reduceActionForparameterdeclarationclause3: 29618179 false ) 
	#(277 1 #reduceActionForinitdeclaratorlist1: 29762561 false ) 
	#(262 3 #reduceActionFornoptrdeclarator4: 27073540 false ) 
	#(260 3 #reduceActionFordeclarator2: 26852354 false ) 
	#(293 1 #reduceActionFormemberdeclaration1: 32199681 false ) 
	#(287 3 #reduceActionForclassspecifier1: 31564801 false ) 
	#(305 1 #liftFirstValue: 34143233 false ) 
	#(305 1 #liftFirstValue: 34143234 false ) 
	#(305 1 #liftFirstValue: 34143235 false ) 
	#(293 1 #liftFirstValue: 32199693 false ) 
	#(293 1 #liftFirstValue: 32199691 false ) 
	#(293 1 #liftFirstValue: 32199690 false ) 
	#(295 1 #reduceActionFormemberdeclarator1: 32641025 false ) 
	#(293 1 #liftFirstValue: 32199689 false ) 
	#(292 1 #reduceActionForcapturelist1: 32058369 false ) 
	#(294 1 #reduceActionForinitdeclaratorlist1: 32507905 false ) 
	#(293 1 #liftFirstValue: 32199692 false ) 
	#(300 2 #reduceActionForbaseclause1: 33442817 false ) 
	#(301 1 #reduceActionForcapturelist1: 33496065 false ) 
	#(304 1 #liftFirstValue: 34097153 false ) 
	#(302 1 #reduceActionForbasespecifier1: 33651713 false ) 
	#(222 3 #reduceActionForelaboratedtypespecifier2: 20964354 false ) 
	#(289 2 #reduceActionFordeclaratorid2: 31827970 false ) 
	#(222 3 #reduceActionForelaboratedtypespecifier6: 20964358 false ) 
	#(222 3 #reduceActionForelaboratedtypespecifier3: 20964355 false ) 
	#(288 3 #reduceActionForclasshead5: 31676421 false ) 
	#(288 3 #reduceActionForclasshead12: 31676428 false ) 
	#(290 1 #liftFirstValue: 31908865 false ) 
	#(288 3 #reduceActionForclasshead3: 31676419 false ) 
	#(288 3 #reduceActionForclasshead2: 31676418 false ) 
	#(145 3 #reduceActionFornoptrdeclarator8: 3110915 false ) 
	#(275 1 #reduceActionFornoptrabstractpackdeclarator6: 29373446 false ) 
	#(273 1 #reduceActionFornoptrabstractdeclarator2: 28784642 false ) 
	#(272 1 #reduceActionForptrabstractdeclarator2: 28617730 false ) 
	#(270 2 #reduceActionForthetypeid2: 28345346 false ) 
	#(271 1 #liftFirstValue: 28437505 false ) 
	#(272 1 #reduceActionForptrabstractdeclarator1: 28617729 false ) 
	#(271 1 #liftFirstValue: 28437508 false ) 
	#(274 1 #reduceActionForabstractpackdeclarator1: 29199361 false ) 
	#(171 3 #reduceActionFordeleteexpression2: 10199042 false ) 
	#(165 3 #reduceActionFornewexpression5: 9253893 false ) 
	#(156 2 #reduceActionForsimplecapture2: 4977666 false ) 
	#(157 2 #reduceActionForinitcapture1: 5121025 false ) 
	#(151 3 #reduceActionForlambdaintroducer2: 4553730 false ) 
	#(154 2 #reduceActionForcapturelist2: 4799490 false ) 
	#(194 3 #reduceActionForcompoundstatement2: 15010818 false ) 
	#(195 2 #reduceActionFordeclarationseq2: 15111170 false ) 
	#(192 3 #reduceActionForlabeledstatement3: 14593027 false ) 
	#(199 1 #liftFirstValue: 16620545 false ) 
	#(199 1 #liftFirstValue: 16620546 false ) 
	#(202 3 #reduceActionForjumpstatement6: 16878598 false ) 
	#(197 1 #liftFirstValue: 15638529 false ) 
	#(165 3 #reduceActionFornewexpression3: 9253891 false ) 
	#(165 3 #reduceActionFornewexpression2: 9253890 false ) 
	#(170 1 #liftFirstValue: 10082307 false ) 
	#(167 2 #reduceActionFornewtypeid2: 9627650 false ) 
	#(168 1 #reduceActionFornewdeclarator3: 9717763 false ) 
	#(168 1 #reduceActionFornewdeclarator1: 9717761 false ) 
	#(202 3 #reduceActionForjumpstatement4: 16878596 false ) 
	#(202 3 #reduceActionForjumpstatement4: 16878597 false ) 
	#(328 3 #reduceActionFortryblock1: 38088705 false ) 
	#(330 1 #reduceActionFordeclarationseq1: 38323201 false ) 
	#(192 3 #reduceActionForlabeledstatement1: 14593025 false ) 
	#(150 3 #reduceActionForlambdaexpression2: 4436994 false ) 
	#(159 3 #reduceActionForpostfixexpression4: 5517316 false ) 
	#(159 3 #reduceActionForpostfixexpression14: 5517326 false ) 
	#(159 3 #reduceActionForpostfixexpression14: 5517329 false ) 
	#(159 3 #reduceActionForpostfixexpression14: 5517324 false ) 
	#(159 3 #reduceActionForpostfixexpression14: 5517328 false ) 
	#(174 3 #reduceActionForpmexpression3: 10744835 false ) 
	#(174 3 #reduceActionForpmexpression3: 10744834 false ) 
	#(175 3 #reduceActionForpmexpression3: 10959876 false ) 
	#(175 3 #reduceActionForpmexpression3: 10959874 false ) 
	#(175 3 #reduceActionForpmexpression3: 10959875 false ) 
	#(176 3 #reduceActionForpmexpression3: 11298818 false ) 
	#(176 3 #reduceActionForpmexpression3: 11298819 false ) 
	#(177 3 #reduceActionForpmexpression3: 11559938 false ) 
	#(179 3 #reduceActionForpmexpression3: 11764738 false ) 
	#(179 3 #reduceActionForpmexpression3: 11764740 false ) 
	#(179 3 #reduceActionForpmexpression3: 11764741 false ) 
	#(179 3 #reduceActionForpmexpression3: 11764739 false ) 
	#(180 3 #reduceActionForpmexpression3: 12201987 false ) 
	#(180 3 #reduceActionForpmexpression3: 12201986 false ) 
	#(181 3 #reduceActionForpmexpression3: 12452866 false ) 
	#(182 3 #reduceActionForpmexpression3: 12589058 false ) 
	#(183 3 #reduceActionForpmexpression3: 12731394 false ) 
	#(184 3 #reduceActionForpmexpression3: 12890114 false ) 
	#(184 3 #reduceActionForpmexpression3: 12890115 false ) 
	#(185 3 #reduceActionForpmexpression3: 13151235 false ) 
	#(185 3 #reduceActionForpmexpression3: 13151234 false ) 
	#(187 3 #reduceActionForassignmentexpression2: 13632514 false ) 
	#(189 3 #reduceActionForexpression2: 13995010 false ) 
	#(159 3 #reduceActionForpostfixexpression4: 5517318 false ) 
	#(159 3 #reduceActionForpostfixexpression4: 5517320 false ) 
	#(248 2 #reduceActionForattributelist3: 25463811 false ) 
	#(248 2 #reduceActionForattributelist5: 25463813 false ) 
	#(256 0 #reduceActionFornamespacebody1: 26314753 false ) 
	#(255 0 #nil 26265602 false ) 
	#(249 2 #reduceActionForattribute2: 25684994 false ) 
	#(247 4 #reduceActionForalignmentspecifier3: 25179139 false ) 
	#(247 4 #reduceActionForalignmentspecifier3: 25179137 false ) 
	#(221 4 #reduceActionFordecltypespecifier2: 20717570 false ) 
	#(221 4 #reduceActionFordecltypespecifier1: 20717569 false ) 
	#(244 4 #reduceActionForlinkagespecification1: 24616961 false ) 
	#(237 4 #reduceActionForunnamednamespacedefinition1: 23432193 false ) 
	#(240 1 #reduceActionFordeclaratorid1: 23883777 false ) 
	#(236 3 #reduceActionForinitdeclaratorlist2: 23115778 false ) 
	#(338 3 #reduceActionFortheoperator4: 41906180 false ) 
	#(338 3 #reduceActionFortheoperator4: 41906179 false ) 
	#(308 2 #reduceActionForconversiondeclarator2: 34480130 false ) 
	#(318 2 #reduceActionFortypeparameter3: 35877891 false ) 
	#(318 2 #reduceActionFortypeparameter2: 35877890 false ) 
	#(318 2 #reduceActionFortypeparameter9: 35877897 false ) 
	#(318 2 #reduceActionFortypeparameter8: 35877896 false ) 
	#(327 4 #reduceActionForexplicitspecialization1: 37917697 false ) 
	#(278 2 #reduceActionForparameterdeclaration1: 29914113 false ) 
	#(278 2 #reduceActionForparameterdeclaration1: 29914118 false ) 
	#(278 2 #reduceActionForparameterdeclaration7: 29914119 false ) 
	#(325 4 #reduceActionFortypenamespecifier3: 37479427 false ) 
	#(241 4 #reduceActionForusingdeclaration3: 23992323 false ) 
	#(242 4 #reduceActionForusingdirective1: 24285185 false ) 
	#(241 4 #reduceActionForusingdeclaration1: 23992321 false ) 
	#(265 4 #reduceActionForptroperator12: 27733004 false ) 
	#(149 4 #reduceActionFornestednamespecifier6: 3864582 false ) 
	#(279 4 #reduceActionForfunctiondefinition4: 30435332 false ) 
	#(223 4 #reduceActionForenumspecifier2: 21497858 false ) 
	#(225 4 #reduceActionForopaqueenumdeclaration2: 21883906 false ) 
	#(224 4 #reduceActionForenumhead10: 21695498 false ) 
	#(225 4 #reduceActionForopaqueenumdeclaration3: 21883907 false ) 
	#(224 4 #reduceActionForenumhead8: 21695496 false ) 
	#(224 4 #reduceActionForenumhead11: 21695499 false ) 
	#(208 4 #reduceActionForsimpledeclaration6: 18132998 false ) 
	#(279 4 #reduceActionForfunctiondefinition7: 30435335 false ) 
	#(279 4 #reduceActionForfunctiondefinition4: 30435334 false ) 
	#(281 3 #reduceActionForinitializer2: 30816258 false ) 
	#(284 2 #reduceActionForcapturelist2: 31137794 false ) 
	#(303 2 #reduceActionForsimpletypespecifier2: 33976322 false ) 
	#(310 2 #reduceActionForcapturelist2: 34677762 false ) 
	#(311 2 #reduceActionFormeminitializer3: 34841603 false ) 
	#(280 3 #reduceActionForfunctionbody4: 30587908 false ) 
	#(280 3 #reduceActionForfunctionbody5: 30587909 false ) 
	#(285 3 #reduceActionForbracedinitlist1: 31289345 false ) 
	#(329 3 #reduceActionFortryblock1: 38185985 false ) 
	#(263 3 #reduceActionForparametersandqualifiers1: 27415553 false ) 
	#(276 2 #reduceActionForparameterdeclarationclause4: 29618180 false ) 
	#(262 4 #reduceActionFornoptrdeclarator5: 27073541 false ) 
	#(262 4 #reduceActionFornoptrdeclarator6: 27073542 false ) 
	#(218 1 #reduceActionFordeclarationseq1: 19667969 false ) 
	#(264 2 #reduceActionFortrailingreturntype1: 27629569 false ) 
	#(295 2 #reduceActionFormemberdeclarator7: 32641031 false ) 
	#(293 2 #reduceActionFormemberdeclaration3: 32199683 false ) 
	#(293 2 #reduceActionFormemberdeclaration3: 32199685 false ) 
	#(295 2 #reduceActionFormemberdeclarator6: 32641030 false ) 
	#(295 2 #reduceActionFormemberdeclarator3: 32641027 false ) 
	#(295 2 #reduceActionFormemberdeclarator2: 32641026 false ) 
	#(287 4 #reduceActionForclassspecifier2: 31564802 false ) 
	#(292 2 #reduceActionFormemberspecification2: 32058370 false ) 
	#(293 2 #reduceActionFormemberdeclaration2: 32199682 false ) 
	#(292 2 #reduceActionFormemberspecification3: 32058371 false ) 
	#(302 2 #reduceActionForbasespecifier3: 33651715 false ) 
	#(302 2 #reduceActionForbasespecifier2: 33651714 false ) 
	#(301 2 #reduceActionForcapturelist2: 33496066 false ) 
	#(302 2 #reduceActionForbasespecifier7: 33651719 false ) 
	#(222 4 #reduceActionForelaboratedtypespecifier7: 20964359 false ) 
	#(222 4 #reduceActionForelaboratedtypespecifier4: 20964356 false ) 
	#(288 4 #reduceActionForclasshead7: 31676423 false ) 
	#(288 4 #reduceActionForclasshead6: 31676422 false ) 
	#(288 4 #reduceActionForclasshead4: 31676420 false ) 
	#(320 4 #reduceActionFortemplateid2: 36805634 false ) 
	#(324 1 #liftFirstValue: 37397507 false ) 
	#(324 1 #liftFirstValue: 37397506 false ) 
	#(324 1 #liftFirstValue: 37397505 false ) 
	#(323 1 #reduceActionForcapturelist1: 37231617 false ) 
	#(320 4 #reduceActionFortemplateid2: 36805636 false ) 
	#(319 4 #reduceActionForsimpletemplateid1: 36662273 false ) 
	#(273 2 #reduceActionFornoptrabstractdeclarator7: 28784647 false ) 
	#(271 2 #reduceActionForabstractdeclarator2: 28437506 false ) 
	#(272 2 #reduceActionForptrdeclarator2: 28617731 false ) 
	#(274 2 #reduceActionForptrdeclarator2: 29199362 false ) 
	#(273 2 #reduceActionFornoptrabstractdeclarator1: 28784641 false ) 
	#(275 2 #reduceActionFornoptrabstractpackdeclarator1: 29373441 false ) 
	#(173 4 #reduceActionForcastexpression2: 10597378 false ) 
	#(165 4 #reduceActionFornewexpression7: 9253895 false ) 
	#(165 4 #reduceActionFornewexpression6: 9253894 false ) 
	#(157 3 #reduceActionForinitcapture2: 5121026 false ) 
	#(152 3 #reduceActionForlambdacapture3: 4635651 false ) 
	#(154 3 #reduceActionForcapturelist3: 4799491 false ) 
	#(163 4 #reduceActionForunaryexpression8: 8413192 false ) 
	#(192 4 #reduceActionForlabeledstatement2: 14593026 false ) 
	#(171 4 #reduceActionFordeleteexpression3: 10199043 false ) 
	#(200 2 #reduceActionForforrangedeclaration1: 16693249 false ) 
	#(166 3 #reduceActionFornewplacement1: 9553921 false ) 
	#(165 4 #reduceActionFornewexpression9: 9253897 false ) 
	#(165 4 #reduceActionFornewexpression4: 9253892 false ) 
	#(170 2 #reduceActionFornewinitializer1: 10082305 false ) 
	#(168 2 #reduceActionForptrdeclarator2: 9717762 false ) 
	#(172 4 #reduceActionFornoexceptexpression1: 10457089 false ) 
	#(163 4 #reduceActionForunaryexpression6: 8413190 false ) 
	#(330 2 #reduceActionFordeclspecifierseq3: 38323202 false ) 
	#(158 3 #reduceActionForlambdadeclarator1: 5306369 false ) 
	#(159 4 #reduceActionForpostfixexpression5: 5517317 false ) 
	#(162 2 #reduceActionForpseudodestructorname4: 7876612 false ) 
	#(162 2 #reduceActionForpseudodestructorname6: 7876614 false ) 
	#(159 4 #reduceActionForpostfixexpression15: 5517327 false ) 
	#(159 4 #reduceActionForpostfixexpression15: 5517325 false ) 
	#(159 4 #reduceActionForpostfixexpression2: 5517314 false ) 
	#(159 4 #reduceActionForpostfixexpression2: 5517315 false ) 
	#(159 4 #reduceActionForpostfixexpression24: 5517336 false ) 
	#(159 4 #reduceActionForpostfixexpression24: 5517337 false ) 
	#(159 4 #reduceActionForpostfixexpression5: 5517319 false ) 
	#(159 4 #reduceActionForpostfixexpression5: 5517321 false ) 
	#(248 3 #reduceActionForinitdeclaratorlist2: 25463812 false ) 
	#(246 5 #reduceActionForattributespecifier1: 25010177 false ) 
	#(253 2 #reduceActionForattributeargumentclause2: 25982978 false ) 
	#(255 1 #liftFirstValue: 26265601 false ) 
	#(254 1 #reduceActionForinitdeclaratorlist1: 26145793 false ) 
	#(251 3 #reduceActionForattributescopedtoken1: 25835521 false ) 
	#(247 5 #reduceActionForalignmentspecifier4: 25179140 false ) 
	#(247 5 #reduceActionForalignmentspecifier4: 25179138 false ) 
	#(243 5 #reduceActionForasmdefinition1: 24481793 false ) 
	#(244 5 #reduceActionForlinkagespecification2: 24616962 false ) 
	#(237 5 #reduceActionForunnamednamespacedefinition2: 23432194 false ) 
	#(240 2 #reduceActionFordeclaratorid2: 23883778 false ) 
	#(239 5 #reduceActionFornamespacealiasdefinition1: 23709697 false ) 
	#(235 5 #reduceActionFororiginalnamespacedefinition1: 22923265 false ) 
	#(318 3 #reduceActionFortypeparameter4: 35877892 false ) 
	#(318 3 #reduceActionFortypeparameter5: 35877893 false ) 
	#(318 3 #reduceActionFortypeparameter10: 35877898 false ) 
	#(318 3 #reduceActionFortypeparameter11: 35877899 false ) 
	#(278 3 #reduceActionForparameterdeclaration9: 29914121 false ) 
	#(278 3 #reduceActionForparameterdeclaration2: 29914114 false ) 
	#(278 3 #reduceActionForparameterdeclaration2: 29914120 false ) 
	#(316 3 #reduceActionForinitdeclaratorlist2: 35672066 false ) 
	#(315 5 #reduceActionFortemplatedeclaration1: 35509249 false ) 
	#(242 5 #reduceActionForusingdirective2: 24285186 false ) 
	#(241 5 #reduceActionForusingdeclaration2: 23992322 false ) 
	#(207 5 #reduceActionForaliasdeclaration1: 17971201 false ) 
	#(223 5 #reduceActionForenumspecifier3: 21497859 false ) 
	#(228 3 #reduceActionForinitdeclaratorlist2: 22206466 false ) 
	#(229 3 #reduceActionForenumeratordefinition2: 22335490 false ) 
	#(225 5 #reduceActionForopaqueenumdeclaration4: 21883908 false ) 
	#(224 5 #reduceActionForenumhead12: 21695500 false ) 
	#(242 5 #reduceActionForusingdirective3: 24285187 false ) 
	#(279 5 #reduceActionForfunctiondefinition8: 30435336 false ) 
	#(284 3 #reduceActionForcapturelist3: 31137795 false ) 
	#(310 3 #reduceActionFormeminitializerlist3: 34677763 false ) 
	#(311 3 #reduceActionFormeminitializer1: 34841601 false ) 
	#(285 4 #reduceActionForbracedinitlist2: 31289346 false ) 
	#(329 4 #reduceActionForfunctiontryblock2: 38185986 false ) 
	#(268 1 #liftFirstValue: 28244993 false ) 
	#(268 1 #liftFirstValue: 28244994 false ) 
	#(337 1 #reduceActionFornoexceptspecification2: 39279618 false ) 
	#(263 4 #reduceActionForparametersandqualifiers2: 27415554 false ) 
	#(263 4 #reduceActionForparametersandqualifiers9: 27415561 false ) 
	#(263 4 #reduceActionForparametersandqualifiers5: 27415557 false ) 
	#(263 4 #reduceActionForparametersandqualifiers3: 27415555 false ) 
	#(334 1 #liftFirstValue: 38919169 false ) 
	#(334 1 #liftFirstValue: 38919170 false ) 
	#(276 3 #reduceActionForparameterdeclarationclause5: 29618181 false ) 
	#(277 3 #reduceActionForinitdeclaratorlist2: 29762562 false ) 
	#(262 5 #reduceActionFornoptrdeclarator7: 27073543 false ) 
	#(218 2 #reduceActionFordeclspecifierseq3: 19667971 false ) 
	#(218 2 #reduceActionFordeclspecifierseq3: 19667970 false ) 
	#(264 3 #reduceActionFortrailingreturntype2: 27629570 false ) 
	#(295 3 #reduceActionFormemberdeclarator9: 32641033 false ) 
	#(293 3 #reduceActionFormemberdeclaration4: 32199684 false ) 
	#(295 3 #reduceActionFormemberdeclarator8: 32641032 false ) 
	#(293 3 #reduceActionFormemberdeclaration7: 32199687 false ) 
	#(293 3 #reduceActionFormemberdeclaration4: 32199686 false ) 
	#(299 1 #reduceActionForliteral1: 33344513 false ) 
	#(298 2 #reduceActionForpurespecifier1: 33154049 false ) 
	#(295 3 #reduceActionFormemberdeclarator4: 32641028 false ) 
	#(294 3 #reduceActionForinitdeclaratorlist2: 32507906 false ) 
	#(292 3 #reduceActionFormemberspecification4: 32058372 false ) 
	#(302 3 #reduceActionForbasespecifier4: 33651716 false ) 
	#(302 3 #reduceActionForbasespecifier5: 33651717 false ) 
	#(302 3 #reduceActionForbasespecifier9: 33651721 false ) 
	#(301 3 #reduceActionForcapturelist3: 33496067 false ) 
	#(302 3 #reduceActionForbasespecifier8: 33651720 false ) 
	#(288 5 #reduceActionForclasshead8: 31676424 false ) 
	#(320 5 #reduceActionFortemplateid3: 36805635 false ) 
	#(323 2 #reduceActionForcapturelist2: 37231618 false ) 
	#(320 5 #reduceActionFortemplateid3: 36805637 false ) 
	#(319 5 #reduceActionForsimpletemplateid2: 36662274 false ) 
	#(273 3 #reduceActionFornoptrabstractdeclarator11: 28784651 false ) 
	#(273 3 #reduceActionFornoptrabstractdeclarator8: 28784648 false ) 
	#(273 3 #reduceActionFornoptrabstractdeclarator9: 28784649 false ) 
	#(273 3 #reduceActionFornoptrabstractdeclarator3: 28784643 false ) 
	#(271 3 #reduceActionForabstractdeclarator3: 28437507 false ) 
	#(275 3 #reduceActionFornoptrabstractdeclarator3: 29373442 false ) 
	#(171 5 #reduceActionFordeleteexpression4: 10199044 false ) 
	#(165 5 #reduceActionFornewexpression13: 9253901 false ) 
	#(165 5 #reduceActionFornewexpression8: 9253896 false ) 
	#(154 4 #reduceActionForcapturelist4: 4799492 false ) 
	#(201 1 #liftFirstValue: 16815105 false ) 
	#(201 1 #liftFirstValue: 16815106 false ) 
	#(200 3 #reduceActionForforrangedeclaration2: 16693250 false ) 
	#(196 5 #reduceActionForselectionstatement1: 15199233 false ) 
	#(197 3 #reduceActionForcondition4: 15638532 false ) 
	#(165 5 #reduceActionFornewexpression10: 9253898 false ) 
	#(165 5 #reduceActionFornewexpression11: 9253899 false ) 
	#(170 3 #reduceActionFornewinitializer2: 10082306 false ) 
	#(169 3 #reduceActionFornoptrnewdeclarator1: 9846785 false ) 
	#(163 5 #reduceActionForunaryexpression7: 8413191 false ) 
	#(196 5 #reduceActionForselectionstatement3: 15199235 false ) 
	#(332 1 #reduceActionForexceptiondeclaration7: 38535175 false ) 
	#(332 1 #reduceActionForexceptiondeclaration3: 38535171 false ) 
	#(198 5 #reduceActionForiterationstatement1: 15916033 false ) 
	#(158 4 #reduceActionForlambdadeclarator9: 5306377 false ) 
	#(158 4 #reduceActionForlambdadeclarator3: 5306371 false ) 
	#(158 4 #reduceActionForlambdadeclarator2: 5306370 false ) 
	#(158 4 #reduceActionForlambdadeclarator5: 5306373 false ) 
	#(162 3 #reduceActionForpseudodestructorname5: 7876613 false ) 
	#(186 5 #reduceActionForconditionalexpression2: 13405186 false ) 
	#(248 4 #reduceActionForattributelist6: 25463814 false ) 
	#(253 3 #reduceActionForattributeargumentclause3: 25982979 false ) 
	#(253 3 #reduceActionForattributeargumentclause1: 25982977 false ) 
	#(256 2 #reduceActionFordeclarationseq2: 26314754 false ) 
	#(235 6 #reduceActionFororiginalnamespacedefinition2: 22923266 false ) 
	#(318 4 #reduceActionFortypeparameter6: 35877894 false ) 
	#(318 4 #reduceActionFortypeparameter12: 35877900 false ) 
	#(278 4 #reduceActionForparameterdeclaration3: 29914115 false ) 
	#(278 4 #reduceActionForparameterdeclaration3: 29914122 false ) 
	#(278 4 #reduceActionForparameterdeclaration11: 29914123 false ) 
	#(207 6 #reduceActionForaliasdeclaration2: 17971202 false ) 
	#(242 6 #reduceActionForusingdirective4: 24285188 false ) 
	#(284 4 #reduceActionForcapturelist4: 31137796 false ) 
	#(310 4 #reduceActionFormeminitializerlist4: 34677764 false ) 
	#(311 4 #reduceActionFormeminitializer2: 34841602 false ) 
	#(263 5 #reduceActionForparametersandqualifiers10: 27415562 false ) 
	#(263 5 #reduceActionForparametersandqualifiers13: 27415565 false ) 
	#(263 5 #reduceActionForparametersandqualifiers11: 27415563 false ) 
	#(263 5 #reduceActionForparametersandqualifiers6: 27415558 false ) 
	#(263 5 #reduceActionForparametersandqualifiers7: 27415559 false ) 
	#(263 5 #reduceActionForparametersandqualifiers4: 27415556 false ) 
	#(295 4 #reduceActionFormemberdeclarator10: 32641034 false ) 
	#(293 4 #reduceActionFormemberdeclaration8: 32199688 false ) 
	#(302 4 #reduceActionForbasespecifier6: 33651718 false ) 
	#(302 4 #reduceActionForbasespecifier10: 33651722 false ) 
	#(301 4 #reduceActionForcapturelist4: 33496068 false ) 
	#(323 3 #reduceActionForcapturelist3: 37231619 false ) 
	#(273 4 #reduceActionFornoptrabstractdeclarator10: 28784650 false ) 
	#(273 4 #reduceActionFornoptrabstractdeclarator4: 28784644 false ) 
	#(273 4 #reduceActionFornoptrabstractdeclarator5: 28784645 false ) 
	#(275 4 #reduceActionFornoptrabstractdeclarator4: 29373443 false ) 
	#(275 4 #reduceActionFornoptrabstractdeclarator5: 29373444 false ) 
	#(165 6 #reduceActionFornewexpression14: 9253902 false ) 
	#(165 6 #reduceActionFornewexpression15: 9253903 false ) 
	#(198 6 #reduceActionForiterationstatement3: 15916035 false ) 
	#(197 4 #reduceActionForcondition2: 15638530 false ) 
	#(197 4 #reduceActionForcondition5: 15638533 false ) 
	#(165 6 #reduceActionFornewexpression12: 9253900 false ) 
	#(169 4 #reduceActionFornoptrnewdeclarator2: 9846786 false ) 
	#(169 4 #reduceActionFornoptrnewdeclarator3: 9846787 false ) 
	#(332 2 #reduceActionForexceptiondeclaration1: 38535169 false ) 
	#(332 2 #reduceActionForexceptiondeclaration1: 38535172 false ) 
	#(332 2 #reduceActionForexceptiondeclaration5: 38535173 false ) 
	#(158 5 #reduceActionForlambdadeclarator11: 5306379 false ) 
	#(158 5 #reduceActionForlambdadeclarator10: 5306378 false ) 
	#(158 5 #reduceActionForlambdadeclarator13: 5306381 false ) 
	#(158 5 #reduceActionForlambdadeclarator4: 5306372 false ) 
	#(158 5 #reduceActionForlambdadeclarator7: 5306375 false ) 
	#(158 5 #reduceActionForlambdadeclarator6: 5306374 false ) 
	#(162 4 #reduceActionForpseudodestructorname1: 7876609 false ) 
	#(254 3 #reduceActionForinitdeclaratorlist2: 26145794 false ) 
	#(209 7 #reduceActionForstatic_assertdeclaration1: 18344961 false ) 
	#(318 5 #reduceActionFortypeparameter13: 35877901 false ) 
	#(278 5 #reduceActionForparameterdeclaration4: 29914116 false ) 
	#(278 5 #reduceActionForparameterdeclaration4: 29914124 false ) 
	#(335 3 #reduceActionFordynamicexceptionspecification1: 39012353 false ) 
	#(336 1 #reduceActionForcapturelist1: 39156737 false ) 
	#(263 6 #reduceActionForparametersandqualifiers14: 27415566 false ) 
	#(263 6 #reduceActionForparametersandqualifiers15: 27415567 false ) 
	#(263 6 #reduceActionForparametersandqualifiers12: 27415564 false ) 
	#(263 6 #reduceActionForparametersandqualifiers8: 27415560 false ) 
	#(323 4 #reduceActionForcapturelist4: 37231620 false ) 
	#(273 5 #reduceActionFornoptrabstractdeclarator6: 28784646 false ) 
	#(275 5 #reduceActionFornoptrabstractdeclarator6: 29373445 false ) 
	#(165 7 #reduceActionFornewexpression16: 9253904 false ) 
	#(159 7 #reduceActionForpostfixexpression23: 5517335 false ) 
	#(198 7 #reduceActionForiterationstatement2: 15916034 false ) 
	#(159 7 #reduceActionForpostfixexpression23: 5517332 false ) 
	#(198 7 #reduceActionForiterationstatement4: 15916036 false ) 
	#(198 7 #reduceActionForiterationstatement5: 15916037 false ) 
	#(198 7 #reduceActionForiterationstatement7: 15916039 false ) 
	#(196 7 #reduceActionForselectionstatement2: 15199234 false ) 
	#(197 5 #reduceActionForcondition3: 15638531 false ) 
	#(169 5 #reduceActionFornoptrnewdeclarator4: 9846788 false ) 
	#(159 7 #reduceActionForpostfixexpression23: 5517334 false ) 
	#(159 7 #reduceActionForpostfixexpression23: 5517333 false ) 
	#(332 3 #reduceActionForexceptiondeclaration2: 38535170 false ) 
	#(332 3 #reduceActionForexceptiondeclaration2: 38535174 false ) 
	#(331 5 #reduceActionForhandler1: 38376449 false ) 
	#(158 6 #reduceActionForlambdadeclarator12: 5306380 false ) 
	#(158 6 #reduceActionForlambdadeclarator15: 5306383 false ) 
	#(158 6 #reduceActionForlambdadeclarator14: 5306382 false ) 
	#(158 6 #reduceActionForlambdadeclarator8: 5306376 false ) 
	#(162 5 #reduceActionForpseudodestructorname2: 7876610 false ) 
	#(257 3 #reduceActionForbalancedtoken1: 26397697 false ) 
	#(257 3 #reduceActionForbalancedtoken1: 26397698 false ) 
	#(257 3 #reduceActionForbalancedtoken1: 26397699 false ) 
	#(318 6 #reduceActionFortypeparameter15: 35877903 false ) 
	#(318 6 #reduceActionFortypeparameter14: 35877902 false ) 
	#(337 4 #reduceActionFornoexceptspecification1: 39279617 false ) 
	#(336 2 #reduceActionForcapturelist2: 39156738 false ) 
	#(335 4 #reduceActionFordynamicexceptionspecification2: 39012354 false ) 
	#(263 7 #reduceActionForparametersandqualifiers16: 27415568 false ) 
	#(198 8 #reduceActionForiterationstatement6: 15916038 false ) 
	#(158 7 #reduceActionForlambdadeclarator16: 5306384 false ) 
	#(162 6 #reduceActionForpseudodestructorname3: 7876611 false ) 
	#(318 7 #reduceActionFortypeparameter16: 35877904 false ) 
	#(318 7 #reduceActionFortypeparameter17: 35877905 false ) 
	#(336 3 #reduceActionForcapturelist3: 39156739 false ) 
	#(318 8 #reduceActionFortypeparameter18: 35877906 false ) 
	#(336 4 #reduceActionForcapturelist4: 39156740 false )
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
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"->*"' '"."' '".*"' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<="' '"="' '"=="' '">="' '"?"' '"["' '"]"' '"^"' '"^="' '"and"' '"not"' '"or"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<directive>' '<Alignas>' '<Alignof>' '<Asm>' '<Auto>' '<Bool>' '<Break>' '<Case>' '<Catch>' '<Char>' '<Char16>' '<Char32>' '<Class>' '<Const>' '<Constexpr>' '<Const_cast>' '<Continue>' '<Decltype>' '<Default>' '<Delete>' '<Do>' '<Double>' '<Dynamic_cast>' '<Else>' '<Enum>' '<Explicit>' '<Extern>' '<False>' '<Final>' '<Float>' '<For>' '<Friend>' '<Goto>' '<If>' '<Inline>' '<Int>' '<Long>' '<Mutable>' '<Namespace>' '<New>' '<Noexcept>' '<Nullptr>' '<Operator>' '<Override>' '<Private>' '<Protected>' '<Public>' '<Register>' '<Reinterpret_cast>' '<Return>' '<Short>' '<Signed>' '<Sizeof>' '<Static>' '<Static_assert>' '<Static_cast>' '<Struct>' '<Switch>' '<Template>' '<This>' '<Thread_local>' '<Throw>' '<True>' '<Try>' '<Typedef>' '<Typeid_>' '<Typename_>' '<Union>' '<Unsigned>' '<Using>' '<Virtual>' '<Void>' '<Volatile>' '<Wchar>' '<While>' '<LeftShift>' '<gt>' '<GT>' '<RightShift>' '<LeftShiftAssign>' '<RightShiftAssign>' '<Identifier>' '<Integerliteral>' '<Octalliteral>' '<Characterliteral>' '<Floatingliteral>' '<Stringliteral>' '<Userdefinedintegerliteral>' '<Userdefinedfloatingliteral>' '<Userdefinedstringliteral>' '<Userdefinedcharacterliteral>' '<whitespace>' '<comment>' '<lineContinuation>' '<patternToken>' 'B e g i n' 'translationunit' 'primaryexpression' 'idexpression' 'unqualifiedid' 'qualifiedid' 'nestednamespecifier' 'lambdaexpression' 'lambdaintroducer' 'lambdacapture' 'capturedefault' 'capturelist' 'capture' 'simplecapture' 'initcapture' 'lambdadeclarator' 'postfixexpression' 'typeidofthetypeid' 'expressionlist' 'pseudodestructorname' 'unaryexpression' 'unaryoperator' 'newexpression' 'newplacement' 'newtypeid' 'newdeclarator' 'noptrnewdeclarator' 'newinitializer' 'deleteexpression' 'noexceptexpression' 'castexpression' 'pmexpression' 'multiplicativeexpression' 'additiveexpression' 'shiftexpression' 'shiftoperator' 'relationalexpression' 'equalityexpression' 'andexpression' 'exclusiveorexpression' 'inclusiveorexpression' 'logicalandexpression' 'logicalorexpression' 'conditionalexpression' 'assignmentexpression' 'assignmentoperator' 'expression' 'constantexpression' 'statement' 'labeledstatement' 'expressionstatement' 'compoundstatement' 'statementseq' 'selectionstatement' 'condition' 'iterationstatement' 'forinitstatement' 'forrangedeclaration' 'forrangeinitializer' 'jumpstatement' 'declarationstatement' 'declarationseq' 'declaration' 'blockdeclaration' 'aliasdeclaration' 'simpledeclaration' 'static_assertdeclaration' 'attributedeclaration' 'declspecifier' 'declspecifierseq' 'storageclassspecifier' 'functionspecifier' 'typespecifier' 'trailingtypespecifier' 'typespecifierseq' 'trailingtypespecifierseq' 'simpletypespecifier' 'thetypename' 'decltypespecifier' 'elaboratedtypespecifier' 'enumspecifier' 'enumhead' 'opaqueenumdeclaration' 'enumkey' 'enumbase' 'enumeratorlist' 'enumeratordefinition' 'enumerator' 'namespacename' 'originalnamespacename' 'namespacedefinition' 'namednamespacedefinition' 'originalnamespacedefinition' 'fullnamespacename' 'unnamednamespacedefinition' 'namespacebody' 'namespacealiasdefinition' 'qualifiednamespacespecifier' 'usingdeclaration' 'usingdirective' 'asmdefinition' 'linkagespecification' 'attributespecifierseq' 'attributespecifier' 'alignmentspecifier' 'attributelist' 'attribute' 'attributetoken' 'attributescopedtoken' 'attributenamespace' 'attributeargumentclause' 'attributearguments' 'attributeargument' 'balancedtokenseq' 'balancedtoken' 'initdeclaratorlist' 'initdeclarator' 'declarator' 'ptrdeclarator' 'noptrdeclarator' 'parametersandqualifiers' 'trailingreturntype' 'ptroperator' 'cvqualifierseq' 'cvqualifier' 'refqualifier' 'declaratorid' 'thetypeid' 'abstractdeclarator' 'ptrabstractdeclarator' 'noptrabstractdeclarator' 'abstractpackdeclarator' 'noptrabstractpackdeclarator' 'parameterdeclarationclause' 'parameterdeclarationlist' 'parameterdeclaration' 'functiondefinition' 'functionbody' 'initializer' 'braceorequalinitializer' 'initializerclause' 'initializerlist' 'bracedinitlist' 'classname' 'classspecifier' 'classhead' 'classheadname' 'classvirtspecifier' 'classkey' 'memberspecification' 'memberdeclaration' 'memberdeclaratorlist' 'memberdeclarator' 'virtspecifierseq' 'virtspecifier' 'purespecifier' 'purespecifier_value' 'baseclause' 'basespecifierlist' 'basespecifier' 'classordecltype' 'basetypespecifier' 'accessspecifier' 'conversionfunctionid' 'conversiontypeid' 'conversiondeclarator' 'ctorinitializer' 'meminitializerlist' 'meminitializer' 'meminitializerid' 'operatorfunctionid' 'literaloperatorid' 'templatedeclaration' 'templateparameterlist' 'templateparameter' 'typeparameter' 'simpletemplateid' 'templateid' 'StartTemplateArgs' 'templatename' 'templateargumentlist' 'templateargument' 'typenamespecifier' 'explicitinstantiation' 'explicitspecialization' 'tryblock' 'functiontryblock' 'handlerseq' 'handler' 'exceptiondeclaration' 'throwexpression' 'exceptionspecification' 'dynamicexceptionspecification' 'typeidlist' 'noexceptspecification' 'theoperator' 'literal' '<Stringliteral> ''value''+' 'booleanliteral' 'pointerliteral' 'userdefinedliteral' 'E O F' 'error')
]

{ #category : #generated }
CPPParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #CPPTranslationUnitNode #CPPTranslationUnitNode #CPPExpressionNode #CPPIdentifierExpressionNode #CPPProgramNode #CPPQualifiedIdentifierNode #CPPNestedNameSpecifierNode #CPPLambdaExpressionNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #CPPCaptureNode #CPPCaptureNode #CPPInitializedCaptureNode #OrderedCollection #CPPExpressionNode #SmaCCToken #OrderedCollection #CPPPseudoDestructorNameNode #CPPExpressionNode #SmaCCToken #CPPNewExpressionNode #OrderedCollection #CPPNewTypeIdentifierNode #CPPNewDeclaratorNode #OrderedCollection #CPPProgramNode #CPPDeleteExpressionNode #CPPNoexceptExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #SmaCCToken #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #CPPExpressionNode #SmaCCToken #CPPExpressionNode #CPPExpressionNode #CPPProgramNode #CPPStatementNode #CPPExpressionStatementNode #CPPCompoundStatementNode #OrderedCollection #CPPStatementNode #CPPProgramNode #CPPStatementNode #CPPProgramNode #CPPForRangeDeclarationNode #CPPProgramNode #CPPStatementNode #CPPProgramNode #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPAliasDeclarationNode #CPPSimpleDeclarationNode #CPPStaticAssertDeclarationNode #CPPAttributeDeclarationNode #CPPProgramNode #OrderedCollection #SmaCCToken #SmaCCToken #CPPProgramNode #CPPProgramNode #OrderedCollection #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPDecltypeSpecifierNode #CPPElaboratedTypeSpecifierNode #CPPEnumSpecifierNode #OrderedCollection #CPPOpaqueEnumDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #CPPEnumDefinitionNode #SmaCCToken #CPPIdentifierNode #SmaCCToken #CPPProgramNode #CPPOriginalNamespaceDefinitionNode #CPPOriginalNamespaceDefinitionNode #OrderedCollection #CPPUnnamedNamespaceDefinitionNode #OrderedCollection #CPPNamespaceAliasDefinitionNode #OrderedCollection #CPPUsingDeclarationNode #CPPUsingDirectiveNode #CPPAsmDefinitionNode #CPPLinkageSpecificationNode #OrderedCollection #CPPProgramNode #CPPAlignmentSpecifierNode #OrderedCollection #CPPAttributeNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #CPPExpressionNode #OrderedCollection #CPPBalancedTokenNode #OrderedCollection #CPPInitDeclaratorNode #CPPDeclaratorNode #CPPDeclaratorNode #CPPDeclaratorNode #OrderedCollection #OrderedCollection #CPPPointerOperatorNode #OrderedCollection #CPPCVQualifierNode #SmaCCToken #OrderedCollection #CPPTypeIdentifierNode #CPPProgramNode #CPPPtrAbstractDeclaratorNode #OrderedCollection #CPPAbstractPackDeclaratorNode #OrderedCollection #OrderedCollection #OrderedCollection #CPPParameterDeclarationNode #CPPFunctionDefinitionNode #OrderedCollection #CPPProgramNode #CPPProgramNode #CPPProgramNode #OrderedCollection #CPPBracedListInitializerNode #CPPProgramNode #CPPClassSpecifierNode #OrderedCollection #OrderedCollection #SmaCCToken #OrderedCollection #OrderedCollection #CPPProgramNode #OrderedCollection #CPPMemberDeclaratorNode #OrderedCollection #SmaCCToken #CPPEqualInitializerNode #CPPNumericLiteralNode #OrderedCollection #OrderedCollection #CPPBaseSpecifierNode #CPPProgramNode #CPPProgramNode #SmaCCToken #CPPConversionFunctionIdentifierNode #OrderedCollection #CPPConversionDeclaratorNode #CPPCtorInitializerNode #OrderedCollection #CPPMemInitializerNode #CPPProgramNode #CPPOperatorFunctionIdentifierNode #CPPLiteralFunctionIdentifierNode #CPPTemplateDeclarationNode #OrderedCollection #CPPProgramNode #CPPTypeParameterNode #CPPTemplateIdentifierNode #CPPProgramNode #ByteSymbol #SmaCCToken #OrderedCollection #CPPProgramNode #CPPTypeNameSpecifierNode #CPPExplicitInstantiationNode #CPPExplicitSpecializationNode #CPPTryStatementNode #CPPTryStatementNode #OrderedCollection #CPPCatchHandlerNode #CPPExceptionDeclarationNode #CPPThrowExpressionNode #CPPProgramNode #CPPDynamicExceptionSpecificationNode #OrderedCollection #CPPNoExceptionSpecificiationNode #OrderedCollection #CPPLiteralNode #OrderedCollection #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
CPPParser class >> transitionTable [
^#(
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 217 0 144 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 0 237 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 0 241 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 0 241 0 225 1 61 0 226 0 241 0 233 0 241 0 234 0 241 0 235 0 241 0 237 0 241 0 239 0 241 0 241 0 241 0 242 0 241 0 243 0 241 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 0 241 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 0 241 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 0 241 1 70 0 241 1 71 0 6 1 88] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 3 13 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 3 13 0 203 3 13 0 206 3 13 0 207 3 13 0 208 3 13 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 3 13 0 225 1 61 0 226 3 13 0 239 3 13 0 241 3 13 0 242 3 13 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 121 0 186 3 121 0 187 3 121 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 3 121 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 0 10 0 2 0 10 0 3 0 10 0 4 0 10 0 5 0 10 0 6 0 10 0 7 0 10 0 8 0 10 0 9 0 10 0 10 0 10 0 11 0 10 0 12 0 10 0 13 0 10 0 14 0 10 0 15 0 10 0 16 0 10 0 17 0 10 0 18 0 10 0 19 0 10 0 20 0 10 0 21 0 10 0 22 0 10 0 23 0 10 0 24 0 10 0 25 0 10 0 26 0 10 0 27 0 10 0 28 0 10 0 29 0 10 0 30 0 10 0 31 0 10 0 32 0 10 0 33 0 10 0 34 0 7 0 35 0 10 0 36 0 10 0 37 0 10 0 38 0 10 0 39 0 10 0 41 0 10 0 42 0 10 0 43 0 10 0 44 0 10 0 45 0 10 0 46 0 10 0 47 0 11 0 49 0 10 0 65 0 10 0 76 0 10 0 90 0 10 0 91 0 10 0 111 0 10 0 123 0 10 0 124 0 10 0 125 0 10 0 126 0 10 0 127 0 10 0 128 0 10 0 129 3 133 0 245 1 105 0 246 1 105 0 247 0 10 1 88] 
#[1 0 14 0 2 0 14 0 3 0 14 0 4 0 14 0 5 0 14 0 6 0 14 0 7 0 14 0 8 0 14 0 9 0 14 0 10 0 14 0 11 0 14 0 12 0 14 0 13 0 14 0 14 0 14 0 15 0 14 0 16 0 14 0 17 0 14 0 18 0 14 0 19 0 14 0 20 0 14 0 21 0 14 0 22 0 14 0 23 0 14 0 24 0 14 0 25 0 14 0 26 0 14 0 27 0 14 0 28 0 14 0 29 0 14 0 30 0 14 0 31 0 14 0 32 0 14 0 33 0 14 0 34 0 15 0 35 0 14 0 36 0 14 0 37 0 14 0 38 0 14 0 39 0 14 0 41 0 14 0 42 0 14 0 43 0 14 0 44 0 14 0 45 0 14 0 46 0 14 0 47 0 19 0 49 0 14 0 65 0 14 0 76 0 14 0 90 0 14 0 91 0 14 0 111 0 14 0 123 0 14 0 124 0 14 0 125 0 14 0 126 0 14 0 127 0 14 0 128 0 14 0 129 3 137 0 245 1 105 0 246 1 105 0 247 0 14 1 88] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 3 153 1 5 3 157 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 18 0 2 0 18 0 3 0 18 0 4 0 18 0 5 0 18 0 6 0 18 0 7 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 11 0 18 0 12 0 18 0 13 0 18 0 14 0 18 0 15 0 18 0 16 0 18 0 17 0 18 0 18 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 23 0 18 0 24 0 18 0 25 0 18 0 26 0 18 0 27 0 18 0 28 0 18 0 29 0 18 0 30 0 18 0 31 0 18 0 32 0 18 0 33 0 18 0 34 0 23 0 35 0 18 0 36 0 18 0 37 0 18 0 38 0 18 0 39 0 18 0 41 0 18 0 42 0 18 0 43 0 18 0 44 0 18 0 45 0 18 0 46 0 18 0 47 0 27 0 49 0 85 0 61 0 18 0 65 0 18 0 76 0 18 0 90 0 18 0 91 0 18 0 111 0 205 0 120 0 18 0 123 0 18 0 124 0 18 0 125 0 18 0 126 0 18 0 127 0 18 0 128 0 18 0 129 3 161 0 245 1 105 0 246 1 105 0 247 3 165 1 10 3 169 1 11 0 18 1 88] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 3 173 0 146 0 225 0 147 0 229 0 148 3 177 0 149 3 145 0 220 3 149 0 221 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 0 22 0 10 0 47 0 90 0 106 0 129] 
#[0 0 26 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 3 181 0 35] 
#[1 0 93 0 65 3 185 0 129 3 189 0 221 3 193 1 30 3 193 1 63 1 189 1 66] 
#[0 3 201 0 8] 
#[0 3 205 0 8] 
#[0 0 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 50 0 26 0 27 0 35 0 42 0 49 0 65 0 129] 
#[0 0 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 88 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 109 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 58 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 3 209 0 8] 
#[0 0 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 0 66 0 26 0 31 0 27 0 66 0 35 0 66 0 42 0 66 0 49 3 213 0 60 0 35 0 65 3 217 0 104 0 39 0 129 3 225 0 149 3 145 0 220 3 149 0 221 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 0 70 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[1 0 74 0 5 0 74 0 6 0 74 0 8 0 74 0 10 0 74 0 23 0 74 0 27 0 74 0 28 0 74 0 35 0 74 0 47 0 74 0 49 0 74 0 52 0 74 0 53 0 74 0 57 0 74 0 58 0 74 0 59 0 74 0 60 0 74 0 61 0 74 0 62 0 74 0 65 0 74 0 69 0 74 0 72 0 74 0 73 0 74 0 74 0 74 0 77 0 74 0 79 0 74 0 82 0 74 0 83 0 74 0 84 0 74 0 85 0 74 0 90 0 74 0 95 0 74 0 98 0 74 0 99 0 74 0 101 0 74 0 104 3 229 0 106 0 74 0 108 0 74 0 112 0 74 0 114 0 74 0 115 0 74 0 116 0 74 0 118 0 74 0 119 0 74 0 120 0 74 0 121 0 74 0 129 3 233 0 134] 
#[0 0 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 82 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[1 0 86 0 5 0 86 0 6 0 86 0 8 0 86 0 10 0 86 0 23 0 86 0 27 0 86 0 28 0 86 0 35 0 86 0 47 0 86 0 49 0 86 0 52 0 86 0 53 0 86 0 57 0 86 0 58 0 86 0 59 0 86 0 60 0 86 0 61 0 86 0 62 0 86 0 65 0 86 0 69 0 86 0 72 0 86 0 73 0 86 0 74 0 86 0 77 0 86 0 79 0 86 0 82 0 86 0 83 0 86 0 84 0 86 0 85 3 237 0 86 0 86 0 90 0 86 0 95 0 86 0 98 0 86 0 99 0 86 0 101 0 86 0 104 0 86 0 108 0 86 0 112 0 86 0 114 0 86 0 115 0 86 0 116 0 86 0 118 0 86 0 119 0 86 0 120 0 86 0 121 0 86 0 129] 
#[0 0 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 94 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 98 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[1 3 241 0 42 3 245 0 129 3 249 0 236] 
#[1 3 253 0 1 4 1 0 2 4 5 0 3 4 9 0 4 4 13 0 5 4 17 0 6 4 21 0 7 4 25 0 8 4 29 0 10 4 33 0 11 4 37 0 12 4 41 0 13 4 45 0 14 4 49 0 15 4 53 0 16 4 57 0 17 4 61 0 18 4 65 0 19 4 69 0 20 4 73 0 24 4 77 0 25 0 37 0 27 4 81 0 29 4 85 0 30 4 89 0 31 4 93 0 32 4 97 0 33 4 101 0 35 4 105 0 37 4 109 0 38 4 113 0 39 4 117 0 40 4 121 0 41 4 125 0 43 4 129 0 44 4 133 0 45 4 137 0 47 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 4 141 0 67 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 4 145 0 87 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 4 149 0 123 4 153 0 124 4 157 0 126 4 161 0 127 4 165 0 128 3 185 0 129 4 169 0 134 4 173 0 137 4 177 0 149 4 181 0 215 4 181 0 216 4 185 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 4 193 1 51 1 37 1 63 1 189 1 66 4 181 1 69 4 197 1 82] 
#[0 0 102 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 0 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 114 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 4 201 0 8] 
#[0 0 118 0 26 0 27 0 35 0 42 0 49 0 65 0 129] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 4 205 0 29 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 4 209 0 205 4 209 0 206 4 209 0 207 4 209 0 208 4 209 0 209 4 209 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 209 0 225 1 61 0 226 4 209 0 233 4 209 0 234 4 209 0 235 4 209 0 237 4 209 0 239 4 209 0 241 4 209 0 242 4 209 0 243 4 209 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 4 209 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 4 209 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 4 209 1 70 4 209 1 71] 
#[0 0 122 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 0 126 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[1 0 37 0 27 0 93 0 65 3 185 0 129 4 213 0 149 3 145 0 220 3 149 0 221 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 0 130 0 26 0 27 0 35 0 42 0 49 0 65 0 129] 
#[0 0 134 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 4 217 0 27 0 93 0 65 4 221 0 86 4 225 0 114 4 229 0 129 4 233 0 149 3 145 0 220 3 149 0 221 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 0 138 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 0 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 88 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 109 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 150 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 43 0 5 0 43 0 6 0 154 0 7 0 43 0 8 0 43 0 9 0 43 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 43 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 43 0 23 0 154 0 24 0 154 0 25 0 154 0 26 0 158 0 27 0 43 0 28 0 47 0 29 0 154 0 30 0 43 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 43 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 43 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 158 0 47 0 43 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 154 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 154 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 154 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 154 0 123 0 154 0 124 0 43 0 125 0 154 0 126 0 154 0 127 0 154 0 128 0 158 0 129 0 154 1 88] 
#[0 0 0 1 88] 
#[0 0 166 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[0 0 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 0 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 4 237 0 10 0 49 0 47 0 141 0 90 4 241 0 106 4 245 0 129 4 249 0 147 4 253 0 220 4 253 1 30 4 249 1 50 1 169 1 57 1 173 1 58 5 1 1 63 4 249 1 64 1 189 1 66] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 5 5 0 205 5 5 0 206 5 5 0 207 5 5 0 208 5 5 0 209 5 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 5 5 0 225 1 61 0 226 5 5 0 233 5 5 0 234 5 5 0 235 5 5 0 237 5 5 0 239 5 5 0 241 5 5 0 242 5 5 0 243 5 5 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 5 5 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 5 5 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 5 5 1 70 5 5 1 71 0 178 1 88] 
#[0 0 182 0 5 0 6 0 8 0 10 0 23 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 0 186 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 0 190 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 0 194 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 0 198 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 0 202 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 0 206 0 5 0 206 0 6 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 15 0 206 0 23 0 206 0 26 0 51 0 27 0 206 0 28 0 206 0 31 0 55 0 35 0 206 0 47 0 59 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 63 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 206 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 206 0 124 0 67 0 129 4 177 0 149 1 9 0 211 5 9 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 5 13 0 245 1 105 0 246 1 105 0 247 1 9 1 11 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 1 9 1 69] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 5 17 0 28 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 5 21 1 2 1 117 1 3 5 25 1 4 5 25 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 0 210 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 0 214 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 0 218 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 0 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 0 230 0 2 0 230 0 3 0 230 0 4 0 230 0 5 0 230 0 6 0 230 0 7 0 230 0 8 0 230 0 9 0 230 0 10 0 230 0 11 0 230 0 12 0 230 0 13 0 230 0 14 0 230 0 15 0 230 0 16 0 230 0 17 0 230 0 18 0 230 0 19 0 230 0 20 0 230 0 21 0 230 0 22 0 230 0 23 0 230 0 24 0 230 0 25 0 230 0 26 0 71 0 27 0 230 0 28 0 230 0 29 0 230 0 30 0 230 0 31 0 230 0 32 0 230 0 33 0 230 0 34 0 230 0 35 0 230 0 36 0 230 0 37 0 230 0 38 0 230 0 39 0 230 0 41 0 230 0 42 0 230 0 43 0 230 0 44 0 230 0 45 0 230 0 46 0 230 0 47 0 230 0 49 0 230 0 52 0 230 0 53 0 230 0 57 0 230 0 58 0 230 0 59 0 230 0 60 0 230 0 61 0 230 0 62 0 230 0 65 0 230 0 69 0 230 0 72 0 230 0 73 0 230 0 74 0 230 0 76 0 230 0 77 0 230 0 79 0 230 0 82 0 230 0 83 0 230 0 84 0 230 0 85 0 230 0 90 0 230 0 91 0 230 0 95 0 230 0 98 0 230 0 99 0 230 0 101 0 230 0 104 0 230 0 108 0 230 0 111 0 230 0 112 0 230 0 114 0 230 0 115 0 230 0 116 0 230 0 118 0 230 0 119 0 230 0 120 0 230 0 121 0 230 0 123 0 230 0 124 0 230 0 125 0 230 0 126 0 230 0 127 0 230 0 128 0 230 0 129 0 230 1 88] 
#[1 0 234 0 2 0 234 0 3 0 234 0 4 0 234 0 5 0 234 0 6 0 234 0 7 0 234 0 8 0 234 0 9 0 234 0 10 0 234 0 11 0 234 0 12 0 234 0 13 0 234 0 14 0 234 0 15 0 234 0 16 0 234 0 17 0 234 0 18 0 234 0 19 0 234 0 20 0 234 0 21 0 234 0 22 0 234 0 23 0 234 0 24 0 234 0 25 0 234 0 26 0 75 0 27 0 234 0 28 0 234 0 29 0 234 0 30 0 234 0 31 0 234 0 32 0 234 0 33 0 234 0 34 0 234 0 35 0 234 0 36 0 234 0 37 0 234 0 38 0 234 0 39 0 234 0 41 0 234 0 42 0 234 0 43 0 234 0 44 0 234 0 45 0 234 0 46 0 234 0 47 0 234 0 49 0 234 0 52 0 234 0 53 0 234 0 57 0 234 0 58 0 234 0 59 0 234 0 60 0 234 0 61 0 234 0 62 0 234 0 65 0 234 0 69 0 234 0 72 0 234 0 73 0 234 0 74 0 234 0 76 0 234 0 77 0 234 0 79 0 234 0 82 0 234 0 83 0 234 0 84 0 234 0 85 0 234 0 90 0 234 0 91 0 234 0 95 0 234 0 98 0 234 0 99 0 234 0 101 0 234 0 104 0 234 0 108 0 234 0 111 0 234 0 112 0 234 0 114 0 234 0 115 0 234 0 116 0 234 0 118 0 234 0 119 0 234 0 120 0 234 0 121 0 234 0 123 0 234 0 124 0 234 0 125 0 234 0 126 0 234 0 127 0 234 0 128 0 234 0 129 0 234 1 88] 
#[0 0 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 5 37 0 42] 
#[0 0 246 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 5 41 0 26 0 37 0 27 0 45 0 35 0 250 0 42 0 53 0 49 0 93 0 65 5 45 0 129 5 49 0 149 3 145 0 220 3 149 0 221 5 53 0 227 5 57 0 245 1 105 0 246 1 105 0 247 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 0 254 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 1 2 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 1 6 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 1 10 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 1 14 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 1 18 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 1 22 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 1 26 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 1 30 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 5 61 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 5 65 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 1 9 0 211 5 69 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 5 73 0 246 5 73 0 247 5 77 1 2 1 117 1 3 5 81 1 4 5 81 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69] 
#[0 1 34 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 1 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 5 85 0 15 5 89 0 28] 
#[0 1 42 0 15 0 28] 
#[1 5 93 0 8 1 46 0 15 5 97 0 26 1 46 0 28 5 101 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 194 5 125 1 24 5 129 1 25 5 129 1 26 5 129 1 29 5 141 1 40 5 145 1 41 5 149 1 53 5 153 1 73] 
#[0 1 50 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 0 79 0 8 1 54 0 9 1 54 0 15 1 54 0 23 1 54 0 26 1 54 0 28 1 54 0 31 5 161 0 35 1 54 0 42 1 54 0 76 1 54 0 91 1 54 0 111 1 54 0 124 5 165 1 7] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 5 169 1 5 3 157 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 1 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 1 62 0 8 1 62 0 9 1 62 0 15 1 62 0 23 1 62 0 26 1 62 0 28 1 62 0 31 0 83 0 35 1 62 0 42 0 53 0 49 1 62 0 76 1 62 0 91 1 62 0 111 1 62 0 124 5 173 0 245 1 105 0 246 1 105 0 247] 
#[0 1 66 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 1 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 1 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 5 177 0 42] 
#[1 5 181 0 26 0 37 0 27 0 45 0 35 1 78 0 42 0 53 0 49 0 93 0 65 5 185 0 129 5 189 0 149 3 145 0 220 3 149 0 221 5 193 0 245 1 105 0 246 1 105 0 247 5 197 1 30 5 201 1 33 5 205 1 44 5 209 1 63 1 189 1 66] 
#[0 1 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 86 0 2 1 86 0 3 1 86 0 4 1 86 0 5 1 86 0 6 1 86 0 7 1 86 0 8 1 86 0 9 1 86 0 10 1 86 0 11 1 86 0 12 1 86 0 13 1 86 0 14 1 86 0 15 1 86 0 16 1 86 0 17 1 86 0 18 1 86 0 19 1 86 0 20 1 86 0 21 1 86 0 22 1 86 0 23 1 86 0 24 1 86 0 25 1 86 0 26 1 86 0 28 0 87 0 29 1 86 0 30 1 86 0 31 1 86 0 32 1 86 0 33 1 86 0 34 1 86 0 35 1 86 0 36 1 86 0 37 1 86 0 38 1 86 0 39 1 86 0 41 1 86 0 42 1 86 0 43 1 86 0 44 1 86 0 45 1 86 0 46 1 86 0 49 1 86 0 76 1 86 0 91 1 86 0 111 1 86 0 123 1 86 0 124 1 86 0 125 1 86 0 126 1 86 0 127 1 86 0 128 5 213 1 65 1 86 1 88] 
#[1 1 94 0 2 1 94 0 3 1 94 0 4 1 94 0 5 1 94 0 6 1 94 0 7 1 94 0 8 1 94 0 9 1 94 0 10 1 94 0 11 1 94 0 12 1 94 0 13 1 94 0 14 1 94 0 15 1 94 0 16 1 94 0 17 1 94 0 18 1 94 0 19 1 94 0 20 1 94 0 21 1 94 0 22 1 94 0 23 1 94 0 24 1 94 0 25 1 94 0 26 1 94 0 28 0 91 0 29 1 94 0 30 1 94 0 31 1 94 0 32 1 94 0 33 1 94 0 34 1 94 0 35 1 94 0 36 1 94 0 37 1 94 0 38 1 94 0 39 1 94 0 41 1 94 0 42 1 94 0 43 1 94 0 44 1 94 0 45 1 94 0 46 1 94 0 49 1 94 0 76 1 94 0 91 1 94 0 111 1 94 0 123 1 94 0 124 1 94 0 125 1 94 0 126 1 94 0 127 1 94 0 128 5 217 1 65 1 94 1 88] 
#[0 1 98 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 1 102 0 2 1 102 0 3 1 102 0 4 0 95 0 5 0 95 0 6 1 102 0 7 0 95 0 8 0 95 0 9 0 95 0 10 1 102 0 11 1 102 0 12 1 102 0 13 1 102 0 14 0 95 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 22 0 95 0 23 1 102 0 24 1 102 0 25 0 95 0 26 1 106 0 27 0 95 0 28 1 102 0 29 1 102 0 30 0 95 0 31 1 102 0 32 1 102 0 33 1 102 0 34 0 95 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 41 0 95 0 42 1 102 0 43 1 102 0 44 1 102 0 45 1 102 0 46 1 106 0 47 0 95 0 49 1 106 0 52 1 106 0 53 1 106 0 57 1 106 0 58 1 106 0 59 1 106 0 60 1 106 0 61 1 106 0 62 1 106 0 65 1 106 0 69 1 106 0 72 1 106 0 73 1 106 0 74 1 102 0 76 1 106 0 77 1 106 0 79 1 106 0 82 1 106 0 83 1 106 0 84 1 106 0 85 1 106 0 90 1 102 0 91 1 106 0 95 1 106 0 98 1 106 0 99 1 106 0 101 1 106 0 104 1 106 0 108 1 102 0 111 1 106 0 112 1 106 0 114 1 106 0 115 1 106 0 116 1 106 0 118 1 106 0 119 1 106 0 120 1 106 0 121 1 102 0 123 1 102 0 124 0 95 0 125 1 102 0 126 1 102 0 127 1 102 0 128 1 106 0 129 1 102 1 88] 
#[0 1 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 90 0 29 5 221 1 65] 
#[0 1 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 1 118 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 1 122 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 1 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 1 130 0 1 0 99 0 5 0 10 0 6 0 99 0 8 0 99 0 10 1 130 0 12 1 130 0 13 1 130 0 16 1 130 0 17 0 10 0 23 0 99 0 27 0 103 0 35 1 130 0 40 1 130 0 43 0 99 0 47 0 53 0 49 1 130 0 50 1 130 0 52 1 130 0 53 1 130 0 57 1 130 0 58 1 130 0 59 1 130 0 63 0 99 0 65 1 130 0 67 1 130 0 69 1 130 0 70 1 130 0 75 1 130 0 77 1 130 0 83 1 130 0 84 1 130 0 87 1 130 0 88 1 130 0 89 0 99 0 90 1 130 0 96 1 130 0 98 1 130 0 99 1 130 0 100 1 130 0 103 1 130 0 107 1 130 0 110 1 130 0 113 1 130 0 114 1 130 0 116 1 130 0 119 1 130 0 121 0 99 0 129 1 130 0 130 1 130 0 132 1 130 0 133 1 130 0 134 1 130 0 135 1 130 0 136 1 130 0 137 1 130 0 138 3 133 0 245 1 105 0 246 1 105 0 247] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 5 225 0 186 5 225 0 187 5 225 0 189 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 3 153 1 5 3 157 1 6 1 133 1 9 4 181 1 11 1 141 1 13 5 233 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 5 225 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 1 134 0 1 0 107 0 5 0 18 0 6 0 107 0 8 0 107 0 10 1 134 0 12 1 134 0 13 1 134 0 16 1 134 0 17 0 18 0 23 0 107 0 27 0 111 0 35 1 134 0 40 1 134 0 43 0 107 0 47 0 53 0 49 1 134 0 50 1 134 0 52 1 134 0 53 1 134 0 57 1 134 0 58 1 134 0 59 0 85 0 61 1 134 0 63 0 107 0 65 1 134 0 67 1 134 0 69 1 134 0 70 1 134 0 75 1 134 0 77 1 134 0 83 1 134 0 84 1 134 0 87 1 134 0 88 1 134 0 89 0 107 0 90 1 134 0 96 1 134 0 98 1 134 0 99 1 134 0 100 1 134 0 103 1 134 0 107 1 134 0 110 1 134 0 113 1 134 0 114 1 134 0 116 1 134 0 119 0 205 0 120 1 134 0 121 0 107 0 129 1 134 0 130 1 134 0 132 1 134 0 133 1 134 0 134 1 134 0 135 1 134 0 136 1 134 0 137 1 134 0 138 3 161 0 245 1 105 0 246 1 105 0 247 3 165 1 10 3 169 1 11] 
#[0 1 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 5 237 0 163 2 193 0 164 5 237 0 165 5 237 0 171 5 237 0 172 5 237 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 1 142 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 5 241 0 163 2 193 0 164 5 241 0 165 5 241 0 171 5 241 0 172 5 241 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 0 22 0 10 0 22 0 47 5 245 0 67 5 249 0 87 0 22 0 90 0 22 0 106 0 22 0 129] 
#[0 0 115 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 5 253 0 5 6 21 0 31 3 181 0 35 6 5 0 36 6 9 0 107 6 13 0 129 6 17 0 152 6 21 0 153 6 25 0 154 6 29 0 155 6 29 0 156 6 29 0 157] 
#[0 1 150 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 6 41 0 46 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 6 45 0 191 3 17 0 192 3 21 0 193 3 25 0 194 6 49 0 195 3 29 0 196 3 33 0 198 3 37 0 202 6 45 0 203 6 45 0 206 6 45 0 207 6 45 0 208 6 45 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 6 45 0 225 1 61 0 226 6 45 0 239 6 45 0 241 6 45 0 242 6 45 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 1 154 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 1 158 0 1 1 158 0 5 1 158 0 8 1 158 0 10 1 158 0 12 1 158 0 13 1 158 0 16 1 158 0 17 1 158 0 27 1 158 0 35 1 158 0 40 1 158 0 43 1 158 0 47 1 158 0 50 1 158 0 52 1 158 0 53 1 158 0 57 1 158 0 58 1 158 0 59 1 158 0 63 0 119 0 65 1 158 0 67 1 158 0 69 1 158 0 70 1 158 0 75 1 158 0 77 1 158 0 83 1 158 0 84 1 158 0 87 1 158 0 88 1 158 0 89 1 158 0 90 1 158 0 96 1 158 0 98 1 158 0 99 1 158 0 100 1 158 0 103 1 158 0 107 1 158 0 110 1 158 0 113 1 158 0 114 1 158 0 116 1 158 0 119 1 158 0 121 0 123 0 129 1 158 0 130 1 158 0 132 1 158 0 133 1 158 0 134 1 158 0 135 1 158 0 136 1 158 0 137 1 158 0 138 3 189 0 221 3 193 1 30 3 193 1 63 1 189 1 66] 
#[0 6 53 0 8] 
#[0 6 57 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 6 69 0 186 6 69 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 6 73 0 29] 
#[0 6 77 0 28] 
#[0 6 81 0 26] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 6 85 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 6 89 0 163 2 193 0 164 6 89 0 165 6 89 0 171 6 89 0 172 6 89 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 6 93 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 6 93 0 203 6 93 0 206 6 93 0 207 6 93 0 208 6 93 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 6 93 0 225 1 61 0 226 6 93 0 239 6 93 0 241 6 93 0 242 6 93 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 6 97 0 29] 
#[0 0 74 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 1 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 6 101 0 8] 
#[0 6 105 0 129] 
#[0 6 109 0 8] 
#[0 0 86 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 95 0 98 0 99 0 101 0 104 0 108 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 124 0 129] 
#[0 6 113 0 129] 
#[1 6 117 0 8 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 6 121 0 166 6 125 0 167 4 181 0 215 4 181 0 216 6 129 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[0 6 133 0 8] 
#[0 1 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 6 137 0 29] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 6 141 0 28 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 6 149 0 186 6 149 0 187 6 149 0 189 3 125 0 219 1 37 0 220 1 41 0 221 6 153 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 6 149 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 6 157 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 6 161 0 23 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 6 165 0 163 2 193 0 164 6 165 0 165 6 165 0 171 6 165 0 172 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 6 169 0 29] 
#[0 6 173 0 8] 
#[0 1 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 1 174 0 9 2 193 0 10 2 193 0 12 1 225 0 13 1 174 0 15 2 193 0 16 1 233 0 17 1 174 0 23 1 174 0 26 1 237 0 27 1 174 0 28 3 109 0 35 1 174 0 36 2 193 0 40 2 193 0 43 1 174 0 46 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 1 174 0 124 1 174 0 125 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 6 177 0 186 6 177 0 187 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 6 177 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87 1 174 1 88] 
#[0 1 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 253 0 42 6 181 0 194] 
#[0 1 182 0 8] 
#[0 6 185 0 8] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 43 0 5 0 43 0 6 0 154 0 7 0 43 0 8 0 43 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 43 0 23 0 154 0 24 0 154 0 25 6 189 0 26 0 158 0 27 0 43 0 28 0 47 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 43 0 35 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 43 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 158 0 47 0 43 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 154 0 123 0 154 0 124 0 154 0 126 0 154 0 127 0 154 0 128 0 158 0 129] 
#[0 1 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 0 134 1 88] 
#[0 1 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 222 0 2 1 222 0 3 1 222 0 4 1 222 0 5 1 222 0 6 1 222 0 7 0 127 0 8 0 127 0 9 1 222 0 10 1 222 0 11 1 222 0 12 1 222 0 13 1 222 0 14 0 127 0 15 1 222 0 16 1 222 0 17 1 222 0 18 1 222 0 19 1 222 0 20 1 222 0 21 1 222 0 22 1 222 0 23 1 222 0 24 1 222 0 25 0 127 0 28 1 222 0 29 1 222 0 30 0 127 0 31 1 222 0 32 1 222 0 33 1 222 0 34 0 127 0 35 1 222 0 37 1 222 0 38 1 222 0 39 1 222 0 41 0 166 0 42 1 222 0 43 1 222 0 44 1 222 0 45 1 222 0 46 0 166 0 49 1 222 0 123 1 222 0 124 1 222 0 126 1 222 0 127 1 222 0 128] 
#[0 1 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 6 193 0 8 1 253 0 42 6 197 0 158 6 201 0 194] 
#[1 1 230 0 2 1 230 0 3 1 230 0 4 1 230 0 5 1 230 0 6 1 230 0 7 6 205 0 8 1 230 0 9 1 230 0 10 1 230 0 11 1 230 0 12 6 209 0 13 1 230 0 14 1 230 0 15 1 230 0 16 6 213 0 17 1 230 0 18 6 217 0 19 1 230 0 20 6 221 0 21 1 230 0 22 1 230 0 23 1 230 0 24 1 230 0 25 1 230 0 26 1 230 0 28 1 230 0 29 1 230 0 30 1 230 0 31 1 230 0 32 1 230 0 33 1 230 0 34 6 225 0 35 1 230 0 36 1 230 0 37 1 230 0 38 1 230 0 39 1 230 0 41 1 230 0 43 1 230 0 44 1 230 0 45 1 230 0 46 1 230 0 123 1 230 0 124 1 230 0 125 1 230 0 126 1 230 0 127 1 230 0 128 1 230 1 88] 
#[0 6 229 0 8] 
#[0 1 234 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 6 233 0 163 2 193 0 164 6 233 0 165 6 233 0 171 6 233 0 172 6 233 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 1 238 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 242 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 246 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 250 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 254 0 2 1 254 0 3 1 254 0 4 1 254 0 5 1 254 0 6 1 254 0 7 1 254 0 9 1 254 0 10 1 254 0 11 1 254 0 12 1 254 0 14 1 254 0 15 1 254 0 16 1 254 0 18 6 237 0 20 6 241 0 22 1 254 0 23 1 254 0 24 1 254 0 25 1 254 0 26 1 254 0 28 1 254 0 29 1 254 0 30 1 254 0 31 1 254 0 32 1 254 0 33 1 254 0 34 1 254 0 36 1 254 0 37 1 254 0 38 1 254 0 39 1 254 0 41 1 254 0 43 1 254 0 44 1 254 0 45 1 254 0 46 1 254 0 123 1 254 0 124 1 254 0 125 1 254 0 126 1 254 0 127 1 254 0 128 1 254 1 88] 
#[1 2 2 0 2 6 245 0 3 2 2 0 4 2 2 0 5 2 2 0 6 2 2 0 7 2 2 0 9 6 249 0 10 2 2 0 11 2 2 0 12 2 2 0 14 2 2 0 15 2 2 0 16 2 2 0 18 2 2 0 23 6 253 0 24 2 2 0 25 2 2 0 26 2 2 0 28 2 2 0 29 2 2 0 30 2 2 0 31 2 2 0 32 2 2 0 33 2 2 0 34 2 2 0 36 2 2 0 37 2 2 0 38 2 2 0 39 2 2 0 41 2 2 0 43 2 2 0 44 2 2 0 45 2 2 0 46 2 2 0 123 2 2 0 124 2 2 0 125 2 2 0 126 2 2 0 127 2 2 0 128 2 2 1 88] 
#[1 2 6 0 2 2 6 0 4 2 6 0 5 2 6 0 6 2 6 0 7 2 6 0 9 2 6 0 11 7 1 0 12 2 6 0 14 2 6 0 15 7 5 0 16 2 6 0 18 2 6 0 23 2 6 0 25 2 6 0 26 2 6 0 28 2 6 0 29 2 6 0 30 2 6 0 31 2 6 0 32 2 6 0 33 2 6 0 34 2 6 0 36 2 6 0 37 2 6 0 38 2 6 0 39 2 6 0 41 2 6 0 43 2 6 0 44 2 6 0 45 2 6 0 46 2 6 0 123 2 6 0 124 2 6 0 125 2 6 0 126 2 6 0 127 2 6 0 128 2 6 1 88] 
#[1 2 10 0 2 2 10 0 4 2 10 0 5 2 10 0 6 2 10 0 7 2 10 0 9 2 10 0 11 2 10 0 14 2 10 0 15 2 10 0 18 2 10 0 23 2 10 0 25 2 10 0 26 2 10 0 28 2 10 0 29 2 10 0 30 2 10 0 31 2 10 0 32 2 10 0 33 2 10 0 34 2 10 0 36 2 10 0 37 2 10 0 38 2 10 0 39 2 10 0 41 2 10 0 43 2 10 0 44 2 10 0 45 2 10 0 46 7 17 0 123 2 10 0 124 2 10 0 125 7 17 0 126 2 10 0 127 2 10 0 128 7 17 0 178 2 10 1 88] 
#[1 2 14 0 2 2 14 0 4 2 14 0 5 2 14 0 6 2 14 0 7 2 14 0 9 2 14 0 11 2 14 0 14 2 14 0 15 2 14 0 18 2 14 0 23 2 14 0 25 2 14 0 26 2 14 0 28 7 21 0 29 7 25 0 30 2 14 0 31 2 14 0 32 7 29 0 33 2 14 0 34 2 14 0 36 2 14 0 37 2 14 0 38 2 14 0 39 2 14 0 41 2 14 0 43 2 14 0 44 2 14 0 45 2 14 0 46 0 131 0 124 2 14 0 125 2 14 0 127 2 14 0 128 2 14 1 88] 
#[1 7 37 0 2 2 18 0 4 2 18 0 5 2 18 0 6 2 18 0 7 2 18 0 9 2 18 0 11 2 18 0 14 2 18 0 15 2 18 0 18 2 18 0 23 2 18 0 25 2 18 0 26 2 18 0 28 2 18 0 31 7 41 0 32 2 18 0 34 2 18 0 36 2 18 0 37 2 18 0 38 2 18 0 39 2 18 0 41 2 18 0 43 2 18 0 44 2 18 0 45 2 18 0 46 2 18 0 124 2 18 0 125 2 18 0 127 2 18 0 128 2 18 1 88] 
#[1 2 22 0 4 7 45 0 5 2 22 0 6 2 22 0 7 2 22 0 9 2 22 0 11 2 22 0 14 2 22 0 15 2 22 0 18 2 22 0 23 2 22 0 25 2 22 0 26 2 22 0 28 2 22 0 31 2 22 0 34 2 22 0 36 2 22 0 37 2 22 0 38 2 22 0 39 2 22 0 41 2 22 0 43 2 22 0 44 2 22 0 45 2 22 0 46 2 22 0 124 2 22 0 125 2 22 0 127 2 22 0 128 2 22 1 88] 
#[1 2 26 0 4 2 26 0 6 2 26 0 7 2 26 0 9 2 26 0 11 2 26 0 14 2 26 0 15 2 26 0 18 2 26 0 23 2 26 0 25 2 26 0 26 2 26 0 28 2 26 0 31 2 26 0 34 2 26 0 36 7 49 0 37 2 26 0 38 2 26 0 39 2 26 0 41 2 26 0 43 2 26 0 44 2 26 0 45 2 26 0 46 2 26 0 124 2 26 0 125 2 26 0 127 2 26 0 128 2 26 1 88] 
#[1 2 30 0 4 2 30 0 6 2 30 0 7 2 30 0 9 2 30 0 11 2 30 0 14 2 30 0 15 2 30 0 18 2 30 0 23 2 30 0 25 2 30 0 26 2 30 0 28 2 30 0 31 2 30 0 34 2 30 0 36 2 30 0 38 2 30 0 39 2 30 0 41 7 53 0 43 2 30 0 44 2 30 0 45 2 30 0 46 2 30 0 124 2 30 0 125 2 30 0 127 2 30 0 128 2 30 1 88] 
#[1 2 34 0 4 7 57 0 6 2 34 0 7 2 34 0 9 2 34 0 11 2 34 0 14 2 34 0 15 2 34 0 18 2 34 0 23 2 34 0 25 2 34 0 26 2 34 0 28 2 34 0 31 2 34 0 34 2 34 0 36 2 34 0 38 7 61 0 39 2 34 0 41 2 34 0 44 2 34 0 45 2 34 0 46 2 34 0 124 2 34 0 125 2 34 0 127 2 34 0 128 2 34 1 88] 
#[1 7 121 0 4 7 121 0 7 2 38 0 9 7 121 0 11 7 121 0 14 2 38 0 15 7 121 0 18 2 38 0 23 7 121 0 25 2 38 0 26 2 38 0 28 7 121 0 31 7 93 0 34 2 38 0 36 7 121 0 38 7 101 0 41 7 121 0 44 7 109 0 45 2 38 0 46 2 38 0 124 2 38 0 125 7 121 0 127 7 121 0 128 7 121 0 188 2 38 1 88] 
#[0 2 42 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 0 125 1 88] 
#[0 2 46 0 9 0 15 0 26 0 28 0 36 1 88] 
#[1 7 125 0 15 7 129 0 28] 
#[0 0 0 1 88] 
#[0 2 50 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 2 54 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 2 58 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 2 62 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 2 66 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 2 70 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 2 74 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 2 78 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 5 17 0 28 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 5 21 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 226 0 5 0 226 0 6 0 135 0 8 0 226 0 9 0 226 0 10 0 226 0 15 0 226 0 23 0 226 0 27 0 226 0 28 0 226 0 35 6 145 0 42 0 226 0 47 0 226 0 49 0 226 0 52 0 226 0 53 0 226 0 57 0 226 0 58 0 226 0 59 0 226 0 60 0 226 0 61 0 226 0 62 0 226 0 65 0 226 0 69 0 226 0 72 0 226 0 73 0 226 0 74 0 226 0 77 0 226 0 79 0 226 0 82 0 226 0 83 0 226 0 84 0 226 0 85 0 226 0 90 0 226 0 95 0 226 0 98 0 226 0 99 0 226 0 101 0 226 0 104 0 226 0 108 0 226 0 112 0 226 0 114 0 226 0 115 0 226 0 116 0 226 0 118 0 226 0 119 0 226 0 120 0 226 0 121 0 226 0 125 0 226 0 129 7 137 1 29] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 7 141 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 5 65 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 7 145 0 192 7 149 0 193 7 153 0 194 7 157 0 196 7 161 0 198 7 165 0 202 1 9 0 211 7 169 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 5 73 0 246 5 73 0 247 5 77 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 7 173 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 5 93 0 8 1 46 0 15 1 46 0 28 7 177 0 31 6 145 0 42 5 129 1 25 5 129 1 26 5 129 1 29] 
#[1 1 114 0 5 1 114 0 6 0 139 0 8 1 114 0 9 1 114 0 10 1 114 0 15 1 114 0 23 1 114 0 27 1 114 0 28 1 114 0 35 6 145 0 42 1 114 0 47 1 114 0 49 1 114 0 52 1 114 0 53 1 114 0 57 1 114 0 58 1 114 0 59 1 114 0 60 1 114 0 61 1 114 0 62 1 114 0 65 1 114 0 69 1 114 0 72 1 114 0 73 1 114 0 74 1 114 0 77 1 114 0 79 1 114 0 82 1 114 0 83 1 114 0 84 1 114 0 85 1 114 0 90 1 114 0 95 1 114 0 98 1 114 0 99 1 114 0 101 1 114 0 104 1 114 0 108 1 114 0 112 1 114 0 114 1 114 0 115 1 114 0 116 1 114 0 118 1 114 0 119 1 114 0 120 1 114 0 121 1 114 0 125 1 114 0 129 7 185 1 29] 
#[0 2 82 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 2 86 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 0 125 1 88] 
#[0 2 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 94 0 2 2 94 0 3 2 94 0 4 2 94 0 5 2 94 0 6 2 94 0 7 2 94 0 8 2 94 0 9 2 94 0 10 2 94 0 11 2 94 0 12 2 94 0 13 2 94 0 14 2 94 0 15 2 94 0 16 2 94 0 17 2 94 0 18 2 94 0 19 2 94 0 20 2 94 0 21 2 94 0 22 2 94 0 23 2 94 0 24 2 94 0 25 2 94 0 26 2 94 0 28 2 94 0 29 2 94 0 30 2 94 0 31 2 94 0 32 2 94 0 33 2 94 0 34 2 94 0 35 2 94 0 36 2 94 0 37 2 94 0 38 2 94 0 39 2 94 0 41 2 94 0 43 2 94 0 44 2 94 0 45 2 94 0 46 2 94 0 123 2 94 0 124 2 94 0 125 2 94 0 126 2 94 0 127 2 94 0 128 7 189 0 134 2 94 1 88] 
#[0 2 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 5 225 0 186 5 225 0 187 5 225 0 189 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 5 233 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 5 225 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 1 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 5 253 0 5 6 21 0 31 6 5 0 36 6 9 0 107 6 13 0 129 6 17 0 152 6 21 0 153 6 25 0 154 6 29 0 155 6 29 0 156 6 29 0 157] 
#[0 1 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 0 49 0 47 0 141 0 90 4 241 0 106 4 245 0 129 4 249 0 147 4 253 0 220 4 253 1 30 4 249 1 50 1 169 1 57 1 173 1 58 5 1 1 63 4 249 1 64 1 189 1 66] 
#[1 7 125 0 15 0 0 1 88] 
#[1 7 133 0 8 6 145 0 42 7 137 1 29] 
#[1 7 181 0 8 6 145 0 42 7 185 1 29] 
#[1 2 110 0 2 2 110 0 3 2 110 0 4 2 110 0 5 2 110 0 6 2 110 0 7 2 110 0 8 2 110 0 9 2 110 0 10 2 110 0 11 2 110 0 12 2 110 0 13 2 110 0 14 2 110 0 15 2 110 0 16 2 110 0 17 2 110 0 18 2 110 0 19 2 110 0 20 2 110 0 21 2 110 0 22 2 110 0 23 2 110 0 24 2 110 0 25 2 110 0 26 2 110 0 27 2 110 0 28 2 110 0 29 2 110 0 30 2 110 0 31 2 110 0 32 2 110 0 33 2 110 0 34 0 143 0 35 2 110 0 36 2 110 0 37 2 110 0 38 2 110 0 39 2 110 0 41 2 110 0 42 2 110 0 43 2 110 0 44 2 110 0 45 2 110 0 46 2 110 0 47 0 147 0 49 2 110 0 65 2 110 0 76 2 110 0 90 2 110 0 91 2 110 0 111 2 110 0 123 2 110 0 124 2 110 0 125 2 110 0 126 2 110 0 127 2 110 0 128 2 110 0 129 5 73 0 246 5 73 0 247 2 110 1 88] 
#[1 2 114 0 2 2 114 0 3 2 114 0 4 2 114 0 5 2 114 0 6 2 114 0 7 2 114 0 8 2 114 0 9 2 114 0 10 2 114 0 11 2 114 0 12 2 114 0 13 2 114 0 14 2 114 0 15 2 114 0 16 2 114 0 17 2 114 0 18 2 114 0 19 2 114 0 20 2 114 0 21 2 114 0 22 2 114 0 23 2 114 0 24 2 114 0 25 2 114 0 26 2 114 0 27 2 114 0 28 2 114 0 29 2 114 0 30 2 114 0 31 2 114 0 32 2 114 0 33 2 114 0 34 0 151 0 35 2 114 0 36 2 114 0 37 2 114 0 38 2 114 0 39 2 114 0 41 2 114 0 42 2 114 0 43 2 114 0 44 2 114 0 45 2 114 0 46 2 114 0 47 0 155 0 49 2 114 0 65 2 114 0 76 2 114 0 90 2 114 0 91 2 114 0 111 2 114 0 123 2 114 0 124 2 114 0 125 2 114 0 126 2 114 0 127 2 114 0 128 2 114 0 129 5 73 0 246 5 73 0 247 2 114 1 88] 
#[1 4 237 0 10 0 49 0 47 0 141 0 90 7 193 0 106 7 197 0 129 4 249 0 147 4 249 1 50 1 169 1 57 1 173 1 58 7 201 1 63 4 249 1 64 1 189 1 66] 
#[0 5 29 0 27] 
#[0 5 33 0 27] 
#[0 7 205 0 9] 
#[1 0 79 0 8 1 54 0 9 1 54 0 15 1 54 0 23 1 54 0 26 1 54 0 28 1 54 0 31 5 161 0 35 1 54 0 42 1 54 0 76 1 54 0 91 1 54 0 111 1 54 0 124 7 209 1 7] 
#[1 2 118 0 2 2 118 0 3 2 118 0 4 2 118 0 5 2 118 0 6 2 118 0 7 2 118 0 8 2 118 0 9 2 118 0 10 2 118 0 11 2 118 0 12 2 118 0 13 2 118 0 14 2 118 0 15 2 118 0 16 2 118 0 17 2 118 0 18 2 118 0 19 2 118 0 20 2 118 0 21 2 118 0 22 2 118 0 23 2 118 0 24 2 118 0 25 2 118 0 26 2 118 0 27 2 118 0 28 2 118 0 29 2 118 0 30 2 118 0 31 2 118 0 32 2 118 0 33 2 118 0 34 0 159 0 35 2 118 0 36 2 118 0 37 2 118 0 38 2 118 0 39 2 118 0 41 2 118 0 42 2 118 0 43 2 118 0 44 2 118 0 45 2 118 0 46 2 118 0 47 0 163 0 49 0 85 0 61 2 118 0 65 2 118 0 76 2 118 0 90 2 118 0 91 2 118 0 111 0 205 0 120 2 118 0 123 2 118 0 124 2 118 0 125 2 118 0 126 2 118 0 127 2 118 0 128 2 118 0 129 5 73 0 246 5 73 0 247 7 213 1 10 3 169 1 11 2 118 1 88] 
#[0 2 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 2 126 0 2 2 126 0 3 2 126 0 4 2 126 0 5 2 126 0 6 2 126 0 7 2 126 0 8 2 126 0 9 2 126 0 10 2 126 0 11 2 126 0 12 2 126 0 13 2 126 0 14 2 126 0 15 2 126 0 16 2 126 0 17 2 126 0 18 2 126 0 19 2 126 0 20 2 126 0 21 2 126 0 22 2 126 0 23 2 126 0 24 2 126 0 25 2 126 0 26 2 126 0 27 2 126 0 28 2 126 0 29 2 126 0 30 2 126 0 31 2 126 0 32 2 126 0 33 2 126 0 34 2 126 0 35 2 126 0 36 2 126 0 37 2 126 0 38 2 126 0 39 2 126 0 41 2 126 0 42 2 126 0 43 2 126 0 44 2 126 0 45 2 126 0 46 2 126 0 47 2 126 0 49 0 85 0 61 2 126 0 65 2 126 0 76 2 126 0 88 2 126 0 90 2 126 0 91 2 126 0 109 2 126 0 111 0 205 0 120 2 126 0 123 2 126 0 124 2 126 0 125 2 126 0 126 2 126 0 127 2 126 0 128 2 126 0 129 7 217 1 10 3 169 1 11 2 126 1 88] 
#[0 2 130 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124] 
#[1 0 49 0 47 0 141 0 90 7 193 0 106 7 197 0 129 4 249 0 147 4 249 1 50 1 169 1 57 1 173 1 58 7 201 1 63 4 249 1 64 1 189 1 66] 
#[1 2 134 0 15 2 134 0 36 7 221 0 129 7 225 0 248 7 229 0 249 7 233 0 250 7 237 0 251 7 241 0 252] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 158 0 27 0 158 0 28 0 167 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 158 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 158 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 158 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 158 0 123 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128 0 158 0 129 0 158 1 88] 
#[0 2 138 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 142 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 7 245 0 186 7 245 0 190 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 7 249 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 7 253 0 134] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 8 1 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 8 5 0 186 8 5 0 187 8 5 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 8 5 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 2 146 0 26 0 27 0 35 0 42 0 49 0 65 0 129] 
#[0 2 150 0 26 0 27 0 35 0 42 0 49 0 65 0 129] 
#[1 2 154 0 2 2 154 0 3 2 154 0 4 2 154 0 5 2 154 0 6 2 154 0 7 2 154 0 8 2 154 0 9 2 154 0 10 2 154 0 11 2 154 0 12 2 154 0 13 2 154 0 14 2 154 0 15 2 154 0 16 2 154 0 17 2 154 0 18 2 154 0 19 2 154 0 20 2 154 0 21 2 154 0 22 2 154 0 23 2 154 0 24 2 154 0 25 2 154 0 26 0 171 0 27 2 154 0 28 0 175 0 29 2 154 0 30 2 154 0 31 2 154 0 32 2 154 0 33 2 154 0 34 2 154 0 35 2 154 0 36 2 154 0 37 2 154 0 38 2 154 0 39 2 154 0 41 2 154 0 42 2 154 0 43 2 154 0 44 2 154 0 45 2 154 0 46 2 154 0 47 2 154 0 49 2 154 0 52 2 154 0 53 2 154 0 57 2 154 0 58 2 154 0 59 2 154 0 60 2 154 0 61 2 154 0 62 2 154 0 65 2 154 0 69 2 154 0 72 2 154 0 73 2 154 0 74 2 154 0 76 2 154 0 77 2 154 0 79 2 154 0 82 2 154 0 83 2 154 0 84 2 154 0 85 2 154 0 90 2 154 0 91 2 154 0 95 2 154 0 98 2 154 0 99 2 154 0 101 2 154 0 104 2 154 0 108 2 154 0 111 2 154 0 112 2 154 0 114 2 154 0 115 2 154 0 116 2 154 0 118 2 154 0 119 2 154 0 120 2 154 0 121 2 154 0 123 2 154 0 124 2 154 0 125 2 154 0 126 2 154 0 127 2 154 0 128 2 154 0 129 2 154 1 88] 
#[1 8 9 0 106 8 13 0 129 8 17 1 63 1 189 1 66] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 8 21 0 205 8 21 0 206 8 21 0 207 8 21 0 208 8 21 0 209 8 21 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 8 21 0 225 1 61 0 226 8 21 0 233 8 21 0 234 8 21 0 235 8 21 0 237 8 21 0 239 8 21 0 241 8 21 0 242 8 21 0 243 8 21 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 8 21 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 8 21 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 8 21 1 70 8 21 1 71] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 8 25 0 42 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 8 29 0 205 8 29 0 206 8 29 0 207 8 29 0 208 8 29 0 209 8 29 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 8 29 0 225 1 61 0 226 8 29 0 233 8 29 0 234 8 29 0 235 8 29 0 237 8 29 0 239 8 29 0 241 8 29 0 242 8 29 0 243 8 29 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 8 29 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 8 29 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 8 29 1 70 8 29 1 71] 
#[1 8 33 0 42 8 37 0 129 8 41 0 236] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 2 158 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 8 45 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 0 241 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 0 241 0 225 1 61 0 226 0 241 0 233 0 241 0 234 0 241 0 235 0 241 0 237 8 49 0 238 0 241 0 239 0 241 0 241 0 241 0 242 0 241 0 243 0 241 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 0 241 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 0 241 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 0 241 1 70 0 241 1 71] 
#[1 2 162 0 27 8 53 0 31 2 162 0 42] 
#[1 8 57 0 27 8 61 0 42] 
#[0 2 166 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 186 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 65 0 9] 
#[0 2 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 222 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 69 0 36] 
#[0 3 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 14 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 18 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 22 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 26 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 30 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 3 46 0 2 3 46 0 3 3 46 0 4 3 46 0 5 3 46 0 6 3 46 0 7 3 46 0 8 3 46 0 9 3 46 0 10 3 46 0 11 3 46 0 12 3 46 0 13 3 46 0 14 3 46 0 15 3 46 0 16 3 46 0 17 3 46 0 18 3 46 0 19 3 46 0 20 3 46 0 21 3 46 0 22 3 46 0 23 3 46 0 24 3 46 0 25 3 46 0 26 3 46 0 28 3 46 0 29 3 46 0 30 3 46 0 31 3 46 0 32 3 46 0 33 3 46 0 34 0 179 0 35 3 46 0 36 3 46 0 37 3 46 0 38 3 46 0 39 3 46 0 41 3 46 0 42 3 46 0 43 3 46 0 44 3 46 0 45 3 46 0 46 3 46 0 49 3 46 0 76 3 46 0 91 3 46 0 111 3 46 0 123 3 46 0 124 3 46 0 125 3 46 0 126 3 46 0 127 3 46 0 128 3 46 1 88] 
#[1 3 50 0 2 3 50 0 3 3 50 0 4 3 50 0 5 3 50 0 6 3 50 0 7 3 50 0 8 3 50 0 9 3 50 0 10 3 50 0 11 3 50 0 12 3 50 0 13 3 50 0 14 3 50 0 15 3 50 0 16 3 50 0 17 3 50 0 18 3 50 0 19 3 50 0 20 3 50 0 21 3 50 0 22 3 50 0 23 3 50 0 24 3 50 0 25 3 50 0 26 3 50 0 28 3 50 0 29 3 50 0 30 3 50 0 31 3 50 0 32 3 50 0 33 3 50 0 34 0 183 0 35 3 50 0 36 3 50 0 37 3 50 0 38 3 50 0 39 3 50 0 41 3 50 0 42 3 50 0 43 3 50 0 44 3 50 0 45 3 50 0 46 3 50 0 49 3 50 0 76 3 50 0 91 3 50 0 111 3 50 0 123 3 50 0 124 3 50 0 125 3 50 0 126 3 50 0 127 3 50 0 128 3 50 1 88] 
#[0 3 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 62 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 66 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 70 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 81 0 129] 
#[0 3 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 8 85 0 106 8 89 0 129 4 253 0 220 4 253 1 30 8 93 1 63 1 189 1 66] 
#[1 3 78 0 2 3 78 0 3 3 78 0 4 3 78 0 5 3 78 0 6 3 78 0 7 3 78 0 8 3 78 0 9 3 78 0 10 3 78 0 11 3 78 0 12 3 78 0 13 3 78 0 14 3 78 0 15 3 78 0 16 3 78 0 17 3 78 0 18 3 78 0 19 3 78 0 20 3 78 0 21 3 78 0 22 3 78 0 23 3 78 0 24 3 78 0 25 3 78 0 26 0 187 0 27 3 78 0 28 3 78 0 29 3 78 0 30 3 78 0 31 3 78 0 32 3 78 0 33 3 78 0 34 0 191 0 35 3 78 0 36 3 78 0 37 3 78 0 38 3 78 0 39 3 78 0 41 3 78 0 42 3 78 0 43 3 78 0 44 3 78 0 45 3 78 0 46 3 78 0 47 0 195 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 199 0 65 0 97 0 69 0 101 0 72 3 78 0 76 0 113 0 77 0 125 0 83 0 129 0 84 3 78 0 90 3 78 0 91 0 149 0 98 0 153 0 99 0 165 0 104 3 78 0 111 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 78 0 123 3 78 0 124 3 78 0 125 3 78 0 126 3 78 0 127 3 78 0 128 0 203 0 129 4 177 0 149 4 181 0 215 4 181 0 216 8 97 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 8 101 0 245 1 105 0 246 1 105 0 247 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69 3 78 1 88] 
#[1 3 82 0 2 3 82 0 3 3 82 0 4 0 207 0 5 0 211 0 6 3 82 0 7 3 82 0 8 3 82 0 9 0 215 0 10 3 82 0 11 3 82 0 12 3 82 0 13 3 82 0 14 3 82 0 15 3 82 0 16 3 82 0 17 3 82 0 18 3 82 0 19 3 82 0 20 3 82 0 21 3 82 0 22 3 82 0 23 3 82 0 24 3 82 0 25 3 82 0 26 0 37 0 27 3 82 0 28 3 82 0 29 3 82 0 30 3 82 0 31 3 82 0 32 3 82 0 33 3 82 0 34 3 82 0 35 3 82 0 36 3 82 0 37 3 82 0 38 3 82 0 39 3 82 0 41 3 82 0 42 3 82 0 43 3 82 0 44 3 82 0 45 3 82 0 46 3 82 0 49 0 93 0 65 3 82 0 76 3 82 0 91 3 82 0 111 3 82 0 123 3 82 0 124 3 82 0 125 3 82 0 126 3 82 0 127 3 82 0 128 3 185 0 129 8 105 0 149 3 145 0 220 3 149 0 221 8 109 1 9 3 145 1 30 8 113 1 52 3 145 1 63 1 189 1 66 3 82 1 88] 
#[1 5 41 0 26 0 37 0 27 0 45 0 35 0 250 0 42 0 53 0 49 0 93 0 65 8 117 0 129 5 49 0 149 3 145 0 220 3 149 0 221 5 53 0 227 8 121 0 245 1 105 0 246 1 105 0 247 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 3 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 8 125 0 186 8 125 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 8 129 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 8 133 0 106 1 17 0 108 0 177 0 112 8 137 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 8 141 0 124 3 185 0 129 4 177 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 1 9 1 11 8 161 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 8 157 1 60 8 161 1 61 8 161 1 62 1 37 1 63 1 189 1 66 1 9 1 69] 
#[0 3 94 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 8 169 0 106 8 173 0 129 8 177 1 63 1 189 1 66] 
#[1 0 219 0 47 0 223 0 90 0 22 0 106 0 227 0 129 8 185 0 147 8 185 1 50 1 169 1 57 1 173 1 58 8 185 1 63 8 185 1 64 1 189 1 66] 
#[1 0 37 0 27 0 93 0 65 8 193 0 129 8 197 0 149 3 145 0 220 3 149 0 221 8 201 0 231 8 205 0 232 3 145 1 30 3 145 1 63 1 189 1 66] 
#[1 0 37 0 27 0 93 0 65 3 185 0 129 8 209 0 149 3 145 0 220 3 149 0 221 3 145 1 30 3 145 1 63 1 189 1 66] 
#[1 0 158 0 27 0 162 0 29 8 213 0 31 0 45 0 35 0 53 0 49 8 217 0 245 1 105 0 246 1 105 0 247] 
#[1 0 49 0 47 0 141 0 90 8 9 0 106 7 197 0 129 8 221 0 147 8 221 1 50 1 169 1 57 1 173 1 58 7 201 1 63 8 221 1 64 1 189 1 66] 
#[1 3 98 0 2 3 98 0 3 3 98 0 4 3 98 0 5 3 98 0 6 3 98 0 7 3 98 0 8 3 98 0 9 3 98 0 10 3 98 0 11 3 98 0 12 3 98 0 13 3 98 0 14 3 98 0 15 3 98 0 16 3 98 0 17 3 98 0 18 3 98 0 19 3 98 0 20 3 98 0 21 3 98 0 22 3 98 0 23 3 98 0 24 3 98 0 25 3 98 0 26 3 98 0 27 3 98 0 28 3 98 0 29 3 98 0 30 3 98 0 31 3 98 0 32 3 98 0 33 3 98 0 34 0 231 0 35 3 98 0 36 3 98 0 37 3 98 0 38 3 98 0 39 3 98 0 41 3 98 0 42 3 98 0 43 3 98 0 44 3 98 0 45 3 98 0 46 3 98 0 47 0 235 0 49 0 85 0 61 3 98 0 65 3 98 0 76 3 98 0 90 3 98 0 91 3 98 0 111 0 205 0 120 3 98 0 123 3 98 0 124 3 98 0 125 3 98 0 126 3 98 0 127 3 98 0 128 3 98 0 129 8 225 0 245 1 105 0 246 1 105 0 247 8 229 1 10 3 169 1 11 3 98 1 88] 
#[1 0 49 0 47 0 141 0 90 8 181 0 129 8 233 0 147 8 233 1 50 1 169 1 57 1 173 1 58 8 237 1 63 8 233 1 64 1 189 1 66] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 43 0 5 0 43 0 6 0 154 0 7 0 43 0 8 0 43 0 9 0 43 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 43 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 43 0 23 0 154 0 24 0 154 0 25 0 43 0 26 0 239 0 27 0 43 0 28 0 47 0 29 0 154 0 30 0 43 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 43 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 43 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 158 0 47 0 43 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 154 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 154 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 154 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 154 0 123 0 154 0 124 0 43 0 125 0 154 0 126 0 154 0 127 0 154 0 128 0 158 0 129 0 154 1 88] 
#[0 3 102 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 106 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 1 102 0 2 1 102 0 3 1 102 0 4 0 95 0 5 0 95 0 6 1 102 0 7 0 95 0 8 0 95 0 9 0 95 0 10 1 102 0 11 1 102 0 12 1 102 0 13 1 102 0 14 0 95 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 22 0 95 0 23 1 102 0 24 1 102 0 25 0 95 0 26 0 243 0 27 0 95 0 28 1 102 0 29 1 102 0 30 0 95 0 31 1 102 0 32 1 102 0 33 1 102 0 34 0 95 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 41 0 95 0 42 1 102 0 43 1 102 0 44 1 102 0 45 1 102 0 46 1 106 0 47 0 95 0 49 1 106 0 52 1 106 0 53 1 106 0 57 1 106 0 58 1 106 0 59 1 106 0 60 1 106 0 61 1 106 0 62 1 106 0 65 1 106 0 69 1 106 0 72 1 106 0 73 1 106 0 74 1 102 0 76 1 106 0 77 1 106 0 79 1 106 0 82 1 106 0 83 1 106 0 84 1 106 0 85 1 106 0 90 1 102 0 91 1 106 0 95 1 106 0 98 1 106 0 99 1 106 0 101 1 106 0 104 1 106 0 108 1 102 0 111 1 106 0 112 1 106 0 114 1 106 0 115 1 106 0 116 1 106 0 118 1 106 0 119 1 106 0 120 1 106 0 121 1 102 0 123 1 102 0 124 0 95 0 125 1 102 0 126 1 102 0 127 1 102 0 128 1 106 0 129 1 102 1 88] 
#[0 3 110 0 5 0 6 0 8 0 10 0 23 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 3 114 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 47 0 49 0 65 0 90 0 124 0 129] 
#[1 3 118 0 5 3 118 0 6 3 118 0 8 3 118 0 9 3 118 0 10 3 118 0 15 3 118 0 23 3 118 0 26 3 118 0 27 3 118 0 28 3 118 0 31 0 247 0 35 3 118 0 47 0 251 0 49 3 118 0 65 3 118 0 90 3 118 0 124 3 118 0 129 5 73 0 246 5 73 0 247] 
#[0 3 122 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 5 85 0 15 8 249 0 28] 
#[1 5 93 0 8 1 46 0 15 5 97 0 26 1 46 0 28 5 101 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 194 8 253 1 24 5 129 1 25 5 129 1 26 5 129 1 29 9 1 1 40 5 145 1 41 5 149 1 53 5 153 1 73] 
#[0 3 126 0 10 0 47 0 90 0 106 0 129] 
#[0 3 130 0 10 0 47 0 90 0 106 0 129] 
#[1 9 5 0 46 9 21 0 129 9 13 0 228 9 17 0 229 9 21 0 230] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 9 25 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 5 41 0 26 0 158 0 27 9 29 0 28 0 162 0 29 3 134 0 42 9 33 0 227] 
#[1 8 9 0 106 9 37 0 129 8 17 1 63 1 189 1 66] 
#[0 3 138 0 42] 
#[1 5 41 0 26 0 37 0 27 0 45 0 35 3 142 0 42 0 53 0 49 0 93 0 65 9 41 0 129 9 45 0 149 3 145 0 220 3 149 0 221 9 49 0 227 5 73 0 246 5 73 0 247 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 3 146 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 9 53 0 86] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 9 57 1 2 1 117 1 3 9 61 1 4 9 61 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 3 150 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 5 85 0 15 9 65 0 28] 
#[1 5 93 0 8 1 46 0 15 5 97 0 26 1 46 0 28 5 101 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 194 9 69 1 24 5 129 1 25 5 129 1 26 5 129 1 29 9 73 1 40 5 145 1 41 5 149 1 53 5 153 1 73] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 9 77 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 3 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 9 81 0 161 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 89 1 27 9 93 1 28 9 89 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 0 37 0 27 0 93 0 65 9 101 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 9 129 1 47 9 121 1 54 9 125 1 55 9 129 1 56 9 113 1 63 1 189 1 66] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 9 133 0 66 9 137 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 141 0 186 9 141 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 141 1 27 9 141 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 141 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 5 105 0 42 2 193 0 43 9 145 0 46 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 149 0 186 9 149 0 187 3 9 0 189 6 45 0 191 3 17 0 192 3 21 0 193 3 25 0 194 6 49 0 195 3 29 0 196 3 33 0 198 3 37 0 202 6 45 0 203 6 45 0 206 6 45 0 207 6 45 0 208 6 45 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 6 45 0 225 1 61 0 226 6 45 0 239 6 45 0 241 6 45 0 242 6 45 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 9 89 1 27 9 153 1 28 9 89 1 29 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 9 149 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 3 158 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[0 3 162 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[1 5 97 0 26 1 253 0 42 9 157 0 194 9 161 1 53] 
#[0 3 166 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 3 170 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 3 174 0 15 0 28] 
#[0 3 178 0 15 0 23 0 28 0 36] 
#[0 3 182 0 15 0 23 0 28 0 36] 
#[1 5 97 0 26 9 165 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 194 9 169 1 24 9 173 1 41 5 149 1 53 5 153 1 73] 
#[0 3 186 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[1 1 253 0 42 9 177 0 194] 
#[0 3 190 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 3 194 0 9 9 181 0 23 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 1 9 1 11 9 185 1 20 9 189 1 21 9 193 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 1 9 1 69] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 9 197 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 9 201 0 186 9 201 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 3 198 0 8 3 198 0 9 3 198 0 15 9 205 0 19 3 198 0 23 3 198 0 26 3 198 0 28 3 198 0 31 3 198 0 35 3 198 0 42 3 198 0 76 3 198 0 91 3 198 0 111 3 198 0 124 9 209 1 8] 
#[0 3 202 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 3 206 0 8 3 206 0 9 3 206 0 15 3 206 0 23 3 206 0 26 3 206 0 28 3 206 0 31 0 255 0 35 3 206 0 42 0 53 0 49 3 206 0 76 3 206 0 91 3 206 0 111 3 206 0 124 5 73 0 246 5 73 0 247] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 9 217 0 28 0 45 0 35 9 221 0 46 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 10 37 0 92 10 37 0 93 10 37 0 94 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 9 237 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 9 241 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 9 245 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 10 25 0 207 10 25 0 209 1 9 0 211 10 1 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 10 25 0 241 10 9 0 245 1 105 0 246 1 105 0 247 10 13 1 4 10 13 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 10 25 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 10 21 1 36 10 25 1 37 10 29 1 38 10 33 1 39 10 37 1 49 0 225 1 50 1 169 1 57 1 173 1 58 10 25 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 10 69 0 92 10 69 0 93 10 69 0 94 10 45 0 118 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 10 49 0 245 1 105 0 246 1 105 0 247 9 113 1 30 10 53 1 45 10 57 1 46 10 65 1 47 10 65 1 48 10 69 1 49 9 113 1 63 1 189 1 66] 
#[1 3 210 0 2 3 210 0 3 3 210 0 4 3 210 0 5 3 210 0 6 3 210 0 7 3 210 0 8 3 210 0 9 3 210 0 10 3 210 0 11 3 210 0 12 3 210 0 13 3 210 0 14 3 210 0 15 3 210 0 16 3 210 0 17 3 210 0 18 3 210 0 19 3 210 0 20 3 210 0 21 3 210 0 22 3 210 0 23 3 210 0 24 3 210 0 25 1 3 0 26 1 3 0 27 3 210 0 28 1 7 0 29 3 210 0 30 3 210 0 31 3 210 0 32 3 210 0 33 3 210 0 34 3 210 0 35 3 210 0 36 3 210 0 37 3 210 0 38 3 210 0 39 3 210 0 41 1 3 0 42 3 210 0 43 3 210 0 44 3 210 0 45 3 210 0 46 3 210 0 47 3 210 0 49 3 210 0 52 3 210 0 53 3 210 0 57 3 210 0 58 3 210 0 59 3 210 0 60 3 210 0 61 3 210 0 62 3 210 0 65 3 210 0 69 3 210 0 72 3 210 0 73 3 210 0 74 1 3 0 76 3 210 0 77 3 210 0 79 3 210 0 82 3 210 0 83 3 210 0 84 3 210 0 85 3 210 0 90 3 210 0 91 3 210 0 95 3 210 0 98 3 210 0 99 3 210 0 101 3 210 0 104 3 210 0 108 3 210 0 111 3 210 0 112 3 210 0 114 3 210 0 115 3 210 0 116 3 210 0 118 3 210 0 119 3 210 0 120 3 210 0 121 3 210 0 123 3 210 0 124 3 210 0 125 3 210 0 126 3 210 0 127 3 210 0 128 3 210 0 129 3 210 1 88] 
#[1 10 73 0 106 10 77 0 129 10 81 1 30 10 85 1 63 1 189 1 66] 
#[1 5 181 0 26 0 37 0 27 0 45 0 35 3 214 0 42 0 53 0 49 0 93 0 65 10 89 0 129 10 93 0 149 3 145 0 220 3 149 0 221 5 73 0 246 5 73 0 247 5 197 1 30 10 97 1 33 10 101 1 44 5 197 1 63 1 189 1 66] 
#[1 3 218 0 26 1 70 0 27 3 218 0 42 3 218 0 76] 
#[1 5 181 0 26 3 222 0 42 10 109 0 76 10 109 1 34 10 113 1 44] 
#[0 3 226 0 42] 
#[1 3 230 0 2 3 230 0 3 3 230 0 4 3 230 0 5 3 230 0 6 3 230 0 7 3 230 0 8 3 230 0 9 3 230 0 10 3 230 0 11 3 230 0 12 3 230 0 13 3 230 0 14 3 230 0 15 3 230 0 16 3 230 0 17 3 230 0 18 3 230 0 19 3 230 0 20 3 230 0 21 3 230 0 22 3 230 0 23 3 230 0 24 3 230 0 25 1 11 0 26 1 11 0 27 3 230 0 28 3 230 0 29 3 230 0 30 3 230 0 31 3 230 0 32 3 230 0 33 3 230 0 34 3 230 0 35 3 230 0 36 3 230 0 37 3 230 0 38 3 230 0 39 3 230 0 41 1 11 0 42 3 230 0 43 3 230 0 44 3 230 0 45 3 230 0 46 3 230 0 47 3 230 0 49 3 230 0 52 3 230 0 53 3 230 0 57 3 230 0 58 3 230 0 59 3 230 0 60 3 230 0 61 3 230 0 62 3 230 0 65 3 230 0 69 3 230 0 72 3 230 0 73 3 230 0 74 1 11 0 76 3 230 0 77 3 230 0 79 3 230 0 82 3 230 0 83 3 230 0 84 3 230 0 85 3 230 0 90 3 230 0 91 3 230 0 95 3 230 0 98 3 230 0 99 3 230 0 101 3 230 0 104 3 230 0 108 3 230 0 111 3 230 0 112 3 230 0 114 3 230 0 115 3 230 0 116 3 230 0 118 3 230 0 119 3 230 0 120 3 230 0 121 3 230 0 123 3 230 0 124 3 230 0 125 3 230 0 126 3 230 0 127 3 230 0 128 3 230 0 129 3 230 1 88] 
#[0 10 117 0 29] 
#[0 10 121 0 29] 
#[0 10 125 0 29] 
#[1 10 129 0 9 7 125 0 15] 
#[1 0 17 0 5 0 21 0 6 10 133 0 8 3 234 0 9 0 29 0 10 3 234 0 15 1 15 0 23 0 37 0 27 3 234 0 28 10 141 0 35 0 93 0 65 3 234 0 124 3 234 0 125 3 185 0 129 8 105 0 149 3 145 0 220 3 149 0 221 10 145 1 7 10 149 1 9 10 153 1 15 10 153 1 16 10 161 1 17 10 153 1 18 10 169 1 19 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 10 173 0 9] 
#[0 3 238 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 3 242 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 10 177 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 10 181 0 163 2 193 0 164 10 181 0 165 10 181 0 171 10 181 0 172 10 181 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 10 185 0 8 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 10 189 0 166 10 193 0 167 4 181 0 215 4 181 0 216 6 129 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 3 246 0 15 3 246 0 36 10 197 0 129] 
#[0 3 250 0 15 0 36] 
#[0 3 254 0 8 0 42] 
#[0 4 2 0 15 0 23 0 36] 
#[1 5 93 0 8 4 6 0 15 4 6 0 23 7 177 0 31 4 6 0 36 6 145 0 42 10 201 1 25 10 201 1 26 10 201 1 29] 
#[0 10 205 0 36] 
#[1 10 209 0 15 4 10 0 36] 
#[1 10 213 0 15 4 14 0 36] 
#[1 4 18 0 15 10 217 0 23 4 18 0 36] 
#[0 4 22 0 15 0 23 0 36] 
#[0 4 26 0 15 0 23 0 36] 
#[0 4 30 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 4 34 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 10 221 0 46 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 10 225 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 10 225 0 203 10 225 0 206 10 225 0 207 10 225 0 208 10 225 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 10 225 0 225 1 61 0 226 10 225 0 239 10 225 0 241 10 225 0 242 10 225 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 10 229 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[0 4 38 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 38 0 9 2 38 0 15 2 38 0 23 2 38 0 26 2 38 0 28 7 93 0 34 2 38 0 36 7 101 0 41 7 109 0 45 2 38 0 46 2 38 0 125] 
#[0 4 42 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 125] 
#[0 10 233 0 26] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 10 237 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[0 4 46 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 10 241 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 10 241 0 203 10 241 0 206 10 241 0 207 10 241 0 208 10 241 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 10 241 0 225 1 61 0 226 10 241 0 239 10 241 0 241 10 241 0 242 10 241 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 5 253 0 5 6 21 0 31 10 245 0 36 6 9 0 107 6 13 0 129 6 17 0 152 6 21 0 153 6 25 0 154 6 29 0 155 6 29 0 156 6 29 0 157] 
#[0 4 50 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 10 249 0 122] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 10 253 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 11 5 0 193 11 5 0 199 11 9 0 200 11 5 0 208 1 9 0 211 11 17 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 11 21 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 11 25 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 11 29 0 186 11 29 0 187 11 29 0 189 11 33 0 197 1 9 0 211 11 37 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 11 41 0 245 1 105 0 246 1 105 0 247 1 9 1 11 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 11 29 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 8 53 0 31] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 11 45 0 161 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 11 49 1 14 9 89 1 27 9 93 1 28 9 89 1 29 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 11 53 0 8 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 11 57 0 167 4 181 0 215 4 181 0 216 6 129 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 4 54 0 2 4 54 0 3 4 54 0 4 4 54 0 5 4 54 0 6 4 54 0 7 11 61 0 8 4 54 0 9 4 54 0 10 4 54 0 11 4 54 0 12 4 54 0 14 4 54 0 15 4 54 0 16 4 54 0 18 4 54 0 20 4 54 0 22 4 54 0 23 4 54 0 24 4 54 0 25 4 54 0 26 4 54 0 28 4 54 0 29 4 54 0 30 4 54 0 31 4 54 0 32 4 54 0 33 4 54 0 34 4 54 0 36 4 54 0 37 4 54 0 38 4 54 0 39 4 54 0 41 6 145 0 42 4 54 0 43 4 54 0 44 4 54 0 45 4 54 0 46 4 54 0 123 4 54 0 124 4 54 0 125 4 54 0 126 4 54 0 127 4 54 0 128 11 65 0 170 11 65 1 29 4 54 1 88] 
#[1 4 58 0 2 4 58 0 3 4 58 0 4 1 19 0 5 1 23 0 6 4 58 0 7 4 58 0 8 4 58 0 9 1 27 0 10 4 58 0 11 4 58 0 12 4 58 0 14 4 58 0 15 4 58 0 16 4 58 0 18 4 58 0 20 4 58 0 22 4 58 0 23 4 58 0 24 4 58 0 25 4 58 0 26 0 37 0 27 4 58 0 28 4 58 0 29 4 58 0 30 4 58 0 31 4 58 0 32 4 58 0 33 4 58 0 34 11 73 0 35 4 58 0 36 4 58 0 37 4 58 0 38 4 58 0 39 4 58 0 41 4 58 0 42 4 58 0 43 4 58 0 44 4 58 0 45 4 58 0 46 0 93 0 65 4 58 0 123 4 58 0 124 4 58 0 125 4 58 0 126 4 58 0 127 4 58 0 128 3 185 0 129 8 105 0 149 11 77 0 168 11 81 0 169 3 145 0 220 3 149 0 221 11 85 1 9 3 145 1 30 3 145 1 63 1 189 1 66 4 58 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 11 89 0 186 11 89 0 187 11 89 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 11 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 11 93 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[0 4 62 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 11 97 0 46 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 89 1 27 9 153 1 28 9 89 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 7 125 0 15 11 101 0 28] 
#[0 11 105 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 5 225 0 186 5 225 0 187 5 225 0 189 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 11 109 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 5 225 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 11 113 0 8] 
#[0 4 66 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 11 117 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 11 29 0 186 11 29 0 187 11 29 0 189 11 121 0 197 1 9 0 211 11 37 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 11 41 0 245 1 105 0 246 1 105 0 247 1 9 1 11 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 11 29 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 70 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 0 125 1 88] 
#[1 11 125 0 56 11 129 1 74 11 133 1 75] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 11 29 0 186 11 29 0 187 11 29 0 189 11 137 0 197 1 9 0 211 11 37 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 11 41 0 245 1 105 0 246 1 105 0 247 1 9 1 11 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 11 29 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 11 141 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 11 141 0 203 11 141 0 206 11 141 0 207 11 141 0 208 11 141 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 11 141 0 225 1 61 0 226 11 141 0 239 11 141 0 241 11 141 0 242 11 141 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 3 194 0 9 9 181 0 23 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 1 9 1 11 11 145 1 20 9 189 1 21 9 193 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 1 9 1 69] 
#[1 1 253 0 42 11 149 0 194] 
#[0 4 74 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 11 153 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 11 157 0 161 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 89 1 27 9 93 1 28 9 89 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 4 82 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 0 37 0 27 11 161 0 47 0 93 0 65 0 141 0 90 11 165 0 106 0 213 0 129 11 169 0 146 0 225 0 147 0 229 0 148 11 173 0 149 11 177 0 162 11 181 0 220 3 149 0 221 11 181 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 37 0 27 11 161 0 47 0 93 0 65 0 141 0 90 11 185 0 106 0 213 0 129 11 189 0 146 0 225 0 147 0 229 0 148 11 173 0 149 11 193 0 162 11 181 0 220 3 149 0 221 11 181 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 11 197 0 186 11 197 0 187 11 197 0 189 3 125 0 219 1 37 0 220 1 41 0 221 11 201 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 11 197 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 11 205 0 186 11 205 0 187 11 205 0 189 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 11 209 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 11 205 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 86 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 11 213 0 163 2 193 0 164 11 213 0 165 11 213 0 171 11 213 0 172 11 213 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 11 217 0 163 2 193 0 164 11 217 0 165 11 217 0 171 11 217 0 172 11 217 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 11 221 0 163 2 193 0 164 11 221 0 165 11 221 0 171 11 221 0 172 11 221 0 173 11 221 0 174 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 11 225 0 163 2 193 0 164 11 225 0 165 11 225 0 171 11 225 0 172 11 225 0 173 11 225 0 174 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 11 229 0 163 2 193 0 164 11 229 0 165 11 229 0 171 11 229 0 172 11 229 0 173 11 229 0 174 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 11 233 0 175 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 11 237 0 175 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 90 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 94 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 11 241 0 176 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 11 245 0 177 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 11 249 0 177 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 11 253 0 177 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 12 1 0 177 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 12 5 0 179 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 12 9 0 179 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 12 13 0 180 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 12 17 0 181 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 12 21 0 182 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 12 25 0 183 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 12 29 0 183 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 98 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 102 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 106 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 110 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 114 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 118 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 122 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 12 33 0 186 12 33 0 187 12 33 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 12 33 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 126 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 12 37 0 184 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 12 41 0 184 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 4 138 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 35 0 40 0 42 0 43 0 47 0 50 0 52 0 53 0 57 0 58 0 59 0 63 0 65 0 67 0 69 0 70 0 75 0 77 0 83 0 84 0 87 0 88 0 89 0 90 0 96 0 98 0 99 0 100 0 103 0 107 0 109 0 110 0 113 0 114 0 116 0 119 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 12 45 0 186 12 45 0 187 3 125 0 219 1 37 0 220 1 41 0 221 12 45 1 27 12 45 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 12 45 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 12 49 0 186 12 49 0 187 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 12 49 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 12 53 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 12 57 0 161 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 89 1 27 9 93 1 28 9 89 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 146 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 1 146 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 4 150 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 4 154 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 4 158 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 4 162 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 4 166 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 4 170 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 9 57 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 4 174 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 141 0 186 9 141 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 141 1 27 9 141 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 141 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 12 61 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 12 65 0 161 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 89 1 27 9 93 1 28 9 89 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 4 178 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 4 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 0 134 1 88] 
#[1 0 49 0 47 0 141 0 90 8 181 0 129 8 233 0 147 8 233 1 50 1 169 1 57 1 173 1 58 12 69 1 63 8 233 1 64 1 189 1 66] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 154 0 5 0 154 0 6 0 154 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 154 0 23 0 154 0 24 0 154 0 25 0 154 0 26 8 241 0 27 0 154 0 28 0 47 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 154 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 49 0 154 0 76 0 154 0 91 0 154 0 111 0 154 0 123 0 154 0 124 0 154 0 125 0 154 0 126 0 154 0 127 0 154 0 128 0 154 1 88] 
#[1 1 102 0 2 1 102 0 3 1 102 0 4 1 102 0 5 1 102 0 6 1 102 0 7 1 102 0 8 1 102 0 9 1 102 0 10 1 102 0 11 1 102 0 12 1 102 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 22 1 102 0 23 1 102 0 24 1 102 0 25 1 102 0 26 8 245 0 27 1 102 0 28 1 102 0 29 1 102 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 41 1 102 0 42 1 102 0 43 1 102 0 44 1 102 0 45 1 102 0 46 1 102 0 49 1 102 0 76 1 102 0 91 1 102 0 111 1 102 0 123 1 102 0 124 1 102 0 125 1 102 0 126 1 102 0 127 1 102 0 128 1 102 1 88] 
#[0 4 186 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 3 198 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124] 
#[0 4 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 4 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 88 0 90 0 91 0 109 0 111 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 4 198 0 8 4 198 0 15 4 198 0 23 4 202 0 27 4 198 0 36] 
#[1 12 73 0 15 12 77 0 36] 
#[1 4 206 0 15 12 81 0 23 4 206 0 36] 
#[1 12 85 0 8 4 210 0 15 4 210 0 23 4 210 0 36 12 89 0 253] 
#[0 4 214 0 8 0 15 0 23 0 36] 
#[0 12 93 0 27] 
#[1 12 97 0 9 12 101 0 23] 
#[1 12 105 0 9 12 109 0 23] 
#[0 12 113 0 9] 
#[1 0 30 0 8 12 117 0 9 0 30 0 42] 
#[1 12 121 0 9 7 125 0 15] 
#[1 1 189 0 129 12 129 1 63 1 189 1 66] 
#[1 4 218 0 2 4 218 0 3 4 218 0 4 4 218 0 5 4 218 0 6 4 218 0 7 4 218 0 8 4 218 0 9 4 218 0 10 4 218 0 11 4 218 0 12 4 218 0 13 4 218 0 14 4 218 0 15 4 218 0 16 4 218 0 17 4 218 0 18 4 218 0 19 4 218 0 20 4 218 0 21 4 218 0 22 4 218 0 23 4 218 0 24 4 218 0 25 4 218 0 26 1 31 0 27 4 218 0 28 1 35 0 29 4 218 0 30 4 218 0 31 4 218 0 32 4 218 0 33 4 218 0 34 4 218 0 35 4 218 0 36 4 218 0 37 4 218 0 38 4 218 0 39 4 218 0 41 4 218 0 42 4 218 0 43 4 218 0 44 4 218 0 45 4 218 0 46 4 218 0 47 4 218 0 49 4 218 0 52 4 218 0 53 4 218 0 57 4 218 0 58 4 218 0 59 4 218 0 60 4 218 0 61 4 218 0 62 4 218 0 65 4 218 0 69 4 218 0 72 4 218 0 73 4 218 0 74 4 218 0 76 4 218 0 77 4 218 0 79 4 218 0 82 4 218 0 83 4 218 0 84 4 218 0 85 4 218 0 90 4 218 0 91 4 218 0 95 4 218 0 98 4 218 0 99 4 218 0 101 4 218 0 104 4 218 0 108 4 218 0 111 4 218 0 112 4 218 0 114 4 218 0 115 4 218 0 116 4 218 0 118 4 218 0 119 4 218 0 120 4 218 0 121 4 218 0 123 4 218 0 124 4 218 0 125 4 218 0 126 4 218 0 127 4 218 0 128 4 218 0 129 4 218 1 88] 
#[0 8 245 0 27] 
#[0 4 222 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 12 133 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 12 137 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 0 241 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 0 241 0 225 1 61 0 226 0 241 0 233 0 241 0 234 0 241 0 235 0 241 0 237 0 241 0 239 0 241 0 241 0 241 0 242 0 241 0 243 0 241 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 0 241 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 0 241 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 0 241 1 70 0 241 1 71] 
#[0 4 226 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 2 158 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 8 45 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 0 241 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 0 241 0 225 1 61 0 226 0 241 0 233 0 241 0 234 0 241 0 235 0 241 0 237 12 141 0 238 0 241 0 239 0 241 0 241 0 241 0 242 0 241 0 243 0 241 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 0 241 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 0 241 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 0 241 1 70 0 241 1 71] 
#[0 2 162 0 27 0 42] 
#[1 8 57 0 27 12 145 0 42] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 4 230 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 5 5 0 205 5 5 0 206 5 5 0 207 5 5 0 208 5 5 0 209 5 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 5 5 0 225 1 61 0 226 5 5 0 233 5 5 0 234 5 5 0 235 5 5 0 237 5 5 0 239 5 5 0 241 5 5 0 242 5 5 0 243 5 5 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 5 5 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 5 5 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 5 5 1 70 5 5 1 71] 
#[0 12 149 0 46] 
#[1 0 37 0 27 0 93 0 65 8 193 0 129 12 153 0 149 3 145 0 220 3 149 0 221 12 157 0 231 8 205 0 232 12 161 0 240 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 12 165 0 129] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 2 158 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 8 45 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 0 241 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 0 241 0 225 1 61 0 226 0 241 0 233 0 241 0 234 0 241 0 235 0 241 0 237 12 169 0 238 0 241 0 239 0 241 0 241 0 241 0 242 0 241 0 243 0 241 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 0 241 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 0 241 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 0 241 1 70 0 241 1 71] 
#[0 4 234 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 4 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 12 173 0 36] 
#[0 12 177 0 36] 
#[0 4 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 189 0 129 12 181 1 63 1 189 1 66] 
#[1 0 158 0 2 0 158 0 3 0 158 0 4 0 158 0 5 0 158 0 6 0 158 0 7 0 158 0 8 0 158 0 9 0 158 0 10 0 158 0 11 0 158 0 12 0 158 0 13 0 158 0 14 0 158 0 15 0 158 0 16 0 158 0 17 0 158 0 18 0 158 0 19 0 158 0 20 0 158 0 21 0 158 0 22 0 158 0 23 0 158 0 24 0 158 0 25 0 158 0 26 0 239 0 27 0 158 0 28 0 167 0 29 0 158 0 30 0 158 0 31 0 158 0 32 0 158 0 33 0 158 0 34 0 158 0 35 0 158 0 36 0 158 0 37 0 158 0 38 0 158 0 39 0 158 0 41 0 158 0 42 0 158 0 43 0 158 0 44 0 158 0 45 0 158 0 46 0 158 0 47 0 158 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 158 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 158 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 158 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 158 0 123 0 158 0 124 0 158 0 125 0 158 0 126 0 158 0 127 0 158 0 128 0 158 0 129 0 158 1 88] 
#[1 1 106 0 2 1 106 0 3 1 106 0 4 1 106 0 5 1 106 0 6 1 106 0 7 1 106 0 8 1 106 0 9 1 106 0 10 1 106 0 11 1 106 0 12 1 106 0 13 1 106 0 14 1 106 0 15 1 106 0 16 1 106 0 17 1 106 0 18 1 106 0 19 1 106 0 20 1 106 0 21 1 106 0 22 1 106 0 23 1 106 0 24 1 106 0 25 1 106 0 26 0 243 0 27 1 106 0 28 1 106 0 29 1 106 0 30 1 106 0 31 1 106 0 32 1 106 0 33 1 106 0 34 1 106 0 35 1 106 0 36 1 106 0 37 1 106 0 38 1 106 0 39 1 106 0 41 1 106 0 42 1 106 0 43 1 106 0 44 1 106 0 45 1 106 0 46 1 106 0 47 1 106 0 49 1 106 0 52 1 106 0 53 1 106 0 57 1 106 0 58 1 106 0 59 1 106 0 60 1 106 0 61 1 106 0 62 1 106 0 65 1 106 0 69 1 106 0 72 1 106 0 73 1 106 0 74 1 106 0 76 1 106 0 77 1 106 0 79 1 106 0 82 1 106 0 83 1 106 0 84 1 106 0 85 1 106 0 90 1 106 0 91 1 106 0 95 1 106 0 98 1 106 0 99 1 106 0 101 1 106 0 104 1 106 0 108 1 106 0 111 1 106 0 112 1 106 0 114 1 106 0 115 1 106 0 116 1 106 0 118 1 106 0 119 1 106 0 120 1 106 0 121 1 106 0 123 1 106 0 124 1 106 0 125 1 106 0 126 1 106 0 127 1 106 0 128 1 106 0 129 1 106 1 88] 
#[0 4 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 4 250 0 2 4 250 0 3 4 250 0 4 4 250 0 5 4 250 0 6 4 250 0 7 4 250 0 8 4 250 0 9 4 250 0 10 4 250 0 11 4 250 0 12 4 250 0 13 4 250 0 14 4 250 0 15 4 250 0 16 4 250 0 17 4 250 0 18 4 250 0 19 4 250 0 20 4 250 0 21 4 250 0 22 4 250 0 23 4 250 0 24 4 250 0 25 4 250 0 26 4 250 0 27 4 250 0 28 4 250 0 29 4 250 0 30 4 250 0 31 4 250 0 32 4 250 0 33 4 250 0 34 1 39 0 35 4 250 0 36 4 250 0 37 4 250 0 38 4 250 0 39 4 250 0 41 4 250 0 42 4 250 0 43 4 250 0 44 4 250 0 45 4 250 0 46 4 250 0 47 1 43 0 49 4 250 0 65 4 250 0 76 4 250 0 90 4 250 0 91 4 250 0 111 4 250 0 123 4 250 0 124 4 250 0 125 4 250 0 126 4 250 0 127 4 250 0 128 4 250 0 129 5 73 0 246 5 73 0 247 4 250 1 88] 
#[1 4 237 0 10 8 9 0 106 12 185 0 129 8 17 1 63 1 189 1 66] 
#[1 4 254 0 2 4 254 0 3 4 254 0 4 1 47 0 5 1 51 0 6 4 254 0 7 4 254 0 8 4 254 0 9 1 55 0 10 4 254 0 11 4 254 0 12 4 254 0 13 4 254 0 14 4 254 0 15 4 254 0 16 4 254 0 17 4 254 0 18 4 254 0 19 4 254 0 20 4 254 0 21 4 254 0 22 4 254 0 23 4 254 0 24 4 254 0 25 4 254 0 26 0 37 0 27 4 254 0 28 4 254 0 29 4 254 0 30 4 254 0 31 4 254 0 32 4 254 0 33 4 254 0 34 4 254 0 35 4 254 0 36 4 254 0 37 4 254 0 38 4 254 0 39 4 254 0 41 4 254 0 42 4 254 0 43 4 254 0 44 4 254 0 45 4 254 0 46 4 254 0 49 0 93 0 65 4 254 0 76 4 254 0 91 4 254 0 111 4 254 0 123 4 254 0 124 4 254 0 125 4 254 0 126 4 254 0 127 4 254 0 128 3 185 0 129 8 105 0 149 3 145 0 220 3 149 0 221 8 109 1 9 3 145 1 30 12 189 1 52 3 145 1 63 1 189 1 66 4 254 1 88] 
#[0 5 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 5 41 0 26 0 158 0 27 0 162 0 29 3 134 0 42 12 193 0 227] 
#[1 5 41 0 26 0 37 0 27 0 45 0 35 3 142 0 42 0 53 0 49 0 93 0 65 12 197 0 129 9 45 0 149 3 145 0 220 3 149 0 221 9 49 0 227 5 73 0 246 5 73 0 247 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 12 201 0 15] 
#[1 5 6 0 15 12 205 0 23 0 50 0 26 0 50 0 27 12 209 0 31 0 50 0 35 0 50 0 42 0 50 0 49 0 50 0 65 5 6 0 124 1 59 0 129] 
#[0 12 217 0 29] 
#[1 5 10 0 15 12 221 0 23 0 37 0 27 12 225 0 31 0 93 0 65 5 10 0 124 12 229 0 129 4 213 0 149 3 145 0 220 3 149 0 221 3 145 1 30 3 145 1 63 1 189 1 66] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 12 233 0 205 12 233 0 206 12 233 0 207 12 233 0 208 12 233 0 209 12 233 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 12 233 0 225 1 61 0 226 12 233 0 233 12 233 0 234 12 233 0 235 12 233 0 237 12 233 0 239 12 233 0 241 12 233 0 242 12 233 0 243 12 233 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 12 233 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 12 233 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 12 233 1 70 12 233 1 71] 
#[1 0 17 0 5 0 21 0 6 12 237 0 8 5 14 0 9 0 29 0 10 5 14 0 15 1 63 0 23 0 37 0 27 12 245 0 31 10 141 0 35 0 49 0 47 0 93 0 65 0 141 0 90 5 14 0 124 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 12 249 1 4 12 249 1 5 1 129 1 6 10 145 1 7 12 253 1 9 1 141 1 13 13 1 1 15 13 1 1 16 10 161 1 17 13 1 1 18 10 169 1 19 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 1 9 0 211 13 5 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 5 73 0 246 5 73 0 247 1 9 1 11 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 1 9 1 69] 
#[0 5 18 0 15 0 124] 
#[1 13 9 0 15 13 13 0 124] 
#[0 5 22 0 15 0 124] 
#[0 5 26 0 15 0 124] 
#[1 1 189 0 129 13 17 1 63 1 189 1 66] 
#[1 5 30 0 2 5 30 0 3 5 30 0 4 5 30 0 5 5 30 0 6 5 30 0 7 5 30 0 8 5 30 0 9 5 30 0 10 5 30 0 11 5 30 0 12 5 30 0 13 5 30 0 14 5 30 0 15 5 30 0 16 5 30 0 17 5 30 0 18 5 30 0 19 5 30 0 20 5 30 0 21 5 30 0 22 5 30 0 23 5 30 0 24 5 30 0 25 5 30 0 26 1 67 0 27 5 30 0 28 1 71 0 29 5 30 0 30 5 30 0 31 5 30 0 32 5 30 0 33 5 30 0 34 5 30 0 35 5 30 0 36 5 30 0 37 5 30 0 38 5 30 0 39 5 30 0 41 5 30 0 42 5 30 0 43 5 30 0 44 5 30 0 45 5 30 0 46 5 30 0 47 5 30 0 49 5 30 0 52 5 30 0 53 5 30 0 57 5 30 0 58 5 30 0 59 5 30 0 60 5 30 0 61 5 30 0 62 5 30 0 65 5 30 0 69 5 30 0 72 5 30 0 73 5 30 0 74 5 30 0 76 5 30 0 77 5 30 0 79 5 30 0 82 5 30 0 83 5 30 0 84 5 30 0 85 5 30 0 90 5 30 0 91 5 30 0 95 5 30 0 98 5 30 0 99 5 30 0 101 5 30 0 104 5 30 0 108 5 30 0 111 5 30 0 112 5 30 0 114 5 30 0 115 5 30 0 116 5 30 0 118 5 30 0 119 5 30 0 120 5 30 0 121 5 30 0 123 5 30 0 124 5 30 0 125 5 30 0 126 5 30 0 127 5 30 0 128 5 30 0 129 5 30 1 88] 
#[1 5 34 0 2 5 34 0 3 5 34 0 4 5 34 0 5 5 34 0 6 5 34 0 7 5 34 0 8 5 34 0 9 5 34 0 10 5 34 0 11 5 34 0 12 5 34 0 13 5 34 0 14 5 34 0 15 5 34 0 16 5 34 0 17 5 34 0 18 5 34 0 19 5 34 0 20 5 34 0 21 5 34 0 22 5 34 0 23 5 34 0 24 5 34 0 25 5 34 0 26 1 75 0 27 5 34 0 28 5 34 0 29 5 34 0 30 5 34 0 31 5 34 0 32 5 34 0 33 5 34 0 34 5 34 0 35 5 34 0 36 5 34 0 37 5 34 0 38 5 34 0 39 5 34 0 41 5 34 0 42 5 34 0 43 5 34 0 44 5 34 0 45 5 34 0 46 5 34 0 47 5 34 0 49 5 34 0 52 5 34 0 53 5 34 0 57 5 34 0 58 5 34 0 59 5 34 0 60 5 34 0 61 5 34 0 62 5 34 0 65 5 34 0 69 5 34 0 72 5 34 0 73 5 34 0 74 5 34 0 76 5 34 0 77 5 34 0 79 5 34 0 82 5 34 0 83 5 34 0 84 5 34 0 85 5 34 0 90 5 34 0 91 5 34 0 95 5 34 0 98 5 34 0 99 5 34 0 101 5 34 0 104 5 34 0 108 5 34 0 111 5 34 0 112 5 34 0 114 5 34 0 115 5 34 0 116 5 34 0 118 5 34 0 119 5 34 0 120 5 34 0 121 5 34 0 123 5 34 0 124 5 34 0 125 5 34 0 126 5 34 0 127 5 34 0 128 5 34 0 129 5 34 1 88] 
#[1 0 154 0 2 0 154 0 3 0 154 0 4 0 154 0 5 0 154 0 6 0 154 0 7 0 154 0 8 0 154 0 9 0 154 0 10 0 154 0 11 0 154 0 12 0 154 0 13 0 154 0 14 0 154 0 15 0 154 0 16 0 154 0 17 0 154 0 18 0 154 0 19 0 154 0 20 0 154 0 21 0 154 0 22 0 154 0 23 0 154 0 24 0 154 0 25 0 154 0 26 0 154 0 28 0 47 0 29 0 154 0 30 0 154 0 31 0 154 0 32 0 154 0 33 0 154 0 34 0 154 0 35 0 154 0 36 0 154 0 37 0 154 0 38 0 154 0 39 0 154 0 41 0 154 0 42 0 154 0 43 0 154 0 44 0 154 0 45 0 154 0 46 0 154 0 49 0 154 0 76 0 154 0 91 0 154 0 111 0 154 0 123 0 154 0 124 0 154 0 125 0 154 0 126 0 154 0 127 0 154 0 128 0 154 1 88] 
#[0 13 21 0 28] 
#[0 1 102 0 28] 
#[1 0 158 0 27 5 38 0 28 0 162 0 29] 
#[1 8 9 0 106 13 25 0 129 13 29 0 231 8 205 0 232 8 17 1 63 1 189 1 66] 
#[0 13 33 0 28] 
#[0 5 42 0 28] 
#[1 0 49 0 47 0 141 0 90 8 9 0 106 7 197 0 129 13 37 0 147 13 37 1 50 1 169 1 57 1 173 1 58 7 201 1 63 13 37 1 64 1 189 1 66] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 13 41 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 13 45 0 31 0 45 0 35 0 53 0 49 5 73 0 246 5 73 0 247] 
#[0 13 49 0 28] 
#[1 5 46 0 2 5 46 0 3 5 46 0 4 5 46 0 5 5 46 0 6 5 46 0 7 5 46 0 8 5 46 0 9 5 46 0 10 5 46 0 11 5 46 0 12 5 46 0 13 5 46 0 14 5 46 0 15 5 46 0 16 5 46 0 17 5 46 0 18 5 46 0 19 5 46 0 20 5 46 0 21 5 46 0 22 5 46 0 23 5 46 0 24 5 46 0 25 5 46 0 26 5 46 0 27 5 46 0 28 5 46 0 29 5 46 0 30 5 46 0 31 5 46 0 32 5 46 0 33 5 46 0 34 1 79 0 35 5 46 0 36 5 46 0 37 5 46 0 38 5 46 0 39 5 46 0 41 5 46 0 42 5 46 0 43 5 46 0 44 5 46 0 45 5 46 0 46 5 46 0 47 1 83 0 49 0 85 0 61 5 46 0 65 5 46 0 76 5 46 0 90 5 46 0 91 5 46 0 111 0 205 0 120 5 46 0 123 5 46 0 124 5 46 0 125 5 46 0 126 5 46 0 127 5 46 0 128 5 46 0 129 5 73 0 246 5 73 0 247 13 53 1 10 3 169 1 11 5 46 1 88] 
#[0 5 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 5 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 102 0 2 1 102 0 3 1 102 0 4 1 87 0 5 1 87 0 6 1 102 0 7 1 87 0 8 1 87 0 9 1 87 0 10 1 102 0 11 1 102 0 12 1 102 0 13 1 102 0 14 1 87 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 22 1 87 0 23 1 102 0 24 1 102 0 25 1 87 0 26 1 91 0 27 1 87 0 28 1 102 0 29 1 102 0 30 1 87 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 87 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 41 1 87 0 42 1 102 0 43 1 102 0 44 1 102 0 45 1 102 0 46 5 58 0 47 1 87 0 49 5 58 0 52 5 58 0 53 5 58 0 57 5 58 0 58 5 58 0 59 5 58 0 60 5 58 0 61 5 58 0 62 5 58 0 65 5 58 0 69 5 58 0 72 5 58 0 73 5 58 0 74 1 102 0 76 5 58 0 77 5 58 0 79 5 58 0 82 5 58 0 83 5 58 0 84 5 58 0 85 5 58 0 90 1 102 0 91 5 58 0 95 5 58 0 98 5 58 0 99 5 58 0 101 5 58 0 104 5 58 0 108 1 102 0 111 5 58 0 112 5 58 0 114 5 58 0 115 5 58 0 116 5 58 0 118 5 58 0 119 5 58 0 120 5 58 0 121 1 102 0 123 1 102 0 124 1 87 0 125 1 102 0 126 1 102 0 127 1 102 0 128 5 58 0 129 1 102 1 88] 
#[0 5 62 0 10 0 47 0 90 0 106 0 129] 
#[0 5 66 0 10 0 47 0 90 0 106 0 129] 
#[0 5 70 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 5 74 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 5 97 0 26 9 165 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 194 13 61 1 24 9 173 1 41 5 149 1 53 5 153 1 73] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 5 82 0 15 0 31 0 46] 
#[1 13 65 0 15 13 69 0 46] 
#[0 5 86 0 15 0 46] 
#[1 5 90 0 15 13 73 0 31 5 90 0 46] 
#[0 5 94 0 28 0 42] 
#[0 5 98 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 13 77 0 28 5 102 0 42] 
#[1 5 41 0 26 8 241 0 27 0 162 0 29 5 106 0 42 13 81 0 227] 
#[1 5 41 0 26 0 158 0 27 13 85 0 28 0 162 0 29 5 110 0 42 13 89 0 227] 
#[1 8 9 0 106 13 93 0 129 8 17 1 63 1 189 1 66] 
#[0 5 114 0 42] 
#[1 0 37 0 27 0 93 0 65 8 193 0 129 13 97 0 149 3 145 0 220 3 149 0 221 13 101 0 231 8 205 0 232 3 145 1 30 3 145 1 63 1 189 1 66] 
#[1 5 85 0 15 13 105 0 28] 
#[1 5 93 0 8 1 46 0 15 5 97 0 26 1 46 0 28 5 101 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 194 13 109 1 24 5 129 1 25 5 129 1 26 5 129 1 29 13 113 1 40 5 145 1 41 5 149 1 53 5 153 1 73] 
#[0 5 118 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 5 122 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 5 97 0 26 9 165 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 194 13 117 1 24 9 173 1 41 5 149 1 53 5 153 1 73] 
#[0 5 126 0 15 0 28] 
#[0 13 121 0 9] 
#[0 5 130 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 0 125 1 88] 
#[1 5 134 0 9 5 134 0 15 13 125 0 23 5 134 0 46] 
#[1 5 138 0 9 13 129 0 15] 
#[0 5 142 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 0 125 1 88] 
#[1 1 95 0 8 0 158 0 27 0 162 0 29 1 95 0 42] 
#[1 8 9 0 106 8 89 0 129 13 133 1 30 8 93 1 63 1 189 1 66] 
#[1 5 150 0 8 5 150 0 15 5 150 0 23 5 33 0 27 5 150 0 42] 
#[1 5 154 0 8 5 154 0 15 5 154 0 23 1 70 0 27 5 154 0 42] 
#[0 5 158 0 8 0 42] 
#[0 5 162 0 42] 
#[1 13 137 0 15 13 141 0 23 5 166 0 42] 
#[1 13 145 0 8 6 145 0 42 13 149 1 29] 
#[0 13 153 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 13 157 0 28 6 85 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 6 89 0 163 2 193 0 164 6 89 0 165 6 89 0 171 6 89 0 172 6 89 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 5 170 0 15 0 23 0 28 0 36] 
#[1 4 30 0 1 4 30 0 5 4 30 0 6 4 30 0 8 4 30 0 10 4 30 0 12 4 30 0 13 5 174 0 15 4 30 0 16 4 30 0 17 1 99 0 23 4 30 0 26 4 30 0 27 1 99 0 28 4 30 0 35 4 30 0 40 4 30 0 42 4 30 0 43 1 99 0 46 4 30 0 47 4 30 0 49 4 30 0 50 4 30 0 51 4 30 0 52 4 30 0 53 4 30 0 54 4 30 0 55 4 30 0 57 4 30 0 58 4 30 0 59 4 30 0 60 4 30 0 61 4 30 0 62 4 30 0 63 4 30 0 64 4 30 0 65 4 30 0 66 4 30 0 67 4 30 0 68 4 30 0 69 4 30 0 70 4 30 0 72 4 30 0 73 4 30 0 74 4 30 0 75 4 30 0 77 4 30 0 78 4 30 0 79 4 30 0 80 4 30 0 81 4 30 0 82 4 30 0 83 4 30 0 84 4 30 0 85 4 30 0 86 4 30 0 87 4 30 0 88 4 30 0 89 4 30 0 90 4 30 0 92 4 30 0 93 4 30 0 94 4 30 0 95 4 30 0 96 4 30 0 97 4 30 0 98 4 30 0 99 4 30 0 100 4 30 0 101 4 30 0 102 4 30 0 103 4 30 0 104 4 30 0 105 4 30 0 106 4 30 0 107 4 30 0 108 4 30 0 109 4 30 0 110 4 30 0 111 4 30 0 112 4 30 0 113 4 30 0 114 4 30 0 115 4 30 0 116 4 30 0 117 4 30 0 118 4 30 0 119 4 30 0 120 4 30 0 121 4 30 0 122 4 30 0 129 4 30 0 130 4 30 0 132 4 30 0 133 4 30 0 134 4 30 0 135 4 30 0 136 4 30 0 137 4 30 0 138 4 30 1 88] 
#[1 1 103 0 15 5 130 0 23 2 46 0 28 5 130 0 46] 
#[1 13 161 0 15 13 165 0 46] 
#[1 11 125 0 56 13 169 1 74 11 133 1 75] 
#[1 1 253 0 42 13 173 0 194] 
#[1 9 133 0 66 13 177 0 67] 
#[0 5 178 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 5 182 0 15 0 26 0 28 0 31 0 42 0 76 0 91 0 111] 
#[0 5 186 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 5 190 0 9] 
#[0 13 181 0 9] 
#[1 5 194 0 9 13 185 0 15 13 189 0 23] 
#[0 5 198 0 9 0 15 0 23] 
#[1 5 202 0 8 5 202 0 9 5 202 0 15 5 202 0 23 5 202 0 26 5 202 0 28 5 202 0 31 1 107 0 35 5 202 0 42 0 53 0 49 5 202 0 76 5 202 0 91 5 202 0 111 5 202 0 124 13 193 0 245 1 105 0 246 1 105 0 247] 
#[0 13 197 0 36] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 13 201 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 13 205 0 216 13 209 0 218 13 205 0 219 1 37 0 220 1 41 0 221 13 205 0 222 13 205 1 11 1 37 1 30 13 213 1 35 1 37 1 63 1 189 1 66 13 205 1 69] 
#[0 5 206 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 13 217 0 186 13 217 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 5 210 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[0 5 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 5 218 0 26 0 27 0 65 0 118 0 129] 
#[0 5 222 0 26 0 27 0 65 0 118 0 129] 
#[0 5 226 0 26 0 27 0 65 0 118 0 129] 
#[0 13 221 0 29] 
#[1 4 217 0 27 0 93 0 65 4 225 0 114 4 229 0 129 4 233 0 149 3 145 0 220 3 149 0 221 3 145 1 30 3 145 1 63 1 189 1 66] 
#[1 0 158 0 5 0 158 0 6 0 43 0 8 0 158 0 10 0 154 0 15 0 158 0 23 1 111 0 26 0 158 0 27 0 43 0 28 0 162 0 29 0 154 0 31 1 115 0 35 0 154 0 42 0 158 0 47 1 119 0 49 0 158 0 52 0 158 0 53 0 158 0 57 0 158 0 58 0 158 0 59 0 158 0 60 0 158 0 61 0 158 0 62 0 158 0 65 0 158 0 69 0 158 0 72 0 158 0 73 0 158 0 74 0 154 0 76 0 158 0 77 0 158 0 79 0 158 0 82 0 158 0 83 0 158 0 84 0 158 0 85 0 158 0 90 0 154 0 91 0 158 0 95 0 158 0 98 0 158 0 99 0 158 0 101 0 158 0 104 0 158 0 108 0 154 0 111 0 158 0 112 0 158 0 114 0 158 0 115 0 158 0 116 0 158 0 118 0 158 0 119 0 158 0 120 0 158 0 121 0 158 0 129 13 229 0 245 1 105 0 246 1 105 0 247] 
#[0 5 230 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[0 5 234 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 13 233 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 93 0 65 0 141 0 90 9 245 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 13 237 0 245 1 105 0 246 1 105 0 247 13 241 1 4 13 241 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 13 245 1 38 10 33 1 39 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 5 238 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 13 249 0 26 0 37 0 27 13 253 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 9 245 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 1 9 0 211 14 1 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 13 237 0 245 14 5 0 246 14 5 0 247 14 9 1 4 14 9 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 14 13 1 38 10 33 1 39 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69] 
#[1 5 242 0 15 5 97 0 26 5 242 0 28 14 17 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 194 5 125 1 24 14 21 1 26 14 21 1 29 14 25 1 40 5 145 1 41 14 29 1 42 5 149 1 53 5 153 1 73] 
#[0 5 246 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[0 14 33 0 46] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 9 217 0 28 0 45 0 35 5 250 0 46 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 10 37 0 92 10 37 0 93 10 37 0 94 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 9 237 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 9 241 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 9 245 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 10 25 0 207 10 25 0 209 1 9 0 211 10 1 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 10 25 0 241 10 9 0 245 1 105 0 246 1 105 0 247 10 13 1 4 10 13 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 10 25 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 14 37 1 36 10 25 1 37 10 29 1 38 10 33 1 39 10 37 1 49 0 225 1 50 1 169 1 57 1 173 1 58 10 25 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69] 
#[1 14 41 0 15 14 45 0 28] 
#[0 5 254 0 15 0 28] 
#[0 14 49 0 26] 
#[0 6 2 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[1 0 37 0 27 0 93 0 65 14 57 0 92 14 57 0 93 14 57 0 94 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 14 53 1 47 14 53 1 48 14 57 1 49 9 113 1 63 1 189 1 66] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 14 69 0 92 14 69 0 93 14 69 0 94 14 61 0 118 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 5 73 0 246 5 73 0 247 9 113 1 30 14 65 1 47 14 65 1 48 14 69 1 49 9 113 1 63 1 189 1 66] 
#[1 14 73 0 15 6 6 0 42] 
#[1 6 10 0 15 14 77 0 23 6 10 0 42] 
#[0 6 14 0 15 0 23 0 42] 
#[0 6 18 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 14 81 0 118 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 14 85 1 47 14 85 1 48 9 113 1 63 1 189 1 66] 
#[1 1 189 0 129 14 89 1 63 1 189 1 66] 
#[1 6 22 0 2 6 22 0 3 6 22 0 4 6 22 0 5 6 22 0 6 6 22 0 7 6 22 0 8 6 22 0 9 6 22 0 10 6 22 0 11 6 22 0 12 6 22 0 13 6 22 0 14 6 22 0 15 6 22 0 16 6 22 0 17 6 22 0 18 6 22 0 19 6 22 0 20 6 22 0 21 6 22 0 22 6 22 0 23 6 22 0 24 6 22 0 25 1 123 0 26 1 127 0 27 6 22 0 28 1 131 0 29 6 22 0 30 6 22 0 31 6 22 0 32 6 22 0 33 6 22 0 34 6 22 0 35 6 22 0 36 6 22 0 37 6 22 0 38 6 22 0 39 6 22 0 41 1 123 0 42 6 22 0 43 6 22 0 44 6 22 0 45 6 22 0 46 6 22 0 47 6 22 0 49 6 22 0 52 6 22 0 53 6 22 0 57 6 22 0 58 6 22 0 59 6 22 0 60 6 22 0 61 6 22 0 62 6 22 0 65 6 22 0 69 6 22 0 72 6 22 0 73 6 22 0 74 1 123 0 76 6 22 0 77 6 22 0 79 6 22 0 82 6 22 0 83 6 22 0 84 6 22 0 85 6 22 0 90 6 22 0 91 6 22 0 95 6 22 0 98 6 22 0 99 6 22 0 101 6 22 0 104 6 22 0 108 6 22 0 111 6 22 0 112 6 22 0 114 6 22 0 115 6 22 0 116 6 22 0 118 6 22 0 119 6 22 0 120 6 22 0 121 6 22 0 123 6 22 0 124 6 22 0 125 6 22 0 126 6 22 0 127 6 22 0 128 6 22 0 129 6 22 1 88] 
#[0 6 26 0 26 0 42 0 76] 
#[1 6 30 0 2 6 30 0 3 6 30 0 4 6 30 0 5 6 30 0 6 6 30 0 7 6 30 0 8 6 30 0 9 6 30 0 10 6 30 0 11 6 30 0 12 6 30 0 13 6 30 0 14 6 30 0 15 6 30 0 16 6 30 0 17 6 30 0 18 6 30 0 19 6 30 0 20 6 30 0 21 6 30 0 22 6 30 0 23 6 30 0 24 6 30 0 25 1 135 0 26 1 139 0 27 6 30 0 28 6 30 0 29 6 30 0 30 6 30 0 31 6 30 0 32 6 30 0 33 6 30 0 34 6 30 0 35 6 30 0 36 6 30 0 37 6 30 0 38 6 30 0 39 6 30 0 41 1 135 0 42 6 30 0 43 6 30 0 44 6 30 0 45 6 30 0 46 6 30 0 47 6 30 0 49 6 30 0 52 6 30 0 53 6 30 0 57 6 30 0 58 6 30 0 59 6 30 0 60 6 30 0 61 6 30 0 62 6 30 0 65 6 30 0 69 6 30 0 72 6 30 0 73 6 30 0 74 1 135 0 76 6 30 0 77 6 30 0 79 6 30 0 82 6 30 0 83 6 30 0 84 6 30 0 85 6 30 0 90 6 30 0 91 6 30 0 95 6 30 0 98 6 30 0 99 6 30 0 101 6 30 0 104 6 30 0 108 6 30 0 111 6 30 0 112 6 30 0 114 6 30 0 115 6 30 0 116 6 30 0 118 6 30 0 119 6 30 0 120 6 30 0 121 6 30 0 123 6 30 0 124 6 30 0 125 6 30 0 126 6 30 0 127 6 30 0 128 6 30 0 129 6 30 1 88] 
#[1 6 34 0 2 6 34 0 3 6 34 0 4 6 34 0 5 6 34 0 6 6 34 0 7 6 34 0 8 6 34 0 9 6 34 0 10 6 34 0 11 6 34 0 12 6 34 0 13 6 34 0 14 6 34 0 15 6 34 0 16 6 34 0 17 6 34 0 18 6 34 0 19 6 34 0 20 6 34 0 21 6 34 0 22 6 34 0 23 6 34 0 24 6 34 0 25 1 143 0 26 1 143 0 27 6 34 0 28 1 147 0 29 6 34 0 30 6 34 0 31 6 34 0 32 6 34 0 33 6 34 0 34 6 34 0 35 6 34 0 36 6 34 0 37 6 34 0 38 6 34 0 39 6 34 0 41 1 143 0 42 6 34 0 43 6 34 0 44 6 34 0 45 6 34 0 46 6 34 0 47 6 34 0 49 6 34 0 52 6 34 0 53 6 34 0 57 6 34 0 58 6 34 0 59 6 34 0 60 6 34 0 61 6 34 0 62 6 34 0 65 6 34 0 69 6 34 0 72 6 34 0 73 6 34 0 74 1 143 0 76 6 34 0 77 6 34 0 79 6 34 0 82 6 34 0 83 6 34 0 84 6 34 0 85 6 34 0 90 6 34 0 91 6 34 0 95 6 34 0 98 6 34 0 99 6 34 0 101 6 34 0 104 6 34 0 108 6 34 0 111 6 34 0 112 6 34 0 114 6 34 0 115 6 34 0 116 6 34 0 118 6 34 0 119 6 34 0 120 6 34 0 121 6 34 0 123 6 34 0 124 6 34 0 125 6 34 0 126 6 34 0 127 6 34 0 128 6 34 0 129 6 34 1 88] 
#[1 8 9 0 106 14 93 0 129 10 81 1 30 8 93 1 63 1 189 1 66] 
#[1 5 181 0 26 6 38 0 42 14 97 0 76 14 97 1 34 14 101 1 44] 
#[0 6 42 0 42] 
#[0 6 46 0 26 0 42] 
#[1 5 181 0 26 6 50 0 42 14 105 1 44] 
#[0 6 54 0 42] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 14 109 0 125 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 14 113 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 14 129 0 186 14 129 0 190 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 14 129 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 14 125 1 67 14 129 1 68 3 65 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 14 133 0 125 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 14 113 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 14 129 0 186 14 129 0 190 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 14 129 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 14 137 1 67 14 129 1 68 3 65 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 14 141 0 125 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 14 113 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 14 129 0 186 14 129 0 190 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 14 129 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 14 145 1 67 14 129 1 68 3 65 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 6 58 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 0 17 0 5 0 21 0 6 10 133 0 8 3 194 0 9 0 29 0 10 9 181 0 23 0 37 0 27 14 149 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 14 153 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 14 157 1 7 14 161 1 9 1 9 1 11 14 165 1 16 14 169 1 17 9 185 1 20 9 189 1 21 9 193 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 1 9 1 69] 
#[0 6 62 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124 0 125] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 14 173 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 14 177 0 186 14 177 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 6 66 0 8 6 66 0 9 6 66 0 15 9 205 0 19 6 66 0 23 6 66 0 26 6 66 0 28 6 66 0 31 6 66 0 35 6 66 0 42 6 66 0 76 6 66 0 91 6 66 0 111 6 66 0 124 6 66 0 125 14 181 1 8] 
#[1 0 17 0 5 0 21 0 6 1 151 0 8 6 70 0 9 0 29 0 10 6 70 0 15 1 155 0 23 6 70 0 26 0 37 0 27 6 70 0 28 6 70 0 31 10 141 0 35 6 70 0 42 0 93 0 65 6 70 0 76 6 70 0 91 6 70 0 111 6 70 0 124 6 70 0 125 3 185 0 129 8 105 0 149 3 145 0 220 3 149 0 221 14 157 1 7 10 149 1 9 14 185 1 16 14 169 1 17 14 189 1 18 10 169 1 19 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 6 74 0 9 0 15 0 23 0 28 0 124 0 125] 
#[0 6 78 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124 0 125] 
#[1 1 159 0 8 6 82 0 9 6 82 0 15 6 82 0 23 6 82 0 26 6 82 0 28 6 82 0 31 14 193 0 35 6 82 0 42 6 82 0 76 6 82 0 91 6 82 0 111 6 82 0 124 6 82 0 125 14 197 1 7] 
#[0 6 86 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124 0 125] 
#[1 1 163 0 8 6 90 0 9 6 90 0 15 6 90 0 23 6 90 0 26 6 90 0 28 6 90 0 31 14 201 0 35 6 90 0 42 6 90 0 76 6 90 0 91 6 90 0 111 6 90 0 124 6 90 0 125 14 205 1 7] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 14 209 0 163 2 193 0 164 14 209 0 165 14 209 0 171 14 209 0 172 14 209 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 5 253 0 5 6 21 0 31 14 213 0 36 6 9 0 107 6 13 0 129 6 17 0 152 6 21 0 153 6 25 0 154 6 29 0 155 6 29 0 156 6 29 0 157] 
#[0 6 94 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 11 45 0 161 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 14 217 1 14 9 89 1 27 9 93 1 28 9 89 1 29 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 14 221 0 8 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 14 225 0 167 4 181 0 215 4 181 0 216 6 129 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 6 98 0 2 6 98 0 3 6 98 0 4 6 98 0 5 6 98 0 6 6 98 0 7 11 61 0 8 6 98 0 9 6 98 0 10 6 98 0 11 6 98 0 12 6 98 0 14 6 98 0 15 6 98 0 16 6 98 0 18 6 98 0 20 6 98 0 22 6 98 0 23 6 98 0 24 6 98 0 25 6 98 0 26 6 98 0 28 6 98 0 29 6 98 0 30 6 98 0 31 6 98 0 32 6 98 0 33 6 98 0 34 6 98 0 36 6 98 0 37 6 98 0 38 6 98 0 39 6 98 0 41 6 145 0 42 6 98 0 43 6 98 0 44 6 98 0 45 6 98 0 46 6 98 0 123 6 98 0 124 6 98 0 125 6 98 0 126 6 98 0 127 6 98 0 128 14 229 0 170 14 229 1 29 6 98 1 88] 
#[1 5 93 0 8 6 102 0 15 6 102 0 23 7 177 0 31 6 102 0 36 6 145 0 42 14 233 1 25 14 233 1 26 14 233 1 29] 
#[0 6 106 0 15 0 23 0 36] 
#[0 6 110 0 8 0 42] 
#[1 14 237 0 5 6 9 0 107 6 13 0 129 14 241 0 154 6 29 0 155 6 29 0 156 6 29 0 157] 
#[1 14 237 0 5 6 9 0 107 6 13 0 129 14 245 0 155 14 245 0 156 14 245 0 157] 
#[0 6 114 0 15 0 36] 
#[0 6 118 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 6 122 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[0 14 249 0 9] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 14 253 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 14 253 0 203 14 253 0 206 14 253 0 207 14 253 0 208 14 253 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 14 253 0 225 1 61 0 226 14 253 0 239 14 253 0 241 14 253 0 242 14 253 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 15 1 0 124] 
#[0 6 126 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 2 193 0 5 1 167 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 3 254 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 15 5 0 163 2 193 0 164 15 5 0 165 15 5 0 171 15 5 0 172 15 5 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 15 9 0 8] 
#[0 15 13 0 124] 
#[0 6 130 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 28 0 35 0 40 0 43 0 47 0 49 0 50 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 67 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 79 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 15 17 0 28 1 245 0 35 2 193 0 40 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 2 97 0 103 0 165 0 104 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 11 29 0 186 11 29 0 187 11 29 0 189 15 21 0 197 1 9 0 211 11 37 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 11 41 0 245 1 105 0 246 1 105 0 247 1 9 1 11 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 11 29 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 15 25 0 26] 
#[0 6 134 0 1 0 5 0 8 0 10 0 12 0 13 0 16 0 17 0 27 0 28 0 35 0 40 0 43 0 47 0 49 0 50 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 65 0 67 0 69 0 70 0 72 0 73 0 74 0 75 0 77 0 79 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 95 0 96 0 98 0 99 0 100 0 101 0 103 0 104 0 107 0 108 0 109 0 110 0 112 0 113 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 5 17 0 28 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 5 21 1 2 1 117 1 3 15 29 1 4 15 29 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 45 0 35 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 1 9 0 211 15 33 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 5 73 0 246 5 73 0 247 5 77 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69] 
#[0 6 138 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 6 142 0 9 7 125 0 15 6 142 0 28] 
#[0 15 37 0 9] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 15 41 1 4 15 41 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 1 9 0 211 15 45 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 5 73 0 246 5 73 0 247 1 9 1 11 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 1 9 1 69] 
#[0 15 49 0 9] 
#[0 15 53 0 9] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 15 57 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 6 146 0 2 6 146 0 3 6 146 0 4 6 146 0 5 6 146 0 6 6 146 0 7 11 61 0 8 6 146 0 9 6 146 0 10 6 146 0 11 6 146 0 12 6 146 0 14 6 146 0 15 6 146 0 16 6 146 0 18 6 146 0 20 6 146 0 22 6 146 0 23 6 146 0 24 6 146 0 25 6 146 0 26 6 146 0 28 6 146 0 29 6 146 0 30 6 146 0 31 6 146 0 32 6 146 0 33 6 146 0 34 6 146 0 36 6 146 0 37 6 146 0 38 6 146 0 39 6 146 0 41 6 145 0 42 6 146 0 43 6 146 0 44 6 146 0 45 6 146 0 46 6 146 0 123 6 146 0 124 6 146 0 125 6 146 0 126 6 146 0 127 6 146 0 128 15 61 0 170 15 61 1 29 6 146 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 15 65 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 15 69 0 161 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 89 1 27 9 93 1 28 9 89 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 6 150 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 6 154 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 15 73 0 186 15 73 0 187 15 73 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 15 73 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 6 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 6 162 0 2 6 162 0 3 6 162 0 4 6 162 0 5 6 162 0 6 6 162 0 7 6 162 0 8 6 162 0 9 6 162 0 10 6 162 0 11 6 162 0 12 6 162 0 14 6 162 0 15 6 162 0 16 6 162 0 18 6 162 0 20 6 162 0 22 6 162 0 23 6 162 0 24 6 162 0 25 6 162 0 26 6 162 0 28 6 162 0 29 6 162 0 30 6 162 0 31 6 162 0 32 6 162 0 33 6 162 0 34 15 77 0 35 6 162 0 36 6 162 0 37 6 162 0 38 6 162 0 39 6 162 0 41 6 162 0 42 6 162 0 43 6 162 0 44 6 162 0 45 6 162 0 46 6 162 0 123 6 162 0 124 6 162 0 125 6 162 0 126 6 162 0 127 6 162 0 128 6 162 1 88] 
#[1 6 166 0 2 6 166 0 3 6 166 0 4 1 171 0 5 1 175 0 6 6 166 0 7 6 166 0 8 6 166 0 9 1 179 0 10 6 166 0 11 6 166 0 12 6 166 0 14 6 166 0 15 6 166 0 16 6 166 0 18 6 166 0 20 6 166 0 22 6 166 0 23 6 166 0 24 6 166 0 25 6 166 0 26 0 37 0 27 6 166 0 28 6 166 0 29 6 166 0 30 6 166 0 31 6 166 0 32 6 166 0 33 6 166 0 34 11 73 0 35 6 166 0 36 6 166 0 37 6 166 0 38 6 166 0 39 6 166 0 41 6 166 0 42 6 166 0 43 6 166 0 44 6 166 0 45 6 166 0 46 0 93 0 65 6 166 0 123 6 166 0 124 6 166 0 125 6 166 0 126 6 166 0 127 6 166 0 128 3 185 0 129 8 105 0 149 15 81 0 168 11 81 0 169 3 145 0 220 3 149 0 221 11 85 1 9 3 145 1 30 3 145 1 63 1 189 1 66 6 166 1 88] 
#[1 15 85 0 9 7 125 0 15] 
#[0 15 89 0 124] 
#[0 5 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 6 170 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 6 174 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 15 93 0 9] 
#[0 15 97 0 129] 
#[0 15 101 0 124] 
#[0 15 105 0 9] 
#[0 15 109 0 8] 
#[0 6 178 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 6 182 0 1 6 182 0 5 6 182 0 6 6 182 0 8 6 182 0 10 6 182 0 12 6 182 0 13 6 182 0 16 6 182 0 17 6 182 0 23 6 182 0 26 6 182 0 27 6 182 0 28 6 182 0 35 6 182 0 40 6 182 0 42 6 182 0 43 6 182 0 46 6 182 0 47 6 182 0 49 6 182 0 50 6 182 0 51 6 182 0 52 6 182 0 53 6 182 0 54 6 182 0 55 11 125 0 56 6 182 0 57 6 182 0 58 6 182 0 59 6 182 0 60 6 182 0 61 6 182 0 62 6 182 0 63 6 182 0 64 6 182 0 65 6 182 0 66 6 182 0 67 6 182 0 68 6 182 0 69 6 182 0 70 6 182 0 71 6 182 0 72 6 182 0 73 6 182 0 74 6 182 0 75 6 182 0 77 6 182 0 78 6 182 0 79 6 182 0 80 6 182 0 81 6 182 0 82 6 182 0 83 6 182 0 84 6 182 0 85 6 182 0 86 6 182 0 87 6 182 0 88 6 182 0 89 6 182 0 90 6 182 0 92 6 182 0 93 6 182 0 94 6 182 0 95 6 182 0 96 6 182 0 97 6 182 0 98 6 182 0 99 6 182 0 100 6 182 0 101 6 182 0 102 6 182 0 103 6 182 0 104 6 182 0 105 6 182 0 106 6 182 0 107 6 182 0 108 6 182 0 109 6 182 0 110 6 182 0 111 6 182 0 112 6 182 0 113 6 182 0 114 6 182 0 115 6 182 0 116 6 182 0 117 6 182 0 118 6 182 0 119 6 182 0 120 6 182 0 121 6 182 0 122 6 182 0 129 6 182 0 130 6 182 0 132 6 182 0 133 6 182 0 134 6 182 0 135 6 182 0 136 6 182 0 137 6 182 0 138 15 113 1 74 11 133 1 75 6 182 1 88] 
#[0 15 117 0 9] 
#[0 6 186 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 15 121 0 9] 
#[0 6 190 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 6 194 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 15 125 0 9] 
#[1 0 93 0 65 3 185 0 129 15 129 0 220 15 133 0 221 15 137 1 30 15 137 1 63 1 189 1 66] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 15 141 0 146 0 225 0 147 0 229 0 148 3 177 0 149 3 145 0 220 3 149 0 221 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 6 198 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 15 145 0 47 0 141 0 90 15 149 0 106 4 245 0 129 4 249 0 147 15 153 0 220 15 153 1 30 4 249 1 50 1 169 1 57 1 173 1 58 5 1 1 63 4 249 1 64 1 189 1 66] 
#[0 6 202 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 15 157 0 27] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 15 161 0 146 0 225 0 147 0 229 0 148 3 177 0 149 3 145 0 220 3 149 0 221 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 6 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 6 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 7 125 0 15 15 165 0 36] 
#[0 15 169 0 36] 
#[1 15 173 0 9 7 125 0 15] 
#[0 15 177 0 9] 
#[0 6 214 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 6 218 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 6 222 0 2 6 222 0 3 6 222 0 4 6 222 0 5 6 222 0 6 6 222 0 7 6 222 0 9 6 222 0 10 6 222 0 11 6 222 0 12 6 222 0 14 6 222 0 15 6 222 0 16 6 222 0 18 6 237 0 20 6 241 0 22 6 222 0 23 6 222 0 24 6 222 0 25 6 222 0 26 6 222 0 28 6 222 0 29 6 222 0 30 6 222 0 31 6 222 0 32 6 222 0 33 6 222 0 34 6 222 0 36 6 222 0 37 6 222 0 38 6 222 0 39 6 222 0 41 6 222 0 43 6 222 0 44 6 222 0 45 6 222 0 46 6 222 0 123 6 222 0 124 6 222 0 125 6 222 0 126 6 222 0 127 6 222 0 128 6 222 1 88] 
#[1 6 226 0 2 6 226 0 3 6 226 0 4 6 226 0 5 6 226 0 6 6 226 0 7 6 226 0 9 6 226 0 10 6 226 0 11 6 226 0 12 6 226 0 14 6 226 0 15 6 226 0 16 6 226 0 18 6 237 0 20 6 241 0 22 6 226 0 23 6 226 0 24 6 226 0 25 6 226 0 26 6 226 0 28 6 226 0 29 6 226 0 30 6 226 0 31 6 226 0 32 6 226 0 33 6 226 0 34 6 226 0 36 6 226 0 37 6 226 0 38 6 226 0 39 6 226 0 41 6 226 0 43 6 226 0 44 6 226 0 45 6 226 0 46 6 226 0 123 6 226 0 124 6 226 0 125 6 226 0 126 6 226 0 127 6 226 0 128 6 226 1 88] 
#[1 6 230 0 2 6 230 0 3 6 230 0 4 6 230 0 5 6 230 0 6 6 230 0 7 6 230 0 9 6 230 0 10 6 230 0 11 6 230 0 12 6 230 0 14 6 230 0 15 6 230 0 16 6 230 0 18 6 237 0 20 6 241 0 22 6 230 0 23 6 230 0 24 6 230 0 25 6 230 0 26 6 230 0 28 6 230 0 29 6 230 0 30 6 230 0 31 6 230 0 32 6 230 0 33 6 230 0 34 6 230 0 36 6 230 0 37 6 230 0 38 6 230 0 39 6 230 0 41 6 230 0 43 6 230 0 44 6 230 0 45 6 230 0 46 6 230 0 123 6 230 0 124 6 230 0 125 6 230 0 126 6 230 0 127 6 230 0 128 6 230 1 88] 
#[1 6 234 0 2 6 245 0 3 6 234 0 4 6 234 0 5 6 234 0 6 6 234 0 7 6 234 0 9 6 249 0 10 6 234 0 11 6 234 0 12 6 234 0 14 6 234 0 15 6 234 0 16 6 234 0 18 6 234 0 23 6 253 0 24 6 234 0 25 6 234 0 26 6 234 0 28 6 234 0 29 6 234 0 30 6 234 0 31 6 234 0 32 6 234 0 33 6 234 0 34 6 234 0 36 6 234 0 37 6 234 0 38 6 234 0 39 6 234 0 41 6 234 0 43 6 234 0 44 6 234 0 45 6 234 0 46 6 234 0 123 6 234 0 124 6 234 0 125 6 234 0 126 6 234 0 127 6 234 0 128 6 234 1 88] 
#[1 6 238 0 2 6 245 0 3 6 238 0 4 6 238 0 5 6 238 0 6 6 238 0 7 6 238 0 9 6 249 0 10 6 238 0 11 6 238 0 12 6 238 0 14 6 238 0 15 6 238 0 16 6 238 0 18 6 238 0 23 6 253 0 24 6 238 0 25 6 238 0 26 6 238 0 28 6 238 0 29 6 238 0 30 6 238 0 31 6 238 0 32 6 238 0 33 6 238 0 34 6 238 0 36 6 238 0 37 6 238 0 38 6 238 0 39 6 238 0 41 6 238 0 43 6 238 0 44 6 238 0 45 6 238 0 46 6 238 0 123 6 238 0 124 6 238 0 125 6 238 0 126 6 238 0 127 6 238 0 128 6 238 1 88] 
#[1 6 242 0 2 6 242 0 4 6 242 0 5 6 242 0 6 6 242 0 7 6 242 0 9 6 242 0 11 7 1 0 12 6 242 0 14 6 242 0 15 7 5 0 16 6 242 0 18 6 242 0 23 6 242 0 25 6 242 0 26 6 242 0 28 6 242 0 29 6 242 0 30 6 242 0 31 6 242 0 32 6 242 0 33 6 242 0 34 6 242 0 36 6 242 0 37 6 242 0 38 6 242 0 39 6 242 0 41 6 242 0 43 6 242 0 44 6 242 0 45 6 242 0 46 6 242 0 123 6 242 0 124 6 242 0 125 6 242 0 126 6 242 0 127 6 242 0 128 6 242 1 88] 
#[1 6 246 0 2 6 246 0 4 6 246 0 5 6 246 0 6 6 246 0 7 6 246 0 9 6 246 0 11 6 246 0 14 6 246 0 15 6 246 0 18 6 246 0 23 6 246 0 25 6 246 0 26 6 246 0 28 6 246 0 29 6 246 0 30 6 246 0 31 6 246 0 32 6 246 0 33 6 246 0 34 6 246 0 36 6 246 0 37 6 246 0 38 6 246 0 39 6 246 0 41 6 246 0 43 6 246 0 44 6 246 0 45 6 246 0 46 7 17 0 123 6 246 0 124 6 246 0 125 7 17 0 126 6 246 0 127 6 246 0 128 7 17 0 178 6 246 1 88] 
#[1 6 250 0 2 6 250 0 4 6 250 0 5 6 250 0 6 6 250 0 7 6 250 0 9 6 250 0 11 6 250 0 14 6 250 0 15 6 250 0 18 6 250 0 23 6 250 0 25 6 250 0 26 6 250 0 28 6 250 0 29 6 250 0 30 6 250 0 31 6 250 0 32 6 250 0 33 6 250 0 34 6 250 0 36 6 250 0 37 6 250 0 38 6 250 0 39 6 250 0 41 6 250 0 43 6 250 0 44 6 250 0 45 6 250 0 46 7 17 0 123 6 250 0 124 6 250 0 125 7 17 0 126 6 250 0 127 6 250 0 128 7 17 0 178 6 250 1 88] 
#[1 6 254 0 2 6 254 0 4 6 254 0 5 6 254 0 6 6 254 0 7 6 254 0 9 6 254 0 11 6 254 0 14 6 254 0 15 6 254 0 18 6 254 0 23 6 254 0 25 6 254 0 26 6 254 0 28 6 254 0 29 6 254 0 30 6 254 0 31 6 254 0 32 6 254 0 33 6 254 0 34 6 254 0 36 6 254 0 37 6 254 0 38 6 254 0 39 6 254 0 41 6 254 0 43 6 254 0 44 6 254 0 45 6 254 0 46 7 17 0 123 6 254 0 124 6 254 0 125 7 17 0 126 6 254 0 127 6 254 0 128 7 17 0 178 6 254 1 88] 
#[1 7 2 0 2 7 2 0 4 7 2 0 5 7 2 0 6 7 2 0 7 7 2 0 9 7 2 0 11 7 2 0 14 7 2 0 15 7 2 0 18 7 2 0 23 7 2 0 25 7 2 0 26 7 2 0 28 7 2 0 29 7 2 0 30 7 2 0 31 7 2 0 32 7 2 0 33 7 2 0 34 7 2 0 36 7 2 0 37 7 2 0 38 7 2 0 39 7 2 0 41 7 2 0 43 7 2 0 44 7 2 0 45 7 2 0 46 7 17 0 123 7 2 0 124 7 2 0 125 7 17 0 126 7 2 0 127 7 2 0 128 7 17 0 178 7 2 1 88] 
#[1 7 6 0 2 7 6 0 4 7 6 0 5 7 6 0 6 7 6 0 7 7 6 0 9 7 6 0 11 7 6 0 14 7 6 0 15 7 6 0 18 7 6 0 23 7 6 0 25 7 6 0 26 7 6 0 28 7 21 0 29 7 25 0 30 7 6 0 31 7 6 0 32 7 29 0 33 7 6 0 34 7 6 0 36 7 6 0 37 7 6 0 38 7 6 0 39 7 6 0 41 7 6 0 43 7 6 0 44 7 6 0 45 7 6 0 46 1 183 0 124 7 6 0 125 7 6 0 127 7 6 0 128 7 6 1 88] 
#[1 7 10 0 2 7 10 0 4 7 10 0 5 7 10 0 6 7 10 0 7 7 10 0 9 7 10 0 11 7 10 0 14 7 10 0 15 7 10 0 18 7 10 0 23 7 10 0 25 7 10 0 26 7 10 0 28 7 21 0 29 7 25 0 30 7 10 0 31 7 10 0 32 7 29 0 33 7 10 0 34 7 10 0 36 7 10 0 37 7 10 0 38 7 10 0 39 7 10 0 41 7 10 0 43 7 10 0 44 7 10 0 45 7 10 0 46 1 187 0 124 7 10 0 125 7 10 0 127 7 10 0 128 7 10 1 88] 
#[1 7 37 0 2 7 14 0 4 7 14 0 5 7 14 0 6 7 14 0 7 7 14 0 9 7 14 0 11 7 14 0 14 7 14 0 15 7 14 0 18 7 14 0 23 7 14 0 25 7 14 0 26 7 14 0 28 7 14 0 31 7 41 0 32 7 14 0 34 7 14 0 36 7 14 0 37 7 14 0 38 7 14 0 39 7 14 0 41 7 14 0 43 7 14 0 44 7 14 0 45 7 14 0 46 7 14 0 124 7 14 0 125 7 14 0 127 7 14 0 128 7 14 1 88] 
#[1 7 18 0 4 7 45 0 5 7 18 0 6 7 18 0 7 7 18 0 9 7 18 0 11 7 18 0 14 7 18 0 15 7 18 0 18 7 18 0 23 7 18 0 25 7 18 0 26 7 18 0 28 7 18 0 31 7 18 0 34 7 18 0 36 7 18 0 37 7 18 0 38 7 18 0 39 7 18 0 41 7 18 0 43 7 18 0 44 7 18 0 45 7 18 0 46 7 18 0 124 7 18 0 125 7 18 0 127 7 18 0 128 7 18 1 88] 
#[1 7 22 0 4 7 22 0 6 7 22 0 7 7 22 0 9 7 22 0 11 7 22 0 14 7 22 0 15 7 22 0 18 7 22 0 23 7 22 0 25 7 22 0 26 7 22 0 28 7 22 0 31 7 22 0 34 7 22 0 36 7 49 0 37 7 22 0 38 7 22 0 39 7 22 0 41 7 22 0 43 7 22 0 44 7 22 0 45 7 22 0 46 7 22 0 124 7 22 0 125 7 22 0 127 7 22 0 128 7 22 1 88] 
#[1 7 26 0 4 7 26 0 6 7 26 0 7 7 26 0 9 7 26 0 11 7 26 0 14 7 26 0 15 7 26 0 18 7 26 0 23 7 26 0 25 7 26 0 26 7 26 0 28 7 26 0 31 7 26 0 34 7 26 0 36 7 26 0 38 7 26 0 39 7 26 0 41 7 53 0 43 7 26 0 44 7 26 0 45 7 26 0 46 7 26 0 124 7 26 0 125 7 26 0 127 7 26 0 128 7 26 1 88] 
#[1 7 30 0 4 7 30 0 6 7 30 0 7 7 30 0 9 7 30 0 11 7 30 0 14 7 30 0 15 7 30 0 18 7 30 0 23 7 30 0 25 7 30 0 26 7 30 0 28 7 30 0 31 7 30 0 34 7 30 0 36 7 30 0 38 7 30 0 39 7 30 0 41 7 53 0 43 7 30 0 44 7 30 0 45 7 30 0 46 7 30 0 124 7 30 0 125 7 30 0 127 7 30 0 128 7 30 1 88] 
#[1 7 125 0 15 15 181 0 26] 
#[1 7 34 0 4 7 57 0 6 7 34 0 7 7 34 0 9 7 34 0 11 7 34 0 14 7 34 0 15 7 34 0 18 7 34 0 23 7 34 0 25 7 34 0 26 7 34 0 28 7 34 0 31 7 34 0 34 7 34 0 36 7 34 0 38 7 61 0 39 7 34 0 41 7 34 0 44 7 34 0 45 7 34 0 46 7 34 0 124 7 34 0 125 7 34 0 127 7 34 0 128 7 34 1 88] 
#[1 7 38 0 4 7 57 0 6 7 38 0 7 7 38 0 9 7 38 0 11 7 38 0 14 7 38 0 15 7 38 0 18 7 38 0 23 7 38 0 25 7 38 0 26 7 38 0 28 7 38 0 31 7 38 0 34 7 38 0 36 7 38 0 38 7 61 0 39 7 38 0 41 7 38 0 44 7 38 0 45 7 38 0 46 7 38 0 124 7 38 0 125 7 38 0 127 7 38 0 128 7 38 1 88] 
#[0 7 42 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 0 125 1 88] 
#[0 7 46 0 9 0 15 0 26 0 28 0 36 1 88] 
#[0 7 50 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 15 185 0 9] 
#[0 7 54 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 15 189 0 9] 
#[1 1 102 0 2 1 102 0 3 1 102 0 4 1 102 0 5 1 102 0 6 1 102 0 7 1 102 0 8 1 102 0 9 1 102 0 10 1 102 0 11 1 102 0 12 1 102 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 22 1 102 0 23 1 102 0 24 1 102 0 25 1 102 0 26 13 57 0 27 1 102 0 28 1 102 0 29 1 102 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 41 1 102 0 42 1 102 0 43 1 102 0 44 1 102 0 45 1 102 0 46 1 102 0 49 1 102 0 76 1 102 0 91 1 102 0 111 1 102 0 123 1 102 0 124 1 102 0 125 1 102 0 126 1 102 0 127 1 102 0 128 1 102 1 88] 
#[1 7 58 0 15 7 58 0 36 7 221 0 129 15 193 0 249 7 233 0 250 7 237 0 251 7 241 0 252] 
#[0 15 197 0 36] 
#[0 7 62 0 15 0 36] 
#[1 2 193 0 1 2 193 0 5 1 191 0 8 1 195 0 9 2 193 0 10 2 193 0 12 1 225 0 13 7 70 0 15 2 193 0 16 1 233 0 17 1 237 0 27 1 199 0 35 2 193 0 40 7 66 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 15 213 0 186 15 213 0 190 3 125 0 219 1 37 0 220 1 41 0 221 15 209 0 254 15 213 0 255 15 217 1 0 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 7 74 0 15 0 23 0 36] 
#[0 15 221 0 129] 
#[0 7 78 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 15 225 0 9] 
#[0 7 82 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 15 229 0 9] 
#[0 15 233 0 28] 
#[0 7 86 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 7 90 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 0 162 0 29] 
#[0 13 57 0 27] 
#[0 7 94 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 15 237 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 5 5 0 205 5 5 0 206 5 5 0 207 5 5 0 208 5 5 0 209 5 5 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 5 5 0 225 1 61 0 226 5 5 0 233 5 5 0 234 5 5 0 235 5 5 0 237 5 5 0 239 5 5 0 241 5 5 0 242 5 5 0 243 5 5 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 5 5 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 5 5 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 5 5 1 70 5 5 1 71] 
#[0 15 241 0 46] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 2 158 0 46 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 8 45 0 204 0 241 0 205 0 241 0 206 0 241 0 207 0 241 0 208 0 241 0 209 0 241 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 0 241 0 225 1 61 0 226 0 241 0 233 0 241 0 234 0 241 0 235 0 241 0 237 15 245 0 238 0 241 0 239 0 241 0 241 0 241 0 242 0 241 0 243 0 241 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 0 241 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 0 241 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 0 241 1 70 0 241 1 71] 
#[0 7 98 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 8 9 0 106 13 25 0 129 15 249 0 231 8 205 0 232 8 17 1 63 1 189 1 66] 
#[0 7 102 0 28] 
#[0 15 253 0 28] 
#[0 7 106 0 27 0 42] 
#[0 16 1 0 46] 
#[0 7 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 7 114 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 5 58 0 2 5 58 0 3 5 58 0 4 5 58 0 5 5 58 0 6 5 58 0 7 5 58 0 8 5 58 0 9 5 58 0 10 5 58 0 11 5 58 0 12 5 58 0 13 5 58 0 14 5 58 0 15 5 58 0 16 5 58 0 17 5 58 0 18 5 58 0 19 5 58 0 20 5 58 0 21 5 58 0 22 5 58 0 23 5 58 0 24 5 58 0 25 5 58 0 26 1 91 0 27 5 58 0 28 5 58 0 29 5 58 0 30 5 58 0 31 5 58 0 32 5 58 0 33 5 58 0 34 5 58 0 35 5 58 0 36 5 58 0 37 5 58 0 38 5 58 0 39 5 58 0 41 5 58 0 42 5 58 0 43 5 58 0 44 5 58 0 45 5 58 0 46 5 58 0 47 5 58 0 49 5 58 0 52 5 58 0 53 5 58 0 57 5 58 0 58 5 58 0 59 5 58 0 60 5 58 0 61 5 58 0 62 5 58 0 65 5 58 0 69 5 58 0 72 5 58 0 73 5 58 0 74 5 58 0 76 5 58 0 77 5 58 0 79 5 58 0 82 5 58 0 83 5 58 0 84 5 58 0 85 5 58 0 90 5 58 0 91 5 58 0 95 5 58 0 98 5 58 0 99 5 58 0 101 5 58 0 104 5 58 0 108 5 58 0 111 5 58 0 112 5 58 0 114 5 58 0 115 5 58 0 116 5 58 0 118 5 58 0 119 5 58 0 120 5 58 0 121 5 58 0 123 5 58 0 124 5 58 0 125 5 58 0 126 5 58 0 127 5 58 0 128 5 58 0 129 5 58 1 88] 
#[1 8 241 0 27 0 162 0 29] 
#[0 7 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 5 102 0 42] 
#[1 5 41 0 26 0 158 0 27 0 162 0 29 5 110 0 42 16 5 0 227] 
#[0 16 9 0 134] 
#[1 7 122 0 15 7 122 0 124 16 13 0 129] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 16 17 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 7 126 0 15 16 21 0 31 7 126 0 124] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 8 129 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 8 133 0 106 1 17 0 108 0 177 0 112 8 137 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 1 9 1 11 8 161 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 16 25 1 60 8 161 1 61 8 161 1 62 1 37 1 63 1 189 1 66 1 9 1 69] 
#[1 7 130 0 15 7 130 0 124 16 29 0 129] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 16 33 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 7 134 0 15 0 158 0 27 0 162 0 29 16 37 0 31 7 134 0 124] 
#[0 7 138 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 0 17 0 5 0 21 0 6 12 237 0 8 3 194 0 9 0 29 0 10 16 41 0 23 0 37 0 27 14 149 0 35 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 3 153 1 5 3 157 1 6 14 157 1 7 16 45 1 9 1 9 1 11 1 141 1 13 14 165 1 16 14 169 1 17 9 185 1 20 9 189 1 21 9 193 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69] 
#[1 6 62 0 8 6 62 0 9 6 62 0 15 6 62 0 23 0 37 0 27 6 62 0 31 6 62 0 35 0 49 0 47 0 93 0 65 0 141 0 90 6 62 0 124 0 213 0 129 3 173 0 146 0 225 0 147 0 229 0 148 3 177 0 149 3 145 0 220 3 149 0 221 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 16 49 0 186 16 49 0 187 3 125 0 219 1 37 0 220 1 41 0 221 16 49 1 27 16 49 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 16 49 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 7 142 0 9 7 142 0 15 7 142 0 23 16 53 0 31 7 142 0 124] 
#[1 0 17 0 5 0 21 0 6 12 237 0 8 6 70 0 9 0 29 0 10 6 70 0 15 1 203 0 23 0 37 0 27 6 70 0 31 10 141 0 35 0 49 0 47 0 93 0 65 0 141 0 90 6 70 0 124 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 5 169 1 5 3 157 1 6 14 157 1 7 12 253 1 9 1 141 1 13 14 185 1 16 14 169 1 17 14 189 1 18 10 169 1 19 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 7 146 0 9 7 146 0 15 7 146 0 23 16 57 0 31 7 146 0 124] 
#[1 0 17 0 5 0 21 0 6 12 237 0 8 7 150 0 9 0 29 0 10 7 150 0 15 1 207 0 23 0 37 0 27 16 61 0 31 10 141 0 35 0 49 0 47 0 93 0 65 0 141 0 90 7 150 0 124 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 16 65 1 4 16 65 1 5 1 129 1 6 10 145 1 7 12 253 1 9 1 141 1 13 16 69 1 15 16 69 1 16 10 161 1 17 16 69 1 18 10 169 1 19 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 8 129 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 8 133 0 106 1 17 0 108 0 177 0 112 8 137 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 1 9 1 11 16 73 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 16 73 1 61 16 73 1 62 1 37 1 63 1 189 1 66 1 9 1 69] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 41 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 57 0 51 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 0 109 0 74 0 113 0 77 0 117 0 79 0 121 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 137 0 86 0 141 0 90 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 0 169 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 16 77 0 205 16 77 0 206 16 77 0 207 16 77 0 208 16 77 0 209 16 77 0 210 1 9 0 211 1 13 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 16 77 0 225 1 61 0 226 16 77 0 233 16 77 0 234 16 77 0 235 16 77 0 237 16 77 0 239 16 77 0 241 16 77 0 242 16 77 0 243 16 77 0 244 1 101 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 1 121 1 4 1 121 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 16 77 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 16 77 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69 16 77 1 70 16 77 1 71] 
#[1 7 154 0 2 7 154 0 3 7 154 0 4 7 154 0 5 7 154 0 6 7 154 0 7 7 154 0 8 7 154 0 9 7 154 0 10 7 154 0 11 7 154 0 12 7 154 0 13 7 154 0 14 7 154 0 15 7 154 0 16 7 154 0 17 7 154 0 18 7 154 0 19 7 154 0 20 7 154 0 21 7 154 0 22 7 154 0 23 7 154 0 24 7 154 0 25 7 154 0 26 1 211 0 27 7 154 0 28 7 154 0 29 7 154 0 30 7 154 0 31 7 154 0 32 7 154 0 33 7 154 0 34 7 154 0 35 7 154 0 36 7 154 0 37 7 154 0 38 7 154 0 39 7 154 0 41 7 154 0 42 7 154 0 43 7 154 0 44 7 154 0 45 7 154 0 46 7 154 0 47 7 154 0 49 7 154 0 52 7 154 0 53 7 154 0 57 7 154 0 58 7 154 0 59 7 154 0 60 7 154 0 61 7 154 0 62 7 154 0 65 7 154 0 69 7 154 0 72 7 154 0 73 7 154 0 74 7 154 0 76 7 154 0 77 7 154 0 79 7 154 0 82 7 154 0 83 7 154 0 84 7 154 0 85 7 154 0 90 7 154 0 91 7 154 0 95 7 154 0 98 7 154 0 99 7 154 0 101 7 154 0 104 7 154 0 108 7 154 0 111 7 154 0 112 7 154 0 114 7 154 0 115 7 154 0 116 7 154 0 118 7 154 0 119 7 154 0 120 7 154 0 121 7 154 0 123 7 154 0 124 7 154 0 125 7 154 0 126 7 154 0 127 7 154 0 128 7 154 0 129 7 154 1 88] 
#[0 7 158 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 8 241 0 27 5 38 0 28 0 162 0 29] 
#[0 16 81 0 28] 
#[0 7 162 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 16 85 0 28] 
#[0 16 89 0 28] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 16 93 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[0 7 166 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 7 170 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 65 0 76 0 90 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 7 174 0 10 0 47 0 90 0 106 0 129] 
#[0 7 178 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 16 97 0 46 9 21 0 129 16 101 0 229 9 21 0 230] 
#[0 7 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 16 105 0 186 16 105 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 7 186 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 7 190 0 42] 
#[0 7 194 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 16 109 0 28 7 198 0 42] 
#[1 5 41 0 26 8 241 0 27 0 162 0 29 7 202 0 42 16 113 0 227] 
#[1 8 9 0 106 13 25 0 129 16 117 0 231 8 205 0 232 8 17 1 63 1 189 1 66] 
#[0 16 121 0 28] 
#[0 7 206 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 7 210 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 5 97 0 26 9 165 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 194 16 125 1 24 9 173 1 41 5 149 1 53 5 153 1 73] 
#[0 7 214 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 7 218 0 15 0 23 0 28 0 36] 
#[0 7 222 0 9 0 15 0 46] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 16 129 0 186 16 129 0 187 3 125 0 219 1 37 0 220 1 41 0 221 16 129 1 27 16 129 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 16 129 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 7 226 0 8 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 9 101 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 9 129 1 47 16 133 1 54 9 125 1 55 9 129 1 56 9 113 1 63 1 189 1 66] 
#[1 16 137 0 15 7 230 0 42] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 16 141 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 16 145 0 161 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 89 0 186 9 89 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 89 1 27 9 93 1 28 9 89 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 89 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 7 234 0 15 0 23 0 42] 
#[0 7 238 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 7 242 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 16 149 0 46 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 16 129 0 186 16 129 0 187 3 125 0 219 1 37 0 220 1 41 0 221 16 129 1 27 16 129 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 16 129 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 7 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 7 250 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 11 125 0 56 16 153 1 74 11 133 1 75] 
#[0 13 157 0 28] 
#[1 16 181 0 5 16 181 0 6 7 254 0 8 7 254 0 9 7 254 0 15 7 254 0 19 7 254 0 23 7 254 0 26 7 254 0 28 7 254 0 31 1 215 0 35 7 254 0 42 0 53 0 49 0 85 0 61 7 254 0 76 16 165 0 88 7 254 0 91 16 169 0 109 7 254 0 111 0 205 0 120 7 254 0 124 7 254 0 125 16 173 0 245 1 105 0 246 1 105 0 247 16 177 1 10 3 169 1 11 16 181 1 12 16 185 1 78 16 185 1 79 16 185 1 81] 
#[1 16 197 0 23 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 1 9 1 11 16 201 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 1 9 1 69] 
#[0 8 2 0 9] 
#[1 8 6 0 8 8 6 0 9 8 6 0 15 8 6 0 23 8 6 0 26 8 6 0 28 8 6 0 31 1 219 0 35 8 6 0 42 0 53 0 49 8 6 0 76 8 6 0 91 8 6 0 111 8 6 0 124 5 73 0 246 5 73 0 247] 
#[1 8 10 0 8 8 10 0 9 8 10 0 15 8 10 0 23 8 10 0 26 8 10 0 28 8 10 0 31 1 223 0 35 8 10 0 42 0 53 0 49 8 10 0 76 8 10 0 91 8 10 0 111 8 10 0 124 16 205 0 245 1 105 0 246 1 105 0 247] 
#[1 0 37 0 27 0 93 0 65 3 221 0 129 3 225 0 149 3 145 0 220 3 149 0 221 3 145 1 30 3 145 1 63 1 189 1 66] 
#[1 8 14 0 5 8 14 0 6 8 14 0 8 8 14 0 9 8 14 0 10 8 14 0 15 8 14 0 23 8 14 0 26 1 227 0 27 8 14 0 28 8 14 0 31 1 231 0 35 8 14 0 42 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 1 235 0 65 0 97 0 69 13 201 0 72 8 14 0 76 0 113 0 77 0 125 0 83 0 129 0 84 8 14 0 91 0 149 0 98 0 153 0 99 0 165 0 104 8 14 0 111 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 8 14 0 124 8 14 0 125 1 239 0 129 4 177 0 149 13 205 0 216 16 209 0 218 13 205 0 219 1 37 0 220 1 41 0 221 13 205 0 222 16 213 0 245 1 105 0 246 1 105 0 247 13 205 1 11 1 37 1 30 13 213 1 35 1 37 1 63 1 189 1 66 13 205 1 69] 
#[1 0 17 0 5 0 21 0 6 1 243 0 8 8 18 0 9 0 29 0 10 8 18 0 15 1 247 0 23 8 18 0 26 0 37 0 27 8 18 0 28 8 18 0 31 10 141 0 35 8 18 0 42 0 93 0 65 8 18 0 76 8 18 0 91 8 18 0 111 8 18 0 124 8 18 0 125 3 185 0 129 8 105 0 149 3 145 0 220 3 149 0 221 10 145 1 7 10 149 1 9 16 217 1 15 16 217 1 16 10 161 1 17 16 217 1 18 10 169 1 19 3 145 1 30 3 145 1 63 1 189 1 66] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 5 185 0 129 16 221 0 149 3 145 0 220 3 149 0 221 16 225 0 245 1 105 0 246 1 105 0 247 3 145 1 30 5 209 1 63 1 189 1 66] 
#[0 8 22 0 15 0 28] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 8 129 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 165 0 104 8 133 0 106 1 17 0 108 0 177 0 112 8 137 0 114 0 185 0 115 0 189 0 116 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 1 9 0 211 8 145 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 8 149 0 245 1 105 0 246 1 105 0 247 1 9 1 11 8 161 1 22 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 8 157 1 60 8 161 1 61 8 161 1 62 1 37 1 63 1 189 1 66 1 9 1 69] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 16 229 0 186 16 229 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 16 233 0 26 0 45 0 35 0 53 0 49 5 73 0 246 5 73 0 247] 
#[0 8 26 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[1 16 237 0 26 0 45 0 35 0 53 0 49 5 73 0 246 5 73 0 247] 
#[1 5 242 0 15 5 97 0 26 5 242 0 28 14 17 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 194 8 253 1 24 14 21 1 26 14 21 1 29 16 241 1 40 5 145 1 41 14 29 1 42 5 149 1 53 5 153 1 73] 
#[1 14 41 0 15 16 245 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 16 249 0 186 16 249 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 8 30 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 16 253 0 28 0 45 0 35 0 49 0 47 0 53 0 49 0 93 0 65 0 141 0 90 9 245 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 13 237 0 245 1 105 0 246 1 105 0 247 17 1 1 4 17 1 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 17 5 1 38 10 33 1 39 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 3 150 0 5 3 150 0 6 3 150 0 8 3 150 0 10 3 150 0 23 1 251 0 26 3 150 0 27 3 150 0 28 1 251 0 35 3 150 0 47 1 251 0 49 3 150 0 52 3 150 0 53 3 150 0 57 3 150 0 58 3 150 0 59 3 150 0 60 3 150 0 61 3 150 0 62 3 150 0 65 3 150 0 69 3 150 0 72 3 150 0 73 3 150 0 74 3 150 0 77 3 150 0 79 3 150 0 82 3 150 0 83 3 150 0 84 3 150 0 85 3 150 0 90 3 150 0 95 3 150 0 98 3 150 0 99 3 150 0 101 3 150 0 104 3 150 0 108 3 150 0 112 3 150 0 114 3 150 0 115 3 150 0 116 3 150 0 118 3 150 0 119 3 150 0 120 3 150 0 121 3 150 0 129] 
#[1 5 242 0 15 5 97 0 26 5 242 0 28 14 17 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 194 9 69 1 24 14 21 1 26 14 21 1 29 17 9 1 40 5 145 1 41 14 29 1 42 5 149 1 53 5 153 1 73] 
#[1 14 41 0 15 17 13 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 9 133 0 66 9 137 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 17 17 0 131 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 141 0 186 9 141 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 141 1 27 9 141 1 29 1 37 1 30 17 21 1 43 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 141 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 8 34 0 15 0 28] 
#[1 8 38 0 15 5 97 0 26 8 38 0 28 17 25 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 194 9 169 1 24 9 173 1 41 17 29 1 42 5 149 1 53 5 153 1 73] 
#[0 8 42 0 15 0 28] 
#[0 8 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 8 50 0 46] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 0 45 0 35 0 49 0 47 0 53 0 49 0 93 0 65 0 141 0 90 9 245 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 13 237 0 245 1 105 0 246 1 105 0 247 17 33 1 4 17 33 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 17 37 1 39 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 8 54 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 9 213 0 26 0 37 0 27 9 217 0 28 0 45 0 35 8 58 0 46 0 49 0 47 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 0 93 0 65 0 97 0 69 0 101 0 72 1 21 0 73 1 17 0 74 0 113 0 77 0 117 0 79 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 0 141 0 90 10 37 0 92 10 37 0 93 10 37 0 94 1 17 0 95 0 149 0 98 0 153 0 99 1 17 0 101 0 161 0 102 0 165 0 104 9 237 0 106 1 17 0 108 0 177 0 112 0 181 0 114 0 185 0 115 0 189 0 116 9 241 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 9 245 0 129 0 221 0 146 0 225 0 147 0 229 0 148 0 233 0 149 10 25 0 207 10 25 0 209 1 9 0 211 10 1 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 1 9 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 4 189 0 226 10 25 0 241 10 9 0 245 1 105 0 246 1 105 0 247 10 13 1 4 10 13 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 10 25 1 23 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 17 41 1 36 10 25 1 37 10 29 1 38 10 33 1 39 10 37 1 49 0 225 1 50 1 169 1 57 1 173 1 58 10 25 1 59 1 181 1 63 0 225 1 64 1 189 1 66 1 9 1 69] 
#[0 8 62 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 17 45 1 47 17 45 1 48 9 113 1 63 1 189 1 66] 
#[1 0 37 0 27 0 93 0 65 17 53 0 92 17 53 0 93 17 53 0 94 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 17 49 1 47 17 49 1 48 17 53 1 49 9 113 1 63 1 189 1 66] 
#[0 8 66 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 17 57 0 118 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 17 61 1 47 17 61 1 48 9 113 1 63 1 189 1 66] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 10 69 0 92 10 69 0 93 10 69 0 94 10 45 0 118 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 10 49 0 245 1 105 0 246 1 105 0 247 9 113 1 30 17 65 1 46 10 65 1 47 10 65 1 48 10 69 1 49 9 113 1 63 1 189 1 66] 
#[0 8 70 0 15 0 42] 
#[1 0 37 0 27 0 93 0 65 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 17 69 1 47 17 69 1 48 9 113 1 63 1 189 1 66] 
#[0 8 74 0 15 0 23 0 42] 
#[1 8 78 0 2 8 78 0 3 8 78 0 4 8 78 0 5 8 78 0 6 8 78 0 7 8 78 0 8 8 78 0 9 8 78 0 10 8 78 0 11 8 78 0 12 8 78 0 13 8 78 0 14 8 78 0 15 8 78 0 16 8 78 0 17 8 78 0 18 8 78 0 19 8 78 0 20 8 78 0 21 8 78 0 22 8 78 0 23 8 78 0 24 8 78 0 25 8 78 0 26 1 255 0 27 8 78 0 28 8 78 0 29 8 78 0 30 8 78 0 31 8 78 0 32 8 78 0 33 8 78 0 34 8 78 0 35 8 78 0 36 8 78 0 37 8 78 0 38 8 78 0 39 8 78 0 41 8 78 0 42 8 78 0 43 8 78 0 44 8 78 0 45 8 78 0 46 8 78 0 47 8 78 0 49 8 78 0 52 8 78 0 53 8 78 0 57 8 78 0 58 8 78 0 59 8 78 0 60 8 78 0 61 8 78 0 62 8 78 0 65 8 78 0 69 8 78 0 72 8 78 0 73 8 78 0 74 8 78 0 76 8 78 0 77 8 78 0 79 8 78 0 82 8 78 0 83 8 78 0 84 8 78 0 85 8 78 0 90 8 78 0 91 8 78 0 95 8 78 0 98 8 78 0 99 8 78 0 101 8 78 0 104 8 78 0 108 8 78 0 111 8 78 0 112 8 78 0 114 8 78 0 115 8 78 0 116 8 78 0 118 8 78 0 119 8 78 0 120 8 78 0 121 8 78 0 123 8 78 0 124 8 78 0 125 8 78 0 126 8 78 0 127 8 78 0 128 8 78 0 129 8 78 1 88] 
#[1 8 82 0 2 8 82 0 3 8 82 0 4 8 82 0 5 8 82 0 6 8 82 0 7 8 82 0 8 8 82 0 9 8 82 0 10 8 82 0 11 8 82 0 12 8 82 0 13 8 82 0 14 8 82 0 15 8 82 0 16 8 82 0 17 8 82 0 18 8 82 0 19 8 82 0 20 8 82 0 21 8 82 0 22 8 82 0 23 8 82 0 24 8 82 0 25 2 3 0 26 2 7 0 27 8 82 0 28 2 11 0 29 8 82 0 30 8 82 0 31 8 82 0 32 8 82 0 33 8 82 0 34 8 82 0 35 8 82 0 36 8 82 0 37 8 82 0 38 8 82 0 39 8 82 0 41 2 3 0 42 8 82 0 43 8 82 0 44 8 82 0 45 8 82 0 46 8 82 0 47 8 82 0 49 8 82 0 52 8 82 0 53 8 82 0 57 8 82 0 58 8 82 0 59 8 82 0 60 8 82 0 61 8 82 0 62 8 82 0 65 8 82 0 69 8 82 0 72 8 82 0 73 8 82 0 74 2 3 0 76 8 82 0 77 8 82 0 79 8 82 0 82 8 82 0 83 8 82 0 84 8 82 0 85 8 82 0 90 8 82 0 91 8 82 0 95 8 82 0 98 8 82 0 99 8 82 0 101 8 82 0 104 8 82 0 108 8 82 0 111 8 82 0 112 8 82 0 114 8 82 0 115 8 82 0 116 8 82 0 118 8 82 0 119 8 82 0 120 8 82 0 121 8 82 0 123 8 82 0 124 8 82 0 125 8 82 0 126 8 82 0 127 8 82 0 128 8 82 0 129 8 82 1 88] 
#[1 5 181 0 26 8 86 0 42 17 73 1 44] 
#[0 8 90 0 42] 
#[0 8 94 0 42] 
#[0 8 98 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 222 0 2 1 222 0 3 1 222 0 5 1 222 0 6 1 222 0 8 1 222 0 10 1 222 0 12 1 222 0 13 2 15 0 15 1 222 0 16 1 222 0 17 1 222 0 19 1 222 0 20 1 222 0 21 1 222 0 22 2 15 0 23 1 222 0 24 1 222 0 29 1 222 0 30 1 222 0 32 1 222 0 33 1 222 0 34 1 222 0 35 1 222 0 37 1 222 0 39 1 222 0 41 1 222 0 43 1 222 0 45 1 222 0 123 1 222 0 124 2 15 0 125 1 222 0 126] 
#[0 8 106 0 15 0 23 0 125] 
#[0 8 110 0 15 0 23 0 125] 
#[1 17 77 0 15 17 81 0 125] 
#[1 8 114 0 15 17 85 0 23 8 114 0 125] 
#[0 8 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 17 77 0 15 17 89 0 125] 
#[0 8 122 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 17 77 0 15 17 93 0 125] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 17 97 0 35 14 173 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 14 177 0 186 14 177 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 4 237 0 10 8 85 0 106 8 89 0 129 4 253 0 220 4 253 1 30 8 93 1 63 1 189 1 66] 
#[0 6 66 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124 0 125] 
#[1 0 17 0 5 0 21 0 6 10 133 0 8 6 70 0 9 0 29 0 10 0 37 0 27 10 141 0 35 0 93 0 65 3 185 0 129 8 105 0 149 3 145 0 220 3 149 0 221 14 157 1 7 14 161 1 9 14 185 1 16 14 169 1 17 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 17 101 0 9] 
#[1 1 159 0 8 6 82 0 9 6 82 0 15 6 82 0 23 6 82 0 26 6 82 0 28 6 82 0 31 14 193 0 35 6 82 0 42 6 82 0 76 6 82 0 91 6 82 0 111 6 82 0 124 6 82 0 125 17 105 1 7] 
#[1 8 126 0 8 8 126 0 9 8 126 0 15 8 126 0 23 8 126 0 26 8 126 0 28 8 126 0 31 2 19 0 35 8 126 0 42 0 53 0 49 8 126 0 76 8 126 0 91 8 126 0 111 8 126 0 124 8 126 0 125 17 109 0 245 1 105 0 246 1 105 0 247] 
#[0 17 113 0 36] 
#[0 8 130 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124 0 125] 
#[0 8 134 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124 0 125] 
#[0 8 138 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124 0 125] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 17 117 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 17 121 0 186 17 121 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 8 142 0 8 8 142 0 9 8 142 0 15 9 205 0 19 8 142 0 23 8 142 0 26 8 142 0 28 8 142 0 31 8 142 0 35 8 142 0 42 8 142 0 76 8 142 0 91 8 142 0 111 8 142 0 124 8 142 0 125 17 125 1 8] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 17 129 0 36 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 17 133 0 186 17 133 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 8 146 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124 0 125] 
#[0 8 150 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 1 167 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 3 254 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 17 137 0 163 2 193 0 164 17 137 0 165 17 137 0 171 17 137 0 172 17 137 0 173 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 17 141 0 9] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 17 145 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 8 154 0 2 8 154 0 3 8 154 0 4 8 154 0 5 8 154 0 6 8 154 0 7 11 61 0 8 8 154 0 9 8 154 0 10 8 154 0 11 8 154 0 12 8 154 0 14 8 154 0 15 8 154 0 16 8 154 0 18 8 154 0 20 8 154 0 22 8 154 0 23 8 154 0 24 8 154 0 25 8 154 0 26 8 154 0 28 8 154 0 29 8 154 0 30 8 154 0 31 8 154 0 32 8 154 0 33 8 154 0 34 8 154 0 36 8 154 0 37 8 154 0 38 8 154 0 39 8 154 0 41 6 145 0 42 8 154 0 43 8 154 0 44 8 154 0 45 8 154 0 46 8 154 0 123 8 154 0 124 8 154 0 125 8 154 0 126 8 154 0 127 8 154 0 128 17 149 0 170 17 149 1 29 8 154 1 88] 
#[0 8 158 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 162 0 15 0 23 0 36] 
#[0 10 197 0 129] 
#[1 10 213 0 15 8 166 0 36] 
#[1 8 170 0 15 17 153 0 23 8 170 0 36] 
#[0 8 174 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 178 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 17 157 0 8] 
#[0 8 182 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 17 161 0 186 17 161 0 187 17 161 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 17 161 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 17 165 0 8] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 17 169 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 17 173 0 186 17 173 0 187 17 173 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 17 173 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 17 177 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 17 181 0 186 17 181 0 187 17 181 0 189 17 185 0 201 3 125 0 219 1 37 0 220 1 41 0 221 17 185 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 17 181 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 5 93 0 8 1 46 0 15 8 186 0 26 1 46 0 28 7 177 0 31 6 145 0 42 5 129 1 25 5 129 1 26 5 129 1 29] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 9 57 1 2 1 117 1 3 17 193 1 4 17 193 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 17 197 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 17 197 0 203 17 197 0 206 17 197 0 207 17 197 0 208 17 197 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 17 197 0 225 1 61 0 226 17 197 0 239 17 197 0 241 17 197 0 242 17 197 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 17 201 0 31 6 145 0 42 17 205 1 29] 
#[1 0 17 0 5 0 21 0 6 0 25 0 8 0 29 0 10 0 33 0 23 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 17 209 1 4 17 209 1 5 1 129 1 6 1 133 1 9 1 141 1 13 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 8 190 0 8 0 27 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 65 0 69 0 72 0 77 0 83 0 84 0 98 0 99 0 104 0 114 0 115 0 116 0 119 0 120 0 121 0 129] 
#[1 8 194 0 2 8 194 0 3 8 194 0 4 8 194 0 5 8 194 0 6 8 194 0 7 11 61 0 8 8 194 0 9 8 194 0 10 8 194 0 11 8 194 0 12 8 194 0 14 8 194 0 15 8 194 0 16 8 194 0 18 8 194 0 20 8 194 0 22 8 194 0 23 8 194 0 24 8 194 0 25 8 194 0 26 8 194 0 28 8 194 0 29 8 194 0 30 8 194 0 31 8 194 0 32 8 194 0 33 8 194 0 34 8 194 0 36 8 194 0 37 8 194 0 38 8 194 0 39 8 194 0 41 6 145 0 42 8 194 0 43 8 194 0 44 8 194 0 45 8 194 0 46 8 194 0 123 8 194 0 124 8 194 0 125 8 194 0 126 8 194 0 127 8 194 0 128 17 213 0 170 17 213 1 29 8 194 1 88] 
#[0 17 217 0 9] 
#[0 8 198 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 202 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 17 221 0 9] 
#[1 7 125 0 15 17 225 0 36] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 17 229 0 186 17 229 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 8 206 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 210 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 17 233 0 8] 
#[0 8 214 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 17 237 0 9] 
#[0 17 241 0 8] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 17 245 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 17 245 0 203 17 245 0 206 17 245 0 207 17 245 0 208 17 245 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 17 245 0 225 1 61 0 226 17 245 0 239 17 245 0 241 17 245 0 242 17 245 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 17 249 0 23 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 17 253 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 18 1 0 245 1 105 0 246 1 105 0 247 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69 18 5 1 76] 
#[0 8 218 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 18 9 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 18 9 0 203 18 9 0 206 18 9 0 207 18 9 0 208 18 9 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 18 9 0 225 1 61 0 226 18 9 0 239 18 9 0 241 18 9 0 242 18 9 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 9 205 0 19 0 45 0 35 8 222 0 42 0 53 0 49 18 13 0 85 16 165 0 88 16 169 0 109 18 17 0 245 1 105 0 246 1 105 0 247 18 21 1 8 18 25 1 78 18 25 1 79 18 25 1 81] 
#[0 8 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 230 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 23 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 2 27 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 238 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 0 93 0 65 3 185 0 129 18 29 0 220 3 189 0 221 15 137 1 30 15 137 1 63 1 189 1 66] 
#[1 0 49 0 47 0 141 0 90 8 181 0 129 8 233 0 147 8 233 1 50 1 169 1 57 1 173 1 58 18 33 1 63 8 233 1 64 1 189 1 66] 
#[0 18 37 0 27] 
#[1 2 31 0 47 3 126 0 90 3 126 0 106 3 126 0 129] 
#[0 8 242 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 8 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 9 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 18 45 0 186 18 45 0 187 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 18 45 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 9 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 9 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 9 14 0 15 18 49 0 23 9 14 0 36] 
#[0 9 18 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 22 0 15 0 23 0 36] 
#[0 9 26 0 9 0 15] 
#[1 18 53 0 9 18 57 0 15] 
#[0 9 30 0 9 0 15] 
#[1 18 61 0 8 18 65 0 9 18 69 0 35 18 73 0 42 18 77 1 1] 
#[0 9 34 0 8 0 15 0 23 0 36] 
#[0 9 38 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 42 0 1 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 123 0 124 0 125 0 126 0 127 0 128 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 46 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 50 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 9 54 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 18 81 0 46] 
#[0 9 58 0 28] 
#[0 9 62 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 66 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 7 198 0 42] 
#[0 18 85 0 9] 
#[0 9 70 0 15 0 124] 
#[0 9 74 0 15 0 124] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 18 89 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 13 9 0 15 18 93 0 124] 
#[0 9 78 0 15 0 124] 
#[0 9 82 0 15 0 124] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 18 97 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 5 190 0 9 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 3 173 0 146 0 225 0 147 0 229 0 148 3 177 0 149 3 145 0 220 3 149 0 221 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 17 0 5 0 21 0 6 12 237 0 8 6 70 0 9 0 29 0 10 0 33 0 23 0 37 0 27 10 141 0 35 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 5 169 1 5 3 157 1 6 14 157 1 7 16 45 1 9 1 141 1 13 14 185 1 16 14 169 1 17 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[0 9 86 0 9 0 15 0 23 0 124] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 18 101 0 186 18 101 0 187 3 125 0 219 1 37 0 220 1 41 0 221 18 101 1 27 18 101 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 18 101 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 18 105 0 186 18 105 0 187 3 125 0 219 1 37 0 220 1 41 0 221 18 105 1 27 18 105 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 18 105 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 18 109 0 186 18 109 0 187 3 125 0 219 1 37 0 220 1 41 0 221 18 109 1 27 18 109 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 18 109 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 9 90 0 9 9 90 0 15 9 90 0 23 18 113 0 31 9 90 0 124] 
#[1 9 94 0 9 9 94 0 15 9 94 0 23 18 117 0 31 9 94 0 124] 
#[0 9 98 0 15 0 124] 
#[0 9 102 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 9 106 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 110 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 114 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 18 121 0 28] 
#[0 9 118 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[0 9 122 0 15 0 46] 
#[0 9 126 0 15 0 46] 
#[0 9 130 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 134 0 42] 
#[0 18 125 0 28] 
#[0 9 138 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 9 142 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[1 9 146 0 9 9 146 0 15 18 129 0 23 9 146 0 46] 
#[0 9 150 0 42] 
#[1 0 37 0 27 0 93 0 65 9 101 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 9 129 1 47 18 133 1 54 9 125 1 55 9 129 1 56 9 113 1 63 1 189 1 66] 
#[0 9 154 0 15 0 23 0 42] 
#[0 18 137 0 9] 
#[0 9 158 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 9 162 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 9 166 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 88 0 91 0 109 0 111 0 124 0 125] 
#[0 9 170 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 88 0 91 0 109 0 111 0 124 0 125] 
#[1 2 35 0 8 9 174 0 9 9 174 0 15 9 174 0 19 9 174 0 23 9 174 0 26 9 174 0 28 9 174 0 31 9 174 0 35 9 174 0 42 9 174 0 49 9 174 0 76 9 174 0 91 9 174 0 111 9 174 0 124 9 174 0 125] 
#[0 18 145 0 8] 
#[1 9 178 0 8 9 178 0 9 9 178 0 15 9 178 0 19 9 178 0 23 9 178 0 26 9 178 0 28 9 178 0 31 2 39 0 35 9 178 0 42 0 53 0 49 9 178 0 76 9 178 0 91 9 178 0 111 9 178 0 124 9 178 0 125 5 73 0 246 5 73 0 247] 
#[1 18 153 0 5 18 153 0 6 9 182 0 8 9 182 0 9 9 182 0 15 9 182 0 19 9 182 0 23 9 182 0 26 9 182 0 28 9 182 0 31 2 43 0 35 9 182 0 42 0 53 0 49 9 182 0 76 16 165 0 88 9 182 0 91 16 169 0 109 9 182 0 111 9 182 0 124 9 182 0 125 18 149 0 245 1 105 0 246 1 105 0 247 18 153 1 12 18 157 1 78 18 157 1 79 18 157 1 81] 
#[1 9 186 0 8 9 186 0 9 9 186 0 15 9 186 0 19 9 186 0 23 9 186 0 26 9 186 0 28 9 186 0 31 2 47 0 35 9 186 0 42 0 53 0 49 9 186 0 76 16 165 0 88 9 186 0 91 16 169 0 109 9 186 0 111 9 186 0 124 9 186 0 125 18 161 0 245 1 105 0 246 1 105 0 247 18 165 1 78 18 165 1 79 18 165 1 81] 
#[1 9 190 0 8 9 190 0 9 9 190 0 15 9 190 0 19 9 190 0 23 9 190 0 26 9 190 0 28 9 190 0 31 2 51 0 35 9 190 0 42 0 53 0 49 9 190 0 76 9 190 0 91 9 190 0 111 9 190 0 124 9 190 0 125 18 169 0 245 1 105 0 246 1 105 0 247] 
#[0 9 194 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124 0 125] 
#[0 9 198 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124 0 125] 
#[0 9 202 0 9] 
#[0 9 206 0 9 0 15 0 23] 
#[1 9 210 0 8 9 210 0 9 9 210 0 15 9 210 0 23 9 210 0 26 9 210 0 28 9 210 0 31 2 55 0 35 9 210 0 42 0 53 0 49 9 210 0 76 9 210 0 91 9 210 0 111 9 210 0 124 5 73 0 246 5 73 0 247] 
#[0 9 214 0 5 0 6 0 8 0 9 0 10 0 15 0 23 0 26 0 27 0 28 0 31 0 35 0 42 0 65 0 76 0 91 0 111 0 124 0 125 0 129] 
#[1 9 218 0 5 9 218 0 6 9 218 0 8 9 218 0 9 9 218 0 10 9 218 0 15 9 218 0 23 9 218 0 26 9 218 0 27 9 218 0 28 9 218 0 31 2 59 0 35 9 218 0 42 0 53 0 49 9 218 0 65 9 218 0 76 9 218 0 91 9 218 0 111 9 218 0 124 9 218 0 125 9 218 0 129 5 73 0 246 5 73 0 247] 
#[0 9 222 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124 0 125] 
#[1 10 73 0 106 18 173 0 129 18 177 1 63 1 189 1 66] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 93 0 65 10 89 0 129 18 181 0 149 3 145 0 220 3 149 0 221 5 73 0 246 5 73 0 247 3 145 1 30 3 145 1 63 1 189 1 66] 
#[0 9 226 0 15 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 18 185 0 186 18 185 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 18 189 0 186 18 189 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 8 38 0 15 5 97 0 26 8 38 0 28 17 25 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 194 13 61 1 24 9 173 1 41 17 29 1 42 5 149 1 53 5 153 1 73] 
#[0 9 230 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[0 2 63 0 15 0 28] 
#[0 9 238 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[1 5 242 0 15 5 97 0 26 5 242 0 28 14 17 0 31 5 105 0 42 5 145 0 76 5 145 0 91 5 117 0 111 5 121 0 194 13 109 1 24 14 21 1 26 14 21 1 29 18 193 1 40 5 145 1 41 14 29 1 42 5 149 1 53 5 153 1 73] 
#[1 14 41 0 15 18 197 0 28] 
#[1 8 38 0 15 5 97 0 26 8 38 0 28 17 25 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 194 13 117 1 24 9 173 1 41 17 29 1 42 5 149 1 53 5 153 1 73] 
#[0 9 242 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[0 9 246 0 15 0 28] 
#[0 9 250 0 15 0 28] 
#[1 9 133 0 66 13 177 0 67 17 17 0 131 17 21 1 43] 
#[0 9 254 0 15 0 28] 
#[1 5 242 0 15 5 242 0 28 18 201 0 31 6 145 0 42 5 145 0 76 5 145 0 91 14 21 1 26 14 21 1 29 18 205 1 40 5 145 1 41 14 29 1 42] 
#[0 10 2 0 15 0 28] 
#[0 10 6 0 46] 
#[0 10 10 0 15 0 23 0 42] 
#[0 10 14 0 15 0 23 0 42] 
#[1 0 37 0 27 0 93 0 65 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 18 209 1 47 18 209 1 48 9 113 1 63 1 189 1 66] 
#[1 0 37 0 27 0 93 0 65 3 185 0 129 9 105 0 149 3 145 0 220 9 109 0 221 9 113 1 30 18 213 1 47 18 213 1 48 9 113 1 63 1 189 1 66] 
#[0 10 18 0 15 0 23 0 42] 
#[1 10 22 0 15 18 217 0 23 10 22 0 42] 
#[0 10 26 0 15 0 23 0 42] 
#[0 10 30 0 42] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 0 101 0 72 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 0 165 0 104 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 14 113 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 18 221 0 186 18 221 0 190 4 181 0 215 4 181 0 216 5 229 0 217 3 53 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 18 221 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 18 221 1 68 3 65 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 10 34 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 10 38 0 15 0 125] 
#[0 10 42 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 49 0 76 0 91 0 111 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 10 46 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 76 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 91 0 95 0 98 0 99 0 101 0 104 0 108 0 111 0 112 0 114 0 115 0 116 0 118 0 119 0 120 0 121 0 123 0 124 0 125 0 126 0 127 0 128 0 129 1 88] 
#[1 5 253 0 5 2 134 0 15 6 21 0 31 2 67 0 36 6 9 0 107 18 225 0 129 6 17 0 152 6 21 0 153 6 25 0 154 6 29 0 155 6 29 0 156 6 29 0 157 7 225 0 248 7 229 0 249 7 233 0 250 7 237 0 251 7 241 0 252] 
#[0 10 50 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124 0 125] 
#[0 8 142 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 35 0 42 0 76 0 91 0 111 0 124 0 125] 
#[1 10 54 0 8 10 54 0 9 10 54 0 15 10 54 0 23 10 54 0 26 10 54 0 28 10 54 0 31 2 71 0 35 10 54 0 42 0 53 0 49 10 54 0 76 10 54 0 91 10 54 0 111 10 54 0 124 10 54 0 125 5 73 0 246 5 73 0 247] 
#[1 10 58 0 8 10 58 0 9 10 58 0 15 10 58 0 23 10 58 0 26 10 58 0 28 10 58 0 31 2 75 0 35 10 58 0 42 0 53 0 49 10 58 0 76 10 58 0 91 10 58 0 111 10 58 0 124 10 58 0 125 18 229 0 245 1 105 0 246 1 105 0 247] 
#[1 10 62 0 8 10 62 0 9 10 62 0 15 10 62 0 23 10 62 0 26 10 62 0 28 10 62 0 31 2 79 0 35 10 62 0 42 0 53 0 49 10 62 0 76 10 62 0 91 10 62 0 111 10 62 0 124 10 62 0 125 18 233 0 245 1 105 0 246 1 105 0 247] 
#[0 18 237 0 36] 
#[0 10 66 0 8 0 9 0 15 0 23 0 26 0 28 0 31 0 42 0 76 0 91 0 111 0 124 0 125] 
#[1 10 70 0 8 10 70 0 9 10 70 0 15 10 70 0 23 10 70 0 26 10 70 0 28 10 70 0 31 2 83 0 35 10 70 0 42 0 53 0 49 10 70 0 76 10 70 0 91 10 70 0 111 10 70 0 124 10 70 0 125 18 241 0 245 1 105 0 246 1 105 0 247] 
#[0 18 245 0 36] 
#[0 10 74 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 10 78 0 2 10 78 0 3 10 78 0 4 10 78 0 5 10 78 0 6 10 78 0 7 11 61 0 8 10 78 0 9 10 78 0 10 10 78 0 11 10 78 0 12 10 78 0 14 10 78 0 15 10 78 0 16 10 78 0 18 10 78 0 20 10 78 0 22 10 78 0 23 10 78 0 24 10 78 0 25 10 78 0 26 10 78 0 28 10 78 0 29 10 78 0 30 10 78 0 31 10 78 0 32 10 78 0 33 10 78 0 34 10 78 0 36 10 78 0 37 10 78 0 38 10 78 0 39 10 78 0 41 6 145 0 42 10 78 0 43 10 78 0 44 10 78 0 45 10 78 0 46 10 78 0 123 10 78 0 124 10 78 0 125 10 78 0 126 10 78 0 127 10 78 0 128 18 249 0 170 18 249 1 29 10 78 1 88] 
#[0 18 253 0 9] 
#[0 10 82 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 10 86 0 15 0 36] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 1 0 186 19 1 0 187 19 1 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 1 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 19 5 0 9 7 125 0 15] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 9 0 186 19 9 0 187 19 9 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 19 13 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 19 13 0 203 19 13 0 206 19 13 0 207 19 13 0 208 19 13 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 19 13 0 225 1 61 0 226 19 13 0 239 19 13 0 241 19 13 0 242 19 13 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 19 17 0 9 7 125 0 15] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 19 21 0 9 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 25 0 186 19 25 0 187 19 25 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 25 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 10 90 0 9 7 125 0 15] 
#[0 19 29 0 9] 
#[0 10 94 0 9] 
#[1 5 93 0 8 1 46 0 15 10 98 0 26 1 46 0 28 7 177 0 31 6 145 0 42 5 129 1 25 5 129 1 26 5 129 1 29] 
#[1 10 102 0 1 10 102 0 5 10 102 0 6 10 102 0 8 10 102 0 10 10 102 0 12 10 102 0 13 10 102 0 16 10 102 0 17 10 102 0 23 10 102 0 27 10 102 0 28 10 102 0 35 10 102 0 40 10 102 0 42 10 102 0 43 10 102 0 46 10 102 0 47 10 102 0 49 10 102 0 50 10 102 0 51 10 102 0 52 10 102 0 53 10 102 0 54 10 102 0 55 10 102 0 57 10 102 0 58 10 102 0 59 10 102 0 60 10 102 0 61 10 102 0 62 10 102 0 63 10 102 0 64 10 102 0 65 10 102 0 66 10 102 0 67 10 102 0 68 10 102 0 69 10 102 0 70 2 87 0 71 10 102 0 72 10 102 0 73 10 102 0 74 10 102 0 75 10 102 0 77 10 102 0 78 10 102 0 79 10 102 0 80 10 102 0 81 10 102 0 82 10 102 0 83 10 102 0 84 10 102 0 85 10 102 0 86 10 102 0 87 10 102 0 88 10 102 0 89 10 102 0 90 10 102 0 95 10 102 0 96 10 102 0 97 10 102 0 98 10 102 0 99 10 102 0 100 10 102 0 101 10 102 0 102 10 102 0 103 10 102 0 104 10 102 0 105 10 102 0 107 10 102 0 108 10 102 0 109 10 102 0 110 10 102 0 111 10 102 0 112 10 102 0 113 10 102 0 114 10 102 0 115 10 102 0 116 10 102 0 117 10 102 0 118 10 102 0 119 10 102 0 120 10 102 0 121 10 102 0 122 10 102 0 129 10 102 0 130 10 102 0 132 10 102 0 133 10 102 0 134 10 102 0 135 10 102 0 136 10 102 0 137 10 102 0 138 10 102 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 37 0 186 19 37 0 187 3 125 0 219 1 37 0 220 1 41 0 221 19 37 1 27 19 37 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 37 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 10 106 0 9 0 28] 
#[1 19 41 0 31 6 145 0 42 19 45 1 29] 
#[0 10 110 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 10 114 0 2 10 114 0 3 10 114 0 4 10 114 0 5 10 114 0 6 10 114 0 7 11 61 0 8 10 114 0 9 10 114 0 10 10 114 0 11 10 114 0 12 10 114 0 14 10 114 0 15 10 114 0 16 10 114 0 18 10 114 0 20 10 114 0 22 10 114 0 23 10 114 0 24 10 114 0 25 10 114 0 26 10 114 0 28 10 114 0 29 10 114 0 30 10 114 0 31 10 114 0 32 10 114 0 33 10 114 0 34 10 114 0 36 10 114 0 37 10 114 0 38 10 114 0 39 10 114 0 41 6 145 0 42 10 114 0 43 10 114 0 44 10 114 0 45 10 114 0 46 10 114 0 123 10 114 0 124 10 114 0 125 10 114 0 126 10 114 0 127 10 114 0 128 19 49 0 170 19 49 1 29 10 114 1 88] 
#[0 10 118 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 10 122 0 2 10 122 0 3 10 122 0 4 10 122 0 5 10 122 0 6 10 122 0 7 10 122 0 8 10 122 0 9 10 122 0 10 10 122 0 11 10 122 0 12 10 122 0 14 10 122 0 15 10 122 0 16 10 122 0 18 10 122 0 20 10 122 0 22 10 122 0 23 10 122 0 24 10 122 0 25 10 122 0 26 10 122 0 28 10 122 0 29 10 122 0 30 10 122 0 31 10 122 0 32 10 122 0 33 10 122 0 34 2 91 0 35 10 122 0 36 10 122 0 37 10 122 0 38 10 122 0 39 10 122 0 41 10 122 0 42 10 122 0 43 10 122 0 44 10 122 0 45 10 122 0 46 0 53 0 49 10 122 0 123 10 122 0 124 10 122 0 125 10 122 0 126 10 122 0 127 10 122 0 128 19 53 0 245 1 105 0 246 1 105 0 247 10 122 1 88] 
#[0 19 57 0 36] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 61 0 186 19 61 0 187 19 61 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 61 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 10 126 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 65 0 186 19 65 0 187 19 65 0 189 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 65 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 10 130 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 10 134 0 9] 
#[1 0 17 0 5 0 21 0 6 12 237 0 8 10 138 0 9 0 29 0 10 12 241 0 23 0 37 0 27 10 141 0 35 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 19 69 1 4 19 69 1 5 1 129 1 6 10 145 1 7 12 253 1 9 1 141 1 13 19 73 1 15 19 73 1 16 10 161 1 17 19 73 1 18 10 169 1 19 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 0 37 0 27 0 45 0 35 0 53 0 49 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 19 77 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 5 73 0 246 5 73 0 247 4 181 1 11 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[0 19 81 0 9] 
#[0 10 142 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 9 205 0 19 0 45 0 35 10 146 0 42 0 53 0 49 16 165 0 88 16 169 0 109 19 85 0 245 1 105 0 246 1 105 0 247 19 89 1 8 19 93 1 78 19 93 1 79 19 93 1 81] 
#[1 9 205 0 19 0 45 0 35 10 150 0 42 0 53 0 49 5 73 0 246 5 73 0 247 19 97 1 8] 
#[0 10 154 0 42] 
#[1 9 205 0 19 0 45 0 35 10 158 0 42 0 53 0 49 19 101 0 245 1 105 0 246 1 105 0 247 19 105 1 8] 
#[0 10 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 1 102 0 2 1 102 0 3 1 102 0 4 1 102 0 5 1 102 0 6 1 102 0 7 1 102 0 8 1 102 0 9 1 102 0 10 1 102 0 11 1 102 0 12 1 102 0 13 1 102 0 14 1 102 0 15 1 102 0 16 1 102 0 17 1 102 0 18 1 102 0 19 1 102 0 20 1 102 0 21 1 102 0 22 1 102 0 23 1 102 0 24 1 102 0 25 1 102 0 26 19 109 0 27 1 102 0 28 1 102 0 29 1 102 0 30 1 102 0 31 1 102 0 32 1 102 0 33 1 102 0 34 1 102 0 35 1 102 0 36 1 102 0 37 1 102 0 38 1 102 0 39 1 102 0 41 1 102 0 43 1 102 0 44 1 102 0 45 1 102 0 46 1 102 0 123 1 102 0 124 1 102 0 125 1 102 0 126 1 102 0 127 1 102 0 128 1 102 1 88] 
#[0 19 113 0 47] 
#[1 3 185 0 129 19 117 0 220 19 117 1 30 19 117 1 63 1 189 1 66] 
#[0 10 166 0 9 0 15 0 23 0 26 0 28 0 36 0 46 0 124 0 125 1 88] 
#[0 10 170 0 15 0 36] 
#[0 10 174 0 15 0 23 0 36] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 7 70 0 9 2 193 0 10 2 193 0 12 1 225 0 13 7 70 0 15 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 19 121 0 186 19 121 0 190 3 125 0 219 1 37 0 220 1 41 0 221 19 121 0 255 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 7 66 0 8 7 66 0 9 7 66 0 35 7 66 0 42 19 125 1 0] 
#[0 10 178 0 15 0 23 0 36] 
#[1 7 66 0 8 7 66 0 35 7 66 0 36 7 66 0 42 19 129 1 0] 
#[1 7 66 0 8 7 66 0 35 7 66 0 42 7 66 0 46 19 133 1 0] 
#[0 10 182 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 10 186 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 51 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 86 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129 1 88] 
#[0 19 137 0 28] 
#[0 10 190 0 15 0 124] 
#[0 19 141 0 60] 
#[0 10 194 0 15 0 124] 
#[0 10 198 0 9 0 15 0 23 0 124] 
#[0 10 202 0 9 0 15 0 23 0 124] 
#[0 10 206 0 9 0 15 0 23 0 124] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 145 0 186 19 145 0 187 3 125 0 219 1 37 0 220 1 41 0 221 19 145 1 27 19 145 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 145 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 149 0 186 19 149 0 187 3 125 0 219 1 37 0 220 1 41 0 221 19 149 1 27 19 149 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 149 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 10 210 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 10 214 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 10 218 0 9 0 15 0 46] 
#[0 10 222 0 42] 
#[0 10 226 0 15 0 23 0 42] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 6 61 0 185 19 153 0 186 19 153 0 190 3 125 0 219 1 37 0 220 1 41 0 221 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 19 157 0 9 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 19 161 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69 19 165 1 80] 
#[1 10 230 0 8 10 230 0 9 10 230 0 15 10 230 0 19 10 230 0 23 10 230 0 26 10 230 0 28 10 230 0 31 2 95 0 35 10 230 0 42 0 53 0 49 10 230 0 76 10 230 0 91 10 230 0 111 10 230 0 124 10 230 0 125 5 73 0 246 5 73 0 247] 
#[1 10 234 0 8 10 234 0 9 10 234 0 15 10 234 0 19 10 234 0 23 10 234 0 26 10 234 0 28 10 234 0 31 2 99 0 35 10 234 0 42 0 53 0 49 10 234 0 76 16 165 0 88 10 234 0 91 16 169 0 109 10 234 0 111 10 234 0 124 10 234 0 125 19 169 0 245 1 105 0 246 1 105 0 247 19 173 1 78 19 173 1 79 19 173 1 81] 
#[1 10 238 0 8 10 238 0 9 10 238 0 15 10 238 0 19 10 238 0 23 10 238 0 26 10 238 0 28 10 238 0 31 2 103 0 35 10 238 0 42 0 53 0 49 10 238 0 76 10 238 0 91 10 238 0 111 10 238 0 124 10 238 0 125 19 177 0 245 1 105 0 246 1 105 0 247] 
#[1 10 242 0 8 10 242 0 9 10 242 0 15 10 242 0 19 10 242 0 23 10 242 0 26 10 242 0 28 10 242 0 31 2 107 0 35 10 242 0 42 0 53 0 49 10 242 0 76 10 242 0 91 10 242 0 111 10 242 0 124 10 242 0 125 5 73 0 246 5 73 0 247] 
#[1 10 246 0 8 10 246 0 9 10 246 0 15 10 246 0 19 10 246 0 23 10 246 0 26 10 246 0 28 10 246 0 31 2 111 0 35 10 246 0 42 0 53 0 49 10 246 0 76 10 246 0 91 10 246 0 111 10 246 0 124 10 246 0 125 19 181 0 245 1 105 0 246 1 105 0 247] 
#[1 10 250 0 8 10 250 0 9 10 250 0 15 10 250 0 19 10 250 0 23 10 250 0 26 10 250 0 28 10 250 0 31 2 115 0 35 10 250 0 42 0 53 0 49 10 250 0 76 10 250 0 91 10 250 0 111 10 250 0 124 10 250 0 125 5 73 0 246 5 73 0 247] 
#[1 6 22 0 5 6 22 0 6 6 22 0 8 6 22 0 9 6 22 0 10 6 22 0 15 6 22 0 23 6 22 0 26 1 127 0 27 6 22 0 28 0 162 0 29 6 22 0 31 6 22 0 35 6 22 0 42 6 22 0 49 6 22 0 52 6 22 0 53 6 22 0 57 6 22 0 58 6 22 0 59 6 22 0 60 6 22 0 61 6 22 0 65 6 22 0 69 6 22 0 72 6 22 0 76 6 22 0 77 6 22 0 83 6 22 0 84 6 22 0 91 6 22 0 98 6 22 0 99 6 22 0 104 6 22 0 111 6 22 0 114 6 22 0 115 6 22 0 116 6 22 0 119 6 22 0 120 6 22 0 121 6 22 0 124 6 22 0 125 6 22 0 129] 
#[1 6 30 0 5 6 30 0 6 6 30 0 8 6 30 0 9 6 30 0 10 6 30 0 15 6 30 0 23 6 30 0 26 1 139 0 27 6 30 0 28 6 30 0 31 6 30 0 35 6 30 0 42 6 30 0 49 6 30 0 52 6 30 0 53 6 30 0 57 6 30 0 58 6 30 0 59 6 30 0 60 6 30 0 61 6 30 0 65 6 30 0 69 6 30 0 72 6 30 0 76 6 30 0 77 6 30 0 83 6 30 0 84 6 30 0 91 6 30 0 98 6 30 0 99 6 30 0 104 6 30 0 111 6 30 0 114 6 30 0 115 6 30 0 116 6 30 0 119 6 30 0 120 6 30 0 121 6 30 0 124 6 30 0 125 6 30 0 129] 
#[1 8 9 0 106 19 185 0 129 8 17 1 63 1 189 1 66] 
#[0 10 254 0 15 0 28] 
#[0 9 234 0 15 0 28] 
#[1 8 38 0 15 5 97 0 26 8 38 0 28 17 25 0 31 1 253 0 42 9 173 0 76 9 173 0 91 5 117 0 111 5 121 0 194 16 125 1 24 9 173 1 41 17 29 1 42 5 149 1 53 5 153 1 73] 
#[0 11 2 0 5 0 6 0 8 0 10 0 23 0 26 0 27 0 28 0 35 0 46 0 47 0 49 0 52 0 53 0 57 0 58 0 59 0 60 0 61 0 62 0 65 0 69 0 72 0 73 0 74 0 77 0 79 0 82 0 83 0 84 0 85 0 90 0 92 0 93 0 94 0 95 0 98 0 99 0 101 0 102 0 104 0 106 0 108 0 112 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 129] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 17 17 0 131 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 9 141 0 186 9 141 0 187 3 125 0 219 1 37 0 220 1 41 0 221 9 141 1 27 9 141 1 29 1 37 1 30 17 21 1 43 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 9 141 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 8 38 0 15 8 38 0 28 19 189 0 31 9 173 0 76 9 173 0 91 9 173 1 41 17 29 1 42] 
#[0 11 6 0 15 0 23 0 42] 
#[0 11 10 0 15 0 23 0 42] 
#[0 11 14 0 15 0 42] 
#[1 11 18 0 15 19 193 0 23 11 18 0 125] 
#[1 2 119 0 8 2 123 0 15 2 123 0 23 4 202 0 27 7 177 0 31 2 123 0 36 6 145 0 42 10 201 1 25 10 201 1 26 10 201 1 29] 
#[1 11 22 0 8 11 22 0 9 11 22 0 15 11 22 0 23 11 22 0 26 11 22 0 28 11 22 0 31 2 127 0 35 11 22 0 42 0 53 0 49 11 22 0 76 11 22 0 91 11 22 0 111 11 22 0 124 11 22 0 125 5 73 0 246 5 73 0 247] 
#[1 11 26 0 8 11 26 0 9 11 26 0 15 11 26 0 23 11 26 0 26 11 26 0 28 11 26 0 31 2 131 0 35 11 26 0 42 0 53 0 49 11 26 0 76 11 26 0 91 11 26 0 111 11 26 0 124 11 26 0 125 5 73 0 246 5 73 0 247] 
#[1 11 30 0 8 11 30 0 9 11 30 0 15 11 30 0 23 11 30 0 26 11 30 0 28 11 30 0 31 2 135 0 35 11 30 0 42 0 53 0 49 11 30 0 76 11 30 0 91 11 30 0 111 11 30 0 124 11 30 0 125 19 197 0 245 1 105 0 246 1 105 0 247] 
#[1 11 34 0 8 11 34 0 9 11 34 0 15 11 34 0 23 11 34 0 26 11 34 0 28 11 34 0 31 2 139 0 35 11 34 0 42 0 53 0 49 11 34 0 76 11 34 0 91 11 34 0 111 11 34 0 124 11 34 0 125 5 73 0 246 5 73 0 247] 
#[1 11 38 0 8 11 38 0 9 11 38 0 15 11 38 0 23 11 38 0 26 11 38 0 28 11 38 0 31 2 143 0 35 11 38 0 42 0 53 0 49 11 38 0 76 11 38 0 91 11 38 0 111 11 38 0 124 11 38 0 125 19 201 0 245 1 105 0 246 1 105 0 247] 
#[0 11 42 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 11 46 0 2 11 46 0 3 11 46 0 4 11 46 0 5 11 46 0 6 11 46 0 7 11 61 0 8 11 46 0 9 11 46 0 10 11 46 0 11 11 46 0 12 11 46 0 14 11 46 0 15 11 46 0 16 11 46 0 18 11 46 0 20 11 46 0 22 11 46 0 23 11 46 0 24 11 46 0 25 11 46 0 26 11 46 0 28 11 46 0 29 11 46 0 30 11 46 0 31 11 46 0 32 11 46 0 33 11 46 0 34 11 46 0 36 11 46 0 37 11 46 0 38 11 46 0 39 11 46 0 41 6 145 0 42 11 46 0 43 11 46 0 44 11 46 0 45 11 46 0 46 11 46 0 123 11 46 0 124 11 46 0 125 11 46 0 126 11 46 0 127 11 46 0 128 19 205 0 170 19 205 1 29 11 46 1 88] 
#[1 19 209 0 9 7 125 0 15] 
#[0 19 213 0 28] 
#[1 19 217 0 9 7 125 0 15] 
#[0 11 50 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 19 221 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 19 221 0 203 19 221 0 206 19 221 0 207 19 221 0 208 19 221 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 19 221 0 225 1 61 0 226 19 221 0 239 19 221 0 241 19 221 0 242 19 221 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 19 225 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 19 225 0 203 19 225 0 206 19 225 0 207 19 225 0 208 19 225 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 19 225 0 225 1 61 0 226 19 225 0 239 19 225 0 241 19 225 0 242 19 225 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 19 229 0 9 7 125 0 15] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 19 233 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 19 233 0 203 19 233 0 206 19 233 0 207 19 233 0 208 19 233 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 19 233 0 225 1 61 0 226 19 233 0 239 19 233 0 241 19 233 0 242 19 233 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 19 237 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 19 237 0 203 19 237 0 206 19 237 0 207 19 237 0 208 19 237 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 19 237 0 225 1 61 0 226 19 237 0 239 19 237 0 241 19 237 0 242 19 237 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 11 54 0 9 0 28] 
#[1 2 193 0 1 2 193 0 5 3 101 0 8 2 193 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 1 237 0 27 3 109 0 35 2 193 0 40 6 145 0 42 2 193 0 43 2 5 0 47 2 9 0 50 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 2 21 0 63 0 93 0 65 2 33 0 67 0 97 0 69 2 41 0 70 3 85 0 75 0 113 0 77 0 125 0 83 0 129 0 84 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 2 85 0 96 0 149 0 98 0 153 0 99 2 93 0 100 2 97 0 103 2 105 0 107 2 109 0 109 3 85 0 110 2 185 0 113 0 181 0 114 0 189 0 116 0 201 0 119 0 209 0 121 0 213 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 181 0 146 0 225 0 147 0 229 0 148 3 117 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 19 241 0 186 19 241 0 187 3 125 0 219 1 37 0 220 1 41 0 221 19 241 1 27 19 241 1 29 1 37 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 129 1 69 19 241 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 11 58 0 9 0 28] 
#[0 11 62 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[1 11 66 0 2 11 66 0 3 11 66 0 4 11 66 0 5 11 66 0 6 11 66 0 7 11 66 0 8 11 66 0 9 11 66 0 10 11 66 0 11 11 66 0 12 11 66 0 14 11 66 0 15 11 66 0 16 11 66 0 18 11 66 0 20 11 66 0 22 11 66 0 23 11 66 0 24 11 66 0 25 11 66 0 26 11 66 0 28 11 66 0 29 11 66 0 30 11 66 0 31 11 66 0 32 11 66 0 33 11 66 0 34 2 147 0 35 11 66 0 36 11 66 0 37 11 66 0 38 11 66 0 39 11 66 0 41 11 66 0 42 11 66 0 43 11 66 0 44 11 66 0 45 11 66 0 46 0 53 0 49 11 66 0 123 11 66 0 124 11 66 0 125 11 66 0 126 11 66 0 127 11 66 0 128 5 73 0 246 5 73 0 247 11 66 1 88] 
#[1 11 70 0 2 11 70 0 3 11 70 0 4 11 70 0 5 11 70 0 6 11 70 0 7 11 70 0 8 11 70 0 9 11 70 0 10 11 70 0 11 11 70 0 12 11 70 0 14 11 70 0 15 11 70 0 16 11 70 0 18 11 70 0 20 11 70 0 22 11 70 0 23 11 70 0 24 11 70 0 25 11 70 0 26 11 70 0 28 11 70 0 29 11 70 0 30 11 70 0 31 11 70 0 32 11 70 0 33 11 70 0 34 2 151 0 35 11 70 0 36 11 70 0 37 11 70 0 38 11 70 0 39 11 70 0 41 11 70 0 42 11 70 0 43 11 70 0 44 11 70 0 45 11 70 0 46 0 53 0 49 11 70 0 123 11 70 0 124 11 70 0 125 11 70 0 126 11 70 0 127 11 70 0 128 19 245 0 245 1 105 0 246 1 105 0 247 11 70 1 88] 
#[1 19 249 0 9 7 125 0 15] 
#[1 19 253 0 9 7 125 0 15] 
#[0 11 74 0 9] 
#[0 11 78 0 9] 
#[1 0 17 0 5 0 21 0 6 12 237 0 8 11 82 0 9 0 29 0 10 12 241 0 23 0 37 0 27 10 141 0 35 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 0 221 0 146 0 225 0 147 0 229 0 148 3 141 0 149 3 145 0 220 3 149 0 221 20 1 1 4 20 1 1 5 1 129 1 6 10 145 1 7 12 253 1 9 1 141 1 13 20 5 1 15 20 5 1 16 10 161 1 17 20 5 1 18 10 169 1 19 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 1 253 0 42 20 9 0 194] 
#[1 9 205 0 19 0 45 0 35 11 86 0 42 0 53 0 49 5 73 0 246 5 73 0 247 20 13 1 8] 
#[0 11 90 0 42] 
#[1 9 205 0 19 0 45 0 35 11 94 0 42 0 53 0 49 20 17 0 245 1 105 0 246 1 105 0 247 20 21 1 8] 
#[0 11 98 0 42] 
#[1 9 205 0 19 0 45 0 35 11 102 0 42 0 53 0 49 5 73 0 246 5 73 0 247 20 25 1 8] 
#[0 11 106 0 42] 
#[1 2 155 0 47 7 174 0 90 7 174 0 106 7 174 0 129] 
#[1 3 185 0 129 20 33 0 220 20 33 1 30 20 33 1 63 1 189 1 66] 
#[0 11 110 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 11 114 0 9 0 15] 
#[1 18 61 0 8 20 37 0 9 18 69 0 35 18 73 0 42 18 77 1 1] 
#[1 18 61 0 8 18 69 0 35 20 41 0 36 18 73 0 42 18 77 1 1] 
#[1 18 61 0 8 18 69 0 35 18 73 0 42 20 45 0 46 18 77 1 1] 
#[0 11 118 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 11 122 0 15 20 49 0 23 20 53 0 31 11 122 0 124 20 57 0 129] 
#[0 11 126 0 9 0 15 0 23 0 124] 
#[0 11 130 0 9 0 15 0 23 0 124] 
#[0 20 61 0 9] 
#[0 11 134 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124 0 125] 
#[1 11 138 0 9 11 138 0 15 20 65 0 23] 
#[1 20 69 0 9 20 73 0 15] 
#[1 11 142 0 8 11 142 0 9 11 142 0 15 11 142 0 19 11 142 0 23 11 142 0 26 11 142 0 28 11 142 0 31 2 159 0 35 11 142 0 42 0 53 0 49 11 142 0 76 11 142 0 91 11 142 0 111 11 142 0 124 11 142 0 125 5 73 0 246 5 73 0 247] 
#[1 11 146 0 8 11 146 0 9 11 146 0 15 11 146 0 19 11 146 0 23 11 146 0 26 11 146 0 28 11 146 0 31 2 163 0 35 11 146 0 42 0 53 0 49 11 146 0 76 11 146 0 91 11 146 0 111 11 146 0 124 11 146 0 125 20 77 0 245 1 105 0 246 1 105 0 247] 
#[1 11 150 0 8 11 150 0 9 11 150 0 15 11 150 0 19 11 150 0 23 11 150 0 26 11 150 0 28 11 150 0 31 2 167 0 35 11 150 0 42 0 53 0 49 11 150 0 76 11 150 0 91 11 150 0 111 11 150 0 124 11 150 0 125 5 73 0 246 5 73 0 247] 
#[1 11 154 0 8 11 154 0 9 11 154 0 15 11 154 0 19 11 154 0 23 11 154 0 26 11 154 0 28 11 154 0 31 2 171 0 35 11 154 0 42 0 53 0 49 11 154 0 76 11 154 0 91 11 154 0 111 11 154 0 124 11 154 0 125 5 73 0 246 5 73 0 247] 
#[1 8 82 0 5 8 82 0 6 8 82 0 8 8 82 0 9 8 82 0 10 8 82 0 15 8 82 0 23 8 82 0 26 2 7 0 27 8 82 0 28 0 162 0 29 8 82 0 31 8 82 0 35 8 82 0 42 8 82 0 49 8 82 0 52 8 82 0 53 8 82 0 57 8 82 0 58 8 82 0 59 8 82 0 60 8 82 0 61 8 82 0 65 8 82 0 69 8 82 0 72 8 82 0 76 8 82 0 77 8 82 0 83 8 82 0 84 8 82 0 91 8 82 0 98 8 82 0 99 8 82 0 104 8 82 0 111 8 82 0 114 8 82 0 115 8 82 0 116 8 82 0 119 8 82 0 120 8 82 0 121 8 82 0 124 8 82 0 125 8 82 0 129] 
#[1 17 17 0 131 17 21 1 43] 
#[0 11 158 0 15 0 125] 
#[1 11 162 0 8 11 162 0 9 11 162 0 15 11 162 0 23 11 162 0 26 11 162 0 28 11 162 0 31 2 175 0 35 11 162 0 42 0 53 0 49 11 162 0 76 11 162 0 91 11 162 0 111 11 162 0 124 11 162 0 125 5 73 0 246 5 73 0 247] 
#[1 11 166 0 8 11 166 0 9 11 166 0 15 11 166 0 23 11 166 0 26 11 166 0 28 11 166 0 31 2 179 0 35 11 166 0 42 0 53 0 49 11 166 0 76 11 166 0 91 11 166 0 111 11 166 0 124 11 166 0 125 5 73 0 246 5 73 0 247] 
#[0 11 170 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 14 0 15 0 16 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 11 174 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 11 178 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 11 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 11 186 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 11 190 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[1 2 193 0 1 1 209 0 5 0 21 0 6 1 213 0 8 1 217 0 10 2 193 0 12 1 225 0 13 2 193 0 16 1 233 0 17 0 33 0 23 1 237 0 27 1 241 0 28 1 245 0 35 2 193 0 40 1 253 0 42 2 193 0 43 2 5 0 47 0 53 0 49 2 9 0 50 0 57 0 51 0 61 0 52 0 65 0 53 2 13 0 54 2 17 0 55 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 89 0 62 2 21 0 63 2 25 0 64 0 93 0 65 2 29 0 66 2 33 0 67 2 37 0 68 0 97 0 69 2 41 0 70 0 101 0 72 1 21 0 73 1 17 0 74 3 85 0 75 0 113 0 77 2 53 0 78 0 117 0 79 2 57 0 80 2 61 0 81 1 21 0 82 0 125 0 83 0 129 0 84 1 17 0 85 2 69 0 86 2 73 0 87 2 77 0 88 3 89 0 89 0 141 0 90 1 17 0 95 2 85 0 96 2 89 0 97 0 149 0 98 0 153 0 99 2 93 0 100 1 17 0 101 0 161 0 102 2 97 0 103 0 165 0 104 2 101 0 105 2 105 0 107 1 17 0 108 2 109 0 109 3 85 0 110 2 117 0 111 0 177 0 112 2 185 0 113 0 181 0 114 0 185 0 115 0 189 0 116 0 193 0 117 1 21 0 118 0 201 0 119 0 205 0 120 0 209 0 121 2 125 0 122 2 129 0 129 2 133 0 130 2 137 0 132 2 141 0 133 2 145 0 134 3 93 0 135 3 93 0 136 3 93 0 137 3 93 0 138 2 181 0 145 2 169 0 146 0 225 0 147 0 229 0 148 0 233 0 149 2 181 0 150 2 177 0 151 2 181 0 159 2 185 0 160 2 213 0 163 2 193 0 164 2 213 0 165 2 213 0 171 2 213 0 172 2 213 0 173 2 213 0 174 2 217 0 175 2 221 0 176 2 225 0 177 2 229 0 179 2 233 0 180 2 237 0 181 2 241 0 182 2 245 0 183 2 249 0 184 2 253 0 185 3 9 0 186 3 9 0 187 3 9 0 189 20 81 0 191 3 17 0 192 3 21 0 193 3 25 0 194 3 29 0 196 3 33 0 198 3 37 0 202 20 81 0 203 20 81 0 206 20 81 0 207 20 81 0 208 20 81 0 209 1 9 0 211 3 49 0 212 1 17 0 213 1 21 0 214 1 9 0 215 1 9 0 216 3 53 0 219 1 37 0 220 1 41 0 221 1 9 0 222 1 9 0 223 1 53 0 224 20 81 0 225 1 61 0 226 20 81 0 239 20 81 0 241 20 81 0 242 20 81 0 243 3 57 0 245 1 105 0 246 1 105 0 247 1 113 1 2 1 117 1 3 3 61 1 4 3 61 1 5 1 129 1 6 1 133 1 9 1 9 1 11 1 141 1 13 1 37 1 30 1 9 1 31 1 157 1 32 1 161 1 35 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66 3 65 1 69 3 69 1 72 3 9 1 77 2 181 1 83 3 81 1 84 3 85 1 85 3 89 1 86 3 93 1 87] 
#[0 11 194 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 11 198 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 11 202 0 9 0 28] 
#[1 11 206 0 2 11 206 0 3 11 206 0 4 11 206 0 5 11 206 0 6 11 206 0 7 11 206 0 8 11 206 0 9 11 206 0 10 11 206 0 11 11 206 0 12 11 206 0 14 11 206 0 15 11 206 0 16 11 206 0 18 11 206 0 20 11 206 0 22 11 206 0 23 11 206 0 24 11 206 0 25 11 206 0 26 11 206 0 28 11 206 0 29 11 206 0 30 11 206 0 31 11 206 0 32 11 206 0 33 11 206 0 34 2 183 0 35 11 206 0 36 11 206 0 37 11 206 0 38 11 206 0 39 11 206 0 41 11 206 0 42 11 206 0 43 11 206 0 44 11 206 0 45 11 206 0 46 0 53 0 49 11 206 0 123 11 206 0 124 11 206 0 125 11 206 0 126 11 206 0 127 11 206 0 128 5 73 0 246 5 73 0 247 11 206 1 88] 
#[0 11 210 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 11 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 11 218 0 9] 
#[0 11 222 0 9] 
#[0 11 226 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 26 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 92 0 93 0 94 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 11 230 0 42] 
#[1 9 205 0 19 0 45 0 35 11 234 0 42 0 53 0 49 5 73 0 246 5 73 0 247 20 85 1 8] 
#[0 11 238 0 42] 
#[0 11 242 0 42] 
#[1 3 185 0 129 20 89 0 220 20 89 1 30 20 89 1 63 1 189 1 66] 
#[0 11 246 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 11 250 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 11 254 0 8 0 9 0 35 0 36 0 42 0 46] 
#[0 12 2 0 8 0 9 0 35 0 36 0 42 0 46] 
#[1 12 6 0 15 12 6 0 124 20 93 0 129] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 20 97 0 146 0 225 0 147 0 229 0 148 3 177 0 149 3 145 0 220 3 149 0 221 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 12 10 0 15 20 101 0 31 12 10 0 124] 
#[0 12 14 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124 0 125] 
#[0 12 18 0 9 0 15] 
#[0 12 22 0 8 0 9 0 15 0 19 0 23 0 26 0 28 0 31 0 35 0 42 0 49 0 76 0 91 0 111 0 124 0 125] 
#[1 0 37 0 27 0 61 0 52 0 65 0 53 0 69 0 57 0 73 0 58 0 77 0 59 0 81 0 60 0 85 0 61 0 93 0 65 0 97 0 69 0 101 0 72 0 113 0 77 0 125 0 83 0 129 0 84 0 149 0 98 0 153 0 99 0 165 0 104 0 181 0 114 0 185 0 115 0 189 0 116 0 201 0 119 0 205 0 120 0 209 0 121 3 185 0 129 4 177 0 149 4 181 0 215 4 181 0 216 5 229 0 217 4 181 0 219 1 37 0 220 1 41 0 221 4 181 0 222 4 181 0 223 1 53 0 224 4 189 0 226 4 181 1 11 20 105 1 14 1 37 1 30 4 181 1 31 1 157 1 32 1 161 1 35 1 37 1 63 1 189 1 66 4 181 1 69] 
#[1 12 26 0 8 12 26 0 9 12 26 0 15 12 26 0 19 12 26 0 23 12 26 0 26 12 26 0 28 12 26 0 31 2 187 0 35 12 26 0 42 0 53 0 49 12 26 0 76 12 26 0 91 12 26 0 111 12 26 0 124 12 26 0 125 5 73 0 246 5 73 0 247] 
#[0 12 30 0 1 0 5 0 6 0 8 0 10 0 12 0 13 0 16 0 17 0 23 0 27 0 28 0 35 0 40 0 42 0 43 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 57 0 58 0 59 0 60 0 61 0 62 0 63 0 64 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 88 0 89 0 90 0 95 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 107 0 108 0 109 0 110 0 111 0 112 0 113 0 114 0 115 0 116 0 117 0 118 0 119 0 120 0 121 0 122 0 129 0 130 0 132 0 133 0 134 0 135 0 136 0 137 0 138 1 88] 
#[0 12 34 0 42] 
#[0 12 38 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 21 0 22 0 23 0 24 0 25 0 26 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 41 0 43 0 44 0 45 0 46 0 123 0 124 0 125 0 126 0 127 0 128 1 88] 
#[0 12 42 0 15 0 124] 
#[0 12 46 0 15 0 124] 
#[1 0 37 0 27 0 49 0 47 0 93 0 65 0 141 0 90 0 213 0 129 20 109 0 146 0 225 0 147 0 229 0 148 3 177 0 149 3 145 0 220 3 149 0 221 3 145 1 30 0 225 1 50 1 169 1 57 1 173 1 58 1 181 1 63 0 225 1 64 1 189 1 66] 
#[1 12 50 0 9 12 50 0 15 20 113 0 23] 
#[0 12 54 0 15 0 124] 
#[0 12 58 0 9 0 15]
	).
]

{ #category : #private }
CPPParser >> actionsForCurrentToken [
	| actions |
	((currentToken ids includes: scanner GTId)
		and: [ nodeStack includes: #templateArgs ])
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner GTId to: actions.
			actions notEmpty
				ifTrue: [ ^ actions ] ].
	^ super actionsForCurrentToken
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
		ifTrue: [ (nodeStack includes: #templateArgs)
				ifTrue: [ currentToken := currentToken class
						value: '>'
						start: currentToken startPosition
						ids: (Array with: scanner GTId).
					self position: currentToken startPosition ]
				ifFalse: [ token := currentToken.
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
							self position: position ] ] ].
	super parseCurrentToken
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForStartTemplateArgs1: nodes [
	^ #templateArgs
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
	result left: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result balancedTokens.
	result right: ((nodes at: 2) at: 3).
	result addNodes: ((nodes at: 2) at: 4) to: result arguments.
	result addTokens: ((nodes at: 2) at: 5) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributeargumentclause1: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributeargumentclause2: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 3 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForattributeargumentclause3: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	result at: 3 put: (nodes at: 3).
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
CPPParser >> reduceActionForbalancedtoken1: nodes [
	| result |
	result := CPPBalancedTokenNode new.
	result left: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result balancedTokens.
	result right: (nodes at: 3).
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
	result ltToken: (nodes at: 3).
	result gtToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionForsimpletemplateid2: nodes [
	| result |
	result := CPPTemplateIdentifierNode new.
	result name: (nodes at: 1).
	result ltToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result gtToken: (nodes at: 5).
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
	result ltToken: (nodes at: 3).
	result gtToken: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
CPPParser >> reduceActionFortemplateid3: nodes [
	| result |
	result := CPPOperatorFunctionTemplateIdentifierNode new.
	result identifier: (nodes at: 1).
	result ltToken: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result arguments.
	result addTokens: ((nodes at: 4) at: 2) to: result ellipsises.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result gtToken: (nodes at: 5).
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
	result type: (nodes at: 7).
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
	result type: (nodes at: 8).
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
