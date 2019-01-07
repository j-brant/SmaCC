Class {
	#name : #JavaParser,
	#superclass : #SmaCCGLRParser,
	#classInstVars : [
		'keywords'
	],
	#category : #'SmaCC_Java'
}

{ #category : #generated }
JavaParser class >> ambiguousTransitions [
^#(
#[ 0 6 0 10] 
#[ 0 14 0 61] 
#[ 0 14 0 73] 
#[ 0 14 0 81] 
#[ 0 14 0 85] 
#[ 0 14 0 97] 
#[ 0 14 0 101] 
#[ 0 14 0 105] 
#[ 0 14 0 117] 
#[ 0 14 0 121] 
#[ 0 14 0 149] 
#[ 0 14 0 22 0 229] 
#[ 0 22 2 1] 
#[ 0 18 0 61] 
#[ 0 22 2 185] 
#[ 0 22 0 229] 
#[ 0 22 0 126] 
#[ 0 134 3 97] 
#[ 0 158 3 117] 
#[ 0 61 0 166] 
#[ 0 158 3 153] 
#[ 0 202 3 225] 
#[ 0 14 0 22 2 1] 
#[ 0 22 0 126 0 214] 
#[ 0 126 0 214] 
#[ 0 57 0 126] 
#[ 0 242 4 57] 
#[ 0 242 4 61] 
#[ 0 242 4 65] 
#[ 0 246 4 69] 
#[ 0 246 4 73] 
#[ 0 250 4 77] 
#[ 0 250 4 81] 
#[ 0 250 4 85] 
#[ 0 254 4 89] 
#[ 0 254 4 93] 
#[ 0 254 4 97] 
#[ 0 254 4 101] 
#[ 0 254 4 105] 
#[ 1 2 4 109] 
#[ 1 2 4 113] 
#[ 1 6 4 117] 
#[ 1 10 4 121] 
#[ 1 14 4 125] 
#[ 1 18 4 129] 
#[ 1 22 4 133] 
#[ 1 22 4 137] 
#[ 0 238 1 26] 
#[ 0 22 0 57] 
#[ 0 14 0 22 2 185] 
#[ 0 22 5 33] 
#[ 0 201 1 106] 
#[ 0 22 6 97] 
#[ 0 14 5 161] 
#[ 2 134 4 57] 
#[ 2 134 4 61] 
#[ 2 134 4 65] 
#[ 2 138 4 69] 
#[ 2 138 4 73] 
#[ 2 142 4 77] 
#[ 2 142 4 81] 
#[ 2 142 4 85] 
#[ 2 146 4 89] 
#[ 2 146 4 93] 
#[ 2 146 4 97] 
#[ 2 146 4 101] 
#[ 2 146 4 105] 
#[ 2 150 4 109] 
#[ 2 150 4 113] 
#[ 2 154 4 117] 
#[ 2 158 4 121] 
#[ 2 162 4 125] 
#[ 2 166 4 129] 
#[ 0 126 7 105] 
#[ 0 22 7 229] 
#[ 3 42 8 101] 
#[ 3 250 9 241] 
#[ 0 73 2 82] 
#[ 0 81 2 82] 
#[ 0 85 2 82] 
#[ 0 97 2 82] 
#[ 0 105 2 82] 
#[ 0 117 2 82] 
#[ 0 121 2 82] 
#[ 0 149 2 82] 
#[ 2 82 2 209] 
#[ 4 154 6 249] 
#[ 0 73 2 82 4 154] 
#[ 0 81 2 82 4 154] 
#[ 0 85 2 82 4 154] 
#[ 0 97 2 82 4 154] 
#[ 0 105 2 82 4 154] 
#[ 0 117 2 82 4 154] 
#[ 0 121 2 82 4 154] 
#[ 0 149 2 82 4 154] 
#[ 2 82 4 154] 
#[ 2 82 2 209 4 154] 
#[ 0 158 11 193]
	).
]

{ #category : #'generated-accessing' }
JavaParser class >> cacheId [
	^'2019-01-07T13:28:51.625059-06:00'
]

{ #category : #generated }
JavaParser class >> definitionComment [
"%start goal block_statement expression type_declaration;
%glr;
%right ""else"";

%id <UNSIGNED_RIGHT_SHIFT> <SIGNED_RIGHT_SHIFT> <GREATER_THAN>;

%ignore_variables semicolon comma leftParen rightParen _leftParen _rightParen lt gt leftBracket rightBracket leftBrace rightBrace;

%prefix Java ;
%suffix Node ;
%root Program ;

%hierarchy IfStatement (IfElseStatement);
%hierarchy New (NewClass);
%hierarchy Literal (IntegerLiteral FloatLiteral BooleanLiteral CharacterLiteral StringLiteral Null);
%hierarchy PrimitiveType (BooleanType ByteType ShortType IntType LongType CharType FloatType DoubleType) ;
%hierarchy Type (PrimitiveType ClassType ArrayType) ;
%hierarchy Statement (Block LocalVariableDeclarationStatement EmptyStatement LabeledStatement
					ExpressionStatement IfStatement SwitchStatement WhileStatement DoWhileStatement
					ForStatement ForEachStatement BreakStatement ContinueStatement ReturnStatement ThrowStatement
					SynchronizedStatement TryStatement AssertStatement ThisConstructorInvocation SuperConstructorInvocation);
%hierarchy Expression (UnaryExpression BinaryExpression ConditionalExpression Assignment 
					ClassExpression FieldAccess MethodInvocation ArrayAccess OuterThis
					New Literal Name NewArray LambdaExpression MethodReference);
%hierarchy Name (QualifiedName) ;
%hierarchy SingleTypeImportDeclaration (TypeImportOnDemandDeclaration);
%hierarchy VariableDeclaration (InitializedVariableDeclaration) ;
%hierarchy Parameter (VariableArgumentParameter);
%hierarchy AbstractMethodDeclaration (AnnotationMethodDeclaration);
%hierarchy Declaration ( AbstractMethodDeclaration  ClassDeclaration 
						ConstructorDeclaration EmptyDeclaration
						EnumDeclaration FieldDeclaration
						LocalVariableDeclaration MethodDeclaration 
						PackageDeclaration SingleTypeImportDeclaration 
						VariableDeclaration );
%hierarchy UnaryExpression (CastExpression PostDecrementExpression PostIncrementExpression
						PreDecrementExpression PreIncrementExpression UnaryAddition
						UnaryBitInvert UnaryNot UnarySubtraction);
%hierarchy TypeName (QualifiedTypeName);

<GREATER_THAN>
	: >
	;
<SIGNED_RIGHT_SHIFT>
	: >>
	;
<UNSIGNED_RIGHT_SHIFT>
	: >>>
	;
<DECIMAL_INTEGER>
	: 0 | [1-9] [0-9]*	
	;
<HEX_INTEGER>
	: 0[xX][0-9a-fA-F]+	
	;
<OCTAL_INTEGER>
	: 0[0-7]+	
	;
<EXPONENT>
	: [eE] [\-\+]? [0-9]+ 	
	;
<FLOAT_TYPE>
	: [fFdD]	
	;
<ESCAPE_SEQUENCE>
	: \\ ([btnfr\""\'\\] | ([0-3] [0-7]{0,2} | [4-7][0-7]?) | (u [0-9a-fA-F]{4,4}))	
	;
<INTEGER_LITERAL>
	: (<DECIMAL_INTEGER> | <HEX_INTEGER> | <OCTAL_INTEGER>) [lL]?	
	;
<FLOATING_POINT_LITERAL>
	: [0-9]+ \. [0-9]* <EXPONENT>? <FLOAT_TYPE>? 
	| \. [0-9]+ <EXPONENT>? <FLOAT_TYPE>? 
	| [0-9]+ <EXPONENT> <FLOAT_TYPE>? 
	| [0-9]+ <FLOAT_TYPE>	
	| <HEX_INTEGER> \. [0-9a-fA-F]+ [pP] [\-\+]? [0-9]+ <FLOAT_TYPE>?
	;
<BOOLEAN_LITERAL>
	: true 
	| false	
	;
<CHARACTER_LITERAL>
	: \' ([^\\\'] | <ESCAPE_SEQUENCE> ) \'	
	;
<STRING_LITERAL>
	: \"" ([^\\\""] | <ESCAPE_SEQUENCE> )* \""	
	;
<NULL_LITERAL>
	: null	
	;
<IDENTIFIER>
	: (<isLetter> | [a-zA-Z_$]) (<isLetter>|\w|$)*	
	;

<eol>
	: \r 
	| \n 
	| \r\n
	;
<whitespace>
	: \s+
	;
<comment>
	: \/\/ [^\r\n]* 
	| /\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/
 	;
<patternToken>
	: (\`  [^\`]* \`)+
	;

goal 
	: compilation_unit 
	;
# 19.3) Lexical Structure.
literal 
	: <INTEGER_LITERAL> 'token' {{IntegerLiteral}}
	| <FLOATING_POINT_LITERAL> 'token' {{FloatLiteral}}
	| <BOOLEAN_LITERAL> 'token' {{BooleanLiteral}}
	| <CHARACTER_LITERAL> 'token' {{CharacterLiteral}}
	| <STRING_LITERAL> 'token' {{StringLiteral}}
	| <NULL_LITERAL> 'token' {{Null}}
	;
# 19.4) Types, Values, and Variables
type
	: primitive_type 
	| reference_type 
	;
primitive_type 
	: numeric_type 
	| ""boolean"" 'token' {{BooleanType}}
	;
numeric_type
	: integral_type 
	| floating_point_type 
	;
integral_type 
	: ""byte"" 'token' {{ByteType}}
	| ""short"" 'token' {{ShortType}}
	| ""int"" 'token' {{IntType}}
	| ""long"" 'token' {{LongType}}
	| ""char"" 'token' {{CharType}}
	;
floating_point_type 
	: ""float"" 'token' {{FloatType}}
	| ""double"" 'token' {{DoubleType}}
	;
reference_type 
	: class_or_interface_type 
	| array_type 
	;
class_or_interface_type 
	: type_name 'name' {{ClassType}}
	;
class_type 
	: class_or_interface_type 
	;
interface_type 
	: class_or_interface_type 
	;		
array_type 
	: primitive_type 'baseType' dims {{ArrayType}}
	| type_name 'baseType' dims {{ArrayType}}
	;
# 19.5) Names
name
	: simple_name 
	| qualified_name 
	;
simple_name 
	: <IDENTIFIER> 'name' {{Name}}
	;
qualified_name 
	: name 'nspace' ""."" 'period' <IDENTIFIER> 'name' {{QualifiedName}}
	;
# 19.6) ""package""s
compilation_unit 
	: package_declaration_opt 'packageDeclaration'
		import_declarations_opt 
		type_declarations_opt {{ProgramFile}}
	;
package_declaration_opt 
	: package_declaration
	|
	;
import_declarations_opt 
	: import_declarations
	|
	;
type_declarations_opt 
	: type_declarations 
	|
	;
import_declarations 
	: import_declaration 'import' 
	| import_declarations import_declaration 'import'
	;
type_declarations 
	: type_declaration 'typeDeclaration' 
	| type_declarations type_declaration 'typeDeclaration' 
	;
package_declaration 
	: annotations ""package"" 'packageToken' name 'name' "";"" 'semicolon' {{PackageDeclaration}}
	;
import_declaration 
	: single_type_import_declaration 
	| type_import_on_demand_declaration 
	;
single_type_import_declaration 
	: ""import"" 'importToken' static_opt name 'name' "";"" 'semicolon' {{SingleTypeImportDeclaration}}
	;
type_import_on_demand_declaration 
	: ""import"" 'importToken' static_opt name 'name' ""."" 'period' ""*"" 'star' "";"" 'semicolon' {{TypeImportOnDemandDeclaration}}
	;
type_declaration 
	: class_declaration 
	| interface_declaration 
	| annotation_interface_declaration
	| "";"" 'semicolon' {{EmptyDeclaration}}
	;
# 19.7) Productions used only in the LALR(1) grammar

modifiers_opt
	:
	| modifiers 
	;
modifiers 
	: modifier 'modifier'
	| modifiers modifier 'modifier'
	;
modifier 
	: ""public"" 'token' {{Modifier}}
	| ""protected"" 'token' {{Modifier}}
	| ""private"" 'token' {{Modifier}}
	| ""static"" 'token' {{Modifier}}
	| ""abstract"" 'token' {{Modifier}}
	| ""final"" 'token' {{Modifier}}
	| ""native"" 'token' {{Modifier}}
	| ""synchronized"" 'token' {{Modifier}}
	| ""transient"" 'token' {{Modifier}}
	| ""volatile"" 'token' {{Modifier}}
	| ""strictfp"" 'token' {{Modifier}} # note that semantic analysis must check that the
	                 # context of the modifier allows strictfp.
	| annotation
	;
# 19.8) Classes
# 19.8.1) Class Declaration:
class_declaration 
	: modifiers_opt ""class"" 'classToken' <IDENTIFIER> 'name' type_parameters_opt 'typeParameters' super_opt interfaces_opt class_body {{ClassDeclaration}}
	| enum_declaration
	;
super 
	: ""extends"" 'extendsToken' class_type 'superclass'
	;
super_opt 
	: 
	| super 
	;
interfaces 
	: ""implements"" 'implementsToken' interface_type_list
	;
interfaces_opt
	: 
	| interfaces 
	;
interface_type_list 
	: interface_type 'interface' 
	| interface_type_list "","" 'comma' interface_type 'interface' 
	;
class_body 
	: ""{"" 'leftBrace' class_body_declarations_opt ""}"" 'rightBrace'
	;
class_body_declarations_opt 
	: 
	| class_body_declarations
	;
class_body_declarations 
	: class_body_declaration 'declaration' 
	| class_body_declarations class_body_declaration 'declaration' 
	;
class_body_declaration 
	: class_member_declaration 
	| static_initializer 
	| constructor_declaration 
	| block 
	;
class_member_declaration 
	: field_declaration 
	| method_declaration 
	| type_declaration
	;
# 19.8.2) Field Declarations
field_declaration 
	: modifiers_opt type 'type' variable_declarators "";"" 'semicolon' {{FieldDeclaration}}
	;
variable_declarators 
	: variable_declarator 'variableDeclaration' 
	| variable_declarators "","" 'comma' variable_declarator 'variableDeclaration'
	;
variable_declarator 
	: variable_declarator_id 'variable' {{VariableDeclaration}}
	| initialized_variable_declarator
	;
initialized_variable_declarator
	: variable_declarator_id 'variable' ""="" 'equals' variable_initializer 'initializer' {{InitializedVariableDeclaration}}
	;
variable_declarator_id 
	: <IDENTIFIER> 'name' {{VariableName}}
	| variable_declarator_id 'variable' ""["" 'leftBracket' ""]"" 'rightBracket' {{ArrayVariableName}}
	;
variable_initializer 
	: expression 
	| array_initializer 
	;
# 19.8.3) Method Declarations
method_declaration 
	: method_header method_body 'body' {{MethodDeclaration}}
	;
method_header 
	: modifiers_opt type_parameters_opt 'typeParameters' type 'type' method_declarator 'declarator' throws_opt 'throws'
	| modifiers_opt type_parameters_opt 'typeParameters' void 'type' method_declarator 'declarator' throws_opt 'throws'
	;
####
void 
	: ""void"" 'voidToken' {{VoidType}} 
	;
####
method_declarator 
	: <IDENTIFIER> 'name' ""("" 'leftParen' formal_parameter_list_opt "")"" 'rightParen' {{MethodDeclarator}}
	| method_declarator 'declarator' ""["" 'leftBracket' ""]"" 'rightBracket' {{ArrayMethodDeclarator}} # deprecated
	# be careful; the above production also allows 'void foo() []'
	;
formal_parameter_list_opt 
	: 
	| formal_parameter_list 
	;
formal_parameter_list 
	: formal_parameter 'parameter' 
	| formal_parameter_list "","" 'comma' formal_parameter 'parameter' 
	;
formal_parameter 
	: variable_modifiers type 'type' variable_declarator_id 'variable' {{Parameter}}
	| variable_modifiers type 'type' ""..."" 'varArgsToken' variable_declarator_id 'variable' {{VariableArgumentParameter}}
	;
throws_opt 
	: 
	| throws 
	;
throws 
	: ""throws"" 'throwsToken' class_type_list {{Throws}}
	;
class_type_list 
	: class_type 'classType'
	| class_type_list "","" 'comma' class_type 'classType' 
	;
method_body 
	: block 
	| "";"" 'semicolon' {{EmptyMethodBody}}
	;
# 19.8.4) Static Initializers
static_initializer 
	: ""static"" 'staticToken' block 'block' {{StaticInitializer}}
	;
# 19.8.5) Constructor Declarations
constructor_declaration 
	: modifiers_opt constructor_declarator throws_opt 'throws'
			constructor_body 'body' {{ConstructorDeclaration}}
	;
constructor_declarator 
	: type_parameters_opt 'typeParameters' simple_name 'name' ""("" 'leftParen' formal_parameter_list_opt "")"" 'rightParen'
	;
constructor_body 
	: ""{"" 'leftBrace' explicit_constructor_invocation 'statement'
			block_statements ""}"" 'rightBrace' {{Block}}
	| ""{"" 'leftBrace' explicit_constructor_invocation 'statement' ""}"" 'rightBrace' {{Block}}
	| ""{"" 'leftBrace' block_statements ""}"" 'rightBrace' {{Block}}
	| ""{"" 'leftBrace' ""}"" 'rightBrace' {{Block}}
	;
explicit_constructor_invocation 
	: ""this"" 'thisToken' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' "";"" 'semicolon' {{ThisConstructorInvocation}}
	| ""super"" 'superToken' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' "";"" 'semicolon' {{SuperConstructorInvocation}}
	| primary 'primary' ""."" 'period' ""this"" 'thisToken' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' "";"" 'semicolon' {{ThisConstructorInvocation}}
	| primary 'primary' ""."" 'period' ""super"" 'superToken' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' "";"" 'semicolon' {{SuperConstructorInvocation}}
	;
# 19.9) Interfaces
# 19.9.1) Interface Declarations
interface_declaration 
	: modifiers_opt ""interface"" 'interfaceToken' <IDENTIFIER> 'name' type_parameters_opt 'typeParameters' extends_interfaces_opt 
			interface_body {{Interface}}
	;
annotation_interface_declaration
	: modifiers_opt ""@"" 'atToken' ""interface"" 'interfaceToken' <IDENTIFIER> 'name' annotation_interface_body {{AnnotationInterface}}
	;
annotation_interface_body
	: ""{"" 'leftBrace' annotation_interface_member_declarations_opt ""}"" 'rightBrace'
	;
annotation_interface_member_declarations_opt
	: 
	| annotation_interface_member_declarations
	;
annotation_interface_member_declarations
	: annotation_interface_member_declaration 'declaration'
	| annotation_interface_member_declarations annotation_interface_member_declaration 'declaration'
	;
annotation_interface_member_declaration
	: annotation_method_declaration
	| type_declaration
	| field_declaration
	;
annotation_method_declaration
	: abstract_method_declaration
	| method_header ""default"" 'defaultToken' variable_initializer 'value' "";"" 'semicolon' {{AnnotationMethodDeclaration}}
	| method_header ""default"" 'defaultToken' annotation 'value' "";"" 'semicolon' {{AnnotationMethodDeclaration}}
	;
extends_interfaces_opt 
	: 
	| extends_interfaces 
	;
extends_interfaces 
	: ""extends"" 'extendsToken' interface_type 'interfaceType' 
	| extends_interfaces "","" 'comma' interface_type 'interfaceType' 
	;
interface_body 
	: ""{"" 'leftBrace' interface_member_declarations_opt ""}"" 'rightBrace'
	;
interface_member_declarations_opt 
	: 
	| interface_member_declarations 
	;
interface_member_declarations 
	: interface_member_declaration 'declaration'
	| interface_member_declarations interface_member_declaration 'declaration'
	;
interface_member_declaration 
	: constant_declaration 
	| abstract_method_declaration 
	| interface_method_declaration
	| type_declaration
	;
constant_declaration 
	: field_declaration 
	# need to semantically check that modifiers of field declaration
	# include only PUBLIC, ""static"", or ""final"". Other modifiers are
	# disallowed.
	;
interface_method_declaration 
	: interface_method_header block 'body' {{MethodDeclaration}}
	;	
interface_method_header 
	: interface_modifiers_opt type_parameters_opt 'typeParameters' type 'type' method_declarator 'declarator' throws_opt 'throws'
	| interface_modifiers_opt type_parameters_opt 'typeParameters' void 'type' method_declarator 'declarator' throws_opt 'throws'
	;
interface_modifiers_opt
	: modifiers_opt
	| default_modifier 'modifier'
	;
default_modifier 
	: ""default"" 'token' {{Modifier}}
	;
abstract_method_declaration 
	: method_header "";"" 'semicolon' {{AbstractMethodDeclaration}}
	;
# 19.10) Arrays
array_initializer 
	: ""{"" 'leftBrace' variable_initializers "","" 'comma' ""}"" 'rightBrace' {{ArrayInitializer}}
	| ""{"" 'leftBrace' variable_initializers ""}"" 'rightBrace' {{ArrayInitializer}}
	| ""{"" 'leftBrace' "","" 'comma' ""}"" 'rightBrace' {{ArrayInitializer}}
	| ""{"" 'leftBrace' ""}"" 'rightBrace' {{ArrayInitializer}}
	;
variable_initializers 
	: variable_initializer 'initializer' 
	| variable_initializers "","" 'comma' variable_initializer 'initializer'
	;
# 19.11) Blocks and Statements
block 
	:	""{"" 'leftBrace' block_statements_opt ""}"" 'rightBrace' {{Block}}
	;
block_statements_opt 
	: 
	| block_statements 
	;
block_statements 
	: block_statement 'statement' 
	| block_statements block_statement 'statement' 
	;
block_statement 
	: local_variable_declaration_statement 
	| statement 
	| class_declaration 
	| interface_declaration 
	;
local_variable_declaration_statement 
	: local_variable_declaration 'declaration' "";"" 'semicolon' {{LocalVariableDeclarationStatement}}
	;
local_variable_declaration 
	: variable_modifiers type 'type' variable_declarators {{LocalVariableDeclaration}}
	;
statement 
	: statement_without_trailing_substatement 
	| labeled_statement 
	| if_then_statement 
	| if_then_else_statement 
	| while_statement 
	| for_statement
	| foreach_statement
	;
statement_without_trailing_substatement 
	: block 
	| empty_statement 
	| expression_statement 
	| switch_statement 
	| do_statement 
	| break_statement 
	| continue_statement 
	| return_statement 
	| synchronized_statement 
	| throw_statement 
	| try_statement 
	| assert_statement
	;
empty_statement 
	: "";"" 'semicolon' {{EmptyStatement}}
	;
labeled_statement 
	: <IDENTIFIER> 'identifier' "":"" 'colon' statement 'statement' {{LabeledStatement}}
	;
expression_statement 
	: statement_expression 'expression' "";"" 'semicolon' {{ExpressionStatement}}
	;
statement_expression 
	: assignment 
	| preincrement_expression 
	| predecrement_expression 
	| postincrement_expression 
	| postdecrement_expression 
	| method_invocation 
	| class_instance_creation_expression 
	;
if_then_statement 
	: ""if"" 'ifToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' statement 'trueStatement' {{IfStatement}}
	;
if_then_else_statement 
	: ""if"" 'ifToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' statement 'trueStatement'
			""else"" 'elseToken' statement 'falseStatement' {{IfElseStatement}}
	;
switch_statement 
	: ""switch"" 'switchToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' switch_block 'block' {{SwitchStatement}}
	;
switch_block 
	: ""{"" 'leftBrace' switch_block_statement_groups switch_labels ""}"" 'rightBrace' {{SwitchBlock}}
	| ""{"" 'leftBrace' switch_block_statement_groups ""}"" 'rightBrace' {{SwitchBlock}}
	| ""{"" 'leftBrace' switch_labels ""}"" 'rightBrace' {{SwitchBlock}}
	| ""{"" 'leftBrace' ""}"" 'rightBrace' {{SwitchBlock}}
	;
switch_block_statement_groups 
	: switch_block_statement_group 'statementGroup' 
	| switch_block_statement_groups switch_block_statement_group 'statementGroup' 
	;
switch_block_statement_group 
	: switch_labels block_statements {{SwitchBlockStatementGroup}}
	;
switch_labels 
	: switch_label 'label' 
	| switch_labels switch_label 'label'
	;
switch_label 
	: ""case"" 'caseToken' constant_expression 'constant' "":"" 'colon' {{SwitchLabel}}
	| ""default"" 'defaultToken' "":"" 'colon' {{DefaultLabel}}
	;
while_statement 
	: ""while"" 'whileToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' statement 'statement' {{WhileStatement}}
	;
do_statement 
	: ""do"" 'doToken' statement 'statement' ""while"" 'whileToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' "";"" 'semicolon' {{DoWhileStatement}}
	;
for_statement 
	: ""for"" 'forToken' ""("" 'leftParen' for_init_opt 'initial' "";"" 'firstSemicolon' expression_opt 'test' "";"" 'secondSemicolon'
			for_update_opt 'update' "")"" 'rightParen' statement 'statement' {{ForStatement}}
	;
for_init_opt 
	: 
	| for_init 
	;
for_init 
	: statement_expression_list 
	| local_variable_declaration 
	;
for_update_opt 
	: 
	| for_update 
	;
for_update 
	: statement_expression_list 
	;
statement_expression_list 
	: statement_expression 'expression' {{StatementExpressionList}}
	| statement_expression_list "","" 'comma' statement_expression 'expression' {{StatementExpressionList}}
	;
identifier_opt 
	: 
	| <IDENTIFIER> 
	;
break_statement 
	: ""break"" 'breakToken' identifier_opt 'identifier' "";"" 'semicolon' {{BreakStatement}}
	;
continue_statement 
	: ""continue"" 'continueToken' identifier_opt 'identifier' "";"" 'semicolon' {{ContinueStatement}}
	;
return_statement 
	: ""return"" 'returnToken' expression_opt 'expression' "";"" 'semicolon' {{ReturnStatement}}
	;
throw_statement 
	: ""throw"" 'throwToken' expression 'expression' "";"" 'semicolon' {{ThrowStatement}}
	;
synchronized_statement 
	: ""synchronized"" 'synchronizedToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' block 'block' {{SynchronizedStatement}}
	;
try_statement 
	: ""try"" 'tryToken' try_resources_opt block 'block' catches {{TryStatement}}
	| ""try"" 'tryToken' try_resources_opt block 'block' catches_opt finally 'finally' {{TryStatement}}
	| ""try"" 'tryToken' try_resources block 'block' {{TryStatement}}
	;
try_resources_opt
	:
	| try_resources
	;
try_resources
	: ""("" 'leftParen' try_resources_list semicolon_opt "")"" 'rightParen'
	;
try_resources_list
	: try_resource 'resource'
	| try_resources_list "";"" 'semicolon' try_resource 'resource' 
	;
try_resource
	: variable_modifiers type 'type' initialized_variable_declarator 'variableDeclaration' {{LocalVariableDeclaration}}
	;
semicolon_opt
	:
	| "";"" 'semicolon'
	;
catches_opt 
	: 
	| catches 
	;
catches 
	: catch_clause 'catch'
	| catches catch_clause 'catch'
	;
catch_clause 
	: ""catch"" 'catchToken' ""("" 'leftParen' catch_parameter 'parameter' "")"" 'rightParen' block 'block' {{CatchClause}}
	;
catch_parameter
	: variable_modifiers catch_types variable_declarator_id 'variable'  {{CatchParameter}}
	;
catch_types
	: type 'type'
	| catch_types ""|"" 'bar' type 'type'
	;
finally 
	: ""finally"" 'finallyToken' block 'block' {{FinallyClause}}
	;
assert_statement
	: ""assert"" 'assertToken' expression 'testExpression' "";"" 'semicolon' {{AssertStatement}}
	| ""assert"" 'assertToken' expression 'testExpression' "":"" 'colon' expression 'messageExpression' "";"" 'semicolon' {{AssertStatement}}
	;
# 19.12) Expressions
primary 
	: primary_no_new_array 
	| array_creation_expression 
	;
primary_no_new_array 
	: literal 
	| ""this"" 'name' {{Name}}
	| ""("" '_leftParen' expression "")"" '_rightParen' {{Expression}}
	| class_instance_creation_expression 
	| field_access 
	| method_invocation 
	| array_access 
	| primitive_type 'type' ""."" 'period' ""class"" 'classToken' {{ClassExpression}}
	| void 'type' ""."" 'period' ""class"" 'classToken' {{ClassExpression}}
	| type 'type' ""."" 'period' ""class"" 'classToken' {{ClassExpression}}
	| name 'name' ""."" 'period' ""this"" 'thisToken' {{OuterThis}}
	| method_reference_expression
	;
lambda_expression
	: lambda_parameters ""->"" 'arrowToken' lambda_function {{LambdaExpression}}
	;
lambda_parameters
	: ""("" 'leftParen' lambda_parameter_list_opt "")"" 'rightParen' 
	| untyped_lambda_parameter 'parameter'
	;
lambda_parameter_list_opt
	:
	| lambda_parameter_list
	;
lambda_parameter_list
	: lambda_parameter 'parameter'
	| lambda_parameter_list "","" 'comma' lambda_parameter 'parameter'
	;
lambda_parameter
	: formal_parameter
	| untyped_lambda_parameter
	;
untyped_lambda_parameter
	: variable_declarator_id 'variable' {{Parameter}}
	;
lambda_function
	: block 'value'
	| expression 'value'
	;
method_reference_expression
	: primary_or_name 'receiver' ""::"" 'colonColonToken' <IDENTIFIER> 'name' {{MethodReference}}
	| reference_type 'receiver' ""::"" 'colonColonToken' ""new"" 'name' {{MethodReference}}
	;
class_instance_creation_expression 
	: ""new"" 'newToken' class_type 'type' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' {{New}}
	| ""new"" 'newToken' class_type 'type' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' class_body {{NewClass}}
	| primary_or_name 'primary' ""."" 'period' ""new"" 'newToken' type_arguments_opt <IDENTIFIER> 'name' 
			type_arguments_or_diamond_opt ""("" 'leftParen' argument_list_opt "")"" 'rightParen' {{New}}
	| primary_or_name 'primary' ""."" 'period' ""new"" 'newToken' type_arguments_opt <IDENTIFIER> 'name' 
			type_arguments_or_diamond_opt ""("" 'leftParen' argument_list_opt "")"" 'rightParen' class_body {{NewClass}}
	;
argument_list_opt 
	: 
	| argument_list 
	;
argument_list 
	: expression 'expression' 
	| argument_list "","" 'comma' expression 'expression'
	;
array_creation_expression 
	: ""new"" 'newToken' primitive_type 'type' dim_exprs dims_opt {{NewArray}}
	| ""new"" 'newToken' class_or_interface_type 'type' dim_exprs dims_opt {{NewArray}}
	| ""new"" 'newToken' primitive_type 'type' dims array_initializer 'initializer' {{NewArray}}
	| ""new"" 'newToken' class_or_interface_type 'type' dims array_initializer 'initializer' {{NewArray}}
	;
dim_exprs 
	: dim_expr 'dimExpression' 
	| dim_exprs dim_expr 'dimExpression' 
	;
dim_expr 
	: ""["" 'leftBracket' expression 'expression' ""]"" 'rightBracket' {{DimensionExpression}}
	;
dims_opt 
	: 
	| dims 
	;
dims 
	: empty_dim_expr
	| dims empty_dim_expr
	;
empty_dim_expr
	: ""["" 'leftBracket' ""]"" 'rightBracket'
	;
field_access 
	: primary 'receiver' ""."" 'period' <IDENTIFIER> 'name' {{FieldAccess}}
	| ""super"" 'superToken' ""."" 'period' <IDENTIFIER> 'name' {{FieldAccess}}
	| name 'receiver' ""."" 'superPeriod' ""super"" 'superToken' ""."" 'period' <IDENTIFIER> 'name' {{FieldAccess}}###???
	;
method_invocation 
	: type_arguments_opt <IDENTIFIER> 'name' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' {{MethodInvocation}}
	| primary_or_name 'receiver' ""."" 'period' type_arguments_opt <IDENTIFIER> 'name' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' {{MethodInvocation}}
	| ""super"" 'superToken' ""."" 'period' type_arguments_opt <IDENTIFIER> 'name' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' {{MethodInvocation}}
	| name 'receiver' ""."" 'superPeriod' ""super"" 'superToken' ""."" 'period' type_arguments_opt <IDENTIFIER> 'name' ""("" 'leftParen' argument_list_opt "")"" 'rightParen' {{MethodInvocation}}
	;
array_access 
	: name 'array' ""["" 'leftBracket' expression 'expression' ""]"" 'rightBracket' {{ArrayAccess}}
	| primary_no_new_array 'array' ""["" 'leftBracket' expression 'expression' ""]"" 'rightBracket' {{ArrayAccess}}
	;
postfix_expression 
	: primary 
	| name 
	| postincrement_expression 
	| postdecrement_expression 
	;
postincrement_expression 
	: postfix_expression 'expression' ""++"" 'plusPlus' {{PostIncrementExpression}}
	;
postdecrement_expression 
	: postfix_expression 'expression' ""--"" 'minusMinus' {{PostDecrementExpression}}
	;
unary_expression 
	: preincrement_expression 
	| predecrement_expression 
	| ""+"" 'plus' unary_expression 'expression' {{UnaryAddition}}
	| ""-"" 'minus' unary_expression 'expression' {{UnarySubtraction}}
	| unary_expression_not_plus_minus 
| assignment # HACK for VAGEN
	;
preincrement_expression 
	: ""++"" 'plusPlus' unary_expression 'expression' {{PreIncrementExpression}}
	;
predecrement_expression 
	: ""--"" 'minusMinus' unary_expression 'expression' {{PreDecrementExpression}}
	;
unary_expression_not_plus_minus 
	: postfix_expression 
	| ""~"" 'tilde' unary_expression 'expression' {{UnaryBitInvert}}
	| ""!"" 'bang' unary_expression 'expression' {{UnaryNot}}
	| cast_expression 
	;
cast_expression 
	: ""("" 'leftParen' primitive_type 'type' "")"" 'rightParen' unary_expression 'expression' {{CastExpression}}
	| ""("" 'leftParen' reference_type 'type' additional_bound_opt "")"" 'rightParen' unary_expression_not_plus_minus 'expression' {{CastExpression}}
	| ""("" 'leftParen' reference_type 'type' additional_bound_opt "")"" 'rightParen' lambda_expression 'expression' {{CastExpression}}
	;
additional_bound_opt
	:
	| ""&"" 'ampToken' interface_type 'interfaceType'
	;
multiplicative_expression 
	: unary_expression 
	| multiplicative_expression 'leftExpression' ""*"" 'op' unary_expression 'rightExpression' {{BinaryExpression}}
	| multiplicative_expression 'leftExpression' ""/"" 'op' unary_expression 'rightExpression' {{BinaryExpression}}
	| multiplicative_expression 'leftExpression' ""%"" 'op' unary_expression 'rightExpression' {{BinaryExpression}}
	;
additive_expression 
	: multiplicative_expression 
	| additive_expression 'leftExpression' ""+"" 'op' multiplicative_expression 'rightExpression' {{BinaryExpression}}
	| additive_expression 'leftExpression' ""-"" 'op' multiplicative_expression 'rightExpression' {{BinaryExpression}}
	;
shift_expression 
	: additive_expression 
	| shift_expression 'leftExpression' ""<<"" 'op' additive_expression 'rightExpression' {{BinaryExpression}}
	| shift_expression 'leftExpression' <SIGNED_RIGHT_SHIFT> 'op' additive_expression 'rightExpression' {{BinaryExpression}}
	| shift_expression 'leftExpression' <UNSIGNED_RIGHT_SHIFT> 'op' additive_expression 'rightExpression' {{BinaryExpression}}
	;
relational_expression 
	: shift_expression 
	| relational_expression 'leftExpression' ""<"" 'op' shift_expression 'rightExpression' {{BinaryExpression}}
	| relational_expression 'leftExpression' <GREATER_THAN> 'op' shift_expression 'rightExpression' {{BinaryExpression}}
	| relational_expression 'leftExpression' ""<="" 'op' shift_expression 'rightExpression' {{BinaryExpression}}
	| relational_expression 'leftExpression' "">="" 'op' shift_expression 'rightExpression' {{BinaryExpression}}
	| relational_expression 'leftExpression' ""instanceof"" 'op' reference_type 'rightExpression' {{BinaryExpression}}
	;
equality_expression 
	: relational_expression 
	| equality_expression 'leftExpression' ""=="" 'op' relational_expression 'rightExpression' {{BinaryExpression}}
	| equality_expression 'leftExpression' ""!="" 'op' relational_expression 'rightExpression' {{BinaryExpression}}
	;
and_expression 
	: equality_expression 
	| and_expression 'leftExpression' ""&"" 'op' equality_expression 'rightExpression' {{BinaryExpression}}
	;
exclusive_or_expression 
	: and_expression 
	| exclusive_or_expression 'leftExpression' ""^"" 'op' and_expression 'rightExpression' {{BinaryExpression}}
	;
inclusive_or_expression 
	: exclusive_or_expression 
	| inclusive_or_expression 'leftExpression' ""|"" 'op' exclusive_or_expression 'rightExpression' {{BinaryExpression}}
	;
conditional_and_expression 
	: inclusive_or_expression 
	| conditional_and_expression 'leftExpression' ""&&"" 'op' inclusive_or_expression 'rightExpression' {{BinaryExpression}}
	;
conditional_or_expression 
	: conditional_and_expression 
	| conditional_or_expression 'leftExpression' ""||"" 'op' conditional_and_expression 'rightExpression' {{BinaryExpression}}
	;
conditional_expression 
	: conditional_or_expression 
	| conditional_or_expression 'testExpression' ""?"" 'questionMark' expression 'trueExpression'
			"":"" 'colon' conditional_expression 'falseExpression' {{ConditionalExpression}}
	;
assignment_expression 
	: conditional_expression 
	| assignment 
	;
assignment 
	: left_hand_side 'variable' assignment_operator 'op' expression 'value' {{Assignment}}
	;
left_hand_side 
	: name 
	| field_access 
	| array_access 
	;
assignment_operator 
	: ""="" 
	| ""*="" 
	| ""/="" 
	| ""%="" 
	| ""+="" 
	| ""-="" 
	| ""<<="" 
	| "">>="" 
	| "">>>="" 
	| ""&="" 
	| ""^="" 
	| ""|="" 
	;
expression_opt 
	: 
	| expression 
	;
expression 
	: assignment_expression 
	| lambda_expression
	;
constant_expression 
	: expression 
	;
####
annotations
	:
	| annotations annotation 'annotation'
	;
annotation
	: ""@"" 'at' name 'name' annotation_args_opt {{Annotation}}
	;
annotation_args_opt
	:
	| ""("" 'leftParen' annotation_args "")"" 'rightParen'
	;
annotation_args
	: 
	| elementValuePairs
	| elementValue 'value'
	;
elementValuePairs
	: elementValuePair 'value'
	| elementValuePairs "","" 'comma' elementValuePair 'value'
	;
elementValuePair
	: <IDENTIFIER> 'name' ""="" 'equals' elementValue 'value' {{ElementValuePair}}
	;
elementValue
	: conditional_expression
	| annotation
	| elementValueArrayInitializer
	;
elementValueArrayInitializer
	: ""{"" 'leftBrace' elementValues_opt comma_opt ""}"" 'rightBrace' {{ElementArrayInitializer}}
	;
elementValues_opt
	:
	| elementValues
	;
elementValues
	: elementValue 'value'
	| elementValues "","" 'comma' elementValue 'value'
	;
comma_opt
	:
	| "","" 'comma'
	;
static_opt
	:
	| ""static"" 'staticToken'
	;
enum_declaration
	: modifiers_opt ""enum"" 'enumToken' <IDENTIFIER> 'name' interfaces_opt enum_body {{EnumDeclaration}}
	;
enum_body
	: ""{"" 'leftBrace' enum_constants_opt comma_opt enum_body_declarations_opt ""}"" 'rightBrace'
	;
enum_constants_opt
	:
	| enum_constants
	;
enum_constants
	: enum_constant 'constant'
	| enum_constants "","" 'comma' enum_constant 'constant'
	;
enum_constant
	: annotations <IDENTIFIER> 'name' arguments_opt class_body_opt {{EnumConstant}}
	;
arguments_opt
	:
	| ""("" 'leftParen' argument_list_opt "")"" 'rightParen'
	;
class_body_opt
	:
	| class_body
	;
enum_body_declarations_opt
	:
	| enum_body_declarations
	;
enum_body_declarations
	: "";"" 'semicolon' class_body_declarations_opt
	;
type_parameters_opt
	:
	| ""<"" 'lt' type_parameters <GREATER_THAN> 'gt' {{TypeParameters}}
	;
type_parameters
	: type_parameter 'parameter'
	| type_parameters "","" 'comma' type_parameter 'parameter'
	;
type_parameter
	: <IDENTIFIER> 'name' extends_type_parameter_opt {{TypeParameter}}
	;
extends_type_parameter_opt
	:
	| ""extends"" 'extendsToken' type_bound 
	;
type_bound
	: type 'type'
	| type_bound ""&"" 'amp' type 'type'
	;
type_arguments_or_diamond_opt
	:
	| ""<"" 'typeArgLeft' type_arguments <GREATER_THAN> 'typeArgRight'
	| ""<"" 'typeArgLeft'  <GREATER_THAN> 'typeArgRight'
	;
type_arguments_opt
	:
	| ""<"" 'lt' type_arguments <GREATER_THAN> 'gt'
	| ""<"" 'lt'  <GREATER_THAN> 'gt'
	;
type_arguments
	: type_argument 'argument'
	| type_arguments "","" 'comma' type_argument 'argument'
	;
type_argument
	: type 'type' {{TypeArgument}}
	| ""?"" 'questionMark' type_argument_type {{TypeArgument}}
	;
type_argument_type
	: ""extends"" 'token' type 'type'
	| ""super"" 'token' type 'type'
	|
	;
type_name
	: simple_type_name 
	| qualified_type_name 
	;
simple_type_name 
	: <IDENTIFIER> 'name' type_arguments_opt {{TypeName}}
	;
qualified_type_name 
	: type_name 'nspace' ""."" 'period' <IDENTIFIER> 'name' type_arguments_opt {{QualifiedTypeName}}
	;
foreach_statement 
	: ""for"" 'forToken' ""("" 'leftParen' variable_modifiers type 'type' variable_declarator_id 'name' "":"" 'colon' expression 'expression' "")"" 'rightParen' statement 'statement' {{ForEachStatement}}
	;
variable_modifiers
	: 
	| variable_modifiers variable_modifier 'modifier'
	;
variable_modifier
	: ""final"" 'token' {{Modifier}}
	| annotation
	;
primary_or_name
	: primary
	| name
	;"
]

{ #category : #'file types' }
JavaParser class >> fileExtension [
	^ '.java'
]

{ #category : #'file types' }
JavaParser class >> fileExtensionType [
	^ 'Java files'
]

{ #category : #private }
JavaParser class >> keywords [
	^ keywords
		ifNil: [ keywords := (Set new: 100)
				addAll:
					#('abstract' 'assert' 'boolean' 'break' 'byte' 'case' 'catch' 'char' 'class' 'const' 'continue' 'default' 'do' 'double' 'else' 'enum' 'extends' 'final' 'finally' 'float' 'for' 'goto' 'if' 'implements' 'import' 'instanceof' 'int' 'interface' 'long' 'native' 'new' 'package' 'private' 'protected' 'public' 'return' 'short' 'static' 'strictfp' 'super' 'switch' 'synchronized' 'this' 'throw' 'throws' 'transient' 'try' 'void' 'volatile' 'while');
				yourself ]
]

{ #category : #generated }
JavaParser class >> reduceTable [
^#(
	#(126 0 #nil) 
	#(289 0 #reduceActionForannotations1:) 
	#(324 0 #reduceActionForannotations1:) 
	#(136 0 #reduceActionForannotations1:) 
	#(316 0 #reduceActionFortype_arguments_opt1:) 
	#(110 1 #liftFirstValue:) 
	#(127 0 #reduceActionForannotations1:) 
	#(126 1 #liftFirstValue:) 
	#(201 1 #reduceActionForempty_statement1:) 
	#(138 1 #reduceActionFormodifier5:) 
	#(113 1 #reduceActionForprimitive_type2:) 
	#(221 0 #nil) 
	#(115 1 #reduceActionForintegral_type1:) 
	#(115 1 #reduceActionForintegral_type5:) 
	#(116 1 #reduceActionForfloating_point_type2:) 
	#(116 1 #reduceActionForfloating_point_type1:) 
	#(115 1 #reduceActionForintegral_type3:) 
	#(115 1 #reduceActionForintegral_type4:) 
	#(286 0 #nil) 
	#(115 1 #reduceActionForintegral_type2:) 
	#(241 1 #reduceActionForprimary_no_new_array2:) 
	#(228 0 #reduceActionFortype_arguments_opt1:) 
	#(158 1 #reduceActionForvoid1:) 
	#(194 0 #reduceActionForannotations1:) 
	#(111 1 #reduceActionForliteral1:) 
	#(111 1 #reduceActionForliteral2:) 
	#(111 1 #reduceActionForliteral3:) 
	#(111 1 #reduceActionForliteral4:) 
	#(111 1 #reduceActionForliteral5:) 
	#(111 1 #reduceActionForliteral6:) 
	#(123 1 #reduceActionForprimary_no_new_array2:) 
	#(241 1 #liftFirstValue:) 
	#(112 1 #liftFirstValue:) 
	#(113 1 #liftFirstValue:) 
	#(114 1 #liftFirstValue:) 
	#(117 1 #liftFirstValue:) 
	#(262 1 #liftFirstValue:) 
	#(284 1 #liftFirstValue:) 
	#(326 1 #liftFirstValue:) 
	#(122 1 #liftFirstValue:) 
	#(136 1 #reduceActionFormodifiers_opt2:) 
	#(137 1 #reduceActionFormodifiers1:) 
	#(196 1 #liftFirstValue:) 
	#(200 1 #liftFirstValue:) 
	#(199 1 #liftFirstValue:) 
	#(240 1 #liftFirstValue:) 
	#(204 1 #liftFirstValue:) 
	#(138 1 #liftFirstValue:) 
	#(139 1 #liftFirstValue:) 
	#(118 1 #reduceActionForclass_or_interface_type1:) 
	#(320 1 #liftFirstValue:) 
	#(244 0 #reduceActionForlambda_parameter_list_opt1:) 
	#(154 1 #reduceActionForvariable_declarator_id1:) 
	#(247 1 #reduceActionForuntyped_lambda_parameter1:) 
	#(287 1 #liftFirstValue:) 
	#(243 1 #reduceActionForlambda_parameters2:) 
	#(268 1 #liftFirstValue:) 
	#(271 1 #liftFirstValue:) 
	#(265 1 #liftFirstValue:) 
	#(272 1 #liftFirstValue:) 
	#(273 1 #liftFirstValue:) 
	#(274 1 #liftFirstValue:) 
	#(275 1 #liftFirstValue:) 
	#(276 1 #liftFirstValue:) 
	#(277 1 #liftFirstValue:) 
	#(278 1 #liftFirstValue:) 
	#(279 1 #liftFirstValue:) 
	#(280 1 #liftFirstValue:) 
	#(281 1 #liftFirstValue:) 
	#(282 1 #liftFirstValue:) 
	#(135 1 #reduceActionFortype_declaration4:) 
	#(135 1 #liftFirstValue:) 
	#(300 0 #nil) 
	#(128 0 #reduceActionForannotations1:) 
	#(127 1 #reduceActionFormodifiers_opt2:) 
	#(129 1 #reduceActionFormodifiers1:) 
	#(132 1 #liftFirstValue:) 
	#(289 2 #reduceActionForannotations2:) 
	#(266 2 #reduceActionForpreincrement_expression1:) 
	#(267 2 #reduceActionForpredecrement_expression1:) 
	#(319 0 #reduceActionFortype_argument_type3:) 
	#(316 2 #reduceActionFortype_arguments_opt3:) 
	#(318 1 #reduceActionFortype_argument1:) 
	#(317 1 #reduceActionFortype_arguments1:) 
	#(291 0 #reduceActionFortype_arguments_opt1:) 
	#(221 1 #liftFirstValue:) 
	#(216 0 #nil) 
	#(119 1 #liftFirstValue:) 
	#(286 1 #liftFirstValue:) 
	#(228 1 #reduceActionFormodifiers_opt2:) 
	#(194 1 #reduceActionFormodifiers_opt2:) 
	#(195 1 #reduceActionFormodifiers1:) 
	#(321 2 #reduceActionForsimple_type_name1:) 
	#(121 2 #reduceActionForarray_type1:) 
	#(257 1 #reduceActionFordims1:) 
	#(137 2 #reduceActionForannotations2:) 
	#(197 2 #reduceActionForlocal_variable_declaration_statement1:) 
	#(203 2 #reduceActionForexpression_statement1:) 
	#(263 2 #reduceActionForpostincrement_expression1:) 
	#(264 2 #reduceActionForpostdecrement_expression1:) 
	#(285 1 #liftFirstValue:) 
	#(325 1 #reduceActionFormodifier5:) 
	#(325 1 #liftFirstValue:) 
	#(324 2 #reduceActionForannotations2:) 
	#(268 2 #reduceActionForunary_expression_not_plus_minus3:) 
	#(270 0 #reduceActionFortype_argument_type3:) 
	#(246 1 #liftFirstValue:) 
	#(244 1 #reduceActionFormodifiers_opt2:) 
	#(245 1 #reduceActionFortype_arguments1:) 
	#(265 2 #reduceActionForunary_expression3:) 
	#(265 2 #reduceActionForunary_expression4:) 
	#(268 2 #reduceActionForunary_expression_not_plus_minus2:) 
	#(300 1 #liftFirstValue:) 
	#(125 3 #reduceActionForcompilation_unit1:) 
	#(128 1 #reduceActionFormodifiers_opt2:) 
	#(130 1 #reduceActionFormodifiers1:) 
	#(129 2 #reduceActionForannotations2:) 
	#(241 3 #reduceActionForprimary_no_new_array3:) 
	#(318 2 #reduceActionFortype_argument2:) 
	#(316 3 #reduceActionFortype_arguments_opt2:) 
	#(292 0 #reduceActionForlambda_parameter_list_opt1:) 
	#(290 3 #reduceActionForannotation1:) 
	#(239 3 #reduceActionForassert_statement1:) 
	#(222 3 #reduceActionForbreak_statement1:) 
	#(223 3 #reduceActionForcontinue_statement1:) 
	#(217 1 #liftFirstValue:) 
	#(220 1 #reduceActionForstatement_expression_list1:) 
	#(216 1 #liftFirstValue:) 
	#(256 0 #reduceActionForlambda_parameter_list_opt1:) 
	#(254 1 #reduceActionFormodifiers1:) 
	#(251 0 #reduceActionForlambda_parameter_list_opt1:) 
	#(224 3 #reduceActionForreturn_statement1:) 
	#(259 3 #reduceActionForfield_access2:) 
	#(225 3 #reduceActionForthrow_statement1:) 
	#(232 0 #nil) 
	#(230 1 #reduceActionFortype_arguments1:) 
	#(233 0 #reduceActionForannotations1:) 
	#(227 3 #reduceActionFortry_statement3:) 
	#(193 3 #reduceActionForblock1:) 
	#(195 2 #reduceActionForannotations2:) 
	#(202 3 #reduceActionForlabeled_statement1:) 
	#(241 3 #reduceActionForprimary_no_new_array10:) 
	#(258 2 #reduceActionForempty_dim_expr1:) 
	#(257 2 #reduceActionFordims2:) 
	#(249 3 #reduceActionFormethod_reference_expression2:) 
	#(241 3 #reduceActionForprimary_no_new_array11:) 
	#(124 3 #reduceActionForqualified_name1:) 
	#(310 0 #nil) 
	#(143 0 #reduceActionForinterfaces_opt1:) 
	#(259 3 #reduceActionForfield_access1:) 
	#(283 3 #reduceActionForassignment1:) 
	#(198 3 #reduceActionForlocal_variable_declaration1:) 
	#(151 1 #reduceActionFortype_arguments1:) 
	#(152 1 #liftFirstValue:) 
	#(152 1 #reduceActionForvariable_declarator1:) 
	#(243 3 #reduceActionFortype_arguments_opt2:) 
	#(154 3 #reduceActionForvariable_declarator_id2:) 
	#(248 1 #liftFirstValue:) 
	#(242 3 #reduceActionForlambda_expression1:) 
	#(271 3 #reduceActionFormultiplicative_expression4:) 
	#(272 3 #reduceActionFormultiplicative_expression4:) 
	#(273 3 #reduceActionFormultiplicative_expression4:) 
	#(274 3 #reduceActionFormultiplicative_expression4:) 
	#(275 3 #reduceActionFormultiplicative_expression4:) 
	#(276 3 #reduceActionFormultiplicative_expression4:) 
	#(277 3 #reduceActionFormultiplicative_expression4:) 
	#(278 3 #reduceActionFormultiplicative_expression4:) 
	#(279 3 #reduceActionFormultiplicative_expression4:) 
	#(280 3 #reduceActionFormultiplicative_expression4:) 
	#(130 2 #reduceActionForannotations2:) 
	#(131 4 #reduceActionForpackage_declaration1:) 
	#(319 2 #reduceActionForempty_dim_expr1:) 
	#(317 3 #reduceActionFortype_arguments2:) 
	#(297 0 #reduceActionForlambda_parameter_list_opt1:) 
	#(295 1 #liftFirstValue:) 
	#(292 1 #reduceActionFormodifiers_opt2:) 
	#(293 1 #reduceActionFortype_arguments1:) 
	#(292 1 #reduceActionFortype_arguments1:) 
	#(254 2 #reduceActionForannotations2:) 
	#(253 4 #reduceActionForarray_creation_expression1:) 
	#(256 1 #reduceActionFormodifiers_opt2:) 
	#(253 4 #reduceActionForarray_creation_expression3:) 
	#(251 1 #reduceActionFormodifiers_opt2:) 
	#(252 1 #reduceActionFortype_arguments1:) 
	#(232 1 #liftFirstValue:) 
	#(227 4 #reduceActionFortry_statement1:) 
	#(233 1 #reduceActionFormodifiers_opt2:) 
	#(234 1 #reduceActionFormodifiers1:) 
	#(261 4 #reduceActionForarray_access1:) 
	#(141 0 #reduceActionFortype_argument_type3:) 
	#(143 1 #reduceActionFormodifiers_opt2:) 
	#(179 0 #reduceActionForinterfaces_opt1:) 
	#(322 4 #reduceActionForqualified_type_name1:) 
	#(269 4 #reduceActionForcast_expression1:) 
	#(120 1 #liftFirstValue:) 
	#(270 2 #reduceActionForempty_dim_expr1:) 
	#(245 3 #reduceActionFortype_arguments2:) 
	#(162 3 #reduceActionForformal_parameter1:) 
	#(133 4 #reduceActionForsingle_type_import_declaration1:) 
	#(298 1 #reduceActionFortype_arguments1:) 
	#(299 0 #nil) 
	#(297 1 #reduceActionFormodifiers_opt2:) 
	#(291 3 #reduceActionFortype_arguments_opt2:) 
	#(239 5 #reduceActionForassert_statement2:) 
	#(220 3 #reduceActionForstatement_expression_list2:) 
	#(205 5 #reduceActionForif_then_statement1:) 
	#(255 3 #reduceActionFordim_expr1:) 
	#(191 2 #reduceActionForarray_initializer4:) 
	#(192 1 #reduceActionFortype_arguments1:) 
	#(155 1 #liftFirstValue:) 
	#(250 5 #reduceActionForclass_instance_creation_expression1:) 
	#(207 5 #reduceActionForswitch_statement1:) 
	#(226 5 #reduceActionForsynchronized_statement1:) 
	#(230 3 #reduceActionFortype_arguments2:) 
	#(229 4 #reduceActionFortry_resources1:) 
	#(231 3 #reduceActionFortry_resource1:) 
	#(227 5 #reduceActionFortry_statement2:) 
	#(234 2 #reduceActionForannotations2:) 
	#(213 5 #reduceActionForwhile_statement1:) 
	#(259 5 #reduceActionForfield_access3:) 
	#(313 0 #reduceActionForinterfaces_opt1:) 
	#(311 1 #reduceActionFortype_arguments1:) 
	#(141 1 #reduceActionFormodifiers_opt2:) 
	#(144 1 #reduceActionFortype_arguments1:) 
	#(142 2 #reduceActionForinterfaces1:) 
	#(303 0 #reduceActionForlambda_parameter_list_opt1:) 
	#(301 5 #reduceActionForenum_declaration1:) 
	#(179 1 #reduceActionFormodifiers_opt2:) 
	#(260 5 #reduceActionFormethod_invocation1:) 
	#(151 3 #reduceActionFortype_arguments2:) 
	#(153 3 #reduceActionForinitialized_variable_declarator1:) 
	#(315 0 #reduceActionFortype_arguments_opt1:) 
	#(269 5 #reduceActionForcast_expression3:) 
	#(162 4 #reduceActionForformal_parameter2:) 
	#(281 5 #reduceActionForconditional_expression2:) 
	#(175 0 #reduceActionForannotations1:) 
	#(173 5 #reduceActionForannotation_interface_declaration1:) 
	#(299 1 #liftFirstValue:) 
	#(294 3 #reduceActionForelementValuePair1:) 
	#(293 3 #reduceActionFortype_arguments2:) 
	#(218 0 #nil) 
	#(191 3 #reduceActionForarray_initializer3:) 
	#(191 3 #reduceActionForarray_initializer2:) 
	#(146 0 #reduceActionForannotations1:) 
	#(250 6 #reduceActionForclass_instance_creation_expression2:) 
	#(252 3 #reduceActionFortype_arguments2:) 
	#(208 2 #reduceActionForswitch_block4:) 
	#(209 1 #reduceActionFormodifiers1:) 
	#(211 1 #reduceActionFormodifiers1:) 
	#(238 2 #reduceActionForfinally1:) 
	#(312 2 #reduceActionFortype_parameter1:) 
	#(310 3 #reduceActionFortype_parameters_opt2:) 
	#(140 2 #reduceActionForempty_dim_expr1:) 
	#(303 1 #reduceActionFormodifiers_opt2:) 
	#(304 1 #reduceActionFortype_arguments1:) 
	#(180 2 #reduceActionForextends_interfaces1:) 
	#(182 0 #reduceActionForannotations1:) 
	#(172 6 #reduceActionForinterface_declaration1:) 
	#(177 1 #liftFirstValue:) 
	#(175 1 #reduceActionFormodifiers_opt2:) 
	#(176 1 #reduceActionFormodifiers1:) 
	#(178 1 #liftFirstValue:) 
	#(134 6 #reduceActionFortype_import_on_demand_declaration1:) 
	#(296 4 #reduceActionForelementValueArrayInitializer1:) 
	#(298 3 #reduceActionFortype_arguments2:) 
	#(214 7 #reduceActionFordo_statement1:) 
	#(218 1 #liftFirstValue:) 
	#(219 1 #liftFirstValue:) 
	#(206 7 #reduceActionForif_then_else_statement1:) 
	#(191 4 #reduceActionForarray_initializer1:) 
	#(192 3 #reduceActionFortype_arguments2:) 
	#(149 1 #liftFirstValue:) 
	#(146 1 #reduceActionFormodifiers_opt2:) 
	#(147 1 #reduceActionFormodifiers1:) 
	#(148 1 #liftFirstValue:) 
	#(260 7 #reduceActionFormethod_invocation3:) 
	#(288 1 #liftFirstValue:) 
	#(212 2 #reduceActionForswitch_label2:) 
	#(208 3 #reduceActionForswitch_block2:) 
	#(209 2 #reduceActionForannotations2:) 
	#(208 3 #reduceActionForswitch_block3:) 
	#(210 2 #reduceActionForswitch_block_statement_group1:) 
	#(211 2 #reduceActionForannotations2:) 
	#(237 1 #reduceActionFortype_arguments1:) 
	#(314 1 #reduceActionFortype_arguments1:) 
	#(313 2 #reduceActionForinterfaces1:) 
	#(311 3 #reduceActionFortype_arguments2:) 
	#(139 7 #reduceActionForclass_declaration1:) 
	#(144 3 #reduceActionFortype_arguments2:) 
	#(306 0 #reduceActionFortype_arguments_opt1:) 
	#(308 0 #reduceActionForenum_body_declarations_opt1:) 
	#(189 1 #reduceActionFormodifier5:) 
	#(184 1 #liftFirstValue:) 
	#(188 1 #reduceActionFormodifiers_opt2:) 
	#(185 1 #liftFirstValue:) 
	#(182 1 #reduceActionFormodifiers_opt2:) 
	#(183 1 #reduceActionFormodifiers1:) 
	#(188 1 #reduceActionFormodifiers1:) 
	#(180 3 #reduceActionForextends_interfaces2:) 
	#(315 2 #reduceActionFortype_arguments_opt3:) 
	#(260 7 #reduceActionFormethod_invocation2:) 
	#(190 2 #reduceActionForabstract_method_declaration1:) 
	#(174 3 #reduceActionForannotation_interface_body1:) 
	#(176 2 #reduceActionForannotations2:) 
	#(167 2 #reduceActionForstatic_initializer1:) 
	#(163 0 #nil) 
	#(145 3 #reduceActionForannotation_interface_body1:) 
	#(147 2 #reduceActionForannotations2:) 
	#(166 1 #reduceActionFormethod_body2:) 
	#(156 2 #reduceActionFormethod_declaration1:) 
	#(166 1 #liftFirstValue:) 
	#(212 3 #reduceActionForswitch_label1:) 
	#(208 4 #reduceActionForswitch_block1:) 
	#(235 5 #reduceActionForcatch_clause1:) 
	#(236 3 #reduceActionForcatch_parameter1:) 
	#(307 0 #reduceActionForclass_body_opt1:) 
	#(308 1 #reduceActionFormodifiers_opt2:) 
	#(304 3 #reduceActionFortype_arguments2:) 
	#(181 3 #reduceActionForannotation_interface_body1:) 
	#(183 2 #reduceActionForannotations2:) 
	#(186 2 #reduceActionFormethod_declaration1:) 
	#(315 3 #reduceActionFortype_arguments_opt2:) 
	#(215 9 #reduceActionForfor_statement1:) 
	#(323 9 #reduceActionForforeach_statement1:) 
	#(163 1 #liftFirstValue:) 
	#(237 3 #reduceActionFortype_arguments2:) 
	#(260 9 #reduceActionFormethod_invocation4:) 
	#(314 3 #reduceActionFortype_arguments2:) 
	#(307 1 #reduceActionFormodifiers_opt2:) 
	#(305 4 #reduceActionForenum_constant1:) 
	#(309 2 #reduceActionForenum_body_declarations1:) 
	#(302 5 #reduceActionForenum_body1:) 
	#(250 9 #reduceActionForclass_instance_creation_expression3:) 
	#(150 4 #reduceActionForfield_declaration1:) 
	#(178 4 #reduceActionForannotation_method_declaration2:) 
	#(165 1 #reduceActionFortype_arguments1:) 
	#(164 2 #reduceActionForthrows1:) 
	#(168 4 #reduceActionForconstructor_declaration1:) 
	#(160 0 #reduceActionForlambda_parameter_list_opt1:) 
	#(306 3 #reduceActionFortype_arguments_opt2:) 
	#(250 10 #reduceActionForclass_instance_creation_expression4:) 
	#(157 5 #reduceActionFormethod_header1:) 
	#(170 2 #reduceActionForconstructor_body4:) 
	#(160 1 #reduceActionFormodifiers_opt2:) 
	#(161 1 #reduceActionFortype_arguments1:) 
	#(187 5 #reduceActionFormethod_header1:) 
	#(159 3 #reduceActionFormethod_declarator2:) 
	#(165 3 #reduceActionFortype_arguments2:) 
	#(170 3 #reduceActionForconstructor_body2:) 
	#(170 3 #reduceActionForblock1:) 
	#(169 5 #reduceActionForconstructor_declarator1:) 
	#(159 4 #reduceActionFormethod_declarator1:) 
	#(170 4 #reduceActionForconstructor_body1:) 
	#(161 3 #reduceActionFortype_arguments2:) 
	#(171 5 #reduceActionForexplicit_constructor_invocation2:) 
	#(171 5 #reduceActionForexplicit_constructor_invocation1:) 
	#(171 7 #reduceActionForexplicit_constructor_invocation4:) 
	#(171 7 #reduceActionForexplicit_constructor_invocation3:)
	).
]

{ #category : #'generated-accessing' }
JavaParser class >> scannerClass [
	^JavaScanner
]

{ #category : #generated }
JavaParser class >> startingStateForblock_statement [
	^ 2
]

{ #category : #generated }
JavaParser class >> startingStateForexpression [
	^ 3
]

{ #category : #generated }
JavaParser class >> startingStateForgoal [
	^ 1
]

{ #category : #generated }
JavaParser class >> startingStateFortype_declaration [
	^ 4
]

{ #category : #generated }
JavaParser class >> symbolNames [
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '">="' '">>="' '">>>="' '"?"' '"@"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"assert"' '"boolean"' '"break"' '"byte"' '"case"' '"catch"' '"char"' '"class"' '"continue"' '"default"' '"do"' '"double"' '"else"' '"enum"' '"extends"' '"final"' '"finally"' '"float"' '"for"' '"if"' '"implements"' '"import"' '"instanceof"' '"int"' '"interface"' '"long"' '"native"' '"new"' '"package"' '"private"' '"protected"' '"public"' '"return"' '"short"' '"static"' '"strictfp"' '"super"' '"switch"' '"synchronized"' '"this"' '"throw"' '"throws"' '"transient"' '"try"' '"void"' '"volatile"' '"while"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<GREATER_THAN>' '<SIGNED_RIGHT_SHIFT>' '<UNSIGNED_RIGHT_SHIFT>' '<INTEGER_LITERAL>' '<FLOATING_POINT_LITERAL>' '<BOOLEAN_LITERAL>' '<CHARACTER_LITERAL>' '<STRING_LITERAL>' '<NULL_LITERAL>' '<IDENTIFIER>' '<whitespace>' '<comment>' '<patternToken>' 'B e g i n' 'goal' 'literal' 'type' 'primitive_type' 'numeric_type' 'integral_type' 'floating_point_type' 'reference_type' 'class_or_interface_type' 'class_type' 'interface_type' 'array_type' 'name' 'simple_name' 'qualified_name' 'compilation_unit' 'package_declaration_opt' 'import_declarations_opt' 'type_declarations_opt' 'import_declarations' 'type_declarations' 'package_declaration' 'import_declaration' 'single_type_import_declaration' 'type_import_on_demand_declaration' 'type_declaration' 'modifiers_opt' 'modifiers' 'modifier' 'class_declaration' 'super' 'super_opt' 'interfaces' 'interfaces_opt' 'interface_type_list' 'class_body' 'class_body_declarations_opt' 'class_body_declarations' 'class_body_declaration' 'class_member_declaration' 'field_declaration' 'variable_declarators' 'variable_declarator' 'initialized_variable_declarator' 'variable_declarator_id' 'variable_initializer' 'method_declaration' 'method_header' 'void' 'method_declarator' 'formal_parameter_list_opt' 'formal_parameter_list' 'formal_parameter' 'throws_opt' 'throws' 'class_type_list' 'method_body' 'static_initializer' 'constructor_declaration' 'constructor_declarator' 'constructor_body' 'explicit_constructor_invocation' 'interface_declaration' 'annotation_interface_declaration' 'annotation_interface_body' 'annotation_interface_member_declarations_opt' 'annotation_interface_member_declarations' 'annotation_interface_member_declaration' 'annotation_method_declaration' 'extends_interfaces_opt' 'extends_interfaces' 'interface_body' 'interface_member_declarations_opt' 'interface_member_declarations' 'interface_member_declaration' 'constant_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_modifiers_opt' 'default_modifier' 'abstract_method_declaration' 'array_initializer' 'variable_initializers' 'block' 'block_statements_opt' 'block_statements' 'block_statement' 'local_variable_declaration_statement' 'local_variable_declaration' 'statement' 'statement_without_trailing_substatement' 'empty_statement' 'labeled_statement' 'expression_statement' 'statement_expression' 'if_then_statement' 'if_then_else_statement' 'switch_statement' 'switch_block' 'switch_block_statement_groups' 'switch_block_statement_group' 'switch_labels' 'switch_label' 'while_statement' 'do_statement' 'for_statement' 'for_init_opt' 'for_init' 'for_update_opt' 'for_update' 'statement_expression_list' 'identifier_opt' 'break_statement' 'continue_statement' 'return_statement' 'throw_statement' 'synchronized_statement' 'try_statement' 'try_resources_opt' 'try_resources' 'try_resources_list' 'try_resource' 'semicolon_opt' 'catches_opt' 'catches' 'catch_clause' 'catch_parameter' 'catch_types' 'finally' 'assert_statement' 'primary' 'primary_no_new_array' 'lambda_expression' 'lambda_parameters' 'lambda_parameter_list_opt' 'lambda_parameter_list' 'lambda_parameter' 'untyped_lambda_parameter' 'lambda_function' 'method_reference_expression' 'class_instance_creation_expression' 'argument_list_opt' 'argument_list' 'array_creation_expression' 'dim_exprs' 'dim_expr' 'dims_opt' 'dims' 'empty_dim_expr' 'field_access' 'method_invocation' 'array_access' 'postfix_expression' 'postincrement_expression' 'postdecrement_expression' 'unary_expression' 'preincrement_expression' 'predecrement_expression' 'unary_expression_not_plus_minus' 'cast_expression' 'additional_bound_opt' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'conditional_expression' 'assignment_expression' 'assignment' 'left_hand_side' 'assignment_operator' 'expression_opt' 'expression' 'constant_expression' 'annotations' 'annotation' 'annotation_args_opt' 'annotation_args' 'elementValuePairs' 'elementValuePair' 'elementValue' 'elementValueArrayInitializer' 'elementValues_opt' 'elementValues' 'comma_opt' 'static_opt' 'enum_declaration' 'enum_body' 'enum_constants_opt' 'enum_constants' 'enum_constant' 'arguments_opt' 'class_body_opt' 'enum_body_declarations_opt' 'enum_body_declarations' 'type_parameters_opt' 'type_parameters' 'type_parameter' 'extends_type_parameter_opt' 'type_bound' 'type_arguments_or_diamond_opt' 'type_arguments_opt' 'type_arguments' 'type_argument' 'type_argument_type' 'type_name' 'simple_type_name' 'qualified_type_name' 'foreach_statement' 'variable_modifiers' 'variable_modifier' 'primary_or_name' 'E O F' 'error')
]

{ #category : #generated }
JavaParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JavaProgramFileNode #JavaProgramFileNode #JavaLiteralNode #JavaTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaArrayTypeNode #JavaNameNode #JavaNameNode #JavaQualifiedNameNode #JavaProgramFileNode #JavaPackageDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaPackageDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaTypeImportOnDemandDeclarationNode #JavaProgramNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaProgramNode #JavaFieldDeclarationNode #OrderedCollection #JavaVariableDeclarationNode #JavaInitializedVariableDeclarationNode #JavaProgramNode #JavaProgramNode #JavaMethodDeclarationNode #OrderedCollection #JavaVoidTypeNode #JavaProgramNode #OrderedCollection #OrderedCollection #JavaParameterNode #JavaThrowsNode #JavaThrowsNode #OrderedCollection #JavaProgramNode #JavaStaticInitializerNode #JavaConstructorDeclarationNode #OrderedCollection #JavaBlockNode #JavaStatementNode #JavaInterfaceNode #JavaAnnotationInterfaceNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaAbstractMethodDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaFieldDeclarationNode #JavaMethodDeclarationNode #OrderedCollection #Object #JavaModifierNode #JavaAbstractMethodDeclarationNode #JavaArrayInitializerNode #OrderedCollection #JavaBlockNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaLocalVariableDeclarationStatementNode #JavaLocalVariableDeclarationNode #JavaStatementNode #JavaStatementNode #JavaEmptyStatementNode #JavaLabeledStatementNode #JavaExpressionStatementNode #JavaExpressionNode #JavaIfStatementNode #JavaIfElseStatementNode #JavaSwitchStatementNode #JavaSwitchBlockNode #OrderedCollection #JavaSwitchBlockStatementGroupNode #OrderedCollection #JavaProgramNode #JavaWhileStatementNode #JavaDoWhileStatementNode #JavaForStatementNode #JavaProgramNode #JavaProgramNode #JavaStatementExpressionListNode #JavaStatementExpressionListNode #JavaStatementExpressionListNode #SmaCCToken #JavaBreakStatementNode #JavaContinueStatementNode #JavaReturnStatementNode #JavaThrowStatementNode #JavaSynchronizedStatementNode #JavaTryStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaLocalVariableDeclarationNode #SmaCCToken #OrderedCollection #OrderedCollection #JavaCatchClauseNode #JavaCatchParameterNode #OrderedCollection #JavaFinallyClauseNode #JavaAssertStatementNode #JavaExpressionNode #JavaExpressionNode #JavaLambdaExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaParameterNode #JavaParameterNode #JavaProgramNode #JavaMethodReferenceNode #JavaNewNode #OrderedCollection #OrderedCollection #JavaNewArrayNode #OrderedCollection #JavaDimensionExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaFieldAccessNode #JavaMethodInvocationNode #JavaArrayAccessNode #JavaExpressionNode #JavaPostIncrementExpressionNode #JavaPostDecrementExpressionNode #JavaExpressionNode #JavaPreIncrementExpressionNode #JavaPreDecrementExpressionNode #JavaExpressionNode #JavaCastExpressionNode #OrderedCollection #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaAssignmentNode #JavaExpressionNode #SmaCCToken #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #OrderedCollection #JavaAnnotationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaElementValuePairNode #JavaProgramNode #JavaElementArrayInitializerNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #JavaEnumDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaEnumConstantNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaTypeParametersNode #OrderedCollection #JavaTypeParameterNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaTypeArgumentNode #OrderedCollection #JavaTypeNameNode #JavaTypeNameNode #JavaQualifiedTypeNameNode #JavaForEachStatementNode #OrderedCollection #JavaProgramNode #JavaExpressionNode #SmaCCToken #SmaCCError)
]

{ #category : #generated }
JavaParser class >> transitionTable [
^#(
#[1 0 6 0 26 0 7 0 37 0 6 0 42 0 6 0 50 0 6 0 56 0 6 0 58 0 6 0 64 0 6 0 67 0 6 0 69 0 10 0 71 0 6 0 72 0 6 0 73 0 6 0 74 0 6 0 77 0 6 0 78 0 6 0 81 0 6 0 85 0 6 0 88 0 21 0 110 0 21 0 125 0 29 0 126 0 29 0 131 0 37 1 33 0 6 1 71] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 89 0 51 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 1 53 0 139 1 41 0 158 1 53 0 172 1 53 0 193 1 53 0 196 1 53 0 197 1 61 0 198 1 53 0 199 1 53 0 200 1 53 0 201 1 53 0 202 1 53 0 203 1 85 0 204 1 53 0 205 1 53 0 206 1 53 0 207 1 53 0 213 1 53 0 214 1 53 0 215 1 53 0 222 1 53 0 223 1 53 0 224 1 53 0 225 1 53 0 226 1 53 0 227 1 53 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 1 53 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 53 1 67 1 229 1 68 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 2 113 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 2 113 1 25 2 113 1 26 2 109 1 27 1 197 1 28 2 113 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 2 117 0 26 0 59 0 37 0 65 0 42 0 18 0 50 0 18 0 56 0 101 0 58 0 18 0 67 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 153 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 193 0 88 2 125 0 135 2 129 0 136 1 29 0 137 1 33 0 138 2 125 0 139 2 125 0 172 2 125 0 173 1 33 1 34 2 125 1 45] 
#[0 0 0 1 71] 
#[0 0 26 1 71] 
#[1 0 30 0 26 0 30 0 37 0 30 0 42 0 30 0 50 0 30 0 56 0 30 0 58 2 145 0 64 0 30 0 67 0 30 0 69 0 30 0 72 0 30 0 73 0 30 0 74 0 30 0 77 0 30 0 78 0 30 0 81 0 30 0 85 0 30 0 88 2 149 0 127 2 153 0 129 2 157 0 132 2 157 0 133 2 157 0 134 0 30 1 71] 
#[0 0 34 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[1 0 61 0 37 2 169 0 71 2 173 1 34] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 2 177 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 2 177 1 25 2 177 1 26 2 109 1 27 1 197 1 28 2 177 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 189 1 9 2 189 1 10 2 189 1 11 2 189 1 12 2 189 1 13 2 189 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 197 1 9 2 197 1 10 2 197 1 11 2 197 1 12 2 197 1 13 2 197 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 0 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 2 201 0 36 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 205 0 96 2 209 0 105 2 213 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 2 213 0 117 2 213 0 118 2 213 0 121 2 225 1 61 2 229 1 62 1 213 1 64 1 213 1 65 1 213 1 66] 
#[1 2 233 0 105 2 237 0 122 2 237 0 123 2 237 0 124] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 2 241 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 2 241 1 25 2 241 1 26 2 109 1 27 1 197 1 28 2 241 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 0 46 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 0 50 0 26 2 249 0 105 2 249 0 221] 
#[0 0 54 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 58 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 0 50 0 26 2 253 0 105 2 253 0 221] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 69 0 43 0 73 0 44 0 77 0 45 0 81 0 46 0 85 0 49 0 89 0 51 0 93 0 53 0 97 0 54 0 105 0 60 0 109 0 61 0 113 0 62 0 117 0 66 0 121 0 68 0 129 0 70 0 145 0 75 0 149 0 76 0 161 0 79 0 165 0 80 3 1 0 81 0 173 0 82 0 177 0 83 0 185 0 86 0 189 0 87 0 197 0 89 0 201 0 90 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 67 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 3 5 0 193 3 5 0 199 3 5 0 200 3 5 0 201 3 5 0 202 3 5 0 203 1 85 0 204 3 5 0 205 3 5 0 206 3 5 0 207 3 5 0 213 3 5 0 214 3 5 0 215 3 5 0 222 3 5 0 223 3 5 0 224 3 5 0 225 3 5 0 226 3 5 0 227 3 5 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 3 5 1 67 1 233 1 70] 
#[0 0 62 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 66 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 3 9 0 8] 
#[0 3 13 0 8] 
#[0 0 70 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 74 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 3 17 0 113 3 17 0 114 3 17 0 115 3 17 0 116 3 21 0 118 3 25 0 119 3 29 1 64 3 29 1 65 3 29 1 66] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 78 0 26 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 3 33 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 3 33 1 25 3 33 1 26 2 109 1 27 1 197 1 28 3 33 1 30 3 33 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 0 82 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 3 41 0 20] 
#[0 3 45 0 8] 
#[1 3 49 0 8 0 42 0 37 0 42 0 42 0 42 0 50 0 42 0 56 0 42 0 58 0 42 0 67 0 42 0 69 0 42 0 72 0 42 0 73 0 42 0 74 0 42 0 77 0 42 0 78 0 42 0 81 0 42 0 85 0 42 0 88] 
#[0 0 86 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 3 53 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 3 53 1 25 3 53 1 26 2 109 1 27 1 197 1 28 3 53 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 3 57 0 8 0 90 0 90 3 61 0 228 3 65 0 229] 
#[0 0 94 0 20 0 105] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 3 69 0 8] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 89 0 51 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 0 98 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 3 81 0 139 1 41 0 158 3 81 0 172 3 81 0 193 3 73 0 194 3 77 0 195 3 81 0 196 3 81 0 197 1 61 0 198 3 81 0 199 3 81 0 200 3 81 0 201 3 81 0 202 3 81 0 203 1 85 0 204 3 81 0 205 3 81 0 206 3 81 0 207 3 81 0 213 3 81 0 214 3 81 0 215 3 81 0 222 3 81 0 223 3 81 0 224 3 81 0 225 3 81 0 226 3 81 0 227 3 81 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 3 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 3 81 1 67 1 229 1 68 1 233 1 70] 
#[0 0 102 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 106 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 110 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 114 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 118 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 122 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 0 126 0 4 0 126 0 7 0 126 0 11 0 126 0 13 0 126 0 14 0 126 0 17 0 126 0 18 0 71 0 20 0 126 0 23 3 85 0 24 0 71 0 25 0 57 0 27 0 126 0 29 0 126 0 31 0 126 0 34 0 126 0 35 0 71 0 38 0 126 0 41 0 126 0 92 3 89 1 60] 
#[0 0 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 93 0 20] 
#[1 0 75 0 20 3 101 0 38 3 105 1 1 3 109 1 2] 
#[0 0 138 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 142 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 142 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 0 134 0 20 3 113 0 25] 
#[0 0 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 0 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 0 150 0 2 0 150 0 3 0 154 0 4 0 150 0 5 0 150 0 6 0 154 0 7 0 150 0 9 0 150 0 10 0 154 0 11 0 150 0 12 0 150 0 13 0 154 0 14 0 150 0 15 0 150 0 16 0 150 0 17 0 154 0 18 0 79 0 20 0 150 0 22 0 154 0 23 0 150 0 24 0 158 0 25 0 150 0 26 0 150 0 27 0 150 0 28 0 154 0 29 0 150 0 30 0 154 0 31 0 150 0 32 0 150 0 33 0 154 0 34 0 154 0 35 0 150 0 36 3 121 0 38 0 150 0 39 0 150 0 40 0 154 0 41 0 150 0 65 0 150 0 91 0 154 0 92 0 150 0 93 0 150 0 94 0 150 0 96 0 150 0 97 0 150 0 98 0 150 1 71] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 0 162 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 3 125 0 50 3 129 0 56 3 133 0 67] 
#[1 0 166 0 27 0 83 0 37 0 65 0 42 0 166 0 44 0 166 0 46 0 166 0 49 0 166 0 50 0 166 0 54 0 166 0 56 0 101 0 58 0 166 0 60 0 166 0 66 0 166 0 67 0 166 0 68 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 166 0 76 0 153 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 166 0 87 0 193 0 88 0 166 0 105 3 137 0 138 3 137 1 34] 
#[0 0 170 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 141 0 20] 
#[0 0 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 0 1 71] 
#[0 0 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 145 0 26] 
#[0 0 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 149 0 26] 
#[0 0 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 150 0 2 0 150 0 3 0 150 0 5 0 150 0 6 0 150 0 9 0 150 0 10 0 150 0 12 0 150 0 13 0 150 0 15 0 150 0 16 0 150 0 17 0 87 0 20 0 150 0 22 0 150 0 24 0 158 0 25 0 150 0 26 0 150 0 27 0 150 0 28 0 150 0 30 0 150 0 32 0 150 0 33 0 150 0 36 0 150 0 39 0 150 0 40 0 150 0 65 0 150 0 91 0 150 0 93 0 150 0 94 0 150 0 96 0 150 0 97 0 150 0 98 0 150 1 71] 
#[1 0 186 0 2 0 186 0 3 0 186 0 5 0 186 0 6 0 186 0 9 0 186 0 10 0 186 0 12 0 186 0 13 0 186 0 15 0 186 0 16 0 186 0 17 0 186 0 20 0 186 0 22 0 186 0 24 0 186 0 25 0 186 0 26 0 186 0 27 0 186 0 28 0 186 0 30 0 186 0 32 0 186 0 33 0 186 0 36 3 157 0 38 0 186 0 39 0 186 0 40 0 186 0 65 0 186 0 91 0 186 0 93 0 186 0 94 0 186 0 96 0 186 0 97 0 186 0 98 0 186 1 71] 
#[0 0 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 0 190 0 9 0 130 0 13 0 190 0 15 0 130 0 17 0 130 0 20 0 130 0 25 0 190 0 26 0 130 0 38] 
#[0 0 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 0 130 0 2 0 130 0 3 0 154 0 4 0 130 0 5 0 130 0 6 0 154 0 7 0 130 0 9 0 130 0 10 0 154 0 11 0 130 0 12 0 130 0 13 0 154 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 154 0 18 0 130 0 20 0 130 0 22 0 154 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 154 0 29 0 130 0 30 0 154 0 31 0 130 0 32 0 130 0 33 0 154 0 34 0 154 0 35 0 130 0 36 0 130 0 38 0 130 0 39 0 130 0 40 0 154 0 41 0 130 0 65 0 130 0 91 0 154 0 92 0 130 0 93 0 130 0 94 0 130 0 96 0 130 0 97 0 130 0 98 0 130 1 71] 
#[1 0 190 0 9 0 130 0 13 0 190 0 15 0 130 0 17 0 130 0 20 0 130 0 25 0 190 0 26 0 130 0 38] 
#[1 0 130 0 2 0 130 0 3 0 154 0 4 0 130 0 5 0 130 0 6 0 154 0 7 0 130 0 9 0 130 0 10 0 154 0 11 0 130 0 12 0 130 0 13 0 154 0 14 0 130 0 15 0 130 0 16 0 130 0 17 0 154 0 18 0 130 0 20 0 130 0 22 0 154 0 23 0 130 0 24 0 130 0 25 0 130 0 26 0 130 0 27 0 130 0 28 0 154 0 29 0 130 0 30 0 154 0 31 0 130 0 32 0 130 0 33 0 154 0 34 0 154 0 35 0 130 0 36 0 130 0 38 0 130 0 39 0 130 0 40 0 154 0 41 0 130 0 65 0 130 0 91 0 154 0 92 0 130 0 93 0 130 0 94 0 130 0 96 0 130 0 97 0 130 0 98 0 130 1 71] 
#[1 3 161 0 13 3 165 0 17] 
#[1 0 190 0 9 0 150 0 13 0 190 0 15 0 150 0 17 0 190 0 26] 
#[1 0 190 0 9 0 150 0 13 0 190 0 15 0 150 0 17 0 190 0 26] 
#[0 0 190 0 9 0 15 0 26] 
#[0 0 190 0 9 0 15 0 26] 
#[0 0 190 0 9 0 15 0 26] 
#[0 3 217 0 4 0 7 0 11 0 14 0 18 0 23 0 29 0 31 0 34 0 35 0 41 0 92 1 29] 
#[0 0 194 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 221 0 105] 
#[1 0 202 0 2 0 202 0 3 0 202 0 5 0 202 0 6 0 202 0 9 0 202 0 10 0 202 0 12 0 202 0 15 0 202 0 16 0 91 0 20 0 202 0 21 0 202 0 22 0 202 0 24 0 202 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 30 0 202 0 32 0 202 0 33 0 202 0 36 3 101 0 38 0 202 0 39 0 202 0 40 0 202 0 65 0 202 0 91 0 202 0 93 0 202 0 94 0 202 0 96 0 202 0 97 0 202 0 98 0 202 0 105 3 229 1 1 3 109 1 2 0 202 1 71] 
#[0 0 206 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 0 206 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 0 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 3 233 0 58 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 3 237 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 3 237 0 117 3 237 0 118 3 237 0 121 3 245 1 34 1 213 1 64 1 213 1 65 1 213 1 66 3 245 1 69] 
#[1 3 249 0 20 3 253 0 25] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 4 1 1 9 4 1 1 10 4 1 1 11 4 1 1 12 4 1 1 13 4 1 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 0 210 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 0 129 0 70 0 47 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 95 0 105 1 145 0 111 0 237 0 112 4 5 0 113 4 5 0 114 4 5 0 115 4 5 0 116 4 9 0 117 4 9 0 118 4 9 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 4 25 0 162 1 141 0 240 1 145 0 241 2 177 0 242 2 13 0 243 4 17 0 244 4 21 0 245 4 25 0 246 4 29 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 2 177 1 25 2 177 1 26 2 109 1 27 1 197 1 28 2 177 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 4 33 1 68 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 4 37 1 9 4 37 1 10 4 37 1 11 4 37 1 12 4 37 1 13 4 37 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 4 41 1 9 4 41 1 10 4 41 1 11 4 41 1 12 4 41 1 13 4 41 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 4 45 1 9 4 45 1 10 4 45 1 11 4 45 1 12 4 45 1 13 4 45 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 0 126 0 2 0 126 0 3 0 126 0 4 0 71 0 5 0 126 0 6 0 126 0 7 0 99 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 103 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 214 0 19 0 71 0 20 0 126 0 22 0 126 0 23 0 126 0 24 0 71 0 25 0 126 0 26 0 107 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 99 0 38 0 126 0 39 0 126 0 40 0 126 0 41 0 126 0 65 0 126 0 91 0 126 0 92 0 126 0 93 0 126 0 94 0 126 0 96 0 126 0 97 0 126 0 98 3 89 1 60 0 126 1 71] 
#[1 0 218 0 9 0 218 0 15 0 218 0 19 4 49 0 38] 
#[0 0 222 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 4 53 0 19] 
#[0 0 226 0 19] 
#[0 0 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 0 230 0 2 0 230 0 3 0 230 0 5 0 230 0 6 0 230 0 9 0 230 0 10 0 230 0 12 3 161 0 13 0 230 0 15 0 230 0 16 3 165 0 17 0 230 0 22 0 230 0 24 0 230 0 26 0 230 0 27 0 230 0 28 0 230 0 30 0 230 0 32 0 230 0 33 0 230 0 36 0 230 0 39 0 230 0 40 0 230 0 65 0 230 0 91 0 230 0 93 0 230 0 94 0 230 0 96 0 230 0 97 0 230 0 98 0 230 1 71] 
#[0 0 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 230 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 0 242 0 2 0 111 0 3 0 242 0 5 0 242 0 6 0 242 0 9 0 115 0 10 0 242 0 12 0 242 0 15 0 242 0 16 0 119 0 22 0 242 0 24 0 242 0 26 0 242 0 27 0 242 0 28 0 242 0 30 0 242 0 32 0 242 0 33 0 242 0 36 0 242 0 39 0 242 0 40 0 242 0 65 0 242 0 91 0 242 0 93 0 242 0 94 0 242 0 96 0 242 0 97 0 242 0 98 0 242 1 71] 
#[1 0 246 0 2 0 246 0 3 0 246 0 5 0 246 0 6 0 246 0 9 0 246 0 10 0 123 0 12 0 246 0 15 0 127 0 16 0 246 0 22 0 246 0 24 0 246 0 26 0 246 0 27 0 246 0 28 0 246 0 30 0 246 0 32 0 246 0 33 0 246 0 36 0 246 0 39 0 246 0 40 0 246 0 65 0 246 0 91 0 246 0 93 0 246 0 94 0 246 0 96 0 246 0 97 0 246 0 98 0 246 1 71] 
#[1 0 250 0 2 0 250 0 3 0 250 0 5 0 250 0 6 0 250 0 9 0 250 0 10 0 250 0 12 0 250 0 15 0 250 0 16 0 250 0 22 0 250 0 24 0 250 0 26 0 250 0 27 0 131 0 28 0 250 0 30 0 250 0 32 0 250 0 33 0 250 0 36 0 250 0 39 0 250 0 40 0 250 0 65 0 250 0 91 0 250 0 93 0 250 0 94 0 250 0 96 0 135 0 97 0 139 0 98 0 250 1 71] 
#[1 0 254 0 2 0 254 0 3 0 254 0 5 0 254 0 6 0 254 0 9 0 254 0 10 0 254 0 12 0 254 0 15 0 254 0 16 0 254 0 22 0 254 0 24 0 254 0 26 0 143 0 27 0 254 0 28 0 147 0 30 0 254 0 32 0 151 0 33 0 254 0 36 0 254 0 39 0 254 0 40 0 155 0 65 0 254 0 91 0 254 0 93 0 254 0 94 0 159 0 96 0 254 0 97 0 254 0 98 0 254 1 71] 
#[1 0 163 0 2 1 2 0 3 1 2 0 5 1 2 0 6 1 2 0 9 1 2 0 10 1 2 0 12 1 2 0 15 1 2 0 16 1 2 0 22 1 2 0 24 1 2 0 26 1 2 0 27 1 2 0 28 1 2 0 30 0 167 0 32 1 2 0 33 1 2 0 36 1 2 0 39 1 2 0 40 1 2 0 65 1 2 0 91 1 2 0 93 1 2 0 94 1 2 0 96 1 2 0 97 1 2 0 98 1 2 1 71] 
#[1 1 6 0 2 1 6 0 3 0 171 0 5 1 6 0 6 1 6 0 9 1 6 0 10 1 6 0 12 1 6 0 15 1 6 0 16 1 6 0 22 1 6 0 24 1 6 0 26 1 6 0 27 1 6 0 28 1 6 0 30 1 6 0 32 1 6 0 33 1 6 0 36 1 6 0 39 1 6 0 40 1 6 0 65 1 6 0 91 1 6 0 93 1 6 0 94 1 6 0 96 1 6 0 97 1 6 0 98 1 6 1 71] 
#[1 1 10 0 2 1 10 0 3 1 10 0 5 1 10 0 6 1 10 0 9 1 10 0 10 1 10 0 12 1 10 0 15 1 10 0 16 1 10 0 22 1 10 0 24 1 10 0 26 1 10 0 27 1 10 0 28 1 10 0 30 1 10 0 32 1 10 0 33 1 10 0 36 1 10 0 39 0 175 0 40 1 10 0 65 1 10 0 91 1 10 0 93 1 10 0 94 1 10 0 96 1 10 0 97 1 10 0 98 1 10 1 71] 
#[1 1 14 0 2 1 14 0 3 1 14 0 5 1 14 0 6 1 14 0 9 1 14 0 10 1 14 0 12 1 14 0 15 1 14 0 16 1 14 0 22 1 14 0 24 1 14 0 26 1 14 0 27 1 14 0 28 1 14 0 30 1 14 0 32 1 14 0 33 1 14 0 36 1 14 0 39 1 14 0 40 1 14 0 65 0 179 0 91 1 14 0 93 1 14 0 94 1 14 0 96 1 14 0 97 1 14 0 98 1 14 1 71] 
#[1 1 18 0 2 1 18 0 3 1 18 0 5 0 183 0 6 1 18 0 9 1 18 0 10 1 18 0 12 1 18 0 15 1 18 0 16 1 18 0 22 1 18 0 24 1 18 0 26 1 18 0 27 1 18 0 28 1 18 0 30 1 18 0 32 1 18 0 33 1 18 0 36 1 18 0 39 1 18 0 40 1 18 0 65 1 18 0 91 1 18 0 93 1 18 0 94 1 18 0 96 1 18 0 97 1 18 0 98 1 18 1 71] 
#[1 1 22 0 2 1 22 0 3 1 22 0 5 1 22 0 6 1 22 0 9 1 22 0 10 1 22 0 12 1 22 0 15 1 22 0 16 1 22 0 22 1 22 0 24 1 22 0 26 1 22 0 27 1 22 0 28 1 22 0 30 1 22 0 32 1 22 0 33 0 187 0 36 1 22 0 39 1 22 0 40 1 22 0 65 1 22 0 91 0 191 0 93 1 22 0 94 1 22 0 96 1 22 0 97 1 22 0 98 1 22 1 71] 
#[0 1 26 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 222 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 195 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 0 1 71] 
#[0 1 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 0 1 71] 
#[1 4 141 0 37 3 125 0 50 3 129 0 56 3 133 0 67] 
#[0 1 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 1 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 1 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 4 149 0 77 1 38 0 105 4 149 1 44] 
#[1 2 117 0 26 0 59 0 37 0 65 0 42 0 18 0 50 0 18 0 56 0 101 0 58 0 18 0 67 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 153 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 193 0 88 4 153 0 128 4 157 0 130 4 161 0 135 2 129 0 136 1 29 0 137 1 33 0 138 4 161 0 139 4 161 0 172 4 161 0 173 1 33 1 34 4 161 1 45 1 42 1 71] 
#[1 1 46 0 26 1 46 0 37 1 46 0 42 1 46 0 50 1 46 0 56 1 46 0 58 2 145 0 64 1 46 0 67 1 46 0 69 1 46 0 72 1 46 0 73 1 46 0 74 1 46 0 77 1 46 0 78 1 46 0 81 1 46 0 85 1 46 0 88 4 165 0 132 4 165 0 133 4 165 0 134 1 46 1 71] 
#[0 1 50 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 1 54 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 1 54 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[1 2 233 0 105 4 169 0 122 4 169 0 123 4 169 0 124] 
#[0 1 58 0 37 0 71 0 105] 
#[0 4 173 0 9] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 4 5 0 113 4 5 0 114 4 5 0 115 4 5 0 116 4 9 0 117 4 9 0 118 4 9 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 2 177 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 2 177 1 25 2 177 1 26 2 109 1 27 1 197 1 28 2 177 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 0 126 0 2 0 126 0 3 0 126 0 4 0 126 0 5 0 126 0 6 0 126 0 7 0 126 0 8 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 15 0 126 0 16 0 126 0 17 0 126 0 18 0 71 0 20 0 126 0 22 0 126 0 23 0 126 0 24 0 71 0 25 0 126 0 26 0 107 0 27 0 126 0 28 0 126 0 29 0 126 0 30 0 126 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 71 0 38 0 126 0 39 0 126 0 40 0 126 0 41 0 126 0 65 0 126 0 91 0 126 0 92 0 126 0 93 0 126 0 94 0 126 0 96 0 126 0 97 0 126 0 98 0 22 0 105 3 89 1 60 0 126 1 71] 
#[0 1 62 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 66 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 70 0 15 4 177 0 57 4 181 0 79 1 70 0 96 4 185 1 63] 
#[0 1 74 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 0 22 0 2 0 22 0 3 0 22 0 5 0 22 0 6 0 22 0 8 0 22 0 9 0 22 0 10 0 22 0 12 0 22 0 15 0 22 0 16 0 22 0 20 0 22 0 21 0 22 0 22 0 22 0 24 0 22 0 26 0 199 0 27 0 22 0 28 0 22 0 30 0 22 0 32 0 22 0 33 0 22 0 36 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 52 0 22 0 63 0 22 0 65 0 22 0 90 0 22 0 91 0 22 0 93 0 22 0 94 0 22 0 96 0 22 0 97 0 22 0 98 0 22 0 105 3 89 1 60 0 22 1 71] 
#[0 1 78 0 15 0 96] 
#[1 0 134 0 5 0 134 0 15 0 134 0 21 3 101 0 38 0 134 0 91 0 134 0 96 0 134 0 105 3 105 1 1 3 109 1 2] 
#[0 0 134 0 5 0 15 0 21 0 91 0 96 0 105] 
#[1 4 189 0 15 4 193 0 96] 
#[0 1 82 0 15 0 96] 
#[0 0 126 0 8 0 9 0 15 0 20 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 4 197 0 8 1 86 0 9 1 86 0 15 4 201 0 20 1 86 0 26 1 86 0 27 1 86 0 37 1 86 0 42 1 86 0 44 1 86 0 46 1 86 0 49 1 86 0 50 1 86 0 54 1 86 0 56 1 86 0 58 1 86 0 60 1 86 0 66 1 86 0 67 1 86 0 68 1 86 0 69 1 86 0 71 1 86 0 72 1 86 0 73 1 86 0 74 1 86 0 76 1 86 0 77 1 86 0 78 1 86 0 81 1 86 0 85 1 86 0 87 1 86 0 88 1 86 0 94 1 86 0 105 4 205 1 35] 
#[1 4 209 0 24 4 213 0 26] 
#[0 1 90 0 26] 
#[0 4 217 0 26] 
#[0 4 221 0 26] 
#[0 3 49 0 8] 
#[0 4 225 0 89] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 1 94 0 26 0 57 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 0 129 0 70 0 47 0 76 0 161 0 79 0 173 0 82 0 189 0 87 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 203 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 4 237 0 198 4 233 0 204 4 237 0 216 4 237 0 217 4 245 0 220 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 4 233 1 10 4 233 1 11 4 233 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 4 249 1 68 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 4 253 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 4 253 1 25 4 253 1 26 2 109 1 27 1 197 1 28 4 253 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 5 1 0 38 5 5 0 254 5 9 0 255 5 13 1 1 3 109 1 2] 
#[1 1 98 0 8 5 1 0 38 5 17 0 254 5 9 0 255 5 21 1 1 3 109 1 2] 
#[0 5 25 0 8] 
#[1 0 202 0 8 0 202 0 9 0 202 0 15 3 225 0 20 0 202 0 26 0 202 0 38 0 202 0 52 0 202 0 63 0 202 0 90] 
#[0 5 29 0 26] 
#[0 1 102 0 26] 
#[1 0 57 0 27 0 207 0 105 5 37 1 60] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 5 41 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 5 41 1 25 5 41 1 26 2 109 1 27 1 197 1 28 5 41 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 5 45 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 5 45 1 25 5 45 1 26 2 109 1 27 1 197 1 28 5 45 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 5 49 0 26] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 5 53 0 230 5 57 0 231 5 61 1 68] 
#[1 0 201 0 90 5 65 0 193] 
#[1 0 211 0 90 5 69 0 193] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 5 73 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 5 73 1 25 5 73 1 26 2 109 1 27 1 197 1 28 5 73 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 5 77 0 94] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 89 0 51 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 1 110 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 5 81 0 139 1 41 0 158 5 81 0 172 5 81 0 193 5 81 0 196 5 81 0 197 1 61 0 198 5 81 0 199 5 81 0 200 5 81 0 201 5 81 0 202 5 81 0 203 1 85 0 204 5 81 0 205 5 81 0 206 5 81 0 207 5 81 0 213 5 81 0 214 5 81 0 215 5 81 0 222 5 81 0 223 5 81 0 224 5 81 0 225 5 81 0 226 5 81 0 227 5 81 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 5 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 5 81 1 67 1 229 1 68 1 233 1 70] 
#[0 1 114 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 69 0 43 0 73 0 44 0 77 0 45 0 81 0 46 0 85 0 49 0 89 0 51 0 93 0 53 0 97 0 54 0 105 0 60 0 109 0 61 0 113 0 62 0 117 0 66 0 121 0 68 0 129 0 70 0 145 0 75 0 149 0 76 0 161 0 79 0 165 0 80 3 1 0 81 0 173 0 82 0 177 0 83 0 185 0 86 0 189 0 87 0 197 0 89 0 201 0 90 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 67 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 5 85 0 193 5 85 0 199 5 85 0 200 5 85 0 201 5 85 0 202 5 85 0 203 1 85 0 204 5 85 0 205 5 85 0 206 5 85 0 207 5 85 0 213 5 85 0 214 5 85 0 215 5 85 0 222 5 85 0 223 5 85 0 224 5 85 0 225 5 85 0 226 5 85 0 227 5 85 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 5 85 1 67 1 233 1 70] 
#[0 1 118 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 5 89 0 50] 
#[0 5 93 0 50] 
#[0 5 97 0 39] 
#[1 1 122 0 2 1 122 0 3 1 122 0 5 1 122 0 6 1 122 0 9 1 122 0 10 1 122 0 12 1 122 0 15 1 122 0 16 1 122 0 20 1 122 0 21 1 122 0 22 1 122 0 24 1 122 0 25 1 122 0 26 1 122 0 27 1 122 0 28 1 122 0 30 1 122 0 32 1 122 0 33 1 122 0 36 3 101 0 38 1 122 0 39 1 122 0 40 1 122 0 65 1 122 0 91 1 122 0 93 1 122 0 94 1 122 0 96 1 122 0 97 1 122 0 98 1 122 0 105 5 101 1 2 1 122 1 71] 
#[0 1 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 5 105 0 70] 
#[1 5 109 0 79 5 113 0 82 5 117 0 105] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 5 121 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 5 121 1 25 5 121 1 26 2 109 1 27 1 197 1 28 5 121 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 5 125 0 105] 
#[0 5 129 0 105] 
#[0 5 133 0 105] 
#[0 1 130 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 5 137 0 50] 
#[0 1 134 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 138 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 141 0 105] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 5 145 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 5 145 1 25 5 145 1 26 2 109 1 27 1 197 1 28 5 145 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 1 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 1 150 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 5 149 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 5 149 1 25 5 149 1 26 2 109 1 27 1 197 1 28 5 149 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 5 153 0 8] 
#[0 5 157 0 105] 
#[1 1 122 0 2 1 122 0 3 1 122 0 5 1 122 0 6 1 122 0 9 1 122 0 10 1 122 0 12 1 122 0 15 1 122 0 16 1 122 0 20 1 122 0 21 1 122 0 22 1 122 0 24 1 122 0 25 1 122 0 26 1 122 0 27 1 122 0 28 1 122 0 30 1 122 0 32 1 122 0 33 1 122 0 36 3 101 0 38 1 122 0 39 1 122 0 40 1 122 0 65 1 122 0 91 1 122 0 93 1 122 0 94 1 122 0 96 1 122 0 97 1 122 0 98 1 122 0 105 5 101 1 2 1 122 1 71] 
#[0 1 154 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[1 5 161 0 105 5 165 0 151 5 169 0 152 5 169 0 153 5 177 0 154] 
#[0 1 158 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[0 1 162 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[1 0 57 0 27 5 181 0 70 0 22 0 105 5 185 1 60] 
#[0 5 189 0 105] 
#[0 1 166 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 5 193 0 9 0 75 0 20 3 101 0 38 3 105 1 1 3 109 1 2] 
#[1 5 197 0 5 1 170 0 9 0 134 0 20 3 113 0 25 5 201 1 14] 
#[0 1 174 0 9 0 15] 
#[0 5 205 0 9] 
#[1 1 178 0 9 5 209 0 15] 
#[0 1 182 0 9 0 15] 
#[1 1 174 0 9 1 174 0 15 0 226 0 19] 
#[1 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 3 233 0 58 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 5 213 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 5 213 0 117 5 213 0 118 5 213 0 121 3 245 1 34 1 213 1 64 1 213 1 65 1 213 1 66 3 245 1 69] 
#[0 1 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 190 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 5 217 0 39] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 0 201 0 90 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 5 225 0 193 1 141 0 240 1 145 0 241 5 225 0 242 2 13 0 243 2 17 0 247 5 225 0 248 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 5 225 1 25 5 225 1 26 2 109 1 27 1 197 1 28 5 225 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 5 233 1 9 5 233 1 10 5 233 1 11 5 233 1 12 5 233 1 13 5 233 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 5 237 1 9 5 237 1 10 5 237 1 11 5 237 1 12 5 237 1 13 5 237 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 5 241 1 9 5 241 1 10 5 241 1 11 5 241 1 12 5 241 1 13 5 241 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 5 245 1 9 5 245 1 10 5 245 1 11 5 245 1 12 5 245 1 13 5 245 1 15 5 245 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 5 249 1 9 5 249 1 10 5 249 1 11 5 249 1 12 5 249 1 13 5 249 1 15 5 249 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 5 253 1 16 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 6 1 1 16 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 6 5 1 16 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 6 9 1 17 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 6 13 1 17 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 6 17 1 17 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 6 21 0 113 6 21 0 114 6 21 0 115 6 21 0 116 6 25 0 117 6 25 0 118 6 25 0 121 1 213 1 64 1 213 1 65 1 213 1 66] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 6 29 1 17 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 6 33 1 18 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 6 37 1 18 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 6 41 1 19 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 6 45 1 20 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 6 49 1 21 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 6 53 1 22 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 57 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 57 1 25 6 57 1 26 2 109 1 27 1 197 1 28 6 57 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 6 61 1 23 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 6 65 0 67] 
#[0 1 198 0 105] 
#[1 2 233 0 105 6 69 0 122 6 69 0 123 6 69 0 124] 
#[0 1 202 1 71] 
#[1 2 117 0 26 0 59 0 37 0 65 0 42 0 18 0 50 0 18 0 56 0 101 0 58 0 18 0 67 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 153 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 193 0 88 6 73 0 135 2 129 0 136 1 29 0 137 1 33 0 138 6 73 0 139 6 73 0 172 6 73 0 173 1 33 1 34 6 73 1 45 1 206 1 71] 
#[0 1 210 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 1 214 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[1 4 201 0 20 6 77 0 26] 
#[0 1 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 6 81 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 6 81 0 117 6 81 0 118 6 81 0 121 1 213 1 64 1 213 1 65 1 213 1 66] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 6 85 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 6 85 0 117 6 85 0 118 6 85 0 121 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 1 222 0 15 0 96] 
#[1 2 201 0 36 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 2 213 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 2 213 0 117 2 213 0 118 2 213 0 121 6 89 1 62 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 1 226 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 1 237 0 1 2 181 0 8 1 230 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 6 93 0 90 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 215 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 121 1 25 2 61 1 27 1 197 1 28 6 121 1 34 6 109 1 36 6 113 1 37 6 117 1 38 6 121 1 39 6 121 1 40 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 5 117 0 105] 
#[0 1 234 0 9 0 15 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 129 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 129 1 25 6 129 1 26 2 109 1 27 1 197 1 28 6 129 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 1 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 242 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 246 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 6 133 0 8] 
#[0 1 250 0 26] 
#[0 1 254 0 9 0 15 0 26] 
#[0 6 137 0 26] 
#[0 2 2 0 26] 
#[1 6 141 0 15 1 250 0 26] 
#[1 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 3 233 0 58 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 6 145 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 6 145 0 117 6 145 0 118 6 145 0 121 3 245 1 34 1 213 1 64 1 213 1 65 1 213 1 66 3 245 1 69] 
#[0 6 149 0 9] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 5 97 0 39 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 153 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 153 1 25 6 153 1 26 2 109 1 27 1 197 1 28 6 153 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 2 6 0 2 2 6 0 3 2 6 0 5 2 6 0 6 2 6 0 9 2 6 0 10 2 6 0 12 2 6 0 13 2 6 0 15 2 6 0 16 2 6 0 17 2 6 0 20 2 6 0 22 2 6 0 24 2 6 0 25 2 6 0 26 2 6 0 27 2 6 0 28 2 6 0 30 2 6 0 32 2 6 0 33 2 6 0 36 5 1 0 38 2 6 0 39 2 6 0 40 2 6 0 65 2 6 0 91 2 6 0 93 2 6 0 94 2 6 0 96 2 6 0 97 2 6 0 98 6 157 0 255 6 161 1 0 6 165 1 1 3 109 1 2 2 6 1 71] 
#[0 2 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 3 101 0 38 6 169 0 90 6 173 0 191 5 101 1 2] 
#[1 2 6 0 2 2 6 0 3 2 6 0 5 2 6 0 6 2 6 0 9 2 6 0 10 2 6 0 12 2 6 0 13 2 6 0 15 2 6 0 16 2 6 0 17 2 6 0 20 2 6 0 22 2 6 0 24 2 6 0 25 2 6 0 26 2 6 0 27 2 6 0 28 2 6 0 30 2 6 0 32 2 6 0 33 2 6 0 36 5 1 0 38 2 6 0 39 2 6 0 40 2 6 0 65 2 6 0 91 2 6 0 93 2 6 0 94 2 6 0 96 2 6 0 97 2 6 0 98 6 157 0 255 6 177 1 0 6 165 1 1 3 109 1 2 2 6 1 71] 
#[1 3 101 0 38 6 169 0 90 6 181 0 191 5 101 1 2] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 6 185 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 2 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 2 22 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 6 197 0 105] 
#[0 6 201 0 9] 
#[0 6 205 0 9] 
#[0 2 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 2 30 0 9 6 209 0 26 6 213 0 232] 
#[0 2 34 0 9 0 26] 
#[1 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 3 233 0 58 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 6 217 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 6 217 0 117 6 217 0 118 6 217 0 121 3 245 1 34 1 213 1 64 1 213 1 65 1 213 1 66 3 245 1 69] 
#[1 6 221 0 48 2 38 0 59 6 225 0 233 6 229 0 234 6 233 0 235] 
#[0 2 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 6 237 0 9] 
#[0 2 46 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 2 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 2 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 62 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 2 66 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 2 70 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 6 241 0 20] 
#[0 2 74 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 78 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 6 245 0 39] 
#[1 6 249 0 27 2 82 0 57 2 82 0 63 2 82 0 90 6 253 1 54] 
#[1 7 1 0 63 2 86 0 90 7 5 0 142 7 9 0 143] 
#[1 6 249 0 27 2 82 0 57 2 82 0 90 7 13 1 54] 
#[0 2 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 90 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 7 17 0 39] 
#[0 2 94 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 7 21 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 0 22 0 2 0 22 0 3 0 22 0 5 0 22 0 6 0 22 0 8 0 22 0 9 0 22 0 10 0 22 0 12 0 22 0 15 0 22 0 16 0 22 0 20 0 22 0 21 0 22 0 22 0 22 0 24 0 22 0 25 0 22 0 26 0 199 0 27 0 22 0 28 0 22 0 30 0 22 0 32 0 22 0 33 0 22 0 36 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 52 0 22 0 63 0 22 0 65 0 22 0 90 0 22 0 91 0 22 0 93 0 22 0 94 0 22 0 96 0 22 0 97 0 22 0 98 0 22 0 105 7 25 1 60 0 22 1 71] 
#[0 0 214 0 9 0 15 0 24 0 26 0 31 0 38] 
#[1 7 29 0 15 2 98 0 26] 
#[0 2 102 0 15 0 26] 
#[0 2 106 0 15 0 26] 
#[1 2 110 0 15 2 110 0 26 7 33 0 31 4 49 0 38] 
#[1 0 57 0 27 0 22 0 105 7 37 1 60] 
#[0 7 41 0 105] 
#[0 2 70 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 7 45 1 9 7 45 1 10 7 45 1 11 7 45 1 12 7 45 1 13 7 45 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 2 209 0 105 7 53 0 118 7 53 0 120 3 29 1 64 3 29 1 65 3 29 1 66] 
#[0 7 57 0 9] 
#[0 2 114 0 19] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 219 0 105 2 5 0 154 7 61 0 162 7 61 0 246 7 61 0 247 4 33 1 68] 
#[1 7 69 0 21 5 161 0 105 7 73 0 154] 
#[0 2 118 0 9 0 15 0 19 0 24 0 26 0 31 0 38] 
#[0 2 122 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 122 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 2 134 0 2 0 223 0 3 2 134 0 5 2 134 0 6 2 134 0 9 0 227 0 10 2 134 0 12 2 134 0 15 2 134 0 16 0 231 0 22 2 134 0 24 2 134 0 26 2 134 0 27 2 134 0 28 2 134 0 30 2 134 0 32 2 134 0 33 2 134 0 36 2 134 0 39 2 134 0 40 2 134 0 65 2 134 0 91 2 134 0 93 2 134 0 94 2 134 0 96 2 134 0 97 2 134 0 98 2 134 1 71] 
#[1 2 134 0 2 0 223 0 3 2 134 0 5 2 134 0 6 2 134 0 9 0 227 0 10 2 134 0 12 2 134 0 15 2 134 0 16 0 231 0 22 2 134 0 24 2 134 0 26 2 134 0 27 2 134 0 28 2 134 0 30 2 134 0 32 2 134 0 33 2 134 0 36 2 134 0 39 2 134 0 40 2 134 0 65 2 134 0 91 2 134 0 93 2 134 0 94 2 134 0 96 2 134 0 97 2 134 0 98 2 134 1 71] 
#[1 2 138 0 2 2 138 0 3 2 138 0 5 2 138 0 6 2 138 0 9 2 138 0 10 0 235 0 12 2 138 0 15 0 239 0 16 2 138 0 22 2 138 0 24 2 138 0 26 2 138 0 27 2 138 0 28 2 138 0 30 2 138 0 32 2 138 0 33 2 138 0 36 2 138 0 39 2 138 0 40 2 138 0 65 2 138 0 91 2 138 0 93 2 138 0 94 2 138 0 96 2 138 0 97 2 138 0 98 2 138 1 71] 
#[1 2 138 0 2 2 138 0 3 2 138 0 5 2 138 0 6 2 138 0 9 2 138 0 10 0 235 0 12 2 138 0 15 0 239 0 16 2 138 0 22 2 138 0 24 2 138 0 26 2 138 0 27 2 138 0 28 2 138 0 30 2 138 0 32 2 138 0 33 2 138 0 36 2 138 0 39 2 138 0 40 2 138 0 65 2 138 0 91 2 138 0 93 2 138 0 94 2 138 0 96 2 138 0 97 2 138 0 98 2 138 1 71] 
#[1 2 138 0 2 2 138 0 3 2 138 0 5 2 138 0 6 2 138 0 9 2 138 0 10 0 235 0 12 2 138 0 15 0 239 0 16 2 138 0 22 2 138 0 24 2 138 0 26 2 138 0 27 2 138 0 28 2 138 0 30 2 138 0 32 2 138 0 33 2 138 0 36 2 138 0 39 2 138 0 40 2 138 0 65 2 138 0 91 2 138 0 93 2 138 0 94 2 138 0 96 2 138 0 97 2 138 0 98 2 138 1 71] 
#[1 2 142 0 2 2 142 0 3 2 142 0 5 2 142 0 6 2 142 0 9 2 142 0 10 2 142 0 12 2 142 0 15 2 142 0 16 2 142 0 22 2 142 0 24 2 142 0 26 2 142 0 27 0 243 0 28 2 142 0 30 2 142 0 32 2 142 0 33 2 142 0 36 2 142 0 39 2 142 0 40 2 142 0 65 2 142 0 91 2 142 0 93 2 142 0 94 2 142 0 96 0 247 0 97 0 251 0 98 2 142 1 71] 
#[1 2 142 0 2 2 142 0 3 2 142 0 5 2 142 0 6 2 142 0 9 2 142 0 10 2 142 0 12 2 142 0 15 2 142 0 16 2 142 0 22 2 142 0 24 2 142 0 26 2 142 0 27 0 243 0 28 2 142 0 30 2 142 0 32 2 142 0 33 2 142 0 36 2 142 0 39 2 142 0 40 2 142 0 65 2 142 0 91 2 142 0 93 2 142 0 94 2 142 0 96 0 247 0 97 0 251 0 98 2 142 1 71] 
#[1 2 142 0 2 2 142 0 3 2 142 0 5 2 142 0 6 2 142 0 9 2 142 0 10 2 142 0 12 2 142 0 15 2 142 0 16 2 142 0 22 2 142 0 24 2 142 0 26 2 142 0 27 0 243 0 28 2 142 0 30 2 142 0 32 2 142 0 33 2 142 0 36 2 142 0 39 2 142 0 40 2 142 0 65 2 142 0 91 2 142 0 93 2 142 0 94 2 142 0 96 0 247 0 97 0 251 0 98 2 142 1 71] 
#[1 3 101 0 38 3 105 1 1 3 109 1 2] 
#[0 2 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 2 142 0 2 2 142 0 3 2 142 0 5 2 142 0 6 2 142 0 9 2 142 0 10 2 142 0 12 2 142 0 15 2 142 0 16 2 142 0 22 2 142 0 24 2 142 0 26 2 142 0 27 0 243 0 28 2 142 0 30 2 142 0 32 2 142 0 33 2 142 0 36 2 142 0 39 2 142 0 40 2 142 0 65 2 142 0 91 2 142 0 93 2 142 0 94 2 142 0 96 0 247 0 97 0 251 0 98 2 142 1 71] 
#[1 2 146 0 2 2 146 0 3 2 146 0 5 2 146 0 6 2 146 0 9 2 146 0 10 2 146 0 12 2 146 0 15 2 146 0 16 2 146 0 22 2 146 0 24 2 146 0 26 0 255 0 27 2 146 0 28 1 3 0 30 2 146 0 32 1 7 0 33 2 146 0 36 2 146 0 39 2 146 0 40 1 11 0 65 2 146 0 91 2 146 0 93 2 146 0 94 1 15 0 96 2 146 0 97 2 146 0 98 2 146 1 71] 
#[1 2 146 0 2 2 146 0 3 2 146 0 5 2 146 0 6 2 146 0 9 2 146 0 10 2 146 0 12 2 146 0 15 2 146 0 16 2 146 0 22 2 146 0 24 2 146 0 26 0 255 0 27 2 146 0 28 1 3 0 30 2 146 0 32 1 7 0 33 2 146 0 36 2 146 0 39 2 146 0 40 1 11 0 65 2 146 0 91 2 146 0 93 2 146 0 94 1 15 0 96 2 146 0 97 2 146 0 98 2 146 1 71] 
#[1 1 19 0 2 2 150 0 3 2 150 0 5 2 150 0 6 2 150 0 9 2 150 0 10 2 150 0 12 2 150 0 15 2 150 0 16 2 150 0 22 2 150 0 24 2 150 0 26 2 150 0 27 2 150 0 28 2 150 0 30 1 23 0 32 2 150 0 33 2 150 0 36 2 150 0 39 2 150 0 40 2 150 0 65 2 150 0 91 2 150 0 93 2 150 0 94 2 150 0 96 2 150 0 97 2 150 0 98 2 150 1 71] 
#[1 2 154 0 2 2 154 0 3 1 27 0 5 2 154 0 6 2 154 0 9 2 154 0 10 2 154 0 12 2 154 0 15 2 154 0 16 2 154 0 22 2 154 0 24 2 154 0 26 2 154 0 27 2 154 0 28 2 154 0 30 2 154 0 32 2 154 0 33 2 154 0 36 2 154 0 39 2 154 0 40 2 154 0 65 2 154 0 91 2 154 0 93 2 154 0 94 2 154 0 96 2 154 0 97 2 154 0 98 2 154 1 71] 
#[1 2 158 0 2 2 158 0 3 2 158 0 5 2 158 0 6 2 158 0 9 2 158 0 10 2 158 0 12 2 158 0 15 2 158 0 16 2 158 0 22 2 158 0 24 2 158 0 26 2 158 0 27 2 158 0 28 2 158 0 30 2 158 0 32 2 158 0 33 2 158 0 36 2 158 0 39 1 31 0 40 2 158 0 65 2 158 0 91 2 158 0 93 2 158 0 94 2 158 0 96 2 158 0 97 2 158 0 98 2 158 1 71] 
#[1 2 162 0 2 2 162 0 3 2 162 0 5 2 162 0 6 2 162 0 9 2 162 0 10 2 162 0 12 2 162 0 15 2 162 0 16 2 162 0 22 2 162 0 24 2 162 0 26 2 162 0 27 2 162 0 28 2 162 0 30 2 162 0 32 2 162 0 33 2 162 0 36 2 162 0 39 2 162 0 40 2 162 0 65 1 35 0 91 2 162 0 93 2 162 0 94 2 162 0 96 2 162 0 97 2 162 0 98 2 162 1 71] 
#[0 7 77 0 24] 
#[1 2 166 0 2 2 166 0 3 2 166 0 5 1 39 0 6 2 166 0 9 2 166 0 10 2 166 0 12 2 166 0 15 2 166 0 16 2 166 0 22 2 166 0 24 2 166 0 26 2 166 0 27 2 166 0 28 2 166 0 30 2 166 0 32 2 166 0 33 2 166 0 36 2 166 0 39 2 166 0 40 2 166 0 65 2 166 0 91 2 166 0 93 2 166 0 94 2 166 0 96 2 166 0 97 2 166 0 98 2 166 1 71] 
#[0 7 81 0 105] 
#[1 7 85 0 20 7 89 0 26] 
#[0 2 170 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 2 174 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 2 178 0 15 0 96] 
#[0 2 178 0 15 0 96] 
#[0 2 182 0 15 0 96] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 2 186 0 15 1 249 0 16 0 49 0 17 0 57 0 27 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 6 93 0 90 2 186 0 94 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 7 93 1 25 2 61 1 27 1 197 1 28 7 93 1 34 7 93 1 39 7 93 1 40 7 97 1 41 7 101 1 42 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 0 126 0 2 0 126 0 3 0 126 0 4 0 126 0 5 0 126 0 6 0 126 0 7 0 126 0 9 0 126 0 10 0 126 0 11 0 126 0 12 0 126 0 13 0 126 0 14 0 126 0 16 0 126 0 17 0 126 0 18 0 71 0 20 0 126 0 22 0 126 0 23 0 71 0 25 0 107 0 27 0 126 0 28 0 126 0 29 0 126 0 30 1 43 0 31 0 126 0 32 0 126 0 33 0 126 0 34 0 126 0 35 0 126 0 36 0 71 0 38 0 126 0 40 0 126 0 41 0 126 0 65 0 126 0 91 0 126 0 92 0 126 0 93 0 126 0 96 0 126 0 97 0 126 0 98 3 89 1 60] 
#[0 2 190 0 9 0 15 0 94] 
#[0 2 190 0 9 0 15 0 94] 
#[0 7 109 0 9] 
#[1 2 194 0 9 7 113 0 15] 
#[0 2 198 0 9 0 15] 
#[0 2 202 0 9] 
#[0 2 190 0 9 0 15 0 94] 
#[0 7 117 0 26] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 7 121 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 7 121 1 25 7 121 1 26 2 109 1 27 1 197 1 28 7 121 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 78 0 26 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 7 125 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 7 125 1 25 7 125 1 26 2 109 1 27 1 197 1 28 7 125 1 30 7 125 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 7 129 0 204 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 7 129 1 10 7 129 1 11 7 129 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 5 161 0 105 5 165 0 151 5 169 0 152 5 169 0 153 7 133 0 154] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 69 0 43 0 73 0 44 0 77 0 45 0 81 0 46 0 85 0 49 0 89 0 51 0 93 0 53 0 97 0 54 0 105 0 60 0 109 0 61 0 113 0 62 0 117 0 66 0 121 0 68 0 129 0 70 0 145 0 75 0 149 0 76 0 161 0 79 0 165 0 80 3 1 0 81 0 173 0 82 0 177 0 83 0 185 0 86 0 189 0 87 0 197 0 89 0 201 0 90 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 67 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 7 137 0 193 7 137 0 199 7 137 0 200 7 137 0 201 7 137 0 202 7 137 0 203 1 85 0 204 7 137 0 205 7 137 0 206 7 137 0 207 7 137 0 213 7 137 0 214 7 137 0 215 7 137 0 222 7 137 0 223 7 137 0 224 7 137 0 225 7 137 0 226 7 137 0 227 7 137 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 7 137 1 67 1 233 1 70] 
#[0 7 141 0 39] 
#[0 2 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 2 214 0 2 2 214 0 3 2 214 0 5 2 214 0 6 2 214 0 9 2 214 0 10 2 214 0 12 2 214 0 13 2 214 0 15 2 214 0 16 2 214 0 17 2 214 0 20 2 214 0 22 2 214 0 24 2 214 0 25 2 214 0 26 2 214 0 27 2 214 0 28 2 214 0 30 2 214 0 32 2 214 0 33 2 214 0 36 3 101 0 38 2 214 0 39 2 214 0 40 2 214 0 65 2 214 0 91 2 214 0 93 2 214 0 94 2 214 0 96 2 214 0 97 2 214 0 98 5 101 1 2 2 214 1 71] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 7 145 0 15 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 6 169 0 90 7 149 0 94 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 7 153 0 155 1 41 0 158 7 153 0 191 7 161 0 192 1 141 0 240 1 145 0 241 7 153 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 7 153 1 25 7 153 1 26 2 109 1 27 1 197 1 28 7 153 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 2 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 7 169 0 9] 
#[1 2 222 0 9 7 173 0 15] 
#[0 2 226 0 9 0 15] 
#[0 7 177 0 8] 
#[1 7 181 0 90 7 185 0 208] 
#[1 0 201 0 90 7 189 0 193] 
#[1 2 230 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 7 193 0 231 5 61 1 68] 
#[0 7 197 0 9] 
#[1 5 161 0 105 7 201 0 153 7 205 0 154] 
#[0 7 209 0 8] 
#[1 7 213 0 59 7 217 0 238] 
#[1 2 234 0 8 2 234 0 13 2 234 0 17 2 234 0 26 2 234 0 27 2 234 0 37 2 234 0 42 2 234 0 43 2 234 0 44 2 234 0 45 2 234 0 46 2 234 0 47 6 221 0 48 2 234 0 49 2 234 0 50 2 234 0 51 2 234 0 52 2 234 0 53 2 234 0 54 2 234 0 55 2 234 0 56 2 234 0 58 2 238 0 59 2 234 0 60 2 234 0 61 2 234 0 62 2 234 0 66 2 234 0 67 2 234 0 68 2 234 0 69 2 234 0 70 2 234 0 72 2 234 0 73 2 234 0 74 2 234 0 75 2 234 0 76 2 234 0 77 2 234 0 78 2 234 0 79 2 234 0 80 2 234 0 81 2 234 0 82 2 234 0 83 2 234 0 85 2 234 0 86 2 234 0 87 2 234 0 88 2 234 0 89 2 234 0 90 2 234 0 94 2 234 0 99 2 234 0 100 2 234 0 101 2 234 0 102 2 234 0 103 2 234 0 104 2 234 0 105 7 221 0 235 2 234 1 71] 
#[0 2 242 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 69 0 43 0 73 0 44 0 77 0 45 0 81 0 46 0 85 0 49 0 89 0 51 0 93 0 53 0 97 0 54 0 105 0 60 0 109 0 61 0 113 0 62 0 117 0 66 0 121 0 68 0 129 0 70 0 145 0 75 0 149 0 76 0 161 0 79 0 165 0 80 3 1 0 81 0 173 0 82 0 177 0 83 0 185 0 86 0 189 0 87 0 197 0 89 0 201 0 90 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 67 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 7 225 0 193 7 225 0 199 7 225 0 200 7 225 0 201 7 225 0 202 7 225 0 203 1 85 0 204 7 225 0 205 7 225 0 206 7 225 0 207 7 225 0 213 7 225 0 214 7 225 0 215 7 225 0 222 7 225 0 223 7 225 0 224 7 225 0 225 7 225 0 226 7 225 0 227 7 225 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 7 225 1 67 1 233 1 70] 
#[1 0 57 0 27 1 47 0 105 7 233 1 60] 
#[0 2 246 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 7 237 0 105 7 241 1 55 7 245 1 56] 
#[1 7 249 0 57 2 250 0 63 2 250 0 90 7 253 0 140 8 1 0 141] 
#[1 2 209 0 105 8 5 0 118 8 5 0 120 8 9 0 144 3 29 1 64 3 29 1 65 3 29 1 66] 
#[0 2 254 0 90] 
#[1 8 13 0 90 8 17 1 46] 
#[1 8 21 0 57 3 2 0 90 8 25 0 179 8 29 0 180] 
#[0 2 246 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 8 33 0 9] 
#[0 3 6 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 5 161 0 105 8 37 0 152 8 37 0 153 5 177 0 154] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 6 169 0 90 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 8 41 0 155 1 41 0 158 8 41 0 191 1 141 0 240 1 145 0 241 8 41 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 8 41 1 25 8 41 1 26 2 109 1 27 1 197 1 28 8 41 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 8 45 0 105] 
#[0 8 49 0 8] 
#[0 3 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 14 0 9 0 15 0 90] 
#[0 3 18 0 9] 
#[1 1 237 0 1 1 241 0 8 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 8 53 0 122 8 53 0 123 8 53 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 8 57 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 145 1 3 1 145 1 4 1 145 1 5 2 29 1 6 2 29 1 7 2 29 1 8 8 69 1 12 8 69 1 13 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 3 22 0 9 0 15] 
#[0 1 174 0 9 0 15] 
#[1 5 161 0 105 8 73 0 154] 
#[1 3 26 0 9 3 26 0 15 4 49 0 38] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 8 77 1 25 2 61 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 8 81 0 90 8 85 0 174] 
#[1 8 89 0 10 5 117 0 105] 
#[0 3 30 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 3 34 0 15 0 94] 
#[1 8 97 0 15 3 38 0 94 8 97 1 43] 
#[1 1 51 0 15 3 42 0 94] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 6 93 0 90 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 8 105 1 25 2 61 1 27 1 197 1 28 8 105 1 34 8 105 1 39 8 105 1 40 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 3 46 0 9 0 15 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 8 109 0 105 8 113 1 38] 
#[0 3 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 8 117 0 9] 
#[0 8 121 0 26] 
#[0 3 54 0 9 0 15 0 26] 
#[1 2 110 0 15 8 125 0 24 2 110 0 26 7 33 0 31 4 49 0 38] 
#[1 3 58 0 8 3 58 0 13 3 58 0 17 3 58 0 26 3 58 0 27 3 58 0 37 3 58 0 42 3 58 0 43 3 58 0 44 3 58 0 45 3 58 0 46 3 58 0 47 3 58 0 49 3 58 0 50 3 58 0 51 3 58 0 52 3 58 0 53 3 58 0 54 8 129 0 55 3 58 0 56 3 58 0 58 3 58 0 60 3 58 0 61 3 58 0 62 3 58 0 66 3 58 0 67 3 58 0 68 3 58 0 69 3 58 0 70 3 58 0 72 3 58 0 73 3 58 0 74 3 58 0 75 3 58 0 76 3 58 0 77 3 58 0 78 3 58 0 79 3 58 0 80 3 58 0 81 3 58 0 82 3 58 0 83 3 58 0 85 3 58 0 86 3 58 0 87 3 58 0 88 3 58 0 89 3 58 0 90 3 58 0 94 3 58 0 99 3 58 0 100 3 58 0 101 3 58 0 102 3 58 0 103 3 58 0 104 3 58 0 105 3 58 1 71] 
#[0 3 62 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 8 133 0 94] 
#[0 3 66 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 70 0 15 0 94] 
#[0 3 74 0 9 0 15 0 26 0 94] 
#[1 8 137 0 15 8 141 0 94] 
#[0 3 74 0 9 0 15 0 26 0 94] 
#[1 3 78 0 2 3 78 0 3 3 78 0 5 3 78 0 6 3 78 0 9 3 78 0 10 3 78 0 12 3 78 0 13 3 78 0 15 3 78 0 16 3 78 0 17 3 78 0 20 3 78 0 22 3 78 0 24 3 78 0 25 3 78 0 26 3 78 0 27 3 78 0 28 3 78 0 30 3 78 0 32 3 78 0 33 3 78 0 36 3 78 0 38 3 78 0 39 3 78 0 40 3 78 0 65 8 145 0 90 3 78 0 91 3 78 0 93 3 78 0 94 3 78 0 96 3 78 0 97 3 78 0 98 8 149 0 145 3 78 1 71] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 8 153 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 8 153 1 25 8 153 1 26 2 109 1 27 1 197 1 28 8 153 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 8 157 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 8 161 0 47 8 165 0 52 8 169 0 94 8 173 0 209 8 177 0 210 8 181 0 211 8 185 0 212] 
#[0 3 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 90 0 9 0 26] 
#[0 3 94 0 90] 
#[0 3 98 0 9 0 26] 
#[1 7 33 0 31 4 49 0 38] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 8 189 0 236 8 193 1 68] 
#[1 0 201 0 90 8 197 0 193] 
#[0 3 102 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 106 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 110 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 114 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 8 201 0 105] 
#[1 3 118 0 15 8 205 0 57 3 118 0 96 8 209 1 57] 
#[1 8 213 0 15 8 217 0 96] 
#[0 3 122 0 15 0 96] 
#[1 2 209 0 105 8 225 0 118 8 225 0 119 3 29 1 64 3 29 1 65 3 29 1 66] 
#[0 3 126 0 63 0 90] 
#[1 7 1 0 63 2 86 0 90 7 5 0 142 8 229 0 143] 
#[0 3 130 0 15 0 90] 
#[1 8 233 0 15 3 134 0 90] 
#[1 3 138 0 15 3 138 0 26 0 10 0 37 3 138 0 94 0 10 0 105 8 237 1 33 8 241 1 47 8 245 1 48 8 249 1 49] 
#[0 3 142 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 2 209 0 105 8 253 0 118 8 253 0 120 3 29 1 64 3 29 1 65 3 29 1 66] 
#[1 9 1 0 90 9 5 0 181] 
#[1 9 9 0 15 3 146 0 90] 
#[0 3 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 154 0 15 0 26] 
#[0 3 158 0 9 0 15 0 26] 
#[1 3 162 0 8 9 13 0 27 9 17 1 59] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 9 21 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 0 150 0 2 0 150 0 3 0 150 0 5 0 150 0 6 0 150 0 9 0 150 0 10 0 150 0 12 0 150 0 13 0 150 0 15 0 150 0 16 0 150 0 17 0 79 0 20 0 150 0 22 0 150 0 24 0 158 0 25 0 150 0 26 0 150 0 27 0 150 0 28 0 150 0 30 0 150 0 32 0 150 0 33 0 150 0 36 3 121 0 38 0 150 0 39 0 150 0 40 0 150 0 65 0 150 0 91 0 150 0 93 0 150 0 94 0 150 0 96 0 150 0 97 0 150 0 98 0 150 1 71] 
#[0 3 166 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 166 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 3 170 0 9 3 170 0 15 4 49 0 38] 
#[0 3 174 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 2 117 0 26 0 18 0 27 0 59 0 37 0 65 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 101 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 18 0 76 0 153 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 18 0 87 0 193 0 88 3 178 0 94 0 18 0 105 9 49 0 135 9 29 0 136 1 29 0 137 1 33 0 138 9 49 0 139 9 49 0 150 9 37 0 157 9 49 0 172 9 49 0 173 9 41 0 175 9 45 0 176 9 49 0 177 9 49 0 178 9 49 0 190 1 33 1 34 9 49 1 45] 
#[0 3 182 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 9 61 0 26] 
#[0 3 186 0 26 0 94] 
#[0 9 65 0 94] 
#[1 1 237 0 1 2 181 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 6 93 0 90 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 1 141 0 240 1 145 0 241 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 9 69 1 25 2 61 1 27 1 197 1 28 9 69 1 34 9 69 1 39 9 69 1 40 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 3 190 0 9 0 15] 
#[0 7 105 0 31] 
#[0 3 194 0 9 0 15] 
#[0 9 73 0 26] 
#[1 0 41 0 8 3 198 0 9 0 45 0 13 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 63 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 4 233 0 204 9 77 0 218 9 77 0 219 9 85 0 220 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 4 233 1 10 4 233 1 11 4 233 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 9 89 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 9 89 1 25 9 89 1 26 2 109 1 27 1 197 1 28 9 89 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 69 0 43 0 73 0 44 0 77 0 45 0 81 0 46 0 85 0 49 0 89 0 51 0 93 0 53 0 97 0 54 0 105 0 60 0 109 0 61 0 113 0 62 0 117 0 66 0 121 0 68 0 129 0 70 0 145 0 75 0 149 0 76 0 161 0 79 0 165 0 80 3 1 0 81 0 173 0 82 0 177 0 83 0 185 0 86 0 189 0 87 0 197 0 89 0 201 0 90 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 67 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 9 93 0 193 9 93 0 199 9 93 0 200 9 93 0 201 9 93 0 202 9 93 0 203 1 85 0 204 9 93 0 205 9 93 0 206 9 93 0 207 9 93 0 213 9 93 0 214 9 93 0 215 9 93 0 222 9 93 0 223 9 93 0 224 9 93 0 225 9 93 0 226 9 93 0 227 9 93 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 9 93 1 67 1 233 1 70] 
#[0 3 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 6 169 0 90 9 97 0 94 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 9 101 0 155 1 41 0 158 9 101 0 191 1 141 0 240 1 145 0 241 9 101 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 9 101 1 25 9 101 1 26 2 109 1 27 1 197 1 28 9 101 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 3 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 2 117 0 26 0 18 0 27 0 59 0 37 0 65 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 101 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 18 0 76 9 105 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 18 0 87 0 193 0 88 0 201 0 90 3 210 0 94 0 18 0 105 9 125 0 135 9 113 0 136 1 29 0 137 1 33 0 138 9 125 0 139 9 117 0 146 9 121 0 147 9 125 0 148 9 125 0 149 9 125 0 150 9 125 0 156 9 141 0 157 9 125 0 167 9 125 0 168 9 125 0 172 9 125 0 173 9 125 0 193 1 33 1 34 9 125 1 45] 
#[0 3 214 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 218 0 9 0 15] 
#[0 9 157 0 9] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 9 165 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 9 165 1 25 9 165 1 26 2 109 1 27 1 197 1 28 9 165 1 31 9 165 1 32 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 9 169 0 24] 
#[0 3 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 8 161 0 47 8 165 0 52 9 173 0 94 9 177 0 210 9 181 0 211 8 185 0 212] 
#[0 3 226 0 47 0 52 0 94] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 8 161 0 47 0 23 0 49 0 18 0 50 0 89 0 51 8 165 0 52 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 9 185 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 3 81 0 139 1 41 0 158 3 81 0 172 3 81 0 193 9 189 0 195 3 81 0 196 3 81 0 197 1 61 0 198 3 81 0 199 3 81 0 200 3 81 0 201 3 81 0 202 3 81 0 203 1 85 0 204 3 81 0 205 3 81 0 206 3 81 0 207 9 193 0 212 3 81 0 213 3 81 0 214 3 81 0 215 3 81 0 222 3 81 0 223 3 81 0 224 3 81 0 225 3 81 0 226 3 81 0 227 3 81 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 3 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 3 81 1 67 1 229 1 68 1 233 1 70] 
#[0 3 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 9 197 0 9] 
#[1 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 3 233 0 58 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 9 201 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 9 201 0 117 9 201 0 118 9 201 0 121 9 205 0 237 3 245 1 34 1 213 1 64 1 213 1 65 1 213 1 66 3 245 1 69] 
#[0 3 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 9 209 0 8] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 9 213 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 9 213 0 117 9 213 0 118 9 213 0 121 9 217 1 58 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 3 238 0 15 0 96] 
#[1 7 237 0 105 9 221 1 56] 
#[0 3 242 0 44 0 46 0 49 0 54 0 57 0 60 0 63 0 66 0 68 0 76 0 87 0 90 0 105] 
#[0 1 98 0 15 0 26 0 52 0 63 0 90] 
#[0 3 246 0 63 0 90] 
#[1 8 145 0 90 9 225 0 145] 
#[1 2 209 0 105 9 229 0 118 9 229 0 120 3 29 1 64 3 29 1 65 3 29 1 66] 
#[1 0 61 0 37 9 233 0 105 2 173 1 34] 
#[1 9 237 0 15 3 38 0 26 3 38 0 94 9 237 1 43] 
#[1 1 55 0 15 3 250 0 26 3 250 0 94] 
#[0 3 254 0 15 0 26 0 94] 
#[0 4 2 0 15 0 90] 
#[1 2 117 0 26 0 18 0 27 0 59 0 37 0 65 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 9 245 0 52 0 18 0 54 0 18 0 56 0 101 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 18 0 76 0 153 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 18 0 87 0 193 0 88 4 6 0 94 0 18 0 105 10 17 0 135 9 253 0 136 1 29 0 137 1 33 0 138 10 17 0 139 10 17 0 150 10 5 0 157 10 17 0 172 10 17 0 173 10 9 0 182 10 13 0 183 10 17 0 184 10 17 0 185 10 17 0 186 10 29 0 187 10 33 0 188 10 37 0 189 10 17 0 190 1 33 1 34 10 17 1 45] 
#[0 4 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 2 209 0 105 10 45 0 118 10 45 0 120 3 29 1 64 3 29 1 65 3 29 1 66] 
#[1 2 201 0 36 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 10 49 0 96 2 209 0 105 2 213 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 2 213 0 117 2 213 0 118 2 213 0 121 10 53 1 61 2 229 1 62 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 10 57 0 8] 
#[0 10 61 0 9] 
#[0 4 14 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 6 249 0 27 4 141 0 37 1 59 0 44 1 63 0 46 1 67 0 49 3 125 0 50 1 71 0 54 3 129 0 56 1 75 0 60 1 79 0 66 3 133 0 67 1 83 0 68 1 87 0 76 2 82 0 87 1 91 0 105 10 65 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 10 65 0 117 10 65 0 118 10 65 0 121 10 69 1 54 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 4 14 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 10 73 0 26 10 77 0 52] 
#[0 10 81 0 94] 
#[1 2 117 0 26 0 18 0 27 0 59 0 37 0 65 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 101 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 18 0 76 0 153 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 18 0 87 0 193 0 88 4 18 0 94 0 18 0 105 10 85 0 135 9 29 0 136 1 29 0 137 1 33 0 138 10 85 0 139 10 85 0 150 9 37 0 157 10 85 0 172 10 85 0 173 10 85 0 177 10 85 0 178 10 85 0 190 1 33 1 34 10 85 1 45] 
#[0 4 22 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 4 14 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 4 26 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 4 30 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 4 34 0 9 0 15 0 94] 
#[0 4 38 0 15 0 94] 
#[0 4 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 10 89 0 9] 
#[0 4 46 0 9] 
#[1 4 50 0 9 6 141 0 15] 
#[0 10 93 0 9] 
#[0 4 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 4 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 4 62 0 15 0 94] 
#[1 0 42 0 27 0 42 0 37 0 42 0 42 0 42 0 44 0 42 0 46 0 42 0 49 0 42 0 50 0 42 0 54 0 42 0 56 0 42 0 58 0 42 0 60 0 42 0 66 0 42 0 67 0 42 0 68 0 42 0 69 0 42 0 72 0 42 0 73 0 42 0 74 0 42 0 76 0 42 0 77 0 42 0 78 0 42 0 81 0 42 0 85 0 42 0 87 0 42 0 88 0 201 0 90 0 42 0 105 10 97 0 193] 
#[0 4 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[1 6 249 0 27 4 141 0 37 1 59 0 44 1 63 0 46 1 67 0 49 3 125 0 50 1 71 0 54 3 129 0 56 1 75 0 60 1 79 0 66 3 133 0 67 1 83 0 68 1 87 0 76 2 82 0 87 1 91 0 105 10 65 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 10 65 0 117 10 65 0 118 10 65 0 121 10 101 0 169 10 105 1 54 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 10 109 0 94] 
#[1 2 117 0 26 0 18 0 27 0 59 0 37 0 65 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 101 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 18 0 76 9 105 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 18 0 87 0 193 0 88 0 201 0 90 4 70 0 94 0 18 0 105 10 113 0 135 9 113 0 136 1 29 0 137 1 33 0 138 10 113 0 139 10 113 0 148 10 113 0 149 10 113 0 150 10 113 0 156 9 141 0 157 10 113 0 167 10 113 0 168 10 113 0 172 10 113 0 173 10 113 0 193 1 33 1 34 10 113 1 45] 
#[0 4 74 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[1 10 117 0 26 0 201 0 90 10 121 0 166 10 121 0 193] 
#[0 4 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 82 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 4 86 0 24] 
#[0 10 129 0 24] 
#[0 4 90 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 4 94 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 4 98 0 47 0 52 0 94] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 8 161 0 47 0 23 0 49 0 18 0 50 0 89 0 51 8 165 0 52 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 10 133 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 3 81 0 139 1 41 0 158 3 81 0 172 3 81 0 193 9 189 0 195 3 81 0 196 3 81 0 197 1 61 0 198 3 81 0 199 3 81 0 200 3 81 0 201 3 81 0 202 3 81 0 203 1 85 0 204 3 81 0 205 3 81 0 206 3 81 0 207 9 193 0 212 3 81 0 213 3 81 0 214 3 81 0 215 3 81 0 222 3 81 0 223 3 81 0 224 3 81 0 225 3 81 0 226 3 81 0 227 3 81 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 3 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 3 81 1 67 1 229 1 68 1 233 1 70] 
#[0 4 102 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 4 106 0 47 0 23 0 49 0 18 0 50 0 89 0 51 4 106 0 52 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 4 106 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 5 81 0 139 1 41 0 158 5 81 0 172 5 81 0 193 5 81 0 196 5 81 0 197 1 61 0 198 5 81 0 199 5 81 0 200 5 81 0 201 5 81 0 202 5 81 0 203 1 85 0 204 5 81 0 205 5 81 0 206 5 81 0 207 5 81 0 213 5 81 0 214 5 81 0 215 5 81 0 222 5 81 0 223 5 81 0 224 5 81 0 225 5 81 0 226 5 81 0 227 5 81 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 5 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 5 81 1 67 1 229 1 68 1 233 1 70] 
#[0 4 110 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 0 201 0 90 10 137 0 193] 
#[0 4 114 0 91 0 105] 
#[1 10 141 0 91 5 161 0 105 10 145 0 154] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 10 149 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 4 118 0 5 0 15 0 96] 
#[1 10 153 0 5 4 122 0 15 4 122 0 96] 
#[0 4 126 0 15 0 96] 
#[0 4 130 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 4 134 0 15 0 90] 
#[1 10 157 0 8 4 138 0 15 4 138 0 26 4 138 0 90 4 138 0 94 10 161 1 50] 
#[1 10 165 0 26 4 142 0 94 10 169 1 52 10 173 1 53] 
#[1 0 10 0 37 0 10 0 105 8 237 1 33 10 177 1 49] 
#[0 4 146 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 76 0 87 0 105] 
#[0 4 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 1 95 0 27 4 141 0 37 1 99 0 44 1 103 0 46 1 107 0 49 3 125 0 50 1 111 0 54 3 129 0 56 1 115 0 60 1 119 0 66 3 133 0 67 1 123 0 68 1 127 0 76 1 131 0 87 1 135 0 105 10 65 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 10 65 0 117 10 65 0 118 10 65 0 121 10 69 1 54 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 4 158 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 10 73 0 26] 
#[0 10 181 0 94] 
#[1 2 117 0 26 0 18 0 27 0 59 0 37 0 65 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 9 245 0 52 0 18 0 54 0 18 0 56 0 101 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 18 0 76 0 153 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 18 0 87 0 193 0 88 4 162 0 94 0 18 0 105 10 185 0 135 9 253 0 136 1 29 0 137 1 33 0 138 10 185 0 139 10 185 0 150 10 5 0 157 10 185 0 172 10 185 0 173 10 185 0 184 10 185 0 185 10 185 0 186 10 29 0 187 10 33 0 188 10 37 0 189 10 185 0 190 1 33 1 34 10 185 1 45] 
#[0 4 166 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 4 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 4 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 0 201 0 90 10 189 0 193] 
#[1 6 249 0 27 2 82 0 44 2 82 0 46 2 82 0 49 2 82 0 54 2 82 0 60 2 82 0 66 2 82 0 68 2 82 0 76 2 82 0 87 2 82 0 105 10 193 1 54] 
#[0 4 170 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 76 0 87 0 105] 
#[0 4 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 4 174 0 15 0 90] 
#[0 4 178 0 8] 
#[1 4 189 0 15 10 197 0 96] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 10 201 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 4 182 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 5 161 0 105 10 205 0 151 5 169 0 152 5 169 0 153 5 177 0 154] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 0 189 0 87 2 209 0 105 10 209 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 10 209 0 117 10 209 0 118 10 209 0 121 10 213 0 158 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 4 186 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 1 237 0 1 1 241 0 8 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 61 0 37 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 6 169 0 90 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 10 217 0 155 1 41 0 158 10 217 0 191 1 141 0 240 1 145 0 241 10 217 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 10 217 1 25 10 217 1 26 2 109 1 27 1 197 1 28 10 217 1 31 10 221 1 34 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 4 190 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 4 194 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 69 0 43 0 73 0 44 0 77 0 45 0 81 0 46 0 85 0 49 0 89 0 51 0 93 0 53 0 97 0 54 0 105 0 60 0 109 0 61 0 113 0 62 0 117 0 66 0 121 0 68 0 129 0 70 0 145 0 75 0 149 0 76 0 161 0 79 0 165 0 80 3 1 0 81 0 173 0 82 0 177 0 83 0 185 0 86 0 189 0 87 0 197 0 89 0 201 0 90 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 67 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 10 225 0 193 10 225 0 199 10 225 0 200 10 225 0 201 10 225 0 202 10 225 0 203 1 85 0 204 10 225 0 205 10 225 0 206 10 225 0 207 10 225 0 213 10 225 0 214 10 225 0 215 10 225 0 222 10 225 0 223 10 225 0 224 10 225 0 225 10 225 0 226 10 225 0 227 10 225 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 10 225 1 67 1 233 1 70] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 69 0 43 0 73 0 44 0 77 0 45 0 81 0 46 0 85 0 49 0 89 0 51 0 93 0 53 0 97 0 54 0 105 0 60 0 109 0 61 0 113 0 62 0 117 0 66 0 121 0 68 0 129 0 70 0 145 0 75 0 149 0 76 0 161 0 79 0 165 0 80 3 1 0 81 0 173 0 82 0 177 0 83 0 185 0 86 0 189 0 87 0 197 0 89 0 201 0 90 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 67 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 41 0 158 10 229 0 193 10 229 0 199 10 229 0 200 10 229 0 201 10 229 0 202 10 229 0 203 1 85 0 204 10 229 0 205 10 229 0 206 10 229 0 207 10 229 0 213 10 229 0 214 10 229 0 215 10 229 0 222 10 229 0 223 10 229 0 224 10 229 0 225 10 229 0 226 10 229 0 227 10 229 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 10 229 1 67 1 233 1 70] 
#[0 4 198 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[1 10 233 0 84 4 202 0 90 10 237 0 163 10 237 0 164] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 0 189 0 87 2 185 0 105 10 209 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 10 209 0 117 10 209 0 118 10 209 0 121 10 245 0 123 10 213 0 158 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 4 206 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 4 210 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 214 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 218 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 222 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 4 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 4 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 4 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 10 249 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 10 249 0 117 10 249 0 118 10 249 0 121 1 213 1 64 1 213 1 65 1 213 1 66] 
#[1 4 238 0 9 4 49 0 38] 
#[0 10 253 0 9] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 2 209 0 105 11 1 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 11 1 0 117 11 1 0 118 11 1 0 121 1 213 1 64 1 213 1 65 1 213 1 66] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 11 5 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 4 242 0 15 4 242 0 26 8 145 0 90 4 242 0 94 11 9 0 145 11 13 1 51] 
#[1 2 117 0 26 0 18 0 27 0 59 0 37 0 65 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 101 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 125 0 69 0 133 0 72 0 137 0 73 0 141 0 74 0 18 0 76 9 105 0 77 0 157 0 78 2 121 0 81 0 181 0 85 0 18 0 87 0 193 0 88 0 201 0 90 3 210 0 94 0 18 0 105 9 125 0 135 9 113 0 136 1 29 0 137 1 33 0 138 9 125 0 139 11 17 0 146 9 121 0 147 9 125 0 148 9 125 0 149 9 125 0 150 9 125 0 156 9 141 0 157 9 125 0 167 9 125 0 168 9 125 0 172 9 125 0 173 9 125 0 193 1 33 1 34 9 125 1 45] 
#[0 11 21 0 94] 
#[0 4 246 0 94] 
#[0 4 250 0 15 0 26 0 94] 
#[0 4 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 2 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 5 6 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 149 0 76 0 189 0 87 2 209 0 105 11 25 0 112 2 217 0 113 2 217 0 114 2 217 0 115 2 217 0 116 11 25 0 117 11 25 0 118 11 25 0 121 11 29 0 158 1 213 1 64 1 213 1 65 1 213 1 66] 
#[0 5 10 0 8] 
#[0 11 33 0 9] 
#[1 7 29 0 15 11 37 0 26] 
#[1 11 41 0 105 11 45 0 159] 
#[1 11 41 0 105 11 49 0 159] 
#[0 11 53 0 26] 
#[0 11 57 0 26] 
#[0 5 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 2 209 0 105 11 61 0 118 11 61 0 119 11 65 0 165 3 29 1 64 3 29 1 65 3 29 1 66] 
#[1 11 69 0 90 11 73 0 170] 
#[0 5 22 0 26 0 52 0 90] 
#[0 11 77 0 8] 
#[0 5 26 0 91 0 105] 
#[0 5 30 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 5 34 0 5 0 15 0 96] 
#[0 11 81 0 9] 
#[0 5 38 0 15 0 26 0 94] 
#[0 5 42 0 15 0 26 0 94] 
#[0 5 46 0 94] 
#[0 5 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 11 41 0 105 11 85 0 159] 
#[1 11 41 0 105 11 89 0 159] 
#[1 5 54 0 2 5 54 0 3 5 54 0 5 5 54 0 6 5 54 0 9 5 54 0 10 5 54 0 12 5 54 0 13 5 54 0 15 5 54 0 16 5 54 0 17 5 54 0 20 5 54 0 22 5 54 0 24 5 54 0 25 5 54 0 26 5 54 0 27 5 54 0 28 5 54 0 30 5 54 0 32 5 54 0 33 5 54 0 36 5 54 0 38 5 54 0 39 5 54 0 40 5 54 0 65 8 145 0 90 5 54 0 91 5 54 0 93 5 54 0 94 5 54 0 96 5 54 0 97 5 54 0 98 11 93 0 145 5 54 1 71] 
#[0 5 58 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 11 97 0 8] 
#[1 4 202 0 26 11 101 0 38 4 202 0 52 10 233 0 84 4 202 0 90 11 105 0 163 11 105 0 164] 
#[1 4 202 0 26 11 101 0 38 4 202 0 52 10 233 0 84 4 202 0 90 11 109 0 163 11 109 0 164] 
#[0 5 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 5 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 5 66 0 15 0 26 0 52 0 90] 
#[1 11 113 0 15 5 70 0 26 5 70 0 52 5 70 0 90] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 89 0 51 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 11 117 0 79 0 165 0 80 0 169 0 81 11 121 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 11 125 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 3 81 0 139 1 41 0 158 11 129 0 171 3 81 0 172 3 81 0 193 11 133 0 195 3 81 0 196 3 81 0 197 1 61 0 198 3 81 0 199 3 81 0 200 3 81 0 201 3 81 0 202 3 81 0 203 1 85 0 204 3 81 0 205 3 81 0 206 3 81 0 207 3 81 0 213 3 81 0 214 3 81 0 215 3 81 0 222 3 81 0 223 3 81 0 224 3 81 0 225 3 81 0 226 3 81 0 227 3 81 0 239 11 137 0 240 1 145 0 241 1 145 0 249 1 153 0 250 11 137 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 3 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 3 81 1 67 1 229 1 68 1 233 1 70] 
#[0 5 74 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[1 5 78 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 11 141 0 160 11 145 0 161 11 149 0 162 4 33 1 68] 
#[0 5 82 0 15 0 26 0 90 0 94] 
#[1 11 101 0 38 10 233 0 84 4 202 0 90 11 153 0 163 11 153 0 164] 
#[1 11 101 0 38 10 233 0 84 4 202 0 90 11 157 0 163 11 157 0 164] 
#[0 5 86 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 5 78 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 11 161 0 160 11 145 0 161 11 149 0 162 4 33 1 68] 
#[0 11 165 0 39] 
#[0 5 90 0 26 0 52 0 90] 
#[0 5 90 0 26 0 52 0 90] 
#[1 2 209 0 105 11 169 0 118 11 169 0 119 3 29 1 64 3 29 1 65 3 29 1 66] 
#[1 11 173 0 8 3 41 0 20] 
#[1 11 177 0 8 0 86 0 13 0 86 0 17 0 86 0 20 0 86 0 25 0 86 0 38] 
#[0 5 94 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 89 0 51 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 11 181 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 3 81 0 139 1 41 0 158 3 81 0 172 3 81 0 193 11 185 0 195 3 81 0 196 3 81 0 197 1 61 0 198 3 81 0 199 3 81 0 200 3 81 0 201 3 81 0 202 3 81 0 203 1 85 0 204 3 81 0 205 3 81 0 206 3 81 0 207 3 81 0 213 3 81 0 214 3 81 0 215 3 81 0 222 3 81 0 223 3 81 0 224 3 81 0 225 3 81 0 226 3 81 0 227 3 81 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 3 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 3 81 1 67 1 229 1 68 1 233 1 70] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 89 0 51 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 11 189 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 5 81 0 139 1 41 0 158 5 81 0 172 5 81 0 193 5 81 0 196 5 81 0 197 1 61 0 198 5 81 0 199 5 81 0 200 5 81 0 201 5 81 0 202 5 81 0 203 1 85 0 204 5 81 0 205 5 81 0 206 5 81 0 207 5 81 0 213 5 81 0 214 5 81 0 215 5 81 0 222 5 81 0 223 5 81 0 224 5 81 0 225 5 81 0 226 5 81 0 227 5 81 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 5 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 5 81 1 67 1 229 1 68 1 233 1 70] 
#[1 0 150 0 13 0 150 0 17 1 139 0 20 0 158 0 25] 
#[0 11 197 0 9] 
#[1 5 98 0 9 11 201 0 15] 
#[0 5 102 0 9 0 15] 
#[0 5 106 0 90] 
#[0 5 106 0 90] 
#[0 11 205 0 9] 
#[0 5 110 0 26 0 38 0 52 0 84 0 90] 
#[0 5 114 0 15 0 26 0 52 0 90] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 11 209 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 11 213 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 5 118 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[1 0 41 0 8 0 45 0 13 0 49 0 17 0 53 0 26 0 57 0 27 0 11 0 37 0 65 0 42 0 69 0 43 0 15 0 44 0 77 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 89 0 51 0 93 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 109 0 61 0 113 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 125 0 69 0 129 0 70 0 133 0 72 0 137 0 73 0 141 0 74 0 145 0 75 0 47 0 76 0 153 0 77 0 157 0 78 0 161 0 79 0 165 0 80 0 169 0 81 0 173 0 82 0 177 0 83 0 181 0 85 0 185 0 86 0 189 0 87 0 193 0 88 0 197 0 89 0 201 0 90 11 217 0 94 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 51 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 1 25 0 136 1 29 0 137 1 33 0 138 5 81 0 139 1 41 0 158 5 81 0 172 5 81 0 193 5 81 0 196 5 81 0 197 1 61 0 198 5 81 0 199 5 81 0 200 5 81 0 201 5 81 0 202 5 81 0 203 1 85 0 204 5 81 0 205 5 81 0 206 5 81 0 207 5 81 0 213 5 81 0 214 5 81 0 215 5 81 0 222 5 81 0 223 5 81 0 224 5 81 0 225 5 81 0 226 5 81 0 227 5 81 0 239 1 141 0 240 1 145 0 241 1 145 0 249 1 153 0 250 1 141 0 253 1 161 1 3 1 165 1 4 1 169 1 5 1 173 1 6 1 177 1 7 1 181 1 8 1 85 1 10 1 85 1 11 1 85 1 27 1 197 1 28 1 33 1 34 5 81 1 45 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 5 81 1 67 1 229 1 68 1 233 1 70] 
#[0 5 122 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[1 11 221 0 79 11 225 0 82 5 141 0 105] 
#[0 5 126 0 84 0 90] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 11 229 0 162 4 33 1 68] 
#[0 5 130 0 26 0 38 0 52 0 84 0 90] 
#[0 11 233 0 9] 
#[0 11 237 0 9] 
#[0 5 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 11 241 0 8] 
#[0 11 245 0 8] 
#[0 5 138 0 9 0 15] 
#[0 11 249 0 26] 
#[0 11 253 0 26] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 12 1 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[1 1 237 0 1 1 241 0 8 2 14 0 9 1 245 0 12 0 45 0 13 1 249 0 16 0 49 0 17 0 57 0 27 0 73 0 44 0 81 0 46 0 85 0 49 0 97 0 54 0 105 0 60 0 117 0 66 0 121 0 68 0 129 0 70 0 149 0 76 0 161 0 79 0 173 0 82 0 189 0 87 1 253 0 95 0 205 0 99 0 209 0 100 0 213 0 101 0 217 0 102 0 221 0 103 0 225 0 104 0 55 0 105 1 145 0 111 0 237 0 112 0 241 0 113 0 241 0 114 0 241 0 115 0 241 0 116 1 1 0 117 1 1 0 118 1 1 0 121 1 13 0 122 1 13 0 123 1 13 0 124 2 5 0 154 1 41 0 158 1 141 0 240 1 145 0 241 6 193 0 242 2 13 0 243 2 17 0 247 1 145 0 249 1 145 0 250 12 5 0 251 6 189 0 252 1 141 0 253 1 161 1 3 1 145 1 4 1 169 1 5 2 29 1 6 2 29 1 7 2 29 1 8 2 61 1 9 2 61 1 10 2 61 1 11 2 61 1 12 2 61 1 13 2 61 1 15 2 65 1 16 2 69 1 17 2 73 1 18 2 77 1 19 2 81 1 20 2 85 1 21 2 89 1 22 2 93 1 23 2 97 1 24 6 193 1 25 6 193 1 26 2 109 1 27 1 197 1 28 6 193 1 31 1 209 1 60 1 213 1 64 1 213 1 65 1 213 1 66 1 233 1 70] 
#[0 5 142 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 5 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 12 9 0 9] 
#[0 12 13 0 9] 
#[0 12 17 0 26] 
#[0 12 21 0 26] 
#[0 5 150 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 5 154 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105]
	).
]

{ #category : #private }
JavaParser >> performParsingStep [
	| actions scannerState token |
	(currentToken value = '>>' or: [ currentToken value = '>>>' ])
		ifTrue: [ actions := OrderedCollection new.
			self addActionsFor: scanner GREATER_THANId to: actions.
			actions notEmpty
				ifTrue: [ scannerState := scanner currentState.
					token := currentToken.
					scanner position: scanner position - (currentToken value size - 1).
					currentToken := SmaCCToken value: '>' start: currentToken startPosition ids: (Array with: scanner GREATER_THANId).
					actions do: [ :each | self splitWithAction: each ].
					currentToken := token.
					scanner restoreState: scannerState ] ].
	^ super performParsingStep
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForabstract_method_declaration1: nodes [
	| result |
	result := JavaAbstractMethodDeclarationNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result modifiers.
	result typeParameters: ((nodes at: 1) at: 2).
	result type: ((nodes at: 1) at: 3).
	result declarator: ((nodes at: 1) at: 4).
	result throws: ((nodes at: 1) at: 5).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation1: nodes [
	| result |
	result := JavaAnnotationNode new.
	result _at: (nodes at: 1).
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result values.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result rightParen: ((nodes at: 3) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_interface_body1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_interface_declaration1: nodes [
	| result |
	result := JavaAnnotationInterfaceNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result atToken: (nodes at: 2).
	result interfaceToken: (nodes at: 3).
	result name: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_method_declaration2: nodes [
	| result |
	result := JavaAnnotationMethodDeclarationNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result modifiers.
	result typeParameters: ((nodes at: 1) at: 2).
	result type: ((nodes at: 1) at: 3).
	result declarator: ((nodes at: 1) at: 4).
	result throws: ((nodes at: 1) at: 5).
	result defaultToken: (nodes at: 2).
	result value: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotations1: nodes [
	| result |
	result := OrderedCollection new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotations2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_access1: nodes [
	| result |
	result := JavaArrayAccessNode new.
	result array: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightBracket: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_creation_expression1: nodes [
	| result |
	result := JavaNewArrayNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result dimExpressions.
	result addTokens: ((nodes at: 4) at: 1) to: result leftBrackets.
	result addTokens: ((nodes at: 4) at: 2) to: result rightBrackets.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_creation_expression3: nodes [
	| result |
	result := JavaNewArrayNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result addTokens: ((nodes at: 3) at: 1) to: result leftBrackets.
	result addTokens: ((nodes at: 3) at: 2) to: result rightBrackets.
	result initializer: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_initializer1: nodes [
	| result |
	result := JavaArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_initializer2: nodes [
	| result |
	result := JavaArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result initializers.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_initializer3: nodes [
	| result |
	result := JavaArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addToken: (nodes at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_initializer4: nodes [
	| result |
	result := JavaArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_type1: nodes [
	| result |
	result := JavaArrayTypeNode new.
	result baseType: (nodes at: 1).
	result addTokens: ((nodes at: 2) at: 1) to: result leftBrackets.
	result addTokens: ((nodes at: 2) at: 2) to: result rightBrackets.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForassert_statement1: nodes [
	| result |
	result := JavaAssertStatementNode new.
	result assertToken: (nodes at: 1).
	result testExpression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForassert_statement2: nodes [
	| result |
	result := JavaAssertStatementNode new.
	result assertToken: (nodes at: 1).
	result testExpression: (nodes at: 2).
	result colon: (nodes at: 3).
	result messageExpression: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForassignment1: nodes [
	| result |
	result := JavaAssignmentNode new.
	result variable: (nodes at: 1).
	result op: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForblock1: nodes [
	| result |
	result := JavaBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForbreak_statement1: nodes [
	| result |
	result := JavaBreakStatementNode new.
	result breakToken: (nodes at: 1).
	result identifier: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcast_expression1: nodes [
	| result |
	result := JavaCastExpressionNode new.
	result leftParen: (nodes at: 1).
	result type: (nodes at: 2).
	result rightParen: (nodes at: 3).
	result expression: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcast_expression3: nodes [
	| result |
	result := JavaCastExpressionNode new.
	result leftParen: (nodes at: 1).
	result type: (nodes at: 2).
	result ampToken: ((nodes at: 3) at: 1).
	result interfaceType: ((nodes at: 3) at: 2).
	result rightParen: (nodes at: 4).
	result expression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcatch_clause1: nodes [
	| result |
	result := JavaCatchClauseNode new.
	result catchToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result parameter: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result block: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcatch_parameter1: nodes [
	| result |
	result := JavaCatchParameterNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result addNodes: ((nodes at: 2) at: 1) to: result types.
	result addTokens: ((nodes at: 2) at: 2) to: result bars.
	result variable: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_body_opt1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration1: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result extendsToken: ((nodes at: 5) at: 1).
	result superclass: ((nodes at: 5) at: 2).
	result implementsToken: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result leftBrace: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 7) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression1: nodes [
	| result |
	result := JavaNewNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression2: nodes [
	| result |
	result := JavaNewClassNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression3: nodes [
	| result |
	result := JavaNewNode new.
	result primary: (nodes at: 1).
	result period: (nodes at: 2).
	result newToken: (nodes at: 3).
	result lt: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result arguments.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result gt: ((nodes at: 4) at: 4).
	result name: (nodes at: 5).
	result typeArgLeft: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result arguments.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result typeArgRight: ((nodes at: 6) at: 4).
	result leftParen: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result expressions.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result rightParen: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression4: nodes [
	| result |
	result := JavaNewClassNode new.
	result primary: (nodes at: 1).
	result period: (nodes at: 2).
	result newToken: (nodes at: 3).
	result lt: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result arguments.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result gt: ((nodes at: 4) at: 4).
	result name: (nodes at: 5).
	result typeArgLeft: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result arguments.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result typeArgRight: ((nodes at: 6) at: 4).
	result leftParen: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result expressions.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result rightParen: (nodes at: 9).
	result leftBrace: ((nodes at: 10) at: 1).
	result addNodes: ((nodes at: 10) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 10) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_or_interface_type1: nodes [
	| result |
	result := JavaClassTypeNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit1: nodes [
	| result |
	result := JavaProgramFileNode new.
	result packageDeclaration: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result imports.
	result addNodes: (nodes at: 3) to: result typeDeclarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconditional_expression2: nodes [
	| result |
	result := JavaConditionalExpressionNode new.
	result testExpression: (nodes at: 1).
	result questionMark: (nodes at: 2).
	result trueExpression: (nodes at: 3).
	result colon: (nodes at: 4).
	result falseExpression: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_body1: nodes [
	| result |
	result := JavaBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNode: (nodes at: 2) to: result statements.
	result addNodes: (nodes at: 3) to: result statements.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_body2: nodes [
	| result |
	result := JavaBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNode: (nodes at: 2) to: result statements.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_body4: nodes [
	| result |
	result := JavaBlockNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_declaration1: nodes [
	| result |
	result := JavaConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result typeParameters: ((nodes at: 2) at: 1).
	result name: ((nodes at: 2) at: 2).
	result leftParen: ((nodes at: 2) at: 3).
	result addNodes: ((nodes at: 2) at: 4) to: result parameters.
	result addTokens: ((nodes at: 2) at: 5) to: result commas.
	result rightParen: ((nodes at: 2) at: 6).
	result throws: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_declarator1: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 4).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcontinue_statement1: nodes [
	| result |
	result := JavaContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result identifier: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFordim_expr1: nodes [
	| result |
	result := JavaDimensionExpressionNode new.
	result leftBracket: (nodes at: 1).
	result expression: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFordims1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: ((nodes at: 1) at: 1) to: (result at: 1).
	self add: ((nodes at: 1) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFordims2: nodes [
	| result |
	result := nodes at: 1.
	self add: ((nodes at: 2) at: 1) to: (result at: 1).
	self add: ((nodes at: 2) at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFordo_statement1: nodes [
	| result |
	result := JavaDoWhileStatementNode new.
	result doToken: (nodes at: 1).
	result statement: (nodes at: 2).
	result whileToken: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result expression: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForelementValueArrayInitializer1: nodes [
	| result |
	result := JavaElementArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result addToken: (nodes at: 3) to: result commas.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForelementValuePair1: nodes [
	| result |
	result := JavaElementValuePairNode new.
	result name: (nodes at: 1).
	result equals: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForempty_dim_expr1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForempty_statement1: nodes [
	| result |
	result := JavaEmptyStatementNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body1: nodes [
	| result |
	result := Array new: 6.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 4 put: ((nodes at: 4) at: 1).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 5).
	result at: 6 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body_declarations1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body_declarations_opt1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant1: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	result leftParen: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result expressions.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result rightParen: ((nodes at: 3) at: 4).
	result leftBrace: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 4) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_declaration1: nodes [
	| result |
	result := JavaEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result constants.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result semicolon: ((nodes at: 5) at: 4).
	result addNodes: ((nodes at: 5) at: 5) to: result declarations.
	result rightBrace: ((nodes at: 5) at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation1: nodes [
	| result |
	result := JavaThisConstructorInvocationNode new.
	result thisToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightParen: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation2: nodes [
	| result |
	result := JavaSuperConstructorInvocationNode new.
	result superToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result expressions.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightParen: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation3: nodes [
	| result |
	result := JavaThisConstructorInvocationNode new.
	result primary: (nodes at: 1).
	result period: (nodes at: 2).
	result thisToken: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result expressions.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result rightParen: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation4: nodes [
	| result |
	result := JavaSuperConstructorInvocationNode new.
	result primary: (nodes at: 1).
	result period: (nodes at: 2).
	result superToken: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result expressions.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result rightParen: (nodes at: 6).
	result semicolon: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexpression_statement1: nodes [
	| result |
	result := JavaExpressionStatementNode new.
	result expression: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForextends_interfaces1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForextends_interfaces2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfield_access1: nodes [
	| result |
	result := JavaFieldAccessNode new.
	result receiver: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfield_access2: nodes [
	| result |
	result := JavaFieldAccessNode new.
	result superToken: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfield_access3: nodes [
	| result |
	result := JavaFieldAccessNode new.
	result receiver: (nodes at: 1).
	result superPeriod: (nodes at: 2).
	result superToken: (nodes at: 3).
	result period: (nodes at: 4).
	result name: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfield_declaration1: nodes [
	| result |
	result := JavaFieldDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result type: (nodes at: 2).
	result
		addNodes: ((nodes at: 3) at: 1)
		to: result variableDeclarations.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfinally1: nodes [
	| result |
	result := JavaFinallyClauseNode new.
	result finallyToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfloating_point_type1: nodes [
	| result |
	result := JavaFloatTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfloating_point_type2: nodes [
	| result |
	result := JavaDoubleTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfor_statement1: nodes [
	| result |
	result := JavaForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result initial: (nodes at: 3).
	result firstSemicolon: (nodes at: 4).
	result test: (nodes at: 5).
	result secondSemicolon: (nodes at: 6).
	result _update: (nodes at: 7).
	result rightParen: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForforeach_statement1: nodes [
	| result |
	result := JavaForEachStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result modifiers.
	result type: (nodes at: 4).
	result name: (nodes at: 5).
	result colon: (nodes at: 6).
	result expression: (nodes at: 7).
	result rightParen: (nodes at: 8).
	result statement: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForformal_parameter1: nodes [
	| result |
	result := JavaParameterNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result type: (nodes at: 2).
	result variable: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForformal_parameter2: nodes [
	| result |
	result := JavaVariableArgumentParameterNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result type: (nodes at: 2).
	result varArgsToken: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForif_then_else_statement1: nodes [
	| result |
	result := JavaIfElseStatementNode new.
	result ifToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result trueStatement: (nodes at: 5).
	result elseToken: (nodes at: 6).
	result falseStatement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForif_then_statement1: nodes [
	| result |
	result := JavaIfStatementNode new.
	result ifToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result trueStatement: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinitialized_variable_declarator1: nodes [
	| result |
	result := JavaInitializedVariableDeclarationNode new.
	result variable: (nodes at: 1).
	result equals: (nodes at: 2).
	result initializer: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type1: nodes [
	| result |
	result := JavaByteTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type2: nodes [
	| result |
	result := JavaShortTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type3: nodes [
	| result |
	result := JavaIntTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type4: nodes [
	| result |
	result := JavaLongTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForintegral_type5: nodes [
	| result |
	result := JavaCharTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinterface_declaration1: nodes [
	| result |
	result := JavaInterfaceNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result extendsToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result interfaceTypes.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinterfaces1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinterfaces_opt1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlabeled_statement1: nodes [
	| result |
	result := JavaLabeledStatementNode new.
	result identifier: (nodes at: 1).
	result colon: (nodes at: 2).
	result statement: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlambda_expression1: nodes [
	| result |
	result := JavaLambdaExpressionNode new.
	result leftParen: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result parameters.
	result addTokens: ((nodes at: 1) at: 3) to: result commas.
	result rightParen: ((nodes at: 1) at: 4).
	result arrowToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlambda_parameter_list_opt1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlambda_parameters2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForliteral1: nodes [
	| result |
	result := JavaIntegerLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForliteral2: nodes [
	| result |
	result := JavaFloatLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForliteral3: nodes [
	| result |
	result := JavaBooleanLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForliteral4: nodes [
	| result |
	result := JavaCharacterLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForliteral5: nodes [
	| result |
	result := JavaStringLiteralNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForliteral6: nodes [
	| result |
	result := JavaNullNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlocal_variable_declaration1: nodes [
	| result |
	result := JavaLocalVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result type: (nodes at: 2).
	result
		addNodes: ((nodes at: 3) at: 1)
		to: result variableDeclarations.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlocal_variable_declaration_statement1: nodes [
	| result |
	result := JavaLocalVariableDeclarationStatementNode new.
	result declaration: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_body2: nodes [
	| result |
	result := JavaEmptyMethodBodyNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_declaration1: nodes [
	| result |
	result := JavaMethodDeclarationNode new.
	result addNodes: ((nodes at: 1) at: 1) to: result modifiers.
	result typeParameters: ((nodes at: 1) at: 2).
	result type: ((nodes at: 1) at: 3).
	result declarator: ((nodes at: 1) at: 4).
	result throws: ((nodes at: 1) at: 5).
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_declarator1: nodes [
	| result |
	result := JavaMethodDeclaratorNode new.
	result name: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result parameters.
	result addTokens: ((nodes at: 3) at: 2) to: result commas.
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_declarator2: nodes [
	| result |
	result := JavaArrayMethodDeclaratorNode new.
	result declarator: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_header1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	result at: 5 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_invocation1: nodes [
	| result |
	result := JavaMethodInvocationNode new.
	result lt: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result arguments.
	result addTokens: ((nodes at: 1) at: 3) to: result commas.
	result gt: ((nodes at: 1) at: 4).
	result name: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_invocation2: nodes [
	| result |
	result := JavaMethodInvocationNode new.
	result receiver: (nodes at: 1).
	result period: (nodes at: 2).
	result lt: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result gt: ((nodes at: 3) at: 4).
	result name: (nodes at: 4).
	result leftParen: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result expressions.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result rightParen: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_invocation3: nodes [
	| result |
	result := JavaMethodInvocationNode new.
	result superToken: (nodes at: 1).
	result period: (nodes at: 2).
	result lt: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result arguments.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result gt: ((nodes at: 3) at: 4).
	result name: (nodes at: 4).
	result leftParen: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result expressions.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result rightParen: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_invocation4: nodes [
	| result |
	result := JavaMethodInvocationNode new.
	result receiver: (nodes at: 1).
	result superPeriod: (nodes at: 2).
	result superToken: (nodes at: 3).
	result period: (nodes at: 4).
	result lt: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result arguments.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result gt: ((nodes at: 5) at: 4).
	result name: (nodes at: 6).
	result leftParen: (nodes at: 7).
	result addNodes: ((nodes at: 8) at: 1) to: result expressions.
	result addTokens: ((nodes at: 8) at: 2) to: result commas.
	result rightParen: (nodes at: 9).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_reference_expression2: nodes [
	| result |
	result := JavaMethodReferenceNode new.
	result receiver: (nodes at: 1).
	result colonColonToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormodifier5: nodes [
	| result |
	result := JavaModifierNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormodifiers1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormodifiers_opt2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormultiplicative_expression4: nodes [
	| result |
	result := JavaBinaryExpressionNode new.
	result leftExpression: (nodes at: 1).
	result op: (nodes at: 2).
	result rightExpression: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForpackage_declaration1: nodes [
	| result |
	result := JavaPackageDeclarationNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result packageToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForpostdecrement_expression1: nodes [
	| result |
	result := JavaPostDecrementExpressionNode new.
	result expression: (nodes at: 1).
	result minusMinus: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForpostincrement_expression1: nodes [
	| result |
	result := JavaPostIncrementExpressionNode new.
	result expression: (nodes at: 1).
	result plusPlus: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForpredecrement_expression1: nodes [
	| result |
	result := JavaPreDecrementExpressionNode new.
	result minusMinus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForpreincrement_expression1: nodes [
	| result |
	result := JavaPreIncrementExpressionNode new.
	result plusPlus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForprimary_no_new_array10: nodes [
	| result |
	result := JavaClassExpressionNode new.
	result type: (nodes at: 1).
	result period: (nodes at: 2).
	result classToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForprimary_no_new_array11: nodes [
	| result |
	result := JavaOuterThisNode new.
	result name: (nodes at: 1).
	result period: (nodes at: 2).
	result thisToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForprimary_no_new_array2: nodes [
	| result |
	result := JavaNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForprimary_no_new_array3: nodes [
	| result |
	result := nodes at: 2.
	result addFirstToken: (nodes at: 1) to: result _leftParens.
	result addToken: (nodes at: 3) to: result _rightParens.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForprimitive_type2: nodes [
	| result |
	result := JavaBooleanTypeNode new.
	result token: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForqualified_name1: nodes [
	| result |
	result := JavaQualifiedNameNode new.
	result nspace: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForqualified_type_name1: nodes [
	| result |
	result := JavaQualifiedTypeNameNode new.
	result nspace: (nodes at: 1).
	result period: (nodes at: 2).
	result name: (nodes at: 3).
	result lt: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result arguments.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result gt: ((nodes at: 4) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForreturn_statement1: nodes [
	| result |
	result := JavaReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForsimple_type_name1: nodes [
	| result |
	result := JavaTypeNameNode new.
	result name: (nodes at: 1).
	result lt: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result gt: ((nodes at: 2) at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForsingle_type_import_declaration1: nodes [
	| result |
	result := JavaSingleTypeImportDeclarationNode new.
	result importToken: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForstatement_expression_list1: nodes [
	| result |
	result := JavaStatementExpressionListNode new.
	result addNode: (nodes at: 1) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForstatement_expression_list2: nodes [
	| result |
	result := nodes at: 1.
	result addToken: (nodes at: 2) to: result commas.
	result addNode: (nodes at: 3) to: result expressions.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForstatic_initializer1: nodes [
	| result |
	result := JavaStaticInitializerNode new.
	result staticToken: (nodes at: 1).
	result block: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block1: nodes [
	| result |
	result := JavaSwitchBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statementGroups.
	result addNodes: (nodes at: 3) to: result labels.
	result rightBrace: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block2: nodes [
	| result |
	result := JavaSwitchBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result statementGroups.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block3: nodes [
	| result |
	result := JavaSwitchBlockNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result labels.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block4: nodes [
	| result |
	result := JavaSwitchBlockNode new.
	result leftBrace: (nodes at: 1).
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block_statement_group1: nodes [
	| result |
	result := JavaSwitchBlockStatementGroupNode new.
	result addNodes: (nodes at: 1) to: result labels.
	result addNodes: (nodes at: 2) to: result statements.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_label1: nodes [
	| result |
	result := JavaSwitchLabelNode new.
	result caseToken: (nodes at: 1).
	result constant: (nodes at: 2).
	result colon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_label2: nodes [
	| result |
	result := JavaDefaultLabelNode new.
	result defaultToken: (nodes at: 1).
	result colon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_statement1: nodes [
	| result |
	result := JavaSwitchStatementNode new.
	result switchToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result block: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForsynchronized_statement1: nodes [
	| result |
	result := JavaSynchronizedStatementNode new.
	result synchronizedToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result block: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForthrow_statement1: nodes [
	| result |
	result := JavaThrowStatementNode new.
	result throwToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForthrows1: nodes [
	| result |
	result := JavaThrowsNode new.
	result throwsToken: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result classTypes.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_resource1: nodes [
	| result |
	result := JavaLocalVariableDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result type: (nodes at: 2).
	result addNode: (nodes at: 3) to: result variableDeclarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_resources1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	self add: (nodes at: 3) to: (result at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement1: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result resources.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result rightParen: ((nodes at: 2) at: 4).
	result block: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result catches.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement2: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result resources.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result rightParen: ((nodes at: 2) at: 4).
	result block: (nodes at: 3).
	result addNodes: (nodes at: 4) to: result catches.
	result finally: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement3: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result resources.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result rightParen: ((nodes at: 2) at: 4).
	result block: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_argument1: nodes [
	| result |
	result := JavaTypeArgumentNode new.
	result type: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_argument2: nodes [
	| result |
	result := JavaTypeArgumentNode new.
	result questionMark: (nodes at: 1).
	result token: ((nodes at: 2) at: 1).
	result type: ((nodes at: 2) at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_argument_type3: nodes [
	| result |
	result := Array new: 2.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: (result at: 2).
	self add: (nodes at: 3) to: (result at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments_opt1: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments_opt2: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 3).
	result at: 4 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_arguments_opt3: nodes [
	| result |
	result := Array new: 4.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_declaration4: nodes [
	| result |
	result := JavaEmptyDeclarationNode new.
	result semicolon: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_import_on_demand_declaration1: nodes [
	| result |
	result := JavaTypeImportOnDemandDeclarationNode new.
	result importToken: (nodes at: 1).
	result staticToken: (nodes at: 2).
	result name: (nodes at: 3).
	result period: (nodes at: 4).
	result star: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_parameter1: nodes [
	| result |
	result := JavaTypeParameterNode new.
	result name: (nodes at: 1).
	result extendsToken: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result types.
	result addTokens: ((nodes at: 2) at: 3) to: result amps.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_parameters_opt2: nodes [
	| result |
	result := JavaTypeParametersNode new.
	result lt: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result parameters.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result gt: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForunary_expression3: nodes [
	| result |
	result := JavaUnaryAdditionNode new.
	result plus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForunary_expression4: nodes [
	| result |
	result := JavaUnarySubtractionNode new.
	result minus: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForunary_expression_not_plus_minus2: nodes [
	| result |
	result := JavaUnaryBitInvertNode new.
	result tilde: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForunary_expression_not_plus_minus3: nodes [
	| result |
	result := JavaUnaryNotNode new.
	result bang: (nodes at: 1).
	result expression: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForuntyped_lambda_parameter1: nodes [
	| result |
	result := JavaParameterNode new.
	result variable: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForvariable_declarator1: nodes [
	| result |
	result := JavaVariableDeclarationNode new.
	result variable: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForvariable_declarator_id1: nodes [
	| result |
	result := JavaVariableNameNode new.
	result name: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForvariable_declarator_id2: nodes [
	| result |
	result := JavaArrayVariableNameNode new.
	result variable: (nodes at: 1).
	result leftBracket: (nodes at: 2).
	result rightBracket: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForvoid1: nodes [
	| result |
	result := JavaVoidTypeNode new.
	result voidToken: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForwhile_statement1: nodes [
	| result |
	result := JavaWhileStatementNode new.
	result whileToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result statement: (nodes at: 5).
	^ result
]

{ #category : #private }
JavaParser >> tryAllTokens [
	^ (self class keywords includes: currentToken value) not
]
