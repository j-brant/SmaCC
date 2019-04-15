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
#[ 0 14 0 69] 
#[ 0 14 0 81] 
#[ 0 14 0 89] 
#[ 0 14 0 93] 
#[ 0 14 0 105] 
#[ 0 14 0 109] 
#[ 0 14 0 113] 
#[ 0 14 0 125] 
#[ 0 14 0 129] 
#[ 0 14 0 157] 
#[ 0 14 0 22 0 237] 
#[ 0 22 2 9] 
#[ 0 18 0 69] 
#[ 0 22 2 245] 
#[ 0 22 0 237] 
#[ 0 22 0 166] 
#[ 0 174 3 157] 
#[ 0 210 3 177] 
#[ 0 69 0 222] 
#[ 1 66 3 213] 
#[ 1 150 4 29] 
#[ 0 14 0 22 2 9] 
#[ 0 22 0 166 1 170] 
#[ 0 166 1 170] 
#[ 0 65 0 166] 
#[ 1 210 4 117] 
#[ 1 210 4 121] 
#[ 1 210 4 125] 
#[ 1 214 4 129] 
#[ 1 214 4 133] 
#[ 1 218 4 137] 
#[ 1 218 4 141] 
#[ 1 218 4 145] 
#[ 1 222 4 149] 
#[ 1 222 4 153] 
#[ 1 222 4 157] 
#[ 1 222 4 161] 
#[ 1 222 4 165] 
#[ 1 226 4 169] 
#[ 1 226 4 173] 
#[ 1 230 4 177] 
#[ 1 234 4 181] 
#[ 1 238 4 185] 
#[ 1 242 4 189] 
#[ 1 246 4 193] 
#[ 1 246 4 197] 
#[ 2 2 2 6] 
#[ 0 81 2 26] 
#[ 0 89 2 26] 
#[ 0 93 2 26] 
#[ 0 105 2 26] 
#[ 0 113 2 26] 
#[ 0 125 2 26] 
#[ 0 129 2 26] 
#[ 0 157 2 26] 
#[ 2 26 3 13] 
#[ 0 22 0 65] 
#[ 0 14 0 22 2 245] 
#[ 0 22 5 129] 
#[ 0 209 2 130] 
#[ 0 22 6 233] 
#[ 0 14 6 1] 
#[ 3 254 4 117] 
#[ 3 254 4 121] 
#[ 3 254 4 125] 
#[ 4 2 4 117] 
#[ 4 2 4 121] 
#[ 4 2 4 125] 
#[ 4 6 4 129] 
#[ 4 6 4 133] 
#[ 4 10 4 129] 
#[ 4 10 4 133] 
#[ 4 14 4 129] 
#[ 4 14 4 133] 
#[ 4 18 4 137] 
#[ 4 18 4 141] 
#[ 4 18 4 145] 
#[ 4 22 4 137] 
#[ 4 22 4 141] 
#[ 4 22 4 145] 
#[ 4 26 4 137] 
#[ 4 26 4 141] 
#[ 4 26 4 145] 
#[ 4 34 4 137] 
#[ 4 34 4 141] 
#[ 4 34 4 145] 
#[ 4 38 4 149] 
#[ 4 38 4 153] 
#[ 4 38 4 157] 
#[ 4 38 4 161] 
#[ 4 38 4 165] 
#[ 4 42 4 149] 
#[ 4 42 4 153] 
#[ 4 42 4 157] 
#[ 4 42 4 161] 
#[ 4 42 4 165] 
#[ 4 46 4 169] 
#[ 4 46 4 173] 
#[ 4 50 4 177] 
#[ 4 54 4 181] 
#[ 4 58 4 185] 
#[ 4 62 4 189] 
#[ 0 166 8 37] 
#[ 0 22 8 161] 
#[ 5 2 9 89] 
#[ 1 66 10 65] 
#[ 5 234 10 205] 
#[ 4 205 6 146] 
#[ 0 81 2 26 6 146] 
#[ 0 89 2 26 6 146] 
#[ 0 93 2 26 6 146] 
#[ 0 105 2 26 6 146] 
#[ 0 113 2 26 6 146] 
#[ 0 125 2 26 6 146] 
#[ 0 129 2 26 6 146] 
#[ 0 157 2 26 6 146] 
#[ 2 26 6 146] 
#[ 2 26 3 13 6 146]
	).
]

{ #category : #'generated-accessing' }
JavaParser class >> cacheId [
	^'2019-04-15T17:15:52.706896-05:00'
]

{ #category : #generated }
JavaParser class >> definitionComment [
"%start goal block_statement expression type_declaration method_declaration class_body_declaration;
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
						EnumDeclaration FieldDeclaration InterfaceDeclaration
						LocalVariableDeclaration MethodDeclaration 
						PackageDeclaration SingleTypeImportDeclaration 
						VariableDeclaration );
%hierarchy UnaryExpression (CastExpression PostDecrementExpression PostIncrementExpression
						PreDecrementExpression PreIncrementExpression UnaryAddition
						UnaryBitInvert UnaryNot UnarySubtraction);
%hierarchy TypeName (QualifiedTypeName);
%hierarchy Initializer (StaticInitializer);

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
	| block 'block' {{Initializer}}
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
			interface_body {{InterfaceDeclaration}}
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
	#(126 0 #nil 4941826 false ) 
	#(289 0 #reduceActionForannotations1: 29847553 false ) 
	#(324 0 #reduceActionForannotations1: 32977921 false ) 
	#(136 0 #reduceActionForannotations1: 6054913 false ) 
	#(316 0 #reduceActionFortype_arguments_opt1: 32086017 false ) 
	#(110 1 #liftFirstValue: 3406849 false ) 
	#(127 0 #reduceActionForannotations1: 4997122 false ) 
	#(126 1 #liftFirstValue: 4941825 false ) 
	#(201 1 #reduceActionForempty_statement1: 15759361 false ) 
	#(138 1 #reduceActionFormodifier5: 6161413 false ) 
	#(113 1 #reduceActionForprimitive_type2: 3851266 false ) 
	#(221 0 #nil 18524161 false ) 
	#(115 1 #reduceActionForintegral_type1: 3985409 false ) 
	#(115 1 #reduceActionForintegral_type5: 3985413 false ) 
	#(116 1 #reduceActionForfloating_point_type2: 4162562 false ) 
	#(138 1 #reduceActionFormodifier5: 6161414 false ) 
	#(116 1 #reduceActionForfloating_point_type1: 4162561 false ) 
	#(115 1 #reduceActionForintegral_type3: 3985411 false ) 
	#(115 1 #reduceActionForintegral_type4: 3985412 false ) 
	#(138 1 #reduceActionFormodifier5: 6161415 false ) 
	#(138 1 #reduceActionFormodifier5: 6161411 false ) 
	#(138 1 #reduceActionFormodifier5: 6161410 false ) 
	#(138 1 #reduceActionFormodifier5: 6161409 false ) 
	#(286 0 #nil 29700097 false ) 
	#(115 1 #reduceActionForintegral_type2: 3985410 false ) 
	#(138 1 #reduceActionFormodifier5: 6161412 false ) 
	#(138 1 #reduceActionFormodifier5: 6161419 false ) 
	#(138 1 #reduceActionFormodifier5: 6161416 false ) 
	#(241 1 #reduceActionForprimary_no_new_array2: 20696066 false ) 
	#(138 1 #reduceActionFormodifier5: 6161417 false ) 
	#(228 0 #reduceActionFortype_arguments_opt1: 19446785 false ) 
	#(158 1 #reduceActionForvoid1: 8964097 false ) 
	#(138 1 #reduceActionFormodifier5: 6161418 false ) 
	#(194 0 #reduceActionForannotations1: 14733313 false ) 
	#(111 1 #reduceActionForliteral1: 3465217 false ) 
	#(111 1 #reduceActionForliteral2: 3465218 false ) 
	#(111 1 #reduceActionForliteral3: 3465219 false ) 
	#(111 1 #reduceActionForliteral4: 3465220 false ) 
	#(111 1 #reduceActionForliteral5: 3465221 false ) 
	#(111 1 #reduceActionForliteral6: 3465222 false ) 
	#(123 1 #reduceActionForprimary_no_new_array2: 4644865 false ) 
	#(241 1 #liftFirstValue: 20696065 false ) 
	#(112 1 #liftFirstValue: 3804161 false ) 
	#(113 1 #liftFirstValue: 3851265 false ) 
	#(114 1 #liftFirstValue: 3926017 false ) 
	#(114 1 #liftFirstValue: 3926018 false ) 
	#(112 1 #liftFirstValue: 3804162 false ) 
	#(117 1 #liftFirstValue: 4256769 false ) 
	#(117 1 #liftFirstValue: 4256770 false ) 
	#(262 1 #liftFirstValue: 24736770 false ) 
	#(284 1 #liftFirstValue: 29498369 false ) 
	#(326 1 #liftFirstValue: 33125378 false ) 
	#(122 1 #liftFirstValue: 4600833 false ) 
	#(122 1 #liftFirstValue: 4600834 false ) 
	#(136 1 #reduceActionFormodifiers_opt2: 6054914 false ) 
	#(137 1 #reduceActionFormodifiers1: 6089729 false ) 
	#(196 1 #liftFirstValue: 14888963 false ) 
	#(196 1 #liftFirstValue: 14888964 false ) 
	#(200 1 #liftFirstValue: 15466497 false ) 
	#(196 1 #liftFirstValue: 14888961 false ) 
	#(196 1 #liftFirstValue: 14888962 false ) 
	#(199 1 #liftFirstValue: 15275009 false ) 
	#(200 1 #liftFirstValue: 15466498 false ) 
	#(199 1 #liftFirstValue: 15275010 false ) 
	#(200 1 #liftFirstValue: 15466499 false ) 
	#(199 1 #liftFirstValue: 15275011 false ) 
	#(199 1 #liftFirstValue: 15275012 false ) 
	#(200 1 #liftFirstValue: 15466500 false ) 
	#(199 1 #liftFirstValue: 15275013 false ) 
	#(200 1 #liftFirstValue: 15466501 false ) 
	#(199 1 #liftFirstValue: 15275014 false ) 
	#(200 1 #liftFirstValue: 15466502 false ) 
	#(200 1 #liftFirstValue: 15466503 false ) 
	#(200 1 #liftFirstValue: 15466504 false ) 
	#(200 1 #liftFirstValue: 15466506 false ) 
	#(200 1 #liftFirstValue: 15466505 false ) 
	#(200 1 #liftFirstValue: 15466507 false ) 
	#(200 1 #liftFirstValue: 15466508 false ) 
	#(262 1 #liftFirstValue: 24736769 false ) 
	#(326 1 #liftFirstValue: 33125377 false ) 
	#(240 1 #liftFirstValue: 20627457 false ) 
	#(241 1 #liftFirstValue: 20696076 false ) 
	#(204 1 #liftFirstValue: 16031751 false ) 
	#(241 1 #liftFirstValue: 20696068 false ) 
	#(240 1 #liftFirstValue: 20627458 false ) 
	#(241 1 #liftFirstValue: 20696069 false ) 
	#(284 1 #liftFirstValue: 29498370 false ) 
	#(204 1 #liftFirstValue: 16031750 false ) 
	#(241 1 #liftFirstValue: 20696070 false ) 
	#(241 1 #liftFirstValue: 20696071 false ) 
	#(284 1 #liftFirstValue: 29498371 false ) 
	#(204 1 #liftFirstValue: 16031748 false ) 
	#(262 1 #liftFirstValue: 24736771 false ) 
	#(204 1 #liftFirstValue: 16031749 false ) 
	#(262 1 #liftFirstValue: 24736772 false ) 
	#(204 1 #liftFirstValue: 16031746 false ) 
	#(204 1 #liftFirstValue: 16031747 false ) 
	#(204 1 #liftFirstValue: 16031745 false ) 
	#(138 1 #liftFirstValue: 6161420 false ) 
	#(139 1 #liftFirstValue: 6738946 false ) 
	#(118 1 #reduceActionForclass_or_interface_type1: 4320257 false ) 
	#(320 1 #liftFirstValue: 32497665 false ) 
	#(320 1 #liftFirstValue: 32497666 false ) 
	#(199 1 #liftFirstValue: 15275015 false ) 
	#(244 0 #reduceActionForlambda_parameter_list_opt1: 21466113 false ) 
	#(154 1 #reduceActionForvariable_declarator_id1: 8356865 false ) 
	#(247 1 #reduceActionForuntyped_lambda_parameter1: 21720065 false ) 
	#(287 1 #liftFirstValue: 29739010 false ) 
	#(243 1 #reduceActionForlambda_parameters2: 21339138 false ) 
	#(268 1 #liftFirstValue: 25556993 false ) 
	#(271 1 #liftFirstValue: 26248193 false ) 
	#(265 1 #liftFirstValue: 25064449 false ) 
	#(265 1 #liftFirstValue: 25064450 false ) 
	#(265 1 #liftFirstValue: 25064453 false ) 
	#(268 1 #liftFirstValue: 25556996 false ) 
	#(272 1 #liftFirstValue: 26641409 false ) 
	#(273 1 #liftFirstValue: 26930177 false ) 
	#(274 1 #liftFirstValue: 27336705 false ) 
	#(275 1 #liftFirstValue: 27953153 false ) 
	#(276 1 #liftFirstValue: 28231681 false ) 
	#(277 1 #liftFirstValue: 28381185 false ) 
	#(278 1 #liftFirstValue: 28538881 false ) 
	#(279 1 #liftFirstValue: 28715009 false ) 
	#(280 1 #liftFirstValue: 28898305 false ) 
	#(281 1 #liftFirstValue: 29085697 false ) 
	#(282 1 #liftFirstValue: 29323265 false ) 
	#(287 1 #liftFirstValue: 29739009 false ) 
	#(265 1 #liftFirstValue: 25064454 false ) 
	#(282 1 #liftFirstValue: 29323266 false ) 
	#(135 1 #reduceActionFortype_declaration4: 5851140 false ) 
	#(135 1 #liftFirstValue: 5851137 false ) 
	#(135 1 #liftFirstValue: 5851138 false ) 
	#(135 1 #liftFirstValue: 5851139 false ) 
	#(310 0 #nil 31494145 false ) 
	#(149 1 #liftFirstValue: 7685123 false ) 
	#(148 1 #liftFirstValue: 7541761 false ) 
	#(149 1 #liftFirstValue: 7685121 false ) 
	#(149 1 #liftFirstValue: 7685122 false ) 
	#(148 1 #liftFirstValue: 7541762 false ) 
	#(148 1 #liftFirstValue: 7541763 false ) 
	#(148 1 #reduceActionForclass_body_declaration4: 7541764 false ) 
	#(300 0 #nil 30724097 false ) 
	#(128 0 #reduceActionForannotations1: 5052418 false ) 
	#(127 1 #reduceActionFormodifiers_opt2: 4997121 false ) 
	#(129 1 #reduceActionFormodifiers1: 5104641 false ) 
	#(132 1 #liftFirstValue: 5452801 false ) 
	#(132 1 #liftFirstValue: 5452802 false ) 
	#(289 2 #reduceActionForannotations2: 29847554 false ) 
	#(266 2 #reduceActionForpreincrement_expression1: 25341953 false ) 
	#(267 2 #reduceActionForpredecrement_expression1: 25448449 false ) 
	#(319 0 #reduceActionFortype_argument_type3: 32406531 false ) 
	#(316 2 #reduceActionFortype_arguments_opt3: 32086019 false ) 
	#(318 1 #reduceActionFortype_argument1: 32296961 false ) 
	#(317 1 #reduceActionFortype_arguments1: 32193537 false ) 
	#(291 0 #reduceActionFortype_arguments_opt1: 29980673 false ) 
	#(221 1 #liftFirstValue: 18524162 false ) 
	#(216 0 #nil 18125825 false ) 
	#(119 1 #liftFirstValue: 4383745 false ) 
	#(286 1 #liftFirstValue: 29700098 false ) 
	#(228 1 #reduceActionFormodifiers_opt2: 19446786 false ) 
	#(194 1 #reduceActionFormodifiers_opt2: 14733314 false ) 
	#(195 1 #reduceActionFormodifiers1: 14784513 false ) 
	#(321 2 #reduceActionForsimple_type_name1: 32557057 false ) 
	#(121 2 #reduceActionForarray_type1: 4477953 false ) 
	#(257 1 #reduceActionFordims1: 23486465 false ) 
	#(137 2 #reduceActionForannotations2: 6089730 false ) 
	#(197 2 #reduceActionForlocal_variable_declaration_statement1: 15014913 false ) 
	#(203 2 #reduceActionForexpression_statement1: 15927297 false ) 
	#(263 2 #reduceActionForpostincrement_expression1: 24841217 false ) 
	#(264 2 #reduceActionForpostdecrement_expression1: 24951809 false ) 
	#(285 1 #liftFirstValue: 29561860 false ) 
	#(285 1 #liftFirstValue: 29561866 false ) 
	#(285 1 #liftFirstValue: 29561858 false ) 
	#(285 1 #liftFirstValue: 29561861 false ) 
	#(285 1 #liftFirstValue: 29561862 false ) 
	#(285 1 #liftFirstValue: 29561859 false ) 
	#(285 1 #liftFirstValue: 29561863 false ) 
	#(285 1 #liftFirstValue: 29561857 false ) 
	#(285 1 #liftFirstValue: 29561864 false ) 
	#(285 1 #liftFirstValue: 29561865 false ) 
	#(285 1 #liftFirstValue: 29561867 false ) 
	#(285 1 #liftFirstValue: 29561868 false ) 
	#(121 2 #reduceActionForarray_type1: 4477954 false ) 
	#(325 1 #reduceActionFormodifier5: 33056769 false ) 
	#(325 1 #liftFirstValue: 33056770 false ) 
	#(324 2 #reduceActionForannotations2: 32977922 false ) 
	#(268 2 #reduceActionForunary_expression_not_plus_minus3: 25556995 false ) 
	#(270 0 #reduceActionFortype_argument_type3: 26170369 false ) 
	#(246 1 #liftFirstValue: 21650433 false ) 
	#(244 1 #reduceActionFormodifiers_opt2: 21466114 false ) 
	#(245 1 #reduceActionFortype_arguments1: 21524481 false ) 
	#(246 1 #liftFirstValue: 21650434 false ) 
	#(265 2 #reduceActionForunary_expression3: 25064451 false ) 
	#(265 2 #reduceActionForunary_expression4: 25064452 false ) 
	#(268 2 #reduceActionForunary_expression_not_plus_minus2: 25556994 false ) 
	#(166 1 #reduceActionFormethod_body2: 9938946 false ) 
	#(156 2 #reduceActionFormethod_declaration1: 8617985 false ) 
	#(166 1 #liftFirstValue: 9938945 false ) 
	#(167 2 #reduceActionForstatic_initializer1: 10036225 false ) 
	#(163 0 #nil 9739265 false ) 
	#(300 1 #liftFirstValue: 30724098 false ) 
	#(125 3 #reduceActionForcompilation_unit1: 4802561 false ) 
	#(128 1 #reduceActionFormodifiers_opt2: 5052417 false ) 
	#(130 1 #reduceActionFormodifiers1: 5214209 false ) 
	#(129 2 #reduceActionForannotations2: 5104642 false ) 
	#(241 3 #reduceActionForprimary_no_new_array3: 20696067 false ) 
	#(318 2 #reduceActionFortype_argument2: 32296962 false ) 
	#(316 3 #reduceActionFortype_arguments_opt2: 32086018 false ) 
	#(292 0 #reduceActionForlambda_parameter_list_opt1: 30060545 false ) 
	#(290 3 #reduceActionForannotation1: 29905921 false ) 
	#(239 3 #reduceActionForassert_statement1: 20357121 false ) 
	#(222 3 #reduceActionForbreak_statement1: 18565121 false ) 
	#(223 3 #reduceActionForcontinue_statement1: 18674689 false ) 
	#(217 1 #liftFirstValue: 18160642 false ) 
	#(220 1 #reduceActionForstatement_expression_list1: 18321409 false ) 
	#(216 1 #liftFirstValue: 18125826 false ) 
	#(217 1 #liftFirstValue: 18160641 false ) 
	#(256 0 #reduceActionForlambda_parameter_list_opt1: 23459841 false ) 
	#(254 1 #reduceActionFormodifiers1: 23272449 false ) 
	#(251 0 #reduceActionForlambda_parameter_list_opt1: 22736897 false ) 
	#(224 3 #reduceActionForreturn_statement1: 18796545 false ) 
	#(259 3 #reduceActionForfield_access2: 23597058 false ) 
	#(225 3 #reduceActionForthrow_statement1: 18910209 false ) 
	#(232 0 #nil 19827713 false ) 
	#(230 1 #reduceActionFortype_arguments1: 19576833 false ) 
	#(233 0 #reduceActionForannotations1: 19867649 false ) 
	#(227 3 #reduceActionFortry_statement3: 19181571 false ) 
	#(193 3 #reduceActionForblock1: 14654465 false ) 
	#(195 2 #reduceActionForannotations2: 14784514 false ) 
	#(202 3 #reduceActionForlabeled_statement1: 15818753 false ) 
	#(241 3 #reduceActionForprimary_no_new_array10: 20696074 false ) 
	#(241 3 #reduceActionForprimary_no_new_array10: 20696072 false ) 
	#(258 2 #reduceActionForempty_dim_expr1: 23537665 false ) 
	#(257 2 #reduceActionFordims2: 23486466 false ) 
	#(249 3 #reduceActionFormethod_reference_expression2: 21860354 false ) 
	#(241 3 #reduceActionForprimary_no_new_array11: 20696075 false ) 
	#(124 3 #reduceActionForqualified_name1: 4694017 false ) 
	#(143 0 #reduceActionForinterfaces_opt1: 7100417 false ) 
	#(241 3 #reduceActionForprimary_no_new_array10: 20696073 false ) 
	#(259 3 #reduceActionForfield_access1: 23597057 false ) 
	#(283 3 #reduceActionForassignment1: 29392897 false ) 
	#(198 3 #reduceActionForlocal_variable_declaration1: 15157249 false ) 
	#(151 1 #reduceActionFortype_arguments1: 7922689 false ) 
	#(152 1 #liftFirstValue: 8075266 false ) 
	#(152 1 #reduceActionForvariable_declarator1: 8075265 false ) 
	#(249 3 #reduceActionFormethod_reference_expression2: 21860353 false ) 
	#(243 3 #reduceActionFortype_arguments_opt2: 21339137 false ) 
	#(154 3 #reduceActionForvariable_declarator_id2: 8356866 false ) 
	#(248 1 #liftFirstValue: 21800961 false ) 
	#(242 3 #reduceActionForlambda_expression1: 21239809 false ) 
	#(248 1 #liftFirstValue: 21800962 false ) 
	#(271 3 #reduceActionFormultiplicative_expression4: 26248196 false ) 
	#(271 3 #reduceActionFormultiplicative_expression4: 26248194 false ) 
	#(271 3 #reduceActionFormultiplicative_expression4: 26248195 false ) 
	#(272 3 #reduceActionFormultiplicative_expression4: 26641410 false ) 
	#(272 3 #reduceActionFormultiplicative_expression4: 26641411 false ) 
	#(273 3 #reduceActionFormultiplicative_expression4: 26930178 false ) 
	#(273 3 #reduceActionFormultiplicative_expression4: 26930179 false ) 
	#(273 3 #reduceActionFormultiplicative_expression4: 26930180 false ) 
	#(274 3 #reduceActionFormultiplicative_expression4: 27336706 false ) 
	#(274 3 #reduceActionFormultiplicative_expression4: 27336708 false ) 
	#(274 3 #reduceActionFormultiplicative_expression4: 27336709 false ) 
	#(274 3 #reduceActionFormultiplicative_expression4: 27336710 false ) 
	#(274 3 #reduceActionFormultiplicative_expression4: 27336707 false ) 
	#(275 3 #reduceActionFormultiplicative_expression4: 27953155 false ) 
	#(275 3 #reduceActionFormultiplicative_expression4: 27953154 false ) 
	#(276 3 #reduceActionFormultiplicative_expression4: 28231682 false ) 
	#(277 3 #reduceActionFormultiplicative_expression4: 28381186 false ) 
	#(278 3 #reduceActionFormultiplicative_expression4: 28538882 false ) 
	#(279 3 #reduceActionFormultiplicative_expression4: 28715010 false ) 
	#(280 3 #reduceActionFormultiplicative_expression4: 28898306 false ) 
	#(313 0 #reduceActionForinterfaces_opt1: 31787009 false ) 
	#(311 1 #reduceActionFortype_arguments1: 31589377 false ) 
	#(163 1 #liftFirstValue: 9739266 false ) 
	#(130 2 #reduceActionForannotations2: 5214210 false ) 
	#(131 4 #reduceActionForpackage_declaration1: 5335041 false ) 
	#(319 2 #reduceActionForempty_dim_expr1: 32406529 false ) 
	#(319 2 #reduceActionForempty_dim_expr1: 32406530 false ) 
	#(317 3 #reduceActionFortype_arguments2: 32193538 false ) 
	#(297 0 #reduceActionForlambda_parameter_list_opt1: 30557185 false ) 
	#(295 1 #liftFirstValue: 30340097 false ) 
	#(295 1 #liftFirstValue: 30340098 false ) 
	#(292 1 #reduceActionFormodifiers_opt2: 30060546 false ) 
	#(293 1 #reduceActionFortype_arguments1: 30130177 false ) 
	#(292 1 #reduceActionFortype_arguments1: 30060547 false ) 
	#(295 1 #liftFirstValue: 30340099 false ) 
	#(254 2 #reduceActionForannotations2: 23272450 false ) 
	#(253 4 #reduceActionForarray_creation_expression1: 22883329 false ) 
	#(256 1 #reduceActionFormodifiers_opt2: 23459842 false ) 
	#(253 4 #reduceActionForarray_creation_expression3: 22883331 false ) 
	#(253 4 #reduceActionForarray_creation_expression1: 22883330 false ) 
	#(253 4 #reduceActionForarray_creation_expression3: 22883332 false ) 
	#(251 1 #reduceActionFormodifiers_opt2: 22736898 false ) 
	#(252 1 #reduceActionFortype_arguments1: 22781953 false ) 
	#(232 1 #liftFirstValue: 19827714 false ) 
	#(227 4 #reduceActionFortry_statement1: 19181569 false ) 
	#(233 1 #reduceActionFormodifiers_opt2: 19867650 false ) 
	#(234 1 #reduceActionFormodifiers1: 19900417 false ) 
	#(261 4 #reduceActionForarray_access1: 24512513 false ) 
	#(141 0 #reduceActionFortype_argument_type3: 7001089 false ) 
	#(143 1 #reduceActionFormodifiers_opt2: 7100418 false ) 
	#(179 0 #reduceActionForinterfaces_opt1: 12642305 false ) 
	#(261 4 #reduceActionForarray_access1: 24512514 false ) 
	#(322 4 #reduceActionForqualified_type_name1: 32634881 false ) 
	#(269 4 #reduceActionForcast_expression1: 25761793 false ) 
	#(120 1 #liftFirstValue: 4427777 false ) 
	#(270 2 #reduceActionForempty_dim_expr1: 26170370 false ) 
	#(245 3 #reduceActionFortype_arguments2: 21524482 false ) 
	#(162 3 #reduceActionForformal_parameter1: 9511937 false ) 
	#(312 2 #reduceActionFortype_parameter1: 31698945 false ) 
	#(310 3 #reduceActionFortype_parameters_opt2: 31494146 false ) 
	#(150 4 #reduceActionForfield_declaration1: 7811073 false ) 
	#(165 1 #reduceActionFortype_arguments1: 9835521 false ) 
	#(164 2 #reduceActionForthrows1: 9769985 false ) 
	#(168 4 #reduceActionForconstructor_declaration1: 10159105 false ) 
	#(160 0 #reduceActionForlambda_parameter_list_opt1: 9321473 false ) 
	#(133 4 #reduceActionForsingle_type_import_declaration1: 5551105 false ) 
	#(298 1 #reduceActionFortype_arguments1: 30599169 false ) 
	#(299 0 #nil 30692353 false ) 
	#(297 1 #reduceActionFormodifiers_opt2: 30557186 false ) 
	#(291 3 #reduceActionFortype_arguments_opt2: 29980674 false ) 
	#(239 5 #reduceActionForassert_statement2: 20357122 false ) 
	#(220 3 #reduceActionForstatement_expression_list2: 18321410 false ) 
	#(205 5 #reduceActionForif_then_statement1: 16251905 false ) 
	#(255 3 #reduceActionFordim_expr1: 23356417 false ) 
	#(191 2 #reduceActionForarray_initializer4: 14156804 false ) 
	#(192 1 #reduceActionFortype_arguments1: 14482433 false ) 
	#(155 1 #liftFirstValue: 8523778 false ) 
	#(155 1 #liftFirstValue: 8523777 false ) 
	#(250 5 #reduceActionForclass_instance_creation_expression1: 22074369 false ) 
	#(207 5 #reduceActionForswitch_statement1: 16595969 false ) 
	#(226 5 #reduceActionForsynchronized_statement1: 19015681 false ) 
	#(230 3 #reduceActionFortype_arguments2: 19576834 false ) 
	#(229 4 #reduceActionFortry_resources1: 19488769 false ) 
	#(231 3 #reduceActionFortry_resource1: 19691521 false ) 
	#(227 5 #reduceActionFortry_statement2: 19181570 false ) 
	#(234 2 #reduceActionForannotations2: 19900418 false ) 
	#(213 5 #reduceActionForwhile_statement1: 17573889 false ) 
	#(259 5 #reduceActionForfield_access3: 23597059 false ) 
	#(141 1 #reduceActionFormodifiers_opt2: 7001090 false ) 
	#(144 1 #reduceActionFortype_arguments1: 7138305 false ) 
	#(142 2 #reduceActionForinterfaces1: 7029761 false ) 
	#(303 0 #reduceActionForlambda_parameter_list_opt1: 30999553 false ) 
	#(301 5 #reduceActionForenum_declaration1: 30768129 false ) 
	#(179 1 #reduceActionFormodifiers_opt2: 12642306 false ) 
	#(260 5 #reduceActionFormethod_invocation1: 23877633 false ) 
	#(151 3 #reduceActionFortype_arguments2: 7922690 false ) 
	#(153 3 #reduceActionForinitialized_variable_declarator1: 8198145 false ) 
	#(315 0 #reduceActionFortype_arguments_opt1: 31928321 false ) 
	#(269 5 #reduceActionForcast_expression3: 25761795 false ) 
	#(269 5 #reduceActionForcast_expression3: 25761794 false ) 
	#(162 4 #reduceActionForformal_parameter2: 9511938 false ) 
	#(281 5 #reduceActionForconditional_expression2: 29085698 false ) 
	#(175 0 #reduceActionForannotations1: 11921409 false ) 
	#(173 5 #reduceActionForannotation_interface_declaration1: 11638785 false ) 
	#(314 1 #reduceActionFortype_arguments1: 31861761 false ) 
	#(313 2 #reduceActionForinterfaces1: 31787010 false ) 
	#(311 3 #reduceActionFortype_arguments2: 31589378 false ) 
	#(157 5 #reduceActionFormethod_header1: 8700929 false ) 
	#(157 5 #reduceActionFormethod_header1: 8700930 false ) 
	#(170 2 #reduceActionForconstructor_body4: 10452996 false ) 
	#(160 1 #reduceActionFormodifiers_opt2: 9321474 false ) 
	#(161 1 #reduceActionFortype_arguments1: 9382913 false ) 
	#(299 1 #liftFirstValue: 30692354 false ) 
	#(294 3 #reduceActionForelementValuePair1: 30239745 false ) 
	#(293 3 #reduceActionFortype_arguments2: 30130178 false ) 
	#(218 0 #nil 18236417 false ) 
	#(191 3 #reduceActionForarray_initializer3: 14156803 false ) 
	#(191 3 #reduceActionForarray_initializer2: 14156802 false ) 
	#(146 0 #reduceActionForannotations1: 7340033 false ) 
	#(250 6 #reduceActionForclass_instance_creation_expression2: 22074370 false ) 
	#(252 3 #reduceActionFortype_arguments2: 22781954 false ) 
	#(208 2 #reduceActionForswitch_block4: 16744452 false ) 
	#(209 1 #reduceActionFormodifiers1: 17064961 false ) 
	#(211 1 #reduceActionFormodifiers1: 17332225 false ) 
	#(238 2 #reduceActionForfinally1: 20283393 false ) 
	#(140 2 #reduceActionForempty_dim_expr1: 6937601 false ) 
	#(303 1 #reduceActionFormodifiers_opt2: 30999554 false ) 
	#(304 1 #reduceActionFortype_arguments1: 31043585 false ) 
	#(180 2 #reduceActionForextends_interfaces1: 12697601 false ) 
	#(182 0 #reduceActionForannotations1: 12941313 false ) 
	#(172 6 #reduceActionForinterface_declaration1: 11438081 false ) 
	#(177 1 #liftFirstValue: 12223490 false ) 
	#(177 1 #liftFirstValue: 12223491 false ) 
	#(175 1 #reduceActionFormodifiers_opt2: 11921410 false ) 
	#(176 1 #reduceActionFormodifiers1: 12019713 false ) 
	#(177 1 #liftFirstValue: 12223489 false ) 
	#(178 1 #liftFirstValue: 12343297 false ) 
	#(159 3 #reduceActionFormethod_declarator2: 9015298 false ) 
	#(165 3 #reduceActionFortype_arguments2: 9835522 false ) 
	#(170 3 #reduceActionForconstructor_body2: 10452994 false ) 
	#(170 3 #reduceActionForblock1: 10452995 false ) 
	#(169 5 #reduceActionForconstructor_declarator1: 10304513 false ) 
	#(134 6 #reduceActionFortype_import_on_demand_declaration1: 5686273 false ) 
	#(296 4 #reduceActionForelementValueArrayInitializer1: 30430209 false ) 
	#(298 3 #reduceActionFortype_arguments2: 30599170 false ) 
	#(214 7 #reduceActionFordo_statement1: 17719297 false ) 
	#(218 1 #liftFirstValue: 18236418 false ) 
	#(219 1 #liftFirstValue: 18275329 false ) 
	#(206 7 #reduceActionForif_then_else_statement1: 16394241 false ) 
	#(191 4 #reduceActionForarray_initializer1: 14156801 false ) 
	#(192 3 #reduceActionFortype_arguments2: 14482434 false ) 
	#(146 1 #reduceActionFormodifiers_opt2: 7340034 false ) 
	#(147 1 #reduceActionFormodifiers1: 7404545 false ) 
	#(260 7 #reduceActionFormethod_invocation3: 23877635 false ) 
	#(288 1 #liftFirstValue: 29802497 false ) 
	#(212 2 #reduceActionForswitch_label2: 17415170 false ) 
	#(208 3 #reduceActionForswitch_block2: 16744450 false ) 
	#(209 2 #reduceActionForannotations2: 17064962 false ) 
	#(208 3 #reduceActionForswitch_block3: 16744451 false ) 
	#(210 2 #reduceActionForswitch_block_statement_group1: 17232897 false ) 
	#(211 2 #reduceActionForannotations2: 17332226 false ) 
	#(237 1 #reduceActionFortype_arguments1: 20214785 false ) 
	#(139 7 #reduceActionForclass_declaration1: 6738945 false ) 
	#(144 3 #reduceActionFortype_arguments2: 7138306 false ) 
	#(306 0 #reduceActionFortype_arguments_opt1: 31247361 false ) 
	#(308 0 #reduceActionForenum_body_declarations_opt1: 31358977 false ) 
	#(189 1 #reduceActionFormodifier5: 13986817 false ) 
	#(184 1 #liftFirstValue: 13178884 false ) 
	#(188 1 #reduceActionFormodifiers_opt2: 13910017 false ) 
	#(185 1 #liftFirstValue: 13324289 false ) 
	#(182 1 #reduceActionFormodifiers_opt2: 12941314 false ) 
	#(183 1 #reduceActionFormodifiers1: 13019137 false ) 
	#(184 1 #liftFirstValue: 13178881 false ) 
	#(184 1 #liftFirstValue: 13178883 false ) 
	#(188 1 #reduceActionFormodifiers1: 13910018 false ) 
	#(184 1 #liftFirstValue: 13178882 false ) 
	#(180 3 #reduceActionForextends_interfaces2: 12697602 false ) 
	#(315 2 #reduceActionFortype_arguments_opt3: 31928323 false ) 
	#(260 7 #reduceActionFormethod_invocation2: 23877634 false ) 
	#(190 2 #reduceActionForabstract_method_declaration1: 14043137 false ) 
	#(174 3 #reduceActionForannotation_interface_body1: 11808769 false ) 
	#(176 2 #reduceActionForannotations2: 12019714 false ) 
	#(314 3 #reduceActionFortype_arguments2: 31861762 false ) 
	#(159 4 #reduceActionFormethod_declarator1: 9015297 false ) 
	#(170 4 #reduceActionForconstructor_body1: 10452993 false ) 
	#(161 3 #reduceActionFortype_arguments2: 9382914 false ) 
	#(145 3 #reduceActionForannotation_interface_body1: 7259137 false ) 
	#(147 2 #reduceActionForannotations2: 7404546 false ) 
	#(212 3 #reduceActionForswitch_label1: 17415169 false ) 
	#(208 4 #reduceActionForswitch_block1: 16744449 false ) 
	#(235 5 #reduceActionForcatch_clause1: 19970049 false ) 
	#(236 3 #reduceActionForcatch_parameter1: 20105217 false ) 
	#(307 0 #reduceActionForclass_body_opt1: 31323137 false ) 
	#(308 1 #reduceActionFormodifiers_opt2: 31358978 false ) 
	#(304 3 #reduceActionFortype_arguments2: 31043586 false ) 
	#(181 3 #reduceActionForannotation_interface_body1: 12850177 false ) 
	#(183 2 #reduceActionForannotations2: 13019138 false ) 
	#(186 2 #reduceActionFormethod_declaration1: 13522945 false ) 
	#(315 3 #reduceActionFortype_arguments_opt2: 31928322 false ) 
	#(215 9 #reduceActionForfor_statement1: 17895425 false ) 
	#(323 9 #reduceActionForforeach_statement1: 32757761 false ) 
	#(237 3 #reduceActionFortype_arguments2: 20214786 false ) 
	#(260 9 #reduceActionFormethod_invocation4: 23877636 false ) 
	#(307 1 #reduceActionFormodifiers_opt2: 31323138 false ) 
	#(305 4 #reduceActionForenum_constant1: 31147009 false ) 
	#(309 2 #reduceActionForenum_body_declarations1: 31419393 false ) 
	#(302 5 #reduceActionForenum_body1: 30892033 false ) 
	#(250 9 #reduceActionForclass_instance_creation_expression3: 22074371 false ) 
	#(178 4 #reduceActionForannotation_method_declaration2: 12343298 false ) 
	#(178 4 #reduceActionForannotation_method_declaration2: 12343299 false ) 
	#(171 5 #reduceActionForexplicit_constructor_invocation2: 10790914 false ) 
	#(171 5 #reduceActionForexplicit_constructor_invocation1: 10790913 false ) 
	#(306 3 #reduceActionFortype_arguments_opt2: 31247362 false ) 
	#(250 10 #reduceActionForclass_instance_creation_expression4: 22074372 false ) 
	#(187 5 #reduceActionFormethod_header1: 13621249 false ) 
	#(187 5 #reduceActionFormethod_header1: 13621250 false ) 
	#(171 7 #reduceActionForexplicit_constructor_invocation4: 10790916 false ) 
	#(171 7 #reduceActionForexplicit_constructor_invocation3: 10790915 false )
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
JavaParser class >> startingStateForclass_body_declaration [
	^ 6
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
JavaParser class >> startingStateFormethod_declaration [
	^ 5
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
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JavaProgramFileNode #JavaProgramFileNode #JavaLiteralNode #JavaTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaArrayTypeNode #JavaNameNode #JavaNameNode #JavaQualifiedNameNode #JavaProgramFileNode #JavaPackageDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaPackageDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaTypeImportOnDemandDeclarationNode #JavaProgramNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaProgramNode #JavaFieldDeclarationNode #OrderedCollection #JavaVariableDeclarationNode #JavaInitializedVariableDeclarationNode #JavaProgramNode #JavaProgramNode #JavaMethodDeclarationNode #OrderedCollection #JavaVoidTypeNode #JavaProgramNode #OrderedCollection #OrderedCollection #JavaParameterNode #JavaThrowsNode #JavaThrowsNode #OrderedCollection #JavaProgramNode #JavaStaticInitializerNode #JavaConstructorDeclarationNode #OrderedCollection #JavaBlockNode #JavaStatementNode #JavaInterfaceDeclarationNode #JavaAnnotationInterfaceNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaAbstractMethodDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaFieldDeclarationNode #JavaMethodDeclarationNode #OrderedCollection #Object #JavaModifierNode #JavaAbstractMethodDeclarationNode #JavaArrayInitializerNode #OrderedCollection #JavaBlockNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaLocalVariableDeclarationStatementNode #JavaLocalVariableDeclarationNode #JavaStatementNode #JavaStatementNode #JavaEmptyStatementNode #JavaLabeledStatementNode #JavaExpressionStatementNode #JavaExpressionNode #JavaIfStatementNode #JavaIfElseStatementNode #JavaSwitchStatementNode #JavaSwitchBlockNode #OrderedCollection #JavaSwitchBlockStatementGroupNode #OrderedCollection #JavaProgramNode #JavaWhileStatementNode #JavaDoWhileStatementNode #JavaForStatementNode #JavaProgramNode #JavaProgramNode #JavaStatementExpressionListNode #JavaStatementExpressionListNode #JavaStatementExpressionListNode #SmaCCToken #JavaBreakStatementNode #JavaContinueStatementNode #JavaReturnStatementNode #JavaThrowStatementNode #JavaSynchronizedStatementNode #JavaTryStatementNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaLocalVariableDeclarationNode #SmaCCToken #OrderedCollection #OrderedCollection #JavaCatchClauseNode #JavaCatchParameterNode #OrderedCollection #JavaFinallyClauseNode #JavaAssertStatementNode #JavaExpressionNode #JavaExpressionNode #JavaLambdaExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaParameterNode #JavaParameterNode #JavaProgramNode #JavaMethodReferenceNode #JavaNewNode #OrderedCollection #OrderedCollection #JavaNewArrayNode #OrderedCollection #JavaDimensionExpressionNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaFieldAccessNode #JavaMethodInvocationNode #JavaArrayAccessNode #JavaExpressionNode #JavaPostIncrementExpressionNode #JavaPostDecrementExpressionNode #JavaExpressionNode #JavaPreIncrementExpressionNode #JavaPreDecrementExpressionNode #JavaExpressionNode #JavaCastExpressionNode #OrderedCollection #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaAssignmentNode #JavaExpressionNode #SmaCCToken #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #OrderedCollection #JavaAnnotationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaElementValuePairNode #JavaProgramNode #JavaElementArrayInitializerNode #OrderedCollection #OrderedCollection #SmaCCToken #SmaCCToken #JavaEnumDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaEnumConstantNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaTypeParametersNode #OrderedCollection #JavaTypeParameterNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaTypeArgumentNode #OrderedCollection #JavaTypeNameNode #JavaTypeNameNode #JavaQualifiedTypeNameNode #JavaForEachStatementNode #OrderedCollection #JavaProgramNode #JavaExpressionNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JavaParser class >> transitionTable [
^#(
#[1 0 6 0 26 0 7 0 37 0 6 0 42 0 6 0 50 0 6 0 56 0 6 0 58 0 6 0 64 0 6 0 67 0 6 0 69 0 10 0 71 0 6 0 72 0 6 0 73 0 6 0 74 0 6 0 77 0 6 0 78 0 6 0 81 0 6 0 85 0 6 0 88 0 29 0 110 0 29 0 125 0 37 0 126 0 37 0 131 0 45 1 33 0 6 1 71] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 97 0 51 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 1 61 0 139 1 49 0 158 1 61 0 172 1 61 0 193 1 61 0 196 1 61 0 197 1 69 0 198 1 61 0 199 1 61 0 200 1 61 0 201 1 61 0 202 1 61 0 203 1 93 0 204 1 61 0 205 1 61 0 206 1 61 0 207 1 61 0 213 1 61 0 214 1 61 0 215 1 61 0 222 1 61 0 223 1 61 0 224 1 61 0 225 1 61 0 226 1 61 0 227 1 61 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 1 61 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 61 1 67 1 237 1 68 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 2 121 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 2 121 1 25 2 121 1 26 2 117 1 27 1 205 1 28 2 121 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 2 125 0 26 0 59 0 37 0 73 0 42 0 18 0 50 0 18 0 56 0 109 0 58 0 18 0 67 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 201 0 88 2 133 0 135 2 137 0 136 1 37 0 137 1 41 0 138 2 133 0 139 2 133 0 172 2 133 0 173 1 41 1 34 2 133 1 45] 
#[1 0 18 0 27 0 69 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 54 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 0 18 0 105 2 153 0 136 1 37 0 137 1 41 0 138 2 157 0 156 2 161 0 157 1 41 1 34] 
#[1 2 125 0 26 0 18 0 27 0 59 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 2 165 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 0 209 0 90 0 18 0 105 2 177 0 135 2 173 0 136 1 37 0 137 1 41 0 138 2 177 0 139 2 177 0 148 2 177 0 149 2 177 0 150 2 177 0 156 2 161 0 157 2 177 0 167 2 177 0 168 2 177 0 172 2 177 0 173 2 201 0 193 1 41 1 34 2 177 1 45] 
#[0 0 0 1 71] 
#[0 0 26 1 71] 
#[1 0 30 0 26 0 30 0 37 0 30 0 42 0 30 0 50 0 30 0 56 0 30 0 58 2 205 0 64 0 30 0 67 0 30 0 69 0 30 0 72 0 30 0 73 0 30 0 74 0 30 0 77 0 30 0 78 0 30 0 81 0 30 0 85 0 30 0 88 2 209 0 127 2 213 0 129 2 217 0 132 2 217 0 133 2 217 0 134 0 30 1 71] 
#[0 0 34 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[1 0 69 0 37 2 229 0 71 2 233 1 34] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 2 237 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 2 237 1 25 2 237 1 26 2 117 1 27 1 205 1 28 2 237 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 249 1 9 2 249 1 10 2 249 1 11 2 249 1 12 2 249 1 13 2 249 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 3 1 1 9 3 1 1 10 3 1 1 11 3 1 1 12 3 1 1 13 3 1 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 0 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 3 5 0 36 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 9 0 96 3 13 0 105 3 17 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 3 17 0 117 3 17 0 118 3 17 0 121 3 29 1 61 3 33 1 62 1 221 1 64 1 221 1 65 1 221 1 66] 
#[1 3 37 0 105 3 41 0 122 3 41 0 123 3 41 0 124] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 3 45 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 3 45 1 25 3 45 1 26 2 117 1 27 1 205 1 28 3 45 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 0 46 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 0 50 0 26 3 53 0 105 3 53 0 221] 
#[0 0 54 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 58 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 0 50 0 26 3 57 0 105 3 57 0 221] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 77 0 43 0 81 0 44 0 85 0 45 0 89 0 46 0 93 0 49 0 97 0 51 0 101 0 53 0 105 0 54 0 113 0 60 0 117 0 61 0 121 0 62 0 125 0 66 0 129 0 68 0 137 0 70 0 153 0 75 0 157 0 76 0 169 0 79 0 173 0 80 3 61 0 81 0 181 0 82 0 185 0 83 0 193 0 86 0 197 0 87 0 205 0 89 0 209 0 90 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 67 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 3 65 0 193 3 65 0 199 3 65 0 200 3 65 0 201 3 65 0 202 3 65 0 203 1 93 0 204 3 65 0 205 3 65 0 206 3 65 0 207 3 65 0 213 3 65 0 214 3 65 0 215 3 65 0 222 3 65 0 223 3 65 0 224 3 65 0 225 3 65 0 226 3 65 0 227 3 65 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 3 65 1 67 1 241 1 70] 
#[0 0 62 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 66 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 70 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 3 69 0 8] 
#[0 3 73 0 8] 
#[0 0 74 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 78 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 82 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 3 77 0 113 3 77 0 114 3 77 0 115 3 77 0 116 3 81 0 118 3 85 0 119 3 89 1 64 3 89 1 65 3 89 1 66] 
#[0 0 86 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 90 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 94 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 98 0 26 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 3 93 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 3 93 1 25 3 93 1 26 2 117 1 27 1 205 1 28 3 93 1 30 3 93 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 0 102 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 106 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 110 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 3 101 0 20] 
#[0 3 105 0 8] 
#[1 3 109 0 8 0 114 0 37 0 114 0 42 0 114 0 50 0 114 0 56 0 114 0 58 0 114 0 67 0 114 0 69 0 114 0 72 0 114 0 73 0 114 0 74 0 114 0 77 0 114 0 78 0 114 0 81 0 114 0 85 0 114 0 88] 
#[0 0 118 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 3 113 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 3 113 1 25 3 113 1 26 2 117 1 27 1 205 1 28 3 113 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 0 122 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 3 117 0 8 0 126 0 90 3 121 0 228 3 125 0 229] 
#[0 0 130 0 20 0 105] 
#[0 0 134 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 3 129 0 8] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 97 0 51 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 0 138 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 3 141 0 139 1 49 0 158 3 141 0 172 3 141 0 193 3 133 0 194 3 137 0 195 3 141 0 196 3 141 0 197 1 69 0 198 3 141 0 199 3 141 0 200 3 141 0 201 3 141 0 202 3 141 0 203 1 93 0 204 3 141 0 205 3 141 0 206 3 141 0 207 3 141 0 213 3 141 0 214 3 141 0 215 3 141 0 222 3 141 0 223 3 141 0 224 3 141 0 225 3 141 0 226 3 141 0 227 3 141 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 3 141 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 3 141 1 67 1 237 1 68 1 241 1 70] 
#[0 0 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 154 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 158 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 162 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 0 166 0 4 0 166 0 7 0 166 0 11 0 166 0 13 0 166 0 14 0 166 0 17 0 166 0 18 0 71 0 20 0 166 0 23 3 145 0 24 0 71 0 25 0 65 0 27 0 166 0 29 0 166 0 31 0 166 0 34 0 166 0 35 0 71 0 38 0 166 0 41 0 166 0 92 3 149 1 60] 
#[0 0 170 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 153 0 20] 
#[1 0 75 0 20 3 161 0 38 3 165 1 1 3 169 1 2] 
#[0 0 178 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 182 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 186 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 0 190 0 20 3 173 0 25] 
#[0 0 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 0 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 0 202 0 2 0 202 0 3 0 206 0 4 0 202 0 5 0 202 0 6 0 206 0 7 0 202 0 9 0 202 0 10 0 206 0 11 0 202 0 12 0 202 0 13 0 206 0 14 0 202 0 15 0 202 0 16 0 202 0 17 0 206 0 18 0 79 0 20 0 202 0 22 0 206 0 23 0 202 0 24 0 210 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 206 0 29 0 202 0 30 0 206 0 31 0 202 0 32 0 202 0 33 0 206 0 34 0 206 0 35 0 202 0 36 3 181 0 38 0 202 0 39 0 202 0 40 0 206 0 41 0 202 0 65 0 202 0 91 0 206 0 92 0 202 0 93 0 202 0 94 0 202 0 96 0 202 0 97 0 202 0 98 0 202 1 71] 
#[0 0 214 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 0 218 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 3 185 0 50 3 189 0 56 3 193 0 67] 
#[1 0 222 0 27 0 83 0 37 0 73 0 42 0 222 0 44 0 222 0 46 0 222 0 49 0 222 0 50 0 222 0 54 0 222 0 56 0 109 0 58 0 222 0 60 0 222 0 66 0 222 0 67 0 222 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 222 0 76 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 222 0 87 0 201 0 88 0 222 0 105 3 197 0 138 3 197 1 34] 
#[0 0 226 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 201 0 20] 
#[0 0 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 0 1 71] 
#[0 0 242 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 205 0 26] 
#[0 0 246 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 250 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 0 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 6 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 209 0 26] 
#[0 1 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 1 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 1 62 0 2 1 62 0 3 1 62 0 5 1 62 0 6 1 62 0 9 1 62 0 10 1 62 0 12 1 62 0 13 1 62 0 15 1 62 0 16 1 62 0 17 0 87 0 20 1 62 0 22 1 62 0 24 1 66 0 25 1 62 0 26 1 62 0 27 1 62 0 28 1 62 0 30 1 62 0 32 1 62 0 33 1 62 0 36 1 62 0 39 1 62 0 40 1 62 0 65 1 62 0 91 1 62 0 93 1 62 0 94 1 62 0 96 1 62 0 97 1 62 0 98 1 62 1 71] 
#[1 1 70 0 2 1 70 0 3 1 70 0 5 1 70 0 6 1 70 0 9 1 70 0 10 1 70 0 12 1 70 0 13 1 70 0 15 1 70 0 16 1 70 0 17 1 70 0 20 1 70 0 22 1 70 0 24 1 70 0 25 1 70 0 26 1 70 0 27 1 70 0 28 1 70 0 30 1 70 0 32 1 70 0 33 1 70 0 36 3 217 0 38 1 70 0 39 1 70 0 40 1 70 0 65 1 70 0 91 1 70 0 93 1 70 0 94 1 70 0 96 1 70 0 97 1 70 0 98 1 70 1 71] 
#[0 1 74 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 78 0 9 1 82 0 13 1 78 0 15 1 82 0 17 1 82 0 20 1 82 0 25 1 78 0 26 1 82 0 38] 
#[0 1 86 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 90 0 2 1 90 0 3 1 94 0 4 1 90 0 5 1 90 0 6 1 94 0 7 1 90 0 9 1 90 0 10 1 94 0 11 1 90 0 12 1 90 0 13 1 94 0 14 1 90 0 15 1 90 0 16 1 90 0 17 1 94 0 18 1 90 0 20 1 90 0 22 1 94 0 23 1 90 0 24 1 90 0 25 1 90 0 26 1 90 0 27 1 90 0 28 1 94 0 29 1 90 0 30 1 94 0 31 1 90 0 32 1 90 0 33 1 94 0 34 1 94 0 35 1 90 0 36 1 90 0 38 1 90 0 39 1 90 0 40 1 94 0 41 1 90 0 65 1 90 0 91 1 94 0 92 1 90 0 93 1 90 0 94 1 90 0 96 1 90 0 97 1 90 0 98 1 90 1 71] 
#[1 1 98 0 9 1 102 0 13 1 98 0 15 1 102 0 17 1 102 0 20 1 102 0 25 1 98 0 26 1 102 0 38] 
#[1 1 106 0 2 1 106 0 3 1 110 0 4 1 106 0 5 1 106 0 6 1 110 0 7 1 106 0 9 1 106 0 10 1 110 0 11 1 106 0 12 1 106 0 13 1 110 0 14 1 106 0 15 1 106 0 16 1 106 0 17 1 110 0 18 1 106 0 20 1 106 0 22 1 110 0 23 1 106 0 24 1 106 0 25 1 106 0 26 1 106 0 27 1 106 0 28 1 110 0 29 1 106 0 30 1 110 0 31 1 106 0 32 1 106 0 33 1 110 0 34 1 110 0 35 1 106 0 36 1 106 0 38 1 106 0 39 1 106 0 40 1 110 0 41 1 106 0 65 1 106 0 91 1 110 0 92 1 106 0 93 1 106 0 94 1 106 0 96 1 106 0 97 1 106 0 98 1 106 1 71] 
#[1 3 221 0 13 3 225 0 17] 
#[1 1 114 0 9 1 118 0 13 1 114 0 15 1 118 0 17 1 114 0 26] 
#[1 1 122 0 9 1 126 0 13 1 122 0 15 1 126 0 17 1 122 0 26] 
#[0 1 130 0 9 0 15 0 26] 
#[0 1 134 0 9 0 15 0 26] 
#[0 1 138 0 9 0 15 0 26] 
#[0 4 21 0 4 0 7 0 11 0 14 0 18 0 23 0 29 0 31 0 34 0 35 0 41 0 92 1 29] 
#[0 1 142 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 1 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 4 25 0 105] 
#[1 1 150 0 2 1 150 0 3 1 150 0 5 1 150 0 6 1 150 0 9 1 150 0 10 1 150 0 12 1 150 0 15 1 150 0 16 0 91 0 20 1 150 0 21 1 150 0 22 1 150 0 24 1 150 0 25 1 150 0 26 1 150 0 27 1 150 0 28 1 150 0 30 1 150 0 32 1 150 0 33 1 150 0 36 3 161 0 38 1 150 0 39 1 150 0 40 1 150 0 65 1 150 0 91 1 150 0 93 1 150 0 94 1 150 0 96 1 150 0 97 1 150 0 98 1 150 0 105 4 33 1 1 3 169 1 2 1 150 1 71] 
#[0 1 154 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 1 158 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 1 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 4 37 0 58 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 4 41 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 4 41 0 117 4 41 0 118 4 41 0 121 4 49 1 34 1 221 1 64 1 221 1 65 1 221 1 66 4 49 1 69] 
#[1 4 53 0 20 4 57 0 25] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 4 61 1 9 4 61 1 10 4 61 1 11 4 61 1 12 4 61 1 13 4 61 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 1 166 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 0 137 0 70 0 47 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 95 0 105 1 153 0 111 0 245 0 112 4 65 0 113 4 65 0 114 4 65 0 115 4 65 0 116 4 69 0 117 4 69 0 118 4 69 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 4 85 0 162 1 149 0 240 1 153 0 241 2 237 0 242 2 21 0 243 4 77 0 244 4 81 0 245 4 85 0 246 4 89 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 2 237 1 25 2 237 1 26 2 117 1 27 1 205 1 28 2 237 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 4 93 1 68 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 4 97 1 9 4 97 1 10 4 97 1 11 4 97 1 12 4 97 1 13 4 97 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 4 101 1 9 4 101 1 10 4 101 1 11 4 101 1 12 4 101 1 13 4 101 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 4 105 1 9 4 105 1 10 4 105 1 11 4 105 1 12 4 105 1 13 4 105 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 71 0 5 0 166 0 6 0 166 0 7 0 99 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 103 0 15 0 166 0 16 0 166 0 17 0 166 0 18 1 170 0 19 0 71 0 20 0 166 0 22 0 166 0 23 0 166 0 24 0 71 0 25 0 166 0 26 0 107 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 99 0 38 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 65 0 166 0 91 0 166 0 92 0 166 0 93 0 166 0 94 0 166 0 96 0 166 0 97 0 166 0 98 3 149 1 60 0 166 1 71] 
#[1 1 174 0 9 1 174 0 15 1 174 0 19 4 109 0 38] 
#[0 1 178 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 4 113 0 19] 
#[0 1 182 0 19] 
#[0 1 82 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 102 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 186 0 2 1 186 0 3 1 186 0 5 1 186 0 6 1 186 0 9 1 186 0 10 1 186 0 12 3 221 0 13 1 186 0 15 1 186 0 16 3 225 0 17 1 186 0 22 1 186 0 24 1 186 0 26 1 186 0 27 1 186 0 28 1 186 0 30 1 186 0 32 1 186 0 33 1 186 0 36 1 186 0 39 1 186 0 40 1 186 0 65 1 186 0 91 1 186 0 93 1 186 0 94 1 186 0 96 1 186 0 97 1 186 0 98 1 186 1 71] 
#[0 1 118 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 190 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 210 0 2 0 111 0 3 1 210 0 5 1 210 0 6 1 210 0 9 0 115 0 10 1 210 0 12 1 210 0 15 1 210 0 16 0 119 0 22 1 210 0 24 1 210 0 26 1 210 0 27 1 210 0 28 1 210 0 30 1 210 0 32 1 210 0 33 1 210 0 36 1 210 0 39 1 210 0 40 1 210 0 65 1 210 0 91 1 210 0 93 1 210 0 94 1 210 0 96 1 210 0 97 1 210 0 98 1 210 1 71] 
#[1 1 214 0 2 1 214 0 3 1 214 0 5 1 214 0 6 1 214 0 9 1 214 0 10 0 123 0 12 1 214 0 15 0 127 0 16 1 214 0 22 1 214 0 24 1 214 0 26 1 214 0 27 1 214 0 28 1 214 0 30 1 214 0 32 1 214 0 33 1 214 0 36 1 214 0 39 1 214 0 40 1 214 0 65 1 214 0 91 1 214 0 93 1 214 0 94 1 214 0 96 1 214 0 97 1 214 0 98 1 214 1 71] 
#[1 1 218 0 2 1 218 0 3 1 218 0 5 1 218 0 6 1 218 0 9 1 218 0 10 1 218 0 12 1 218 0 15 1 218 0 16 1 218 0 22 1 218 0 24 1 218 0 26 1 218 0 27 0 131 0 28 1 218 0 30 1 218 0 32 1 218 0 33 1 218 0 36 1 218 0 39 1 218 0 40 1 218 0 65 1 218 0 91 1 218 0 93 1 218 0 94 1 218 0 96 0 135 0 97 0 139 0 98 1 218 1 71] 
#[1 1 222 0 2 1 222 0 3 1 222 0 5 1 222 0 6 1 222 0 9 1 222 0 10 1 222 0 12 1 222 0 15 1 222 0 16 1 222 0 22 1 222 0 24 1 222 0 26 0 143 0 27 1 222 0 28 0 147 0 30 1 222 0 32 0 151 0 33 1 222 0 36 1 222 0 39 1 222 0 40 0 155 0 65 1 222 0 91 1 222 0 93 1 222 0 94 0 159 0 96 1 222 0 97 1 222 0 98 1 222 1 71] 
#[1 0 163 0 2 1 226 0 3 1 226 0 5 1 226 0 6 1 226 0 9 1 226 0 10 1 226 0 12 1 226 0 15 1 226 0 16 1 226 0 22 1 226 0 24 1 226 0 26 1 226 0 27 1 226 0 28 1 226 0 30 0 167 0 32 1 226 0 33 1 226 0 36 1 226 0 39 1 226 0 40 1 226 0 65 1 226 0 91 1 226 0 93 1 226 0 94 1 226 0 96 1 226 0 97 1 226 0 98 1 226 1 71] 
#[1 1 230 0 2 1 230 0 3 0 171 0 5 1 230 0 6 1 230 0 9 1 230 0 10 1 230 0 12 1 230 0 15 1 230 0 16 1 230 0 22 1 230 0 24 1 230 0 26 1 230 0 27 1 230 0 28 1 230 0 30 1 230 0 32 1 230 0 33 1 230 0 36 1 230 0 39 1 230 0 40 1 230 0 65 1 230 0 91 1 230 0 93 1 230 0 94 1 230 0 96 1 230 0 97 1 230 0 98 1 230 1 71] 
#[1 1 234 0 2 1 234 0 3 1 234 0 5 1 234 0 6 1 234 0 9 1 234 0 10 1 234 0 12 1 234 0 15 1 234 0 16 1 234 0 22 1 234 0 24 1 234 0 26 1 234 0 27 1 234 0 28 1 234 0 30 1 234 0 32 1 234 0 33 1 234 0 36 1 234 0 39 0 175 0 40 1 234 0 65 1 234 0 91 1 234 0 93 1 234 0 94 1 234 0 96 1 234 0 97 1 234 0 98 1 234 1 71] 
#[1 1 238 0 2 1 238 0 3 1 238 0 5 1 238 0 6 1 238 0 9 1 238 0 10 1 238 0 12 1 238 0 15 1 238 0 16 1 238 0 22 1 238 0 24 1 238 0 26 1 238 0 27 1 238 0 28 1 238 0 30 1 238 0 32 1 238 0 33 1 238 0 36 1 238 0 39 1 238 0 40 1 238 0 65 0 179 0 91 1 238 0 93 1 238 0 94 1 238 0 96 1 238 0 97 1 238 0 98 1 238 1 71] 
#[1 1 242 0 2 1 242 0 3 1 242 0 5 0 183 0 6 1 242 0 9 1 242 0 10 1 242 0 12 1 242 0 15 1 242 0 16 1 242 0 22 1 242 0 24 1 242 0 26 1 242 0 27 1 242 0 28 1 242 0 30 1 242 0 32 1 242 0 33 1 242 0 36 1 242 0 39 1 242 0 40 1 242 0 65 1 242 0 91 1 242 0 93 1 242 0 94 1 242 0 96 1 242 0 97 1 242 0 98 1 242 1 71] 
#[1 1 246 0 2 1 246 0 3 1 246 0 5 1 246 0 6 1 246 0 9 1 246 0 10 1 246 0 12 1 246 0 15 1 246 0 16 1 246 0 22 1 246 0 24 1 246 0 26 1 246 0 27 1 246 0 28 1 246 0 30 1 246 0 32 1 246 0 33 0 187 0 36 1 246 0 39 1 246 0 40 1 246 0 65 1 246 0 91 0 191 0 93 1 246 0 94 1 246 0 96 1 246 0 97 1 246 0 98 1 246 1 71] 
#[0 1 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 254 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 195 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 0 0 1 71] 
#[0 2 10 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 0 114 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 0 1 71] 
#[1 4 201 0 37 3 185 0 50 3 189 0 56 3 193 0 67] 
#[0 2 14 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 2 18 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 2 22 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 4 205 0 27 2 26 0 44 2 26 0 46 2 26 0 49 2 26 0 54 2 26 0 60 2 26 0 66 2 26 0 68 2 26 0 76 2 26 0 87 2 26 0 105 4 209 1 54] 
#[0 0 0 1 71] 
#[1 4 213 0 26 0 209 0 90 4 217 0 166 4 217 0 193] 
#[1 0 106 0 27 0 106 0 37 0 106 0 42 0 106 0 44 0 106 0 46 0 106 0 49 0 106 0 50 0 106 0 54 0 106 0 56 0 106 0 58 0 106 0 60 0 106 0 66 0 106 0 67 0 106 0 68 0 106 0 69 0 106 0 72 0 106 0 73 0 106 0 74 0 106 0 76 0 106 0 77 0 106 0 78 0 106 0 81 0 106 0 85 0 106 0 87 0 106 0 88 0 209 0 90 0 106 0 105 4 225 0 193] 
#[0 2 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 4 205 0 27 4 201 0 37 0 199 0 44 0 203 0 46 0 207 0 49 3 185 0 50 0 211 0 54 3 189 0 56 0 215 0 60 0 219 0 66 3 193 0 67 0 223 0 68 0 227 0 76 2 26 0 87 0 231 0 105 4 229 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 4 229 0 117 4 229 0 118 4 229 0 121 4 233 0 169 4 237 1 54 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 0 0 1 71] 
#[0 2 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 2 38 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 2 42 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 2 46 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 2 50 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 2 54 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 4 245 0 77 2 58 0 105 4 245 1 44] 
#[1 2 125 0 26 0 59 0 37 0 73 0 42 0 18 0 50 0 18 0 56 0 109 0 58 0 18 0 67 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 201 0 88 4 249 0 128 4 253 0 130 5 1 0 135 2 137 0 136 1 37 0 137 1 41 0 138 5 1 0 139 5 1 0 172 5 1 0 173 1 41 1 34 5 1 1 45 2 62 1 71] 
#[1 2 66 0 26 2 66 0 37 2 66 0 42 2 66 0 50 2 66 0 56 2 66 0 58 2 205 0 64 2 66 0 67 2 66 0 69 2 66 0 72 2 66 0 73 2 66 0 74 2 66 0 77 2 66 0 78 2 66 0 81 2 66 0 85 2 66 0 88 5 5 0 132 5 5 0 133 5 5 0 134 2 66 1 71] 
#[0 2 70 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 2 74 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 2 78 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[1 3 37 0 105 5 9 0 122 5 9 0 123 5 9 0 124] 
#[0 2 82 0 37 0 71 0 105] 
#[0 5 13 0 9] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 4 65 0 113 4 65 0 114 4 65 0 115 4 65 0 116 4 69 0 117 4 69 0 118 4 69 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 2 237 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 2 237 1 25 2 237 1 26 2 117 1 27 1 205 1 28 2 237 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 5 0 166 0 6 0 166 0 7 0 166 0 8 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 15 0 166 0 16 0 166 0 17 0 166 0 18 0 71 0 20 0 166 0 22 0 166 0 23 0 166 0 24 0 71 0 25 0 166 0 26 0 107 0 27 0 166 0 28 0 166 0 29 0 166 0 30 0 166 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 71 0 38 0 166 0 39 0 166 0 40 0 166 0 41 0 166 0 65 0 166 0 91 0 166 0 92 0 166 0 93 0 166 0 94 0 166 0 96 0 166 0 97 0 166 0 98 0 22 0 105 3 149 1 60 0 166 1 71] 
#[0 2 86 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 90 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 2 94 0 15 5 17 0 57 5 21 0 79 2 94 0 96 5 25 1 63] 
#[0 2 98 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 0 22 0 2 0 22 0 3 0 22 0 5 0 22 0 6 0 22 0 8 0 22 0 9 0 22 0 10 0 22 0 12 0 22 0 15 0 22 0 16 0 22 0 20 0 22 0 21 0 22 0 22 0 22 0 24 0 22 0 26 0 235 0 27 0 22 0 28 0 22 0 30 0 22 0 32 0 22 0 33 0 22 0 36 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 52 0 22 0 63 0 22 0 65 0 22 0 90 0 22 0 91 0 22 0 93 0 22 0 94 0 22 0 96 0 22 0 97 0 22 0 98 0 22 0 105 3 149 1 60 0 22 1 71] 
#[0 2 102 0 15 0 96] 
#[1 0 174 0 5 0 174 0 15 0 174 0 21 3 161 0 38 0 174 0 91 0 174 0 96 0 174 0 105 3 165 1 1 3 169 1 2] 
#[0 0 190 0 5 0 15 0 21 0 91 0 96 0 105] 
#[1 5 29 0 15 5 33 0 96] 
#[0 2 106 0 15 0 96] 
#[0 0 166 0 8 0 9 0 15 0 20 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 5 37 0 8 2 110 0 9 2 110 0 15 5 41 0 20 2 110 0 26 2 110 0 27 2 110 0 37 2 110 0 42 2 110 0 44 2 110 0 46 2 110 0 49 2 110 0 50 2 110 0 54 2 110 0 56 2 110 0 58 2 110 0 60 2 110 0 66 2 110 0 67 2 110 0 68 2 110 0 69 2 110 0 71 2 110 0 72 2 110 0 73 2 110 0 74 2 110 0 76 2 110 0 77 2 110 0 78 2 110 0 81 2 110 0 85 2 110 0 87 2 110 0 88 2 110 0 94 2 110 0 105 5 45 1 35] 
#[1 5 49 0 24 5 53 0 26] 
#[0 2 114 0 26] 
#[0 5 57 0 26] 
#[0 5 61 0 26] 
#[0 3 109 0 8] 
#[0 5 65 0 89] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 2 118 0 26 0 65 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 0 137 0 70 0 47 0 76 0 169 0 79 0 181 0 82 0 197 0 87 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 239 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 5 77 0 198 5 73 0 204 5 77 0 216 5 77 0 217 5 85 0 220 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 5 73 1 10 5 73 1 11 5 73 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 5 89 1 68 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 5 93 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 5 93 1 25 5 93 1 26 2 117 1 27 1 205 1 28 5 93 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 5 97 0 38 5 101 0 254 5 105 0 255 5 109 1 1 3 169 1 2] 
#[1 2 122 0 8 5 97 0 38 5 113 0 254 5 105 0 255 5 117 1 1 3 169 1 2] 
#[0 5 121 0 8] 
#[1 1 150 0 8 1 150 0 9 1 150 0 15 4 29 0 20 1 150 0 26 1 150 0 38 1 150 0 52 1 150 0 63 1 150 0 90] 
#[0 5 125 0 26] 
#[0 2 126 0 26] 
#[1 0 65 0 27 0 243 0 105 5 133 1 60] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 5 137 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 5 137 1 25 5 137 1 26 2 117 1 27 1 205 1 28 5 137 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 5 141 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 5 141 1 25 5 141 1 26 2 117 1 27 1 205 1 28 5 141 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 5 145 0 26] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 5 149 0 230 5 153 0 231 5 157 1 68] 
#[1 0 209 0 90 5 161 0 193] 
#[1 0 247 0 90 5 165 0 193] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 5 169 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 5 169 1 25 5 169 1 26 2 117 1 27 1 205 1 28 5 169 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 5 173 0 94] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 97 0 51 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 2 134 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 5 177 0 139 1 49 0 158 5 177 0 172 5 177 0 193 5 177 0 196 5 177 0 197 1 69 0 198 5 177 0 199 5 177 0 200 5 177 0 201 5 177 0 202 5 177 0 203 1 93 0 204 5 177 0 205 5 177 0 206 5 177 0 207 5 177 0 213 5 177 0 214 5 177 0 215 5 177 0 222 5 177 0 223 5 177 0 224 5 177 0 225 5 177 0 226 5 177 0 227 5 177 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 5 177 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 5 177 1 67 1 237 1 68 1 241 1 70] 
#[0 2 138 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 77 0 43 0 81 0 44 0 85 0 45 0 89 0 46 0 93 0 49 0 97 0 51 0 101 0 53 0 105 0 54 0 113 0 60 0 117 0 61 0 121 0 62 0 125 0 66 0 129 0 68 0 137 0 70 0 153 0 75 0 157 0 76 0 169 0 79 0 173 0 80 3 61 0 81 0 181 0 82 0 185 0 83 0 193 0 86 0 197 0 87 0 205 0 89 0 209 0 90 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 67 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 5 181 0 193 5 181 0 199 5 181 0 200 5 181 0 201 5 181 0 202 5 181 0 203 1 93 0 204 5 181 0 205 5 181 0 206 5 181 0 207 5 181 0 213 5 181 0 214 5 181 0 215 5 181 0 222 5 181 0 223 5 181 0 224 5 181 0 225 5 181 0 226 5 181 0 227 5 181 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 5 181 1 67 1 241 1 70] 
#[0 2 142 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 5 185 0 50] 
#[0 5 189 0 50] 
#[0 5 193 0 39] 
#[1 2 146 0 2 2 146 0 3 2 146 0 5 2 146 0 6 2 146 0 9 2 146 0 10 2 146 0 12 2 146 0 15 2 146 0 16 2 146 0 20 2 146 0 21 2 146 0 22 2 146 0 24 2 146 0 25 2 146 0 26 2 146 0 27 2 146 0 28 2 146 0 30 2 146 0 32 2 146 0 33 2 146 0 36 3 161 0 38 2 146 0 39 2 146 0 40 2 146 0 65 2 146 0 91 2 146 0 93 2 146 0 94 2 146 0 96 2 146 0 97 2 146 0 98 2 146 0 105 5 197 1 2 2 146 1 71] 
#[0 2 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 5 201 0 70] 
#[1 5 205 0 79 5 209 0 82 5 213 0 105] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 5 217 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 5 217 1 25 5 217 1 26 2 117 1 27 1 205 1 28 5 217 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 5 221 0 105] 
#[0 5 225 0 105] 
#[0 5 229 0 105] 
#[0 2 154 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 5 233 0 50] 
#[0 2 158 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 2 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 237 0 105] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 5 241 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 5 241 1 25 5 241 1 26 2 117 1 27 1 205 1 28 5 241 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 2 166 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 170 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 2 174 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 178 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 182 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 186 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 190 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 194 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 198 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 202 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 206 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 210 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 214 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 218 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 5 245 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 5 245 1 25 5 245 1 26 2 117 1 27 1 205 1 28 5 245 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 5 249 0 8] 
#[0 5 253 0 105] 
#[1 2 222 0 2 2 222 0 3 2 222 0 5 2 222 0 6 2 222 0 9 2 222 0 10 2 222 0 12 2 222 0 15 2 222 0 16 2 222 0 20 2 222 0 21 2 222 0 22 2 222 0 24 2 222 0 25 2 222 0 26 2 222 0 27 2 222 0 28 2 222 0 30 2 222 0 32 2 222 0 33 2 222 0 36 3 161 0 38 2 222 0 39 2 222 0 40 2 222 0 65 2 222 0 91 2 222 0 93 2 222 0 94 2 222 0 96 2 222 0 97 2 222 0 98 2 222 0 105 5 197 1 2 2 222 1 71] 
#[0 2 226 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[1 6 1 0 105 6 5 0 151 6 9 0 152 6 9 0 153 6 17 0 154] 
#[0 2 230 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[0 2 234 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[1 0 65 0 27 6 21 0 70 0 22 0 105 6 25 1 60] 
#[0 6 29 0 105] 
#[0 2 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 6 33 0 9 0 75 0 20 3 161 0 38 3 165 1 1 3 169 1 2] 
#[1 6 37 0 5 2 242 0 9 0 190 0 20 3 173 0 25 6 41 1 14] 
#[0 2 246 0 9 0 15] 
#[0 6 45 0 9] 
#[1 2 250 0 9 6 49 0 15] 
#[0 2 254 0 9 0 15] 
#[1 3 2 0 9 3 2 0 15 1 182 0 19] 
#[1 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 4 37 0 58 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 6 53 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 6 53 0 117 6 53 0 118 6 53 0 121 4 49 1 34 1 221 1 64 1 221 1 65 1 221 1 66 4 49 1 69] 
#[0 3 6 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 14 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 6 57 0 39] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 0 209 0 90 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 6 65 0 193 1 149 0 240 1 153 0 241 6 65 0 242 2 21 0 243 2 25 0 247 6 65 0 248 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 6 65 1 25 6 65 1 26 2 117 1 27 1 205 1 28 6 65 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 6 73 1 9 6 73 1 10 6 73 1 11 6 73 1 12 6 73 1 13 6 73 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 6 77 1 9 6 77 1 10 6 77 1 11 6 77 1 12 6 77 1 13 6 77 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 6 81 1 9 6 81 1 10 6 81 1 11 6 81 1 12 6 81 1 13 6 81 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 6 85 1 9 6 85 1 10 6 85 1 11 6 85 1 12 6 85 1 13 6 85 1 15 6 85 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 6 89 1 9 6 89 1 10 6 89 1 11 6 89 1 12 6 89 1 13 6 89 1 15 6 89 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 6 93 1 16 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 6 97 1 16 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 6 101 1 16 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 6 105 1 17 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 6 109 1 17 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 6 113 1 17 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 6 117 0 113 6 117 0 114 6 117 0 115 6 117 0 116 6 121 0 117 6 121 0 118 6 121 0 121 1 221 1 64 1 221 1 65 1 221 1 66] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 6 125 1 17 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 6 129 1 18 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 6 133 1 18 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 6 137 1 19 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 6 141 1 20 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 6 145 1 21 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 6 149 1 22 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 6 153 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 6 153 1 25 6 153 1 26 2 117 1 27 1 205 1 28 6 153 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 6 157 1 23 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 6 161 0 67] 
#[1 6 165 0 105 6 169 1 55 6 173 1 56] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 0 197 0 87 3 13 0 105 6 177 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 6 177 0 117 6 177 0 118 6 177 0 121 6 181 0 158 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 3 18 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 3 22 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 3 26 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 3 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 6 1 0 105 6 185 0 151 6 9 0 152 6 9 0 153 6 17 0 154] 
#[1 6 189 0 84 3 34 0 90 6 193 0 163 6 193 0 164] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 0 197 0 87 2 245 0 105 6 177 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 6 177 0 117 6 177 0 118 6 177 0 121 6 201 0 123 6 181 0 158 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 3 38 0 105] 
#[1 3 37 0 105 6 205 0 122 6 205 0 123 6 205 0 124] 
#[0 3 42 1 71] 
#[1 2 125 0 26 0 59 0 37 0 73 0 42 0 18 0 50 0 18 0 56 0 109 0 58 0 18 0 67 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 201 0 88 6 209 0 135 2 137 0 136 1 37 0 137 1 41 0 138 6 209 0 139 6 209 0 172 6 209 0 173 1 41 1 34 6 209 1 45 3 46 1 71] 
#[0 3 50 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 3 54 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[1 5 41 0 20 6 213 0 26] 
#[0 3 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 6 217 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 6 217 0 117 6 217 0 118 6 217 0 121 1 221 1 64 1 221 1 65 1 221 1 66] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 6 221 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 6 221 0 117 6 221 0 118 6 221 0 121 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 3 62 0 15 0 96] 
#[1 3 5 0 36 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 3 17 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 3 17 0 117 3 17 0 118 3 17 0 121 6 225 1 62 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 3 66 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 1 245 0 1 2 241 0 8 3 70 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 6 229 0 90 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 251 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 1 1 25 2 69 1 27 1 205 1 28 7 1 1 34 6 245 1 36 6 249 1 37 6 253 1 38 7 1 1 39 7 1 1 40 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 5 213 0 105] 
#[0 3 74 0 9 0 15 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 9 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 9 1 25 7 9 1 26 2 117 1 27 1 205 1 28 7 9 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 3 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 7 13 0 8] 
#[0 3 90 0 26] 
#[0 3 94 0 9 0 15 0 26] 
#[0 7 17 0 26] 
#[0 3 98 0 26] 
#[1 7 21 0 15 3 102 0 26] 
#[1 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 4 37 0 58 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 7 25 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 7 25 0 117 7 25 0 118 7 25 0 121 4 49 1 34 1 221 1 64 1 221 1 65 1 221 1 66 4 49 1 69] 
#[0 7 29 0 9] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 5 193 0 39 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 33 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 33 1 25 7 33 1 26 2 117 1 27 1 205 1 28 7 33 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 3 106 0 2 3 106 0 3 3 106 0 5 3 106 0 6 3 106 0 9 3 106 0 10 3 106 0 12 3 106 0 13 3 106 0 15 3 106 0 16 3 106 0 17 3 106 0 20 3 106 0 22 3 106 0 24 3 106 0 25 3 106 0 26 3 106 0 27 3 106 0 28 3 106 0 30 3 106 0 32 3 106 0 33 3 106 0 36 5 97 0 38 3 106 0 39 3 106 0 40 3 106 0 65 3 106 0 91 3 106 0 93 3 106 0 94 3 106 0 96 3 106 0 97 3 106 0 98 7 37 0 255 7 41 1 0 7 45 1 1 3 169 1 2 3 106 1 71] 
#[0 3 110 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 3 161 0 38 7 49 0 90 7 53 0 191 5 197 1 2] 
#[1 3 106 0 2 3 106 0 3 3 106 0 5 3 106 0 6 3 106 0 9 3 106 0 10 3 106 0 12 3 106 0 13 3 106 0 15 3 106 0 16 3 106 0 17 3 106 0 20 3 106 0 22 3 106 0 24 3 106 0 25 3 106 0 26 3 106 0 27 3 106 0 28 3 106 0 30 3 106 0 32 3 106 0 33 3 106 0 36 5 97 0 38 3 106 0 39 3 106 0 40 3 106 0 65 3 106 0 91 3 106 0 93 3 106 0 94 3 106 0 96 3 106 0 97 3 106 0 98 7 37 0 255 7 57 1 0 7 45 1 1 3 169 1 2 3 106 1 71] 
#[1 3 161 0 38 7 49 0 90 7 61 0 191 5 197 1 2] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 7 65 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 3 118 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 122 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 7 77 0 105] 
#[0 7 81 0 9] 
#[0 7 85 0 9] 
#[0 3 126 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 3 130 0 9 7 89 0 26 7 93 0 232] 
#[0 3 134 0 9 0 26] 
#[1 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 4 37 0 58 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 7 97 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 7 97 0 117 7 97 0 118 7 97 0 121 4 49 1 34 1 221 1 64 1 221 1 65 1 221 1 66 4 49 1 69] 
#[1 7 101 0 48 3 138 0 59 7 105 0 233 7 109 0 234 7 113 0 235] 
#[0 3 142 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 7 117 0 9] 
#[0 3 146 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 150 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 3 154 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 3 158 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 162 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 166 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 3 170 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 3 174 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 7 121 0 20] 
#[0 3 178 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 182 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[0 7 125 0 39] 
#[1 4 205 0 27 2 26 0 57 2 26 0 63 2 26 0 90 7 129 1 54] 
#[1 7 133 0 63 3 186 0 90 7 137 0 142 7 141 0 143] 
#[1 4 205 0 27 2 26 0 57 2 26 0 90 7 145 1 54] 
#[0 3 190 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 194 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 7 149 0 39] 
#[0 3 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 7 153 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 0 22 0 2 0 22 0 3 0 22 0 5 0 22 0 6 0 22 0 8 0 22 0 9 0 22 0 10 0 22 0 12 0 22 0 15 0 22 0 16 0 22 0 20 0 22 0 21 0 22 0 22 0 22 0 24 0 22 0 25 0 22 0 26 0 235 0 27 0 22 0 28 0 22 0 30 0 22 0 32 0 22 0 33 0 22 0 36 0 22 0 38 0 22 0 39 0 22 0 40 0 22 0 52 0 22 0 63 0 22 0 65 0 22 0 90 0 22 0 91 0 22 0 93 0 22 0 94 0 22 0 96 0 22 0 97 0 22 0 98 0 22 0 105 7 157 1 60 0 22 1 71] 
#[0 1 170 0 9 0 15 0 24 0 26 0 31 0 38] 
#[1 7 161 0 15 3 202 0 26] 
#[0 3 206 0 15 0 26] 
#[0 3 210 0 15 0 26] 
#[1 3 214 0 15 3 214 0 26 7 165 0 31 4 109 0 38] 
#[1 0 65 0 27 0 22 0 105 7 169 1 60] 
#[0 7 173 0 105] 
#[0 3 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 7 177 1 9 7 177 1 10 7 177 1 11 7 177 1 12 7 177 1 13 7 177 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 3 13 0 105 7 185 0 118 7 185 0 120 3 89 1 64 3 89 1 65 3 89 1 66] 
#[0 7 189 0 9] 
#[0 3 222 0 19] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 255 0 105 2 13 0 154 7 193 0 162 7 193 0 246 7 193 0 247 4 93 1 68] 
#[1 7 201 0 21 6 1 0 105 7 205 0 154] 
#[0 3 226 0 9 0 15 0 19 0 24 0 26 0 31 0 38] 
#[0 3 230 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 246 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 3 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 3 254 0 2 1 3 0 3 3 254 0 5 3 254 0 6 3 254 0 9 1 7 0 10 3 254 0 12 3 254 0 15 3 254 0 16 1 11 0 22 3 254 0 24 3 254 0 26 3 254 0 27 3 254 0 28 3 254 0 30 3 254 0 32 3 254 0 33 3 254 0 36 3 254 0 39 3 254 0 40 3 254 0 65 3 254 0 91 3 254 0 93 3 254 0 94 3 254 0 96 3 254 0 97 3 254 0 98 3 254 1 71] 
#[1 4 2 0 2 1 15 0 3 4 2 0 5 4 2 0 6 4 2 0 9 1 19 0 10 4 2 0 12 4 2 0 15 4 2 0 16 1 23 0 22 4 2 0 24 4 2 0 26 4 2 0 27 4 2 0 28 4 2 0 30 4 2 0 32 4 2 0 33 4 2 0 36 4 2 0 39 4 2 0 40 4 2 0 65 4 2 0 91 4 2 0 93 4 2 0 94 4 2 0 96 4 2 0 97 4 2 0 98 4 2 1 71] 
#[1 4 6 0 2 4 6 0 3 4 6 0 5 4 6 0 6 4 6 0 9 4 6 0 10 1 27 0 12 4 6 0 15 1 31 0 16 4 6 0 22 4 6 0 24 4 6 0 26 4 6 0 27 4 6 0 28 4 6 0 30 4 6 0 32 4 6 0 33 4 6 0 36 4 6 0 39 4 6 0 40 4 6 0 65 4 6 0 91 4 6 0 93 4 6 0 94 4 6 0 96 4 6 0 97 4 6 0 98 4 6 1 71] 
#[1 4 10 0 2 4 10 0 3 4 10 0 5 4 10 0 6 4 10 0 9 4 10 0 10 1 35 0 12 4 10 0 15 1 39 0 16 4 10 0 22 4 10 0 24 4 10 0 26 4 10 0 27 4 10 0 28 4 10 0 30 4 10 0 32 4 10 0 33 4 10 0 36 4 10 0 39 4 10 0 40 4 10 0 65 4 10 0 91 4 10 0 93 4 10 0 94 4 10 0 96 4 10 0 97 4 10 0 98 4 10 1 71] 
#[1 4 14 0 2 4 14 0 3 4 14 0 5 4 14 0 6 4 14 0 9 4 14 0 10 1 43 0 12 4 14 0 15 1 47 0 16 4 14 0 22 4 14 0 24 4 14 0 26 4 14 0 27 4 14 0 28 4 14 0 30 4 14 0 32 4 14 0 33 4 14 0 36 4 14 0 39 4 14 0 40 4 14 0 65 4 14 0 91 4 14 0 93 4 14 0 94 4 14 0 96 4 14 0 97 4 14 0 98 4 14 1 71] 
#[1 4 18 0 2 4 18 0 3 4 18 0 5 4 18 0 6 4 18 0 9 4 18 0 10 4 18 0 12 4 18 0 15 4 18 0 16 4 18 0 22 4 18 0 24 4 18 0 26 4 18 0 27 1 51 0 28 4 18 0 30 4 18 0 32 4 18 0 33 4 18 0 36 4 18 0 39 4 18 0 40 4 18 0 65 4 18 0 91 4 18 0 93 4 18 0 94 4 18 0 96 1 55 0 97 1 59 0 98 4 18 1 71] 
#[1 4 22 0 2 4 22 0 3 4 22 0 5 4 22 0 6 4 22 0 9 4 22 0 10 4 22 0 12 4 22 0 15 4 22 0 16 4 22 0 22 4 22 0 24 4 22 0 26 4 22 0 27 1 63 0 28 4 22 0 30 4 22 0 32 4 22 0 33 4 22 0 36 4 22 0 39 4 22 0 40 4 22 0 65 4 22 0 91 4 22 0 93 4 22 0 94 4 22 0 96 1 67 0 97 1 71 0 98 4 22 1 71] 
#[1 4 26 0 2 4 26 0 3 4 26 0 5 4 26 0 6 4 26 0 9 4 26 0 10 4 26 0 12 4 26 0 15 4 26 0 16 4 26 0 22 4 26 0 24 4 26 0 26 4 26 0 27 1 75 0 28 4 26 0 30 4 26 0 32 4 26 0 33 4 26 0 36 4 26 0 39 4 26 0 40 4 26 0 65 4 26 0 91 4 26 0 93 4 26 0 94 4 26 0 96 1 79 0 97 1 83 0 98 4 26 1 71] 
#[1 3 161 0 38 3 165 1 1 3 169 1 2] 
#[0 4 30 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 4 34 0 2 4 34 0 3 4 34 0 5 4 34 0 6 4 34 0 9 4 34 0 10 4 34 0 12 4 34 0 15 4 34 0 16 4 34 0 22 4 34 0 24 4 34 0 26 4 34 0 27 1 87 0 28 4 34 0 30 4 34 0 32 4 34 0 33 4 34 0 36 4 34 0 39 4 34 0 40 4 34 0 65 4 34 0 91 4 34 0 93 4 34 0 94 4 34 0 96 1 91 0 97 1 95 0 98 4 34 1 71] 
#[1 4 38 0 2 4 38 0 3 4 38 0 5 4 38 0 6 4 38 0 9 4 38 0 10 4 38 0 12 4 38 0 15 4 38 0 16 4 38 0 22 4 38 0 24 4 38 0 26 1 99 0 27 4 38 0 28 1 103 0 30 4 38 0 32 1 107 0 33 4 38 0 36 4 38 0 39 4 38 0 40 1 111 0 65 4 38 0 91 4 38 0 93 4 38 0 94 1 115 0 96 4 38 0 97 4 38 0 98 4 38 1 71] 
#[1 4 42 0 2 4 42 0 3 4 42 0 5 4 42 0 6 4 42 0 9 4 42 0 10 4 42 0 12 4 42 0 15 4 42 0 16 4 42 0 22 4 42 0 24 4 42 0 26 1 119 0 27 4 42 0 28 1 123 0 30 4 42 0 32 1 127 0 33 4 42 0 36 4 42 0 39 4 42 0 40 1 131 0 65 4 42 0 91 4 42 0 93 4 42 0 94 1 135 0 96 4 42 0 97 4 42 0 98 4 42 1 71] 
#[1 1 139 0 2 4 46 0 3 4 46 0 5 4 46 0 6 4 46 0 9 4 46 0 10 4 46 0 12 4 46 0 15 4 46 0 16 4 46 0 22 4 46 0 24 4 46 0 26 4 46 0 27 4 46 0 28 4 46 0 30 1 143 0 32 4 46 0 33 4 46 0 36 4 46 0 39 4 46 0 40 4 46 0 65 4 46 0 91 4 46 0 93 4 46 0 94 4 46 0 96 4 46 0 97 4 46 0 98 4 46 1 71] 
#[1 4 50 0 2 4 50 0 3 1 147 0 5 4 50 0 6 4 50 0 9 4 50 0 10 4 50 0 12 4 50 0 15 4 50 0 16 4 50 0 22 4 50 0 24 4 50 0 26 4 50 0 27 4 50 0 28 4 50 0 30 4 50 0 32 4 50 0 33 4 50 0 36 4 50 0 39 4 50 0 40 4 50 0 65 4 50 0 91 4 50 0 93 4 50 0 94 4 50 0 96 4 50 0 97 4 50 0 98 4 50 1 71] 
#[1 4 54 0 2 4 54 0 3 4 54 0 5 4 54 0 6 4 54 0 9 4 54 0 10 4 54 0 12 4 54 0 15 4 54 0 16 4 54 0 22 4 54 0 24 4 54 0 26 4 54 0 27 4 54 0 28 4 54 0 30 4 54 0 32 4 54 0 33 4 54 0 36 4 54 0 39 1 151 0 40 4 54 0 65 4 54 0 91 4 54 0 93 4 54 0 94 4 54 0 96 4 54 0 97 4 54 0 98 4 54 1 71] 
#[1 4 58 0 2 4 58 0 3 4 58 0 5 4 58 0 6 4 58 0 9 4 58 0 10 4 58 0 12 4 58 0 15 4 58 0 16 4 58 0 22 4 58 0 24 4 58 0 26 4 58 0 27 4 58 0 28 4 58 0 30 4 58 0 32 4 58 0 33 4 58 0 36 4 58 0 39 4 58 0 40 4 58 0 65 1 155 0 91 4 58 0 93 4 58 0 94 4 58 0 96 4 58 0 97 4 58 0 98 4 58 1 71] 
#[0 7 209 0 24] 
#[1 4 62 0 2 4 62 0 3 4 62 0 5 1 159 0 6 4 62 0 9 4 62 0 10 4 62 0 12 4 62 0 15 4 62 0 16 4 62 0 22 4 62 0 24 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 30 4 62 0 32 4 62 0 33 4 62 0 36 4 62 0 39 4 62 0 40 4 62 0 65 4 62 0 91 4 62 0 93 4 62 0 94 4 62 0 96 4 62 0 97 4 62 0 98 4 62 1 71] 
#[0 7 213 0 105] 
#[1 4 66 0 15 7 217 0 57 4 66 0 96 7 221 1 57] 
#[1 7 225 0 15 7 229 0 96] 
#[0 4 70 0 15 0 96] 
#[1 7 233 0 105 7 237 0 159] 
#[1 7 233 0 105 7 241 0 159] 
#[1 7 161 0 15 7 245 0 26] 
#[1 3 13 0 105 7 253 0 118 7 253 0 119 8 1 0 165 3 89 1 64 3 89 1 65 3 89 1 66] 
#[1 8 5 0 90 8 9 0 170] 
#[0 4 74 0 26 0 52 0 90] 
#[0 8 13 0 8] 
#[1 8 17 0 20 8 21 0 26] 
#[0 4 78 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 4 82 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 4 86 0 15 0 96] 
#[0 4 90 0 15 0 96] 
#[0 4 94 0 15 0 96] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 4 98 0 15 2 1 0 16 0 57 0 17 0 65 0 27 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 6 229 0 90 4 98 0 94 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 8 25 1 25 2 69 1 27 1 205 1 28 8 25 1 34 8 25 1 39 8 25 1 40 8 29 1 41 8 33 1 42 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 0 166 0 2 0 166 0 3 0 166 0 4 0 166 0 5 0 166 0 6 0 166 0 7 0 166 0 9 0 166 0 10 0 166 0 11 0 166 0 12 0 166 0 13 0 166 0 14 0 166 0 16 0 166 0 17 0 166 0 18 0 71 0 20 0 166 0 22 0 166 0 23 0 71 0 25 0 107 0 27 0 166 0 28 0 166 0 29 0 166 0 30 1 163 0 31 0 166 0 32 0 166 0 33 0 166 0 34 0 166 0 35 0 166 0 36 0 71 0 38 0 166 0 40 0 166 0 41 0 166 0 65 0 166 0 91 0 166 0 92 0 166 0 93 0 166 0 96 0 166 0 97 0 166 0 98 3 149 1 60] 
#[0 4 102 0 9 0 15 0 94] 
#[0 4 106 0 9 0 15 0 94] 
#[0 8 41 0 9] 
#[1 4 110 0 9 8 45 0 15] 
#[0 4 114 0 9 0 15] 
#[0 4 118 0 9] 
#[0 4 122 0 9 0 15 0 94] 
#[0 8 49 0 26] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 8 53 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 8 53 1 25 8 53 1 26 2 117 1 27 1 205 1 28 8 53 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 98 0 26 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 8 57 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 8 57 1 25 8 57 1 26 2 117 1 27 1 205 1 28 8 57 1 30 8 57 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 8 61 0 204 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 8 61 1 10 8 61 1 11 8 61 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 6 1 0 105 6 5 0 151 6 9 0 152 6 9 0 153 8 65 0 154] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 77 0 43 0 81 0 44 0 85 0 45 0 89 0 46 0 93 0 49 0 97 0 51 0 101 0 53 0 105 0 54 0 113 0 60 0 117 0 61 0 121 0 62 0 125 0 66 0 129 0 68 0 137 0 70 0 153 0 75 0 157 0 76 0 169 0 79 0 173 0 80 3 61 0 81 0 181 0 82 0 185 0 83 0 193 0 86 0 197 0 87 0 205 0 89 0 209 0 90 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 67 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 8 69 0 193 8 69 0 199 8 69 0 200 8 69 0 201 8 69 0 202 8 69 0 203 1 93 0 204 8 69 0 205 8 69 0 206 8 69 0 207 8 69 0 213 8 69 0 214 8 69 0 215 8 69 0 222 8 69 0 223 8 69 0 224 8 69 0 225 8 69 0 226 8 69 0 227 8 69 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 8 69 1 67 1 241 1 70] 
#[0 8 73 0 39] 
#[0 4 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 4 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 4 134 0 2 4 134 0 3 4 134 0 5 4 134 0 6 4 134 0 9 4 134 0 10 4 134 0 12 4 134 0 13 4 134 0 15 4 134 0 16 4 134 0 17 4 134 0 20 4 134 0 22 4 134 0 24 4 134 0 25 4 134 0 26 4 134 0 27 4 134 0 28 4 134 0 30 4 134 0 32 4 134 0 33 4 134 0 36 3 161 0 38 4 134 0 39 4 134 0 40 4 134 0 65 4 134 0 91 4 134 0 93 4 134 0 94 4 134 0 96 4 134 0 97 4 134 0 98 5 197 1 2 4 134 1 71] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 8 77 0 15 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 7 49 0 90 8 81 0 94 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 8 85 0 155 1 49 0 158 8 85 0 191 8 93 0 192 1 149 0 240 1 153 0 241 8 85 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 8 85 1 25 8 85 1 26 2 117 1 27 1 205 1 28 8 85 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 4 138 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 4 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 4 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 8 101 0 9] 
#[1 4 150 0 9 8 105 0 15] 
#[0 4 154 0 9 0 15] 
#[0 8 109 0 8] 
#[1 8 113 0 90 8 117 0 208] 
#[1 0 209 0 90 8 121 0 193] 
#[1 4 158 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 8 125 0 231 5 157 1 68] 
#[0 8 129 0 9] 
#[1 6 1 0 105 8 133 0 153 8 137 0 154] 
#[0 8 141 0 8] 
#[1 8 145 0 59 8 149 0 238] 
#[1 4 162 0 8 4 162 0 13 4 162 0 17 4 162 0 26 4 162 0 27 4 162 0 37 4 162 0 42 4 162 0 43 4 162 0 44 4 162 0 45 4 162 0 46 4 162 0 47 7 101 0 48 4 162 0 49 4 162 0 50 4 162 0 51 4 162 0 52 4 162 0 53 4 162 0 54 4 162 0 55 4 162 0 56 4 162 0 58 4 166 0 59 4 162 0 60 4 162 0 61 4 162 0 62 4 162 0 66 4 162 0 67 4 162 0 68 4 162 0 69 4 162 0 70 4 162 0 72 4 162 0 73 4 162 0 74 4 162 0 75 4 162 0 76 4 162 0 77 4 162 0 78 4 162 0 79 4 162 0 80 4 162 0 81 4 162 0 82 4 162 0 83 4 162 0 85 4 162 0 86 4 162 0 87 4 162 0 88 4 162 0 89 4 162 0 90 4 162 0 94 4 162 0 99 4 162 0 100 4 162 0 101 4 162 0 102 4 162 0 103 4 162 0 104 4 162 0 105 8 153 0 235 4 162 1 71] 
#[0 4 170 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 77 0 43 0 81 0 44 0 85 0 45 0 89 0 46 0 93 0 49 0 97 0 51 0 101 0 53 0 105 0 54 0 113 0 60 0 117 0 61 0 121 0 62 0 125 0 66 0 129 0 68 0 137 0 70 0 153 0 75 0 157 0 76 0 169 0 79 0 173 0 80 3 61 0 81 0 181 0 82 0 185 0 83 0 193 0 86 0 197 0 87 0 205 0 89 0 209 0 90 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 67 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 8 157 0 193 8 157 0 199 8 157 0 200 8 157 0 201 8 157 0 202 8 157 0 203 1 93 0 204 8 157 0 205 8 157 0 206 8 157 0 207 8 157 0 213 8 157 0 214 8 157 0 215 8 157 0 222 8 157 0 223 8 157 0 224 8 157 0 225 8 157 0 226 8 157 0 227 8 157 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 8 157 1 67 1 241 1 70] 
#[1 0 65 0 27 1 167 0 105 8 165 1 60] 
#[0 4 174 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 8 169 0 57 4 178 0 63 4 178 0 90 8 173 0 140 8 177 0 141] 
#[1 3 13 0 105 8 181 0 118 8 181 0 120 8 185 0 144 3 89 1 64 3 89 1 65 3 89 1 66] 
#[0 4 182 0 90] 
#[1 8 189 0 90 8 193 1 46] 
#[1 8 197 0 57 4 186 0 90 8 201 0 179 8 205 0 180] 
#[0 4 190 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 8 209 0 9] 
#[0 4 194 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 71] 
#[1 6 1 0 105 8 213 0 152 8 213 0 153 6 17 0 154] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 7 49 0 90 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 8 217 0 155 1 49 0 158 8 217 0 191 1 149 0 240 1 153 0 241 8 217 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 8 217 1 25 8 217 1 26 2 117 1 27 1 205 1 28 8 217 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 8 221 0 105] 
#[0 8 225 0 8] 
#[0 4 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 4 202 0 9 0 15 0 90] 
#[0 4 206 0 9] 
#[1 1 245 0 1 1 249 0 8 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 8 229 0 122 8 229 0 123 8 229 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 8 233 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 153 1 3 1 153 1 4 1 153 1 5 2 37 1 6 2 37 1 7 2 37 1 8 8 245 1 12 8 245 1 13 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 4 210 0 9 0 15] 
#[0 3 2 0 9 0 15] 
#[1 6 1 0 105 8 249 0 154] 
#[1 4 214 0 9 4 214 0 15 4 109 0 38] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 8 253 1 25 2 69 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 9 1 0 90 9 5 0 174] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 9 9 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 9 9 0 117 9 9 0 118 9 9 0 121 9 13 1 58 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 4 218 0 15 0 96] 
#[1 6 165 0 105 9 17 1 56] 
#[0 4 222 0 44 0 46 0 49 0 54 0 57 0 60 0 63 0 66 0 68 0 76 0 87 0 90 0 105] 
#[0 9 21 0 8] 
#[1 3 34 0 26 9 25 0 38 3 34 0 52 6 189 0 84 3 34 0 90 9 29 0 163 9 29 0 164] 
#[1 3 34 0 26 9 25 0 38 3 34 0 52 6 189 0 84 3 34 0 90 9 33 0 163 9 33 0 164] 
#[0 4 226 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 2 122 0 15 0 26 0 52 0 63 0 90] 
#[0 4 230 0 15 0 26 0 52 0 90] 
#[1 9 37 0 15 4 234 0 26 4 234 0 52 4 234 0 90] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 97 0 51 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 9 41 0 79 0 173 0 80 0 177 0 81 9 45 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 9 49 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 3 141 0 139 1 49 0 158 9 53 0 171 3 141 0 172 3 141 0 193 9 57 0 195 3 141 0 196 3 141 0 197 1 69 0 198 3 141 0 199 3 141 0 200 3 141 0 201 3 141 0 202 3 141 0 203 1 93 0 204 3 141 0 205 3 141 0 206 3 141 0 207 3 141 0 213 3 141 0 214 3 141 0 215 3 141 0 222 3 141 0 223 3 141 0 224 3 141 0 225 3 141 0 226 3 141 0 227 3 141 0 239 9 61 0 240 1 153 0 241 1 153 0 249 1 161 0 250 9 61 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 3 141 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 3 141 1 67 1 237 1 68 1 241 1 70] 
#[0 4 238 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 4 242 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 9 65 0 160 9 69 0 161 9 73 0 162 4 93 1 68] 
#[1 9 77 0 10 5 213 0 105] 
#[0 4 246 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 4 250 0 15 0 94] 
#[1 9 85 0 15 4 254 0 94 9 85 1 43] 
#[1 1 171 0 15 5 2 0 94] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 6 229 0 90 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 9 93 1 25 2 69 1 27 1 205 1 28 9 93 1 34 9 93 1 39 9 93 1 40 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 5 6 0 9 0 15 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 9 97 0 105 9 101 1 38] 
#[0 5 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 9 105 0 9] 
#[0 9 109 0 26] 
#[0 5 14 0 9 0 15 0 26] 
#[1 3 214 0 15 9 113 0 24 3 214 0 26 7 165 0 31 4 109 0 38] 
#[1 5 18 0 8 5 18 0 13 5 18 0 17 5 18 0 26 5 18 0 27 5 18 0 37 5 18 0 42 5 18 0 43 5 18 0 44 5 18 0 45 5 18 0 46 5 18 0 47 5 18 0 49 5 18 0 50 5 18 0 51 5 18 0 52 5 18 0 53 5 18 0 54 9 117 0 55 5 18 0 56 5 18 0 58 5 18 0 60 5 18 0 61 5 18 0 62 5 18 0 66 5 18 0 67 5 18 0 68 5 18 0 69 5 18 0 70 5 18 0 72 5 18 0 73 5 18 0 74 5 18 0 75 5 18 0 76 5 18 0 77 5 18 0 78 5 18 0 79 5 18 0 80 5 18 0 81 5 18 0 82 5 18 0 83 5 18 0 85 5 18 0 86 5 18 0 87 5 18 0 88 5 18 0 89 5 18 0 90 5 18 0 94 5 18 0 99 5 18 0 100 5 18 0 101 5 18 0 102 5 18 0 103 5 18 0 104 5 18 0 105 5 18 1 71] 
#[0 5 22 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 9 121 0 94] 
#[0 5 26 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 5 30 0 15 0 94] 
#[0 5 34 0 9 0 15 0 26 0 94] 
#[1 9 125 0 15 9 129 0 94] 
#[0 5 38 0 9 0 15 0 26 0 94] 
#[1 5 42 0 2 5 42 0 3 5 42 0 5 5 42 0 6 5 42 0 9 5 42 0 10 5 42 0 12 5 42 0 13 5 42 0 15 5 42 0 16 5 42 0 17 5 42 0 20 5 42 0 22 5 42 0 24 5 42 0 25 5 42 0 26 5 42 0 27 5 42 0 28 5 42 0 30 5 42 0 32 5 42 0 33 5 42 0 36 5 42 0 38 5 42 0 39 5 42 0 40 5 42 0 65 9 133 0 90 5 42 0 91 5 42 0 93 5 42 0 94 5 42 0 96 5 42 0 97 5 42 0 98 9 137 0 145 5 42 1 71] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 9 141 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 9 141 1 25 9 141 1 26 2 117 1 27 1 205 1 28 9 141 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 9 145 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 9 149 0 47 9 153 0 52 9 157 0 94 9 161 0 209 9 165 0 210 9 169 0 211 9 173 0 212] 
#[0 5 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 54 0 9 0 26] 
#[0 5 58 0 90] 
#[0 5 62 0 9 0 26] 
#[1 7 165 0 31 4 109 0 38] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 9 177 0 236 9 181 1 68] 
#[1 0 209 0 90 9 185 0 193] 
#[0 5 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 70 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 74 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 5 78 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 9 189 0 105] 
#[1 3 13 0 105 9 193 0 118 9 193 0 119 3 89 1 64 3 89 1 65 3 89 1 66] 
#[0 5 82 0 63 0 90] 
#[1 7 133 0 63 3 186 0 90 7 137 0 142 9 197 0 143] 
#[0 5 86 0 15 0 90] 
#[1 9 201 0 15 5 90 0 90] 
#[1 5 94 0 15 5 94 0 26 0 10 0 37 5 94 0 94 0 10 0 105 9 205 1 33 9 209 1 47 9 213 1 48 9 217 1 49] 
#[0 5 98 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 3 13 0 105 9 221 0 118 9 221 0 120 3 89 1 64 3 89 1 65 3 89 1 66] 
#[1 9 225 0 90 9 229 0 181] 
#[1 9 233 0 15 5 102 0 90] 
#[0 5 106 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 5 110 0 15 0 26] 
#[0 5 114 0 9 0 15 0 26] 
#[1 5 118 0 8 9 237 0 27 9 241 1 59] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 9 245 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 0 202 0 2 0 202 0 3 0 202 0 5 0 202 0 6 0 202 0 9 0 202 0 10 0 202 0 12 0 202 0 13 0 202 0 15 0 202 0 16 0 202 0 17 0 79 0 20 0 202 0 22 0 202 0 24 0 210 0 25 0 202 0 26 0 202 0 27 0 202 0 28 0 202 0 30 0 202 0 32 0 202 0 33 0 202 0 36 3 181 0 38 0 202 0 39 0 202 0 40 0 202 0 65 0 202 0 91 0 202 0 93 0 202 0 94 0 202 0 96 0 202 0 97 0 202 0 98 0 202 1 71] 
#[0 5 122 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 90 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 1 106 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 5 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 5 130 0 9 5 130 0 15 4 109 0 38] 
#[0 5 134 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 2 125 0 26 0 18 0 27 0 59 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 5 138 0 94 0 18 0 105 10 17 0 135 9 253 0 136 1 37 0 137 1 41 0 138 10 17 0 139 10 17 0 150 10 5 0 157 10 17 0 172 10 17 0 173 10 9 0 175 10 13 0 176 10 17 0 177 10 17 0 178 10 17 0 190 1 41 1 34 10 17 1 45] 
#[0 5 142 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 5 146 0 5 0 15 0 96] 
#[1 10 29 0 5 5 150 0 15 5 150 0 96] 
#[0 5 154 0 15 0 96] 
#[1 4 242 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 10 33 0 160 9 69 0 161 9 73 0 162 4 93 1 68] 
#[0 10 37 0 39] 
#[0 5 158 0 26 0 52 0 90] 
#[0 5 162 0 26 0 52 0 90] 
#[1 3 13 0 105 10 41 0 118 10 41 0 119 3 89 1 64 3 89 1 65 3 89 1 66] 
#[1 10 45 0 8 3 101 0 20] 
#[1 10 49 0 8 0 118 0 13 0 118 0 17 0 118 0 20 0 118 0 25 0 118 0 38] 
#[0 5 166 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 97 0 51 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 10 53 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 3 141 0 139 1 49 0 158 3 141 0 172 3 141 0 193 10 57 0 195 3 141 0 196 3 141 0 197 1 69 0 198 3 141 0 199 3 141 0 200 3 141 0 201 3 141 0 202 3 141 0 203 1 93 0 204 3 141 0 205 3 141 0 206 3 141 0 207 3 141 0 213 3 141 0 214 3 141 0 215 3 141 0 222 3 141 0 223 3 141 0 224 3 141 0 225 3 141 0 226 3 141 0 227 3 141 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 3 141 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 3 141 1 67 1 237 1 68 1 241 1 70] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 97 0 51 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 10 61 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 5 177 0 139 1 49 0 158 5 177 0 172 5 177 0 193 5 177 0 196 5 177 0 197 1 69 0 198 5 177 0 199 5 177 0 200 5 177 0 201 5 177 0 202 5 177 0 203 1 93 0 204 5 177 0 205 5 177 0 206 5 177 0 207 5 177 0 213 5 177 0 214 5 177 0 215 5 177 0 222 5 177 0 223 5 177 0 224 5 177 0 225 5 177 0 226 5 177 0 227 5 177 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 5 177 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 5 177 1 67 1 237 1 68 1 241 1 70] 
#[1 1 62 0 13 1 62 0 17 1 175 0 20 1 66 0 25] 
#[0 10 69 0 9] 
#[1 5 170 0 9 10 73 0 15] 
#[0 5 174 0 9 0 15] 
#[0 10 77 0 26] 
#[0 5 178 0 26 0 94] 
#[0 10 81 0 94] 
#[1 1 245 0 1 2 241 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 6 229 0 90 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 1 149 0 240 1 153 0 241 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 10 85 1 25 2 69 1 27 1 205 1 28 10 85 1 34 10 85 1 39 10 85 1 40 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 5 182 0 9 0 15] 
#[0 8 37 0 31] 
#[0 5 186 0 9 0 15] 
#[0 10 89 0 26] 
#[1 0 49 0 8 5 190 0 9 0 53 0 13 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 63 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 5 73 0 204 10 93 0 218 10 93 0 219 10 101 0 220 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 5 73 1 10 5 73 1 11 5 73 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 10 105 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 10 105 1 25 10 105 1 26 2 117 1 27 1 205 1 28 10 105 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 77 0 43 0 81 0 44 0 85 0 45 0 89 0 46 0 93 0 49 0 97 0 51 0 101 0 53 0 105 0 54 0 113 0 60 0 117 0 61 0 121 0 62 0 125 0 66 0 129 0 68 0 137 0 70 0 153 0 75 0 157 0 76 0 169 0 79 0 173 0 80 3 61 0 81 0 181 0 82 0 185 0 83 0 193 0 86 0 197 0 87 0 205 0 89 0 209 0 90 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 67 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 10 109 0 193 10 109 0 199 10 109 0 200 10 109 0 201 10 109 0 202 10 109 0 203 1 93 0 204 10 109 0 205 10 109 0 206 10 109 0 207 10 109 0 213 10 109 0 214 10 109 0 215 10 109 0 222 10 109 0 223 10 109 0 224 10 109 0 225 10 109 0 226 10 109 0 227 10 109 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 10 109 1 67 1 241 1 70] 
#[0 5 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 7 49 0 90 10 113 0 94 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 10 117 0 155 1 49 0 158 10 117 0 191 1 149 0 240 1 153 0 241 10 117 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 10 117 1 25 10 117 1 26 2 117 1 27 1 205 1 28 10 117 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 5 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[1 2 125 0 26 0 18 0 27 0 59 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 2 165 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 0 209 0 90 5 202 0 94 0 18 0 105 10 129 0 135 2 173 0 136 1 37 0 137 1 41 0 138 10 129 0 139 10 121 0 146 10 125 0 147 10 129 0 148 10 129 0 149 10 129 0 150 10 129 0 156 2 161 0 157 10 129 0 167 10 129 0 168 10 129 0 172 10 129 0 173 2 201 0 193 1 41 1 34 10 129 1 45] 
#[0 5 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 5 210 0 9 0 15] 
#[0 10 133 0 9] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 10 141 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 10 141 1 25 10 141 1 26 2 117 1 27 1 205 1 28 10 141 1 31 10 141 1 32 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 10 145 0 24] 
#[0 5 214 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 9 149 0 47 9 153 0 52 10 149 0 94 10 153 0 210 10 157 0 211 9 173 0 212] 
#[0 5 218 0 47 0 52 0 94] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 9 149 0 47 0 23 0 49 0 18 0 50 0 97 0 51 9 153 0 52 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 10 161 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 3 141 0 139 1 49 0 158 3 141 0 172 3 141 0 193 10 165 0 195 3 141 0 196 3 141 0 197 1 69 0 198 3 141 0 199 3 141 0 200 3 141 0 201 3 141 0 202 3 141 0 203 1 93 0 204 3 141 0 205 3 141 0 206 3 141 0 207 10 169 0 212 3 141 0 213 3 141 0 214 3 141 0 215 3 141 0 222 3 141 0 223 3 141 0 224 3 141 0 225 3 141 0 226 3 141 0 227 3 141 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 3 141 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 3 141 1 67 1 237 1 68 1 241 1 70] 
#[0 5 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 10 173 0 9] 
#[1 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 4 37 0 58 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 10 177 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 10 177 0 117 10 177 0 118 10 177 0 121 10 181 0 237 4 49 1 34 1 221 1 64 1 221 1 65 1 221 1 66 4 49 1 69] 
#[0 5 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 10 185 0 8] 
#[0 5 230 0 63 0 90] 
#[1 9 133 0 90 10 189 0 145] 
#[1 3 13 0 105 10 193 0 118 10 193 0 120 3 89 1 64 3 89 1 65 3 89 1 66] 
#[1 0 69 0 37 10 197 0 105 2 233 1 34] 
#[1 10 201 0 15 4 254 0 26 4 254 0 94 10 201 1 43] 
#[1 1 179 0 15 5 234 0 26 5 234 0 94] 
#[0 5 238 0 15 0 26 0 94] 
#[0 5 242 0 15 0 90] 
#[1 2 125 0 26 0 18 0 27 0 59 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 10 209 0 52 0 18 0 54 0 18 0 56 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 5 246 0 94 0 18 0 105 10 237 0 135 10 217 0 136 1 37 0 137 1 41 0 138 10 237 0 139 10 237 0 150 10 225 0 157 10 237 0 172 10 237 0 173 10 229 0 182 10 233 0 183 10 237 0 184 10 237 0 185 10 237 0 186 10 249 0 187 10 253 0 188 11 1 0 189 10 237 0 190 1 41 1 34 10 237 1 45] 
#[0 5 250 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 3 13 0 105 11 9 0 118 11 9 0 120 3 89 1 64 3 89 1 65 3 89 1 66] 
#[1 3 5 0 36 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 11 13 0 96 3 13 0 105 3 17 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 3 17 0 117 3 17 0 118 3 17 0 121 11 17 1 61 3 33 1 62 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 11 21 0 8] 
#[0 11 25 0 9] 
#[0 5 254 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 4 205 0 27 4 201 0 37 0 199 0 44 0 203 0 46 0 207 0 49 3 185 0 50 0 211 0 54 3 189 0 56 0 215 0 60 0 219 0 66 3 193 0 67 0 223 0 68 0 227 0 76 2 26 0 87 0 231 0 105 4 229 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 4 229 0 117 4 229 0 118 4 229 0 121 4 209 1 54 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 6 2 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 11 29 0 26 11 33 0 52] 
#[0 11 37 0 94] 
#[1 2 125 0 26 0 18 0 27 0 59 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 6 6 0 94 0 18 0 105 11 41 0 135 9 253 0 136 1 37 0 137 1 41 0 138 11 41 0 139 11 41 0 150 10 5 0 157 11 41 0 172 11 41 0 173 11 41 0 177 11 41 0 178 11 41 0 190 1 41 1 34 11 41 1 45] 
#[0 6 10 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 6 14 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 6 18 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 11 45 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 11 45 0 117 11 45 0 118 11 45 0 121 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 11 49 0 9] 
#[0 6 22 0 26 0 38 0 52 0 84 0 90] 
#[0 6 26 0 15 0 26 0 52 0 90] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 11 53 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 11 57 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 6 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 0 23 0 49 0 18 0 50 0 97 0 51 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 11 61 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 5 177 0 139 1 49 0 158 5 177 0 172 5 177 0 193 5 177 0 196 5 177 0 197 1 69 0 198 5 177 0 199 5 177 0 200 5 177 0 201 5 177 0 202 5 177 0 203 1 93 0 204 5 177 0 205 5 177 0 206 5 177 0 207 5 177 0 213 5 177 0 214 5 177 0 215 5 177 0 222 5 177 0 223 5 177 0 224 5 177 0 225 5 177 0 226 5 177 0 227 5 177 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 5 177 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 5 177 1 67 1 237 1 68 1 241 1 70] 
#[0 6 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[1 11 65 0 79 11 69 0 82 5 237 0 105] 
#[0 6 38 0 84 0 90] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 11 73 0 162 4 93 1 68] 
#[0 6 42 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 71] 
#[0 6 46 0 9 0 15 0 94] 
#[0 6 50 0 15 0 94] 
#[0 6 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 11 77 0 9] 
#[0 6 58 0 9] 
#[1 6 62 0 9 7 21 0 15] 
#[0 11 81 0 9] 
#[0 6 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 6 70 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 6 74 0 15 0 94] 
#[0 11 85 0 94] 
#[1 2 125 0 26 0 18 0 27 0 59 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 2 165 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 0 209 0 90 6 78 0 94 0 18 0 105 11 89 0 135 2 173 0 136 1 37 0 137 1 41 0 138 11 89 0 139 11 89 0 148 11 89 0 149 11 89 0 150 11 89 0 156 2 161 0 157 11 89 0 167 11 89 0 168 11 89 0 172 11 89 0 173 2 201 0 193 1 41 1 34 11 89 1 45] 
#[0 6 82 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 6 86 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 6 90 0 24] 
#[0 11 93 0 24] 
#[0 6 94 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 6 98 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 6 102 0 47 0 52 0 94] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 9 149 0 47 0 23 0 49 0 18 0 50 0 97 0 51 9 153 0 52 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 11 97 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 3 141 0 139 1 49 0 158 3 141 0 172 3 141 0 193 10 165 0 195 3 141 0 196 3 141 0 197 1 69 0 198 3 141 0 199 3 141 0 200 3 141 0 201 3 141 0 202 3 141 0 203 1 93 0 204 3 141 0 205 3 141 0 206 3 141 0 207 10 169 0 212 3 141 0 213 3 141 0 214 3 141 0 215 3 141 0 222 3 141 0 223 3 141 0 224 3 141 0 225 3 141 0 226 3 141 0 227 3 141 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 3 141 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 3 141 1 67 1 237 1 68 1 241 1 70] 
#[0 6 106 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 11 0 37 0 73 0 42 0 77 0 43 0 15 0 44 0 85 0 45 0 19 0 46 6 110 0 47 0 23 0 49 0 18 0 50 0 97 0 51 6 110 0 52 0 101 0 53 0 27 0 54 0 18 0 56 0 31 0 58 0 35 0 60 0 117 0 61 0 121 0 62 0 39 0 66 0 18 0 67 0 43 0 68 0 133 0 69 0 137 0 70 0 141 0 72 0 145 0 73 0 149 0 74 0 153 0 75 0 47 0 76 0 161 0 77 0 165 0 78 0 169 0 79 0 173 0 80 0 177 0 81 0 181 0 82 0 185 0 83 0 189 0 85 0 193 0 86 0 197 0 87 0 201 0 88 0 205 0 89 0 209 0 90 6 110 0 94 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 51 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 33 0 136 1 37 0 137 1 41 0 138 5 177 0 139 1 49 0 158 5 177 0 172 5 177 0 193 5 177 0 196 5 177 0 197 1 69 0 198 5 177 0 199 5 177 0 200 5 177 0 201 5 177 0 202 5 177 0 203 1 93 0 204 5 177 0 205 5 177 0 206 5 177 0 207 5 177 0 213 5 177 0 214 5 177 0 215 5 177 0 222 5 177 0 223 5 177 0 224 5 177 0 225 5 177 0 226 5 177 0 227 5 177 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 41 1 34 5 177 1 45 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 5 177 1 67 1 237 1 68 1 241 1 70] 
#[0 6 114 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 0 209 0 90 11 101 0 193] 
#[0 6 118 0 91 0 105] 
#[1 11 105 0 91 6 1 0 105 11 109 0 154] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 11 113 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 6 122 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 6 126 0 15 0 90] 
#[1 11 117 0 8 6 130 0 15 6 130 0 26 6 130 0 90 6 130 0 94 11 121 1 50] 
#[1 11 125 0 26 6 134 0 94 11 129 1 52 11 133 1 53] 
#[1 0 10 0 37 0 10 0 105 9 205 1 33 11 137 1 49] 
#[0 6 138 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 76 0 87 0 105] 
#[0 6 142 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 1 183 0 27 4 201 0 37 1 187 0 44 1 191 0 46 1 195 0 49 3 185 0 50 1 199 0 54 3 189 0 56 1 203 0 60 1 207 0 66 3 193 0 67 1 211 0 68 1 215 0 76 1 219 0 87 1 223 0 105 4 229 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 4 229 0 117 4 229 0 118 4 229 0 121 4 209 1 54 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 6 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 11 29 0 26] 
#[0 11 141 0 94] 
#[1 2 125 0 26 0 18 0 27 0 59 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 10 209 0 52 0 18 0 54 0 18 0 56 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 0 161 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 6 154 0 94 0 18 0 105 11 145 0 135 10 217 0 136 1 37 0 137 1 41 0 138 11 145 0 139 11 145 0 150 10 225 0 157 11 145 0 172 11 145 0 173 11 145 0 184 11 145 0 185 11 145 0 186 10 249 0 187 10 253 0 188 11 1 0 189 11 145 0 190 1 41 1 34 11 145 1 45] 
#[0 6 158 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 6 162 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 6 166 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 0 209 0 90 11 149 0 193] 
#[1 4 205 0 27 2 26 0 44 2 26 0 46 2 26 0 49 2 26 0 54 2 26 0 60 2 26 0 66 2 26 0 68 2 26 0 76 2 26 0 87 2 26 0 105 11 153 1 54] 
#[0 6 170 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 76 0 87 0 105] 
#[0 6 174 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 6 178 0 15 0 90] 
#[0 6 182 0 8] 
#[1 5 29 0 15 11 157 0 96] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 11 161 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 6 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 6 190 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 1 245 0 1 1 249 0 8 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 69 0 37 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 7 49 0 90 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 11 165 0 155 1 49 0 158 11 165 0 191 1 149 0 240 1 153 0 241 11 165 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 11 165 1 25 11 165 1 26 2 117 1 27 1 205 1 28 11 165 1 31 11 169 1 34 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 6 194 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 6 198 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 6 202 0 5 0 15 0 96] 
#[0 6 206 0 26 0 38 0 52 0 84 0 90] 
#[0 11 173 0 9] 
#[0 11 177 0 9] 
#[0 6 210 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 71] 
#[0 11 181 0 8] 
#[0 11 185 0 8] 
#[0 6 214 0 9 0 15] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 77 0 43 0 81 0 44 0 85 0 45 0 89 0 46 0 93 0 49 0 97 0 51 0 101 0 53 0 105 0 54 0 113 0 60 0 117 0 61 0 121 0 62 0 125 0 66 0 129 0 68 0 137 0 70 0 153 0 75 0 157 0 76 0 169 0 79 0 173 0 80 3 61 0 81 0 181 0 82 0 185 0 83 0 193 0 86 0 197 0 87 0 205 0 89 0 209 0 90 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 67 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 11 189 0 193 11 189 0 199 11 189 0 200 11 189 0 201 11 189 0 202 11 189 0 203 1 93 0 204 11 189 0 205 11 189 0 206 11 189 0 207 11 189 0 213 11 189 0 214 11 189 0 215 11 189 0 222 11 189 0 223 11 189 0 224 11 189 0 225 11 189 0 226 11 189 0 227 11 189 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 11 189 1 67 1 241 1 70] 
#[1 0 49 0 8 0 53 0 13 0 57 0 17 0 61 0 26 0 65 0 27 0 77 0 43 0 81 0 44 0 85 0 45 0 89 0 46 0 93 0 49 0 97 0 51 0 101 0 53 0 105 0 54 0 113 0 60 0 117 0 61 0 121 0 62 0 125 0 66 0 129 0 68 0 137 0 70 0 153 0 75 0 157 0 76 0 169 0 79 0 173 0 80 3 61 0 81 0 181 0 82 0 185 0 83 0 193 0 86 0 197 0 87 0 205 0 89 0 209 0 90 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 67 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 1 49 0 158 11 193 0 193 11 193 0 199 11 193 0 200 11 193 0 201 11 193 0 202 11 193 0 203 1 93 0 204 11 193 0 205 11 193 0 206 11 193 0 207 11 193 0 213 11 193 0 214 11 193 0 215 11 193 0 222 11 193 0 223 11 193 0 224 11 193 0 225 11 193 0 226 11 193 0 227 11 193 0 239 1 149 0 240 1 153 0 241 1 153 0 249 1 161 0 250 1 149 0 253 1 169 1 3 1 173 1 4 1 177 1 5 1 181 1 6 1 185 1 7 1 189 1 8 1 93 1 10 1 93 1 11 1 93 1 27 1 205 1 28 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 11 193 1 67 1 241 1 70] 
#[0 6 218 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 6 222 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 6 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 6 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 6 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 3 13 0 105 11 197 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 11 197 0 117 11 197 0 118 11 197 0 121 1 221 1 64 1 221 1 65 1 221 1 66] 
#[1 6 238 0 9 4 109 0 38] 
#[0 11 201 0 9] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 11 205 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 6 242 0 15 6 242 0 26 9 133 0 90 6 242 0 94 11 209 0 145 11 213 1 51] 
#[1 2 125 0 26 0 18 0 27 0 59 0 37 0 73 0 42 0 18 0 44 0 18 0 46 0 18 0 49 0 18 0 50 0 18 0 54 0 18 0 56 0 109 0 58 0 18 0 60 0 18 0 66 0 18 0 67 0 18 0 68 0 133 0 69 0 141 0 72 0 145 0 73 0 149 0 74 0 18 0 76 2 165 0 77 0 165 0 78 2 129 0 81 0 189 0 85 0 18 0 87 0 201 0 88 0 209 0 90 5 202 0 94 0 18 0 105 10 129 0 135 2 173 0 136 1 37 0 137 1 41 0 138 10 129 0 139 11 217 0 146 10 125 0 147 10 129 0 148 10 129 0 149 10 129 0 150 10 129 0 156 2 161 0 157 10 129 0 167 10 129 0 168 10 129 0 172 10 129 0 173 2 201 0 193 1 41 1 34 10 129 1 45] 
#[0 11 221 0 94] 
#[0 6 246 0 94] 
#[0 6 250 0 15 0 26 0 94] 
#[0 6 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 7 2 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 7 6 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 157 0 76 0 197 0 87 3 13 0 105 11 225 0 112 3 21 0 113 3 21 0 114 3 21 0 115 3 21 0 116 11 225 0 117 11 225 0 118 11 225 0 121 11 229 0 158 1 221 1 64 1 221 1 65 1 221 1 66] 
#[0 7 10 0 8] 
#[0 11 233 0 9] 
#[0 11 237 0 26] 
#[0 11 241 0 26] 
#[0 11 245 0 26] 
#[0 11 249 0 26] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 11 253 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[1 1 245 0 1 1 249 0 8 3 114 0 9 1 253 0 12 0 53 0 13 2 1 0 16 0 57 0 17 0 65 0 27 0 81 0 44 0 89 0 46 0 93 0 49 0 105 0 54 0 113 0 60 0 125 0 66 0 129 0 68 0 137 0 70 0 157 0 76 0 169 0 79 0 181 0 82 0 197 0 87 2 5 0 95 0 213 0 99 0 217 0 100 0 221 0 101 0 225 0 102 0 229 0 103 0 233 0 104 0 55 0 105 1 153 0 111 0 245 0 112 0 249 0 113 0 249 0 114 0 249 0 115 0 249 0 116 1 9 0 117 1 9 0 118 1 9 0 121 1 21 0 122 1 21 0 123 1 21 0 124 2 13 0 154 1 49 0 158 1 149 0 240 1 153 0 241 7 73 0 242 2 21 0 243 2 25 0 247 1 153 0 249 1 153 0 250 12 1 0 251 7 69 0 252 1 149 0 253 1 169 1 3 1 153 1 4 1 177 1 5 2 37 1 6 2 37 1 7 2 37 1 8 2 69 1 9 2 69 1 10 2 69 1 11 2 69 1 12 2 69 1 13 2 69 1 15 2 73 1 16 2 77 1 17 2 81 1 18 2 85 1 19 2 89 1 20 2 93 1 21 2 97 1 22 2 101 1 23 2 105 1 24 7 73 1 25 7 73 1 26 2 117 1 27 1 205 1 28 7 73 1 31 1 217 1 60 1 221 1 64 1 221 1 65 1 221 1 66 1 241 1 70] 
#[0 7 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 7 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[0 7 22 0 91 0 105] 
#[0 7 26 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 12 5 0 9] 
#[0 7 30 0 15 0 26 0 94] 
#[0 7 34 0 15 0 26 0 94] 
#[0 7 38 0 94] 
#[0 7 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 71] 
#[1 7 233 0 105 12 9 0 159] 
#[1 7 233 0 105 12 13 0 159] 
#[1 7 46 0 2 7 46 0 3 7 46 0 5 7 46 0 6 7 46 0 9 7 46 0 10 7 46 0 12 7 46 0 13 7 46 0 15 7 46 0 16 7 46 0 17 7 46 0 20 7 46 0 22 7 46 0 24 7 46 0 25 7 46 0 26 7 46 0 27 7 46 0 28 7 46 0 30 7 46 0 32 7 46 0 33 7 46 0 36 7 46 0 38 7 46 0 39 7 46 0 40 7 46 0 65 9 133 0 90 7 46 0 91 7 46 0 93 7 46 0 94 7 46 0 96 7 46 0 97 7 46 0 98 12 17 0 145 7 46 1 71] 
#[0 7 50 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 7 54 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 7 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 7 62 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 12 21 0 9] 
#[0 12 25 0 9] 
#[0 7 66 0 15 0 26 0 90 0 94] 
#[1 9 25 0 38 6 189 0 84 3 34 0 90 12 29 0 163 12 29 0 164] 
#[1 9 25 0 38 6 189 0 84 3 34 0 90 12 33 0 163 12 33 0 164] 
#[0 7 70 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 71] 
#[0 12 37 0 26] 
#[0 12 41 0 26] 
#[0 7 74 0 90] 
#[0 7 78 0 90] 
#[0 7 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 7 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105]
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
JavaParser >> reduceActionForclass_body_declaration4: nodes [
	| result |
	result := JavaInitializerNode new.
	result block: (nodes at: 1).
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
	result := JavaInterfaceDeclarationNode new.
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
