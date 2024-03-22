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
#[ 0 6 0 37] 
#[ 0 14 0 189] 
#[ 0 14 0 197] 
#[ 0 14 0 205] 
#[ 0 14 0 209] 
#[ 0 14 0 221] 
#[ 0 14 0 53] 
#[ 0 14 0 225] 
#[ 0 14 0 237] 
#[ 0 14 0 241] 
#[ 0 14 0 253] 
#[ 0 14 0 18 1 61] 
#[ 0 18 2 73] 
#[ 0 22 0 197] 
#[ 0 22 0 205] 
#[ 0 22 0 209] 
#[ 0 22 0 221] 
#[ 0 22 0 225] 
#[ 0 22 0 237] 
#[ 0 22 0 241] 
#[ 0 22 0 253] 
#[ 0 22 2 217] 
#[ 0 26 2 193] 
#[ 0 26 0 37] 
#[ 0 26 0 41] 
#[ 0 22 0 26 0 197] 
#[ 0 22 0 26 0 205] 
#[ 0 22 0 26 0 209] 
#[ 0 22 0 26 0 221] 
#[ 0 26 0 53] 
#[ 0 22 0 26 0 225] 
#[ 0 22 0 26 0 237] 
#[ 0 22 0 26 0 241] 
#[ 0 26 0 65] 
#[ 0 26 0 69] 
#[ 0 26 0 73] 
#[ 0 26 0 77] 
#[ 0 22 0 26 0 253] 
#[ 0 26 2 213] 
#[ 0 26 0 85] 
#[ 0 26 0 89] 
#[ 0 26 0 93] 
#[ 0 22 0 26] 
#[ 0 26 0 97] 
#[ 0 22 0 26 2 217] 
#[ 0 18 3 153] 
#[ 0 18 1 61] 
#[ 0 18 0 202] 
#[ 0 210 4 49] 
#[ 0 246 4 69] 
#[ 1 94 4 89] 
#[ 1 170 4 161] 
#[ 0 14 0 18 2 73] 
#[ 0 18 0 202 1 186] 
#[ 0 202 1 186] 
#[ 0 185 0 202] 
#[ 1 226 4 249] 
#[ 1 226 4 253] 
#[ 1 226 5 1] 
#[ 1 230 5 5] 
#[ 1 230 5 9] 
#[ 1 234 5 13] 
#[ 1 234 5 17] 
#[ 1 234 5 21] 
#[ 1 238 5 25] 
#[ 1 238 5 29] 
#[ 1 238 5 33] 
#[ 1 238 5 37] 
#[ 1 238 5 41] 
#[ 1 242 5 45] 
#[ 1 242 5 49] 
#[ 1 246 5 53] 
#[ 1 250 5 57] 
#[ 1 254 5 61] 
#[ 2 2 5 65] 
#[ 2 6 5 69] 
#[ 2 6 5 73] 
#[ 2 18 2 22] 
#[ 0 18 0 185] 
#[ 2 26 2 54] 
#[ 2 34 2 62] 
#[ 0 14 0 18 3 153] 
#[ 0 18 6 121] 
#[ 3 34 3 66] 
#[ 0 18 8 5] 
#[ 0 14 5 117] 
#[ 4 26 4 249] 
#[ 4 26 4 253] 
#[ 4 26 5 1] 
#[ 4 30 4 249] 
#[ 4 30 4 253] 
#[ 4 30 5 1] 
#[ 4 34 5 5] 
#[ 4 34 5 9] 
#[ 4 38 5 5] 
#[ 4 38 5 9] 
#[ 4 42 5 5] 
#[ 4 42 5 9] 
#[ 4 46 5 13] 
#[ 4 46 5 17] 
#[ 4 46 5 21] 
#[ 4 50 5 13] 
#[ 4 50 5 17] 
#[ 4 50 5 21] 
#[ 4 54 5 13] 
#[ 4 54 5 17] 
#[ 4 54 5 21] 
#[ 4 62 5 13] 
#[ 4 62 5 17] 
#[ 4 62 5 21] 
#[ 4 66 5 25] 
#[ 4 66 5 29] 
#[ 4 66 5 33] 
#[ 4 66 5 37] 
#[ 4 66 5 41] 
#[ 4 70 5 25] 
#[ 4 70 5 29] 
#[ 4 70 5 33] 
#[ 4 70 5 37] 
#[ 4 70 5 41] 
#[ 4 74 5 45] 
#[ 4 74 5 49] 
#[ 4 78 5 53] 
#[ 4 82 5 57] 
#[ 4 86 5 61] 
#[ 4 90 5 65] 
#[ 1 94 9 201] 
#[ 0 202 10 21] 
#[ 0 26 0 81] 
#[ 0 18 11 37]
	).
]

{ #category : #'generated-accessing' }
JavaParser class >> cacheId [
	^'2024-03-22T12:10:01.98699-05:00'
]

{ #category : #generated }
JavaParser class >> definitionComment [
"%start goal block_statement expression type_declaration method_declaration class_body_declaration class_or_interface_body_declaration;
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
					New Literal Name NewArray LambdaExpression MethodReference InstanceofPatternExpression);
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
	: 0 | [1-9] [0-9]* (_+ [0-9]+)*
	;
<HEX_INTEGER>
	: 0[xX][0-9a-fA-F]+ (_+ [0-9a-fA-F]+)*
	;
<OCTAL_INTEGER>
	: 0[0-7]+ (_+ [0-7]+)*
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
<BINARY_INTEGER>
	: 0 [bB] [01]+ (_+ [01]+)*
	;
<INTEGER_LITERAL>
	: (<DECIMAL_INTEGER> | <HEX_INTEGER> | <OCTAL_INTEGER> | <BINARY_INTEGER>) [lL]?	
	;
<DIGITS>
	: [0-9]+ (_+ [0-9]+)*
	;
<FLOATING_POINT_LITERAL>
	: <DIGITS> \. <DIGITS>? <EXPONENT>? <FLOAT_TYPE>? 
	| \. <DIGITS> <EXPONENT>? <FLOAT_TYPE>? 
	| <DIGITS> <EXPONENT> <FLOAT_TYPE>? 
	| <DIGITS> <FLOAT_TYPE>	
	| <HEX_INTEGER> \. [0-9a-fA-F]+ (_+ [0-9a-fA-F]+)* ([pP] [\-\+]? [0-9]+ <FLOAT_TYPE>?)?
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
	: package_declaration 'packageDeclaration'?
		import_declarations? 
		type_declarations? {{ProgramFile}}
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
	: ""import"" 'importToken' ""static"" 'staticToken'? name 'name' "";"" 'semicolon' {{SingleTypeImportDeclaration}}
	;
type_import_on_demand_declaration 
	: ""import"" 'importToken' ""static"" 'staticToken'? name 'name' ""."" 'period' ""*"" 'star' "";"" 'semicolon' {{TypeImportOnDemandDeclaration}}
	;
type_declaration 
	: class_declaration 
	| interface_declaration 
	| annotation_interface_declaration
	| "";"" 'semicolon' {{EmptyDeclaration}}
	;
# 19.7) Productions used only in the LALR(1) grammar

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
	: modifiers? ""class"" 'classToken' <IDENTIFIER> 'name' type_parameters_opt 'typeParameters' super? interfaces? class_body {{ClassDeclaration}}
	| enum_declaration
	;
super 
	: ""extends"" 'extendsToken' class_type 'superclass'
	;
interfaces 
	: ""implements"" 'implementsToken' interface_type_list
	;
interface_type_list 
	: interface_type 'interface' 
	| interface_type_list "","" 'comma' interface_type 'interface' 
	;
class_body 
	: ""{"" 'leftBrace' class_body_declarations? ""}"" 'rightBrace'
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
	: modifiers? type 'type' variable_declarators "";"" 'semicolon' {{FieldDeclaration}}
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
	: modifiers? type_parameters_opt 'typeParameters' type 'type' method_declarator 'declarator' throws 'throws'?
	| modifiers? type_parameters_opt 'typeParameters' void 'type' method_declarator 'declarator' throws 'throws'?
	;
####
void 
	: ""void"" 'voidToken' {{VoidType}} 
	;
####
method_declarator 
	: <IDENTIFIER> 'name' ""("" 'leftParen' formal_parameter_list? "")"" 'rightParen' {{MethodDeclarator}}
	| method_declarator 'declarator' ""["" 'leftBracket' ""]"" 'rightBracket' {{ArrayMethodDeclarator}} # deprecated
	# be careful; the above production also allows 'void foo() []'
	;
formal_parameter_list 
	: formal_parameter 'parameter' 
	| formal_parameter_list "","" 'comma' formal_parameter 'parameter' 
	;
formal_parameter 
	: variable_modifiers type 'type' variable_declarator_id 'variable' {{Parameter}}
	| variable_modifiers type 'type' ""..."" 'varArgsToken' variable_declarator_id 'variable' {{VariableArgumentParameter}}
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
	: modifiers? constructor_declarator throws 'throws'?
			constructor_body 'body' {{ConstructorDeclaration}}
	;
constructor_declarator 
	: type_parameters_opt 'typeParameters' simple_name 'name' ""("" 'leftParen' formal_parameter_list? "")"" 'rightParen'
	;
constructor_body 
	: ""{"" 'leftBrace' explicit_constructor_invocation 'statement'
			block_statements ""}"" 'rightBrace' {{Block}}
	| ""{"" 'leftBrace' explicit_constructor_invocation 'statement' ""}"" 'rightBrace' {{Block}}
	| ""{"" 'leftBrace' block_statements ""}"" 'rightBrace' {{Block}}
	| ""{"" 'leftBrace' ""}"" 'rightBrace' {{Block}}
	;
explicit_constructor_invocation 
	: ""this"" 'thisToken' ""("" 'leftParen' argument_list? "")"" 'rightParen' "";"" 'semicolon' {{ThisConstructorInvocation}}
	| ""super"" 'superToken' ""("" 'leftParen' argument_list? "")"" 'rightParen' "";"" 'semicolon' {{SuperConstructorInvocation}}
	| primary 'primary' ""."" 'period' ""this"" 'thisToken' ""("" 'leftParen' argument_list? "")"" 'rightParen' "";"" 'semicolon' {{ThisConstructorInvocation}}
	| primary 'primary' ""."" 'period' ""super"" 'superToken' ""("" 'leftParen' argument_list? "")"" 'rightParen' "";"" 'semicolon' {{SuperConstructorInvocation}}
	;
# 19.9) Interfaces
# 19.9.1) Interface Declarations
interface_declaration 
	: modifiers? ""interface"" 'interfaceToken' <IDENTIFIER> 'name' type_parameters_opt 'typeParameters' extends_interfaces? 
			interface_body {{InterfaceDeclaration}}
	;
annotation_interface_declaration
	: modifiers? ""@"" 'atToken' ""interface"" 'interfaceToken' <IDENTIFIER> 'name' annotation_interface_body {{AnnotationInterface}}
	;
annotation_interface_body
	: ""{"" 'leftBrace' annotation_interface_member_declarations? ""}"" 'rightBrace'
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
extends_interfaces 
	: ""extends"" 'extendsToken' interface_type 'interfaceType' 
	| extends_interfaces "","" 'comma' interface_type 'interfaceType' 
	;
interface_body 
	: ""{"" 'leftBrace' interface_member_declarations? ""}"" 'rightBrace'
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
	: interface_modifier* type_parameters_opt 'typeParameters' type 'type' method_declarator 'declarator' throws 'throws'?
	| interface_modifier* type_parameters_opt 'typeParameters' void 'type' method_declarator 'declarator' throws 'throws'?
	;
interface_modifier
	: modifier 'modifier'
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
	:	""{"" 'leftBrace' block_statements? ""}"" 'rightBrace' {{Block}}
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
	: ""for"" 'forToken' ""("" 'leftParen' for_init 'initial'? "";"" 'firstSemicolon' expression 'test'? "";"" 'secondSemicolon'
			for_update 'update'? "")"" 'rightParen' statement 'statement' {{ForStatement}}
	;
for_init 
	: statement_expression_list 
	| local_variable_declaration 
	;
for_update 
	: statement_expression_list 
	;
statement_expression_list 
	: statement_expression 'expression' {{StatementExpressionList}}
	| statement_expression_list "","" 'comma' statement_expression 'expression' {{StatementExpressionList}}
	;
break_statement 
	: ""break"" 'breakToken' <IDENTIFIER> 'identifier'? "";"" 'semicolon' {{BreakStatement}}
	;
continue_statement 
	: ""continue"" 'continueToken' <IDENTIFIER> 'identifier'? "";"" 'semicolon' {{ContinueStatement}}
	;
return_statement 
	: ""return"" 'returnToken' expression 'expression'? "";"" 'semicolon' {{ReturnStatement}}
	;
throw_statement 
	: ""throw"" 'throwToken' expression 'expression' "";"" 'semicolon' {{ThrowStatement}}
	;
synchronized_statement 
	: ""synchronized"" 'synchronizedToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' block 'block' {{SynchronizedStatement}}
	;
try_statement 
	: ""try"" 'tryToken' try_resources? block 'block' catches {{TryStatement}}
	| ""try"" 'tryToken' try_resources? block 'block' catches? finally 'finally' {{TryStatement}}
	| ""try"" 'tryToken' try_resources block 'block' {{TryStatement}}
	;
try_resources
	: ""("" 'leftParen' try_resources_list "";"" 'semicolon'? "")"" 'rightParen'
	;
try_resources_list
	: try_resource 'resource'
	| try_resources_list "";"" 'semicolon' try_resource 'resource' 
	;
try_resource
	: variable_modifiers type 'type' initialized_variable_declarator 'variableDeclaration' {{LocalVariableDeclaration}}
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
	: ""("" 'leftParen' lambda_parameter_list? "")"" 'rightParen' 
	| untyped_lambda_parameter 'parameter'
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
	: ""new"" 'newToken' class_type 'type' ""("" 'leftParen' argument_list? "")"" 'rightParen' {{New}}
	| ""new"" 'newToken' class_type 'type' ""("" 'leftParen' argument_list? "")"" 'rightParen' class_body {{NewClass}}
	| primary_or_name 'primary' ""."" 'period' ""new"" 'newToken' type_arguments_opt <IDENTIFIER> 'name' 
			type_arguments_or_diamond_opt ""("" 'leftParen' argument_list? "")"" 'rightParen' {{New}}
	| primary_or_name 'primary' ""."" 'period' ""new"" 'newToken' type_arguments_opt <IDENTIFIER> 'name' 
			type_arguments_or_diamond_opt ""("" 'leftParen' argument_list? "")"" 'rightParen' class_body {{NewClass}}
	;
argument_list 
	: expression 'expression' 
	| argument_list "","" 'comma' expression 'expression'
	;
array_creation_expression 
	: ""new"" 'newToken' primitive_type 'type' dim_exprs dims? {{NewArray}}
	| ""new"" 'newToken' class_or_interface_type 'type' dim_exprs dims? {{NewArray}}
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
	: type_arguments_opt <IDENTIFIER> 'name' ""("" 'leftParen' argument_list? "")"" 'rightParen' {{MethodInvocation}}
	| primary_or_name 'receiver' ""."" 'period' type_arguments_opt <IDENTIFIER> 'name' ""("" 'leftParen' argument_list? "")"" 'rightParen' {{MethodInvocation}}
	| ""super"" 'superToken' ""."" 'period' type_arguments_opt <IDENTIFIER> 'name' ""("" 'leftParen' argument_list? "")"" 'rightParen' {{MethodInvocation}}
	| name 'receiver' ""."" 'superPeriod' ""super"" 'superToken' ""."" 'period' type_arguments_opt <IDENTIFIER> 'name' ""("" 'leftParen' argument_list? "")"" 'rightParen' {{MethodInvocation}}
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
	| ""("" 'leftParen' reference_type 'type' ( ""&"" 'ampToken' interface_type 'interfaceType' )? "")"" 'rightParen' unary_expression_not_plus_minus 'expression' {{CastExpression}}
	| ""("" 'leftParen' reference_type 'type' ( ""&"" 'ampToken' interface_type 'interfaceType' )? "")"" 'rightParen' lambda_expression 'expression' {{CastExpression}}
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
	| relational_expression 'leftExpression' ""instanceof"" 'op' reference_type 'rightExpression' variable_declarator_id 'variable' {{InstanceofPatternExpression}}
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
	: ""@"" 'at' name 'name' ( ""("" 'leftParen' annotation_args "")"" 'rightParen' )? {{Annotation}}
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
	: ""{"" 'leftBrace' elementValues? "","" 'comma'? ""}"" 'rightBrace' {{ElementArrayInitializer}}
	;
elementValues
	: elementValue 'value'
	| elementValues "","" 'comma' elementValue 'value'
	;
enum_declaration
	: modifiers? ""enum"" 'enumToken' <IDENTIFIER> 'name' interfaces? enum_body {{EnumDeclaration}}
	;
enum_body
	: ""{"" 'leftBrace' enum_constants? "","" 'comma'? enum_body_declarations? ""}"" 'rightBrace'
	;
enum_constants
	: enum_constant 'constant'
	| enum_constants "","" 'comma' enum_constant 'constant'
	;
enum_constant
	: annotations <IDENTIFIER> 'name' ( ""("" 'leftParen' argument_list? "")"" 'rightParen' )? class_body? {{EnumConstant}}
	;
enum_body_declarations
	: "";"" 'semicolon' class_body_declarations?
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
	: <IDENTIFIER> 'name' ( ""extends"" 'extendsToken' type_bound )? {{TypeParameter}}
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
	: annotations type 'type' {{TypeArgument}}
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
	;
	
class_or_interface_body_declaration 
	: class_body_declaration 
	| interface_member_declaration
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
	#(266 0 #reduceActionForannotations1: 29018113 false) 
	#(125 0 #reduceActionForcompilation_unit1: 5049345 false) 
	#(292 0 #reduceActionForannotations1: 31746049 false) 
	#(284 0 #reduceActionFortype_arguments_opt1: 30841857 false) 
	#(279 0 #nil 30310401 false) 
	#(176 0 #reduceActionForannotations1: 13194241 false) 
	#(132 1 #reduceActionFortype_declaration4: 5952516 false) 
	#(134 1 #reduceActionFormodifier5: 6227973 false) 
	#(134 1 #reduceActionFormodifier5: 6227974 false) 
	#(134 1 #reduceActionFormodifier5: 6227975 false) 
	#(134 1 #reduceActionFormodifier5: 6227971 false) 
	#(134 1 #reduceActionFormodifier5: 6227970 false) 
	#(134 1 #reduceActionFormodifier5: 6227969 false) 
	#(134 1 #reduceActionFormodifier5: 6227972 false) 
	#(134 1 #reduceActionFormodifier5: 6227979 false) 
	#(134 1 #reduceActionFormodifier5: 6227976 false) 
	#(134 1 #reduceActionFormodifier5: 6227977 false) 
	#(134 1 #reduceActionFormodifier5: 6227978 false) 
	#(110 1 #liftFirstValue: 3653633 false) 
	#(125 1 #reduceActionForcompilation_unit3: 5049347 false) 
	#(125 1 #reduceActionForcompilation_unit2: 5049346 false) 
	#(125 1 #reduceActionForcompilation_unit5: 5049349 false) 
	#(126 1 #reduceActionForimport_declarations1: 5179393 false) 
	#(129 1 #liftFirstValue: 5527553 false) 
	#(129 1 #liftFirstValue: 5527554 false) 
	#(127 1 #reduceActionForimport_declarations1: 5288961 false) 
	#(133 1 #reduceActionForimport_declarations1: 6156289 false) 
	#(132 1 #liftFirstValue: 5952513 false) 
	#(132 1 #liftFirstValue: 5952514 false) 
	#(132 1 #liftFirstValue: 5952515 false) 
	#(134 1 #liftFirstValue: 6227980 false) 
	#(135 1 #liftFirstValue: 6805513 false) 
	#(189 1 #reduceActionForempty_statement1: 15236097 false) 
	#(113 1 #reduceActionForprimitive_type2: 4098050 false) 
	#(115 1 #reduceActionForintegral_type1: 4232193 false) 
	#(115 1 #reduceActionForintegral_type5: 4232197 false) 
	#(116 1 #reduceActionForfloating_point_type2: 4409346 false) 
	#(116 1 #reduceActionForfloating_point_type1: 4409345 false) 
	#(115 1 #reduceActionForintegral_type3: 4232195 false) 
	#(115 1 #reduceActionForintegral_type4: 4232196 false) 
	#(115 1 #reduceActionForintegral_type2: 4232194 false) 
	#(223 1 #reduceActionForprimary_no_new_array2: 19922946 false) 
	#(151 1 #reduceActionForvoid1: 8871937 false) 
	#(111 1 #reduceActionForliteral1: 3712001 false) 
	#(111 1 #reduceActionForliteral2: 3712002 false) 
	#(111 1 #reduceActionForliteral3: 3712003 false) 
	#(111 1 #reduceActionForliteral4: 3712004 false) 
	#(111 1 #reduceActionForliteral5: 3712005 false) 
	#(111 1 #reduceActionForliteral6: 3712006 false) 
	#(123 1 #reduceActionForprimary_no_new_array2: 4891649 false) 
	#(223 1 #liftFirstValue: 19922945 false) 
	#(112 1 #liftFirstValue: 4050945 false) 
	#(113 1 #liftFirstValue: 4098049 false) 
	#(114 1 #liftFirstValue: 4172801 false) 
	#(114 1 #liftFirstValue: 4172802 false) 
	#(112 1 #liftFirstValue: 4050946 false) 
	#(117 1 #liftFirstValue: 4503553 false) 
	#(117 1 #liftFirstValue: 4503554 false) 
	#(241 1 #liftFirstValue: 23799810 false) 
	#(262 1 #liftFirstValue: 28707841 false) 
	#(294 1 #liftFirstValue: 31893506 false) 
	#(122 1 #liftFirstValue: 4847617 false) 
	#(122 1 #liftFirstValue: 4847618 false) 
	#(184 1 #liftFirstValue: 14365699 false) 
	#(184 1 #liftFirstValue: 14365700 false) 
	#(188 1 #liftFirstValue: 14943233 false) 
	#(184 1 #liftFirstValue: 14365697 false) 
	#(184 1 #liftFirstValue: 14365698 false) 
	#(187 1 #liftFirstValue: 14751745 false) 
	#(188 1 #liftFirstValue: 14943234 false) 
	#(187 1 #liftFirstValue: 14751746 false) 
	#(188 1 #liftFirstValue: 14943235 false) 
	#(187 1 #liftFirstValue: 14751747 false) 
	#(187 1 #liftFirstValue: 14751748 false) 
	#(188 1 #liftFirstValue: 14943236 false) 
	#(187 1 #liftFirstValue: 14751749 false) 
	#(188 1 #liftFirstValue: 14943237 false) 
	#(187 1 #liftFirstValue: 14751750 false) 
	#(188 1 #liftFirstValue: 14943238 false) 
	#(188 1 #liftFirstValue: 14943239 false) 
	#(188 1 #liftFirstValue: 14943240 false) 
	#(188 1 #liftFirstValue: 14943242 false) 
	#(188 1 #liftFirstValue: 14943241 false) 
	#(188 1 #liftFirstValue: 14943243 false) 
	#(188 1 #liftFirstValue: 14943244 false) 
	#(241 1 #liftFirstValue: 23799809 false) 
	#(294 1 #liftFirstValue: 31893505 false) 
	#(222 1 #liftFirstValue: 19854337 false) 
	#(223 1 #liftFirstValue: 19922956 false) 
	#(192 1 #liftFirstValue: 15508487 false) 
	#(223 1 #liftFirstValue: 19922948 false) 
	#(222 1 #liftFirstValue: 19854338 false) 
	#(223 1 #liftFirstValue: 19922949 false) 
	#(262 1 #liftFirstValue: 28707842 false) 
	#(192 1 #liftFirstValue: 15508486 false) 
	#(223 1 #liftFirstValue: 19922950 false) 
	#(223 1 #liftFirstValue: 19922951 false) 
	#(262 1 #liftFirstValue: 28707843 false) 
	#(192 1 #liftFirstValue: 15508484 false) 
	#(241 1 #liftFirstValue: 23799811 false) 
	#(192 1 #liftFirstValue: 15508485 false) 
	#(241 1 #liftFirstValue: 23799812 false) 
	#(192 1 #liftFirstValue: 15508482 false) 
	#(192 1 #liftFirstValue: 15508483 false) 
	#(192 1 #liftFirstValue: 15508481 false) 
	#(118 1 #reduceActionForclass_or_interface_type1: 4567041 false) 
	#(288 1 #liftFirstValue: 31265793 false) 
	#(288 1 #liftFirstValue: 31265794 false) 
	#(187 1 #liftFirstValue: 14751751 false) 
	#(147 1 #reduceActionForvariable_declarator_id1: 8276993 false) 
	#(228 1 #reduceActionForuntyped_lambda_parameter1: 20885505 false) 
	#(264 1 #liftFirstValue: 28909570 false) 
	#(225 1 #reduceActionForlambda_parameters3: 20566019 false) 
	#(247 1 #liftFirstValue: 24620033 false) 
	#(249 1 #liftFirstValue: 25294849 false) 
	#(244 1 #liftFirstValue: 24127489 false) 
	#(244 1 #liftFirstValue: 24127490 false) 
	#(244 1 #liftFirstValue: 24127493 false) 
	#(247 1 #liftFirstValue: 24620036 false) 
	#(250 1 #liftFirstValue: 25688065 false) 
	#(251 1 #liftFirstValue: 25976833 false) 
	#(252 1 #liftFirstValue: 26383361 false) 
	#(253 1 #liftFirstValue: 27162625 false) 
	#(254 1 #liftFirstValue: 27441153 false) 
	#(255 1 #liftFirstValue: 27590657 false) 
	#(256 1 #liftFirstValue: 27748353 false) 
	#(257 1 #liftFirstValue: 27924481 false) 
	#(258 1 #liftFirstValue: 28107777 false) 
	#(259 1 #liftFirstValue: 28295169 false) 
	#(260 1 #liftFirstValue: 28532737 false) 
	#(264 1 #liftFirstValue: 28909569 false) 
	#(244 1 #liftFirstValue: 24127494 false) 
	#(260 1 #liftFirstValue: 28532738 false) 
	#(142 1 #liftFirstValue: 7608323 false) 
	#(141 1 #liftFirstValue: 7464961 false) 
	#(142 1 #liftFirstValue: 7608321 false) 
	#(142 1 #liftFirstValue: 7608322 false) 
	#(141 1 #liftFirstValue: 7464962 false) 
	#(141 1 #liftFirstValue: 7464963 false) 
	#(141 1 #reduceActionForclass_body_declaration4: 7464964 false) 
	#(172 1 #liftFirstValue: 12723204 false) 
	#(295 1 #liftFirstValue: 31934465 false) 
	#(173 1 #liftFirstValue: 12868609 false) 
	#(295 1 #liftFirstValue: 31934466 false) 
	#(172 1 #liftFirstValue: 12723201 false) 
	#(172 1 #liftFirstValue: 12723203 false) 
	#(172 1 #liftFirstValue: 12723202 false) 
	#(267 2 #reduceActionForannotation1: 29076481 false) 
	#(125 2 #reduceActionForcompilation_unit4: 5049348 false) 
	#(126 2 #reduceActionForimport_declarations2: 5179394 false) 
	#(127 2 #reduceActionForimport_declarations2: 5288962 false) 
	#(125 2 #reduceActionForcompilation_unit7: 5049351 false) 
	#(125 2 #reduceActionForcompilation_unit6: 5049350 false) 
	#(133 2 #reduceActionForimport_declarations2: 6156290 false) 
	#(266 2 #reduceActionForimport_declarations2: 29018114 false) 
	#(245 2 #reduceActionForpreincrement_expression1: 24404993 false) 
	#(246 2 #reduceActionForpredecrement_expression1: 24511489 false) 
	#(287 0 #reduceActionFortype_argument_type3: 31174659 false) 
	#(284 2 #reduceActionFortype_arguments_opt3: 30841859 false) 
	#(285 1 #reduceActionFortype_arguments1: 30949377 false) 
	#(207 2 #reduceActionForbreak_statement1: 17917953 false) 
	#(208 2 #reduceActionForcontinue_statement1: 18026497 false) 
	#(119 1 #liftFirstValue: 4630529 false) 
	#(209 2 #reduceActionForreturn_statement1: 18147329 false) 
	#(182 2 #reduceActionForblock1: 14185473 false) 
	#(183 1 #reduceActionForimport_declarations1: 14261249 false) 
	#(289 2 #reduceActionForsimple_type_name1: 31325185 false) 
	#(121 2 #reduceActionForarray_type1: 4724737 false) 
	#(236 1 #reduceActionFordims1: 22561793 false) 
	#(185 2 #reduceActionForlocal_variable_declaration_statement1: 14491649 false) 
	#(191 2 #reduceActionForexpression_statement1: 15404033 false) 
	#(242 2 #reduceActionForpostincrement_expression1: 23904257 false) 
	#(243 2 #reduceActionForpostdecrement_expression1: 24014849 false) 
	#(263 1 #liftFirstValue: 28771332 false) 
	#(263 1 #liftFirstValue: 28771338 false) 
	#(263 1 #liftFirstValue: 28771330 false) 
	#(263 1 #liftFirstValue: 28771333 false) 
	#(263 1 #liftFirstValue: 28771334 false) 
	#(263 1 #liftFirstValue: 28771331 false) 
	#(263 1 #liftFirstValue: 28771335 false) 
	#(263 1 #liftFirstValue: 28771329 false) 
	#(263 1 #liftFirstValue: 28771336 false) 
	#(263 1 #liftFirstValue: 28771337 false) 
	#(263 1 #liftFirstValue: 28771339 false) 
	#(263 1 #liftFirstValue: 28771340 false) 
	#(121 2 #reduceActionForarray_type1: 4724738 false) 
	#(293 1 #reduceActionFormodifier5: 31824897 false) 
	#(293 1 #liftFirstValue: 31824898 false) 
	#(292 2 #reduceActionForimport_declarations2: 31746050 false) 
	#(247 2 #reduceActionForunary_expression_not_plus_minus3: 24620035 false) 
	#(225 2 #reduceActionForlambda_parameters1: 20566017 false) 
	#(227 1 #liftFirstValue: 20815873 false) 
	#(226 1 #reduceActionFortype_arguments1: 20689921 false) 
	#(227 1 #liftFirstValue: 20815874 false) 
	#(244 2 #reduceActionForunary_expression3: 24127491 false) 
	#(244 2 #reduceActionForunary_expression4: 24127492 false) 
	#(247 2 #reduceActionForunary_expression_not_plus_minus2: 24620034 false) 
	#(281 1 #reduceActionFortype_parameter1: 30515201 false) 
	#(280 1 #reduceActionFortype_arguments1: 30405633 false) 
	#(157 1 #reduceActionFormethod_body2: 9751554 false) 
	#(149 2 #reduceActionFormethod_declaration1: 8538113 false) 
	#(157 1 #liftFirstValue: 9751553 false) 
	#(158 2 #reduceActionForstatic_initializer1: 9848833 false) 
	#(144 1 #reduceActionFortype_arguments1: 7842817 false) 
	#(145 1 #liftFirstValue: 7995394 false) 
	#(145 1 #reduceActionForvariable_declarator1: 7995393 false) 
	#(159 2 #reduceActionForconstructor_declaration1: 9971713 false) 
	#(179 2 #reduceActionForabstract_method_declaration1: 13574145 false) 
	#(174 2 #reduceActionForinterface_method_declaration1: 13067265 false) 
	#(178 1 #reduceActionFormodifier5: 13517825 false) 
	#(177 1 #liftFirstValue: 13440001 false) 
	#(176 2 #reduceActionForimport_declarations2: 13194242 false) 
	#(177 1 #liftFirstValue: 13440002 false) 
	#(268 0 #reduceActionForannotation_args1: 29186049 false) 
	#(274 3 #reduceActionForenum_declaration1: 29775873 false) 
	#(130 3 #reduceActionForsingle_type_import_declaration1: 5625857 false) 
	#(125 3 #reduceActionForcompilation_unit8: 5049352 false) 
	#(223 3 #reduceActionForprimary_no_new_array3: 19922947 false) 
	#(286 2 #reduceActionFortype_argument2: 31052802 false) 
	#(286 2 #reduceActionFortype_argument1: 31052801 false) 
	#(284 3 #reduceActionFortype_arguments_opt2: 30841858 false) 
	#(221 3 #reduceActionForassert_statement1: 19584001 false) 
	#(207 3 #reduceActionForbreak_statement2: 17917954 false) 
	#(208 3 #reduceActionForcontinue_statement2: 18026498 false) 
	#(204 1 #liftFirstValue: 17593346 false) 
	#(206 1 #reduceActionForstatement_expression_list1: 17715201 false) 
	#(204 1 #liftFirstValue: 17593345 false) 
	#(233 3 #reduceActionForarray_creation_expression1: 21991425 false) 
	#(234 1 #reduceActionForimport_declarations1: 22374401 false) 
	#(233 3 #reduceActionForarray_creation_expression1: 21991427 false) 
	#(209 3 #reduceActionForreturn_statement2: 18147330 false) 
	#(238 3 #reduceActionForfield_access2: 22672386 false) 
	#(210 3 #reduceActionForthrow_statement1: 18257921 false) 
	#(214 1 #reduceActionFortype_arguments1: 18876417 false) 
	#(212 3 #reduceActionFortry_statement1: 18529281 false) 
	#(216 1 #reduceActionForimport_declarations1: 19127297 false) 
	#(212 3 #reduceActionFortry_statement3: 18529283 false) 
	#(212 3 #reduceActionFortry_statement7: 18529287 false) 
	#(182 3 #reduceActionForblock2: 14185474 false) 
	#(183 2 #reduceActionForimport_declarations2: 14261250 false) 
	#(190 3 #reduceActionForlabeled_statement1: 15295489 false) 
	#(223 3 #reduceActionForprimary_no_new_array10: 19922954 false) 
	#(223 3 #reduceActionForprimary_no_new_array10: 19922952 false) 
	#(237 2 #reduceActionForempty_dim_expr1: 22612993 false) 
	#(236 2 #reduceActionFordims2: 22561794 false) 
	#(230 3 #reduceActionFormethod_reference_expression2: 21025794 false) 
	#(223 3 #reduceActionForprimary_no_new_array11: 19922955 false) 
	#(124 3 #reduceActionForqualified_name1: 4940801 false) 
	#(223 3 #reduceActionForprimary_no_new_array10: 19922953 false) 
	#(238 3 #reduceActionForfield_access1: 22672385 false) 
	#(261 3 #reduceActionForassignment1: 28602369 false) 
	#(186 3 #reduceActionForlocal_variable_declaration1: 14633985 false) 
	#(230 3 #reduceActionFormethod_reference_expression2: 21025793 false) 
	#(225 3 #reduceActionForlambda_parameters2: 20566018 false) 
	#(147 3 #reduceActionForvariable_declarator_id2: 8276994 false) 
	#(229 1 #liftFirstValue: 20966401 false) 
	#(224 3 #reduceActionForlambda_expression1: 20466689 false) 
	#(229 1 #liftFirstValue: 20966402 false) 
	#(249 3 #reduceActionFormultiplicative_expression4: 25294852 false) 
	#(249 3 #reduceActionFormultiplicative_expression4: 25294850 false) 
	#(249 3 #reduceActionFormultiplicative_expression4: 25294851 false) 
	#(250 3 #reduceActionFormultiplicative_expression4: 25688066 false) 
	#(250 3 #reduceActionFormultiplicative_expression4: 25688067 false) 
	#(251 3 #reduceActionFormultiplicative_expression4: 25976834 false) 
	#(251 3 #reduceActionFormultiplicative_expression4: 25976835 false) 
	#(251 3 #reduceActionFormultiplicative_expression4: 25976836 false) 
	#(252 3 #reduceActionFormultiplicative_expression4: 26383362 false) 
	#(252 3 #reduceActionFormultiplicative_expression4: 26383364 false) 
	#(252 3 #reduceActionFormultiplicative_expression4: 26383365 false) 
	#(252 3 #reduceActionFormultiplicative_expression4: 26383366 false) 
	#(252 3 #reduceActionFormultiplicative_expression4: 26383363 false) 
	#(253 3 #reduceActionFormultiplicative_expression4: 27162627 false) 
	#(253 3 #reduceActionFormultiplicative_expression4: 27162626 false) 
	#(254 3 #reduceActionFormultiplicative_expression4: 27441154 false) 
	#(255 3 #reduceActionFormultiplicative_expression4: 27590658 false) 
	#(256 3 #reduceActionFormultiplicative_expression4: 27748354 false) 
	#(257 3 #reduceActionFormultiplicative_expression4: 27924482 false) 
	#(258 3 #reduceActionFormultiplicative_expression4: 28107778 false) 
	#(279 3 #reduceActionFortype_parameters_opt2: 30310402 false) 
	#(150 3 #reduceActionFormethod_header1: 8621057 false) 
	#(150 3 #reduceActionFormethod_header1: 8621061 false) 
	#(143 3 #reduceActionForfield_declaration1: 7734273 false) 
	#(159 3 #reduceActionForconstructor_declaration3: 9971715 false) 
	#(156 1 #reduceActionFortype_arguments1: 9648129 false) 
	#(155 2 #reduceActionForthrows1: 9582593 false) 
	#(161 2 #reduceActionForblock1: 10256388 false) 
	#(159 3 #reduceActionForconstructor_declaration2: 9971714 false) 
	#(164 4 #reduceActionForannotation_interface_declaration1: 11423745 false) 
	#(271 1 #liftFirstValue: 29465601 false) 
	#(271 1 #liftFirstValue: 29465602 false) 
	#(268 1 #reduceActionForannotation_args2: 29186050 false) 
	#(269 1 #reduceActionFortype_arguments1: 29255681 false) 
	#(268 1 #reduceActionFortype_arguments1: 29186051 false) 
	#(271 1 #liftFirstValue: 29465603 false) 
	#(135 4 #reduceActionForclass_declaration1: 6805505 false) 
	#(120 1 #liftFirstValue: 4674561 false) 
	#(138 1 #reduceActionFortype_arguments1: 7129089 false) 
	#(137 2 #reduceActionForinterfaces1: 7058433 false) 
	#(278 1 #reduceActionForenum_body_declarations1: 30238721 false) 
	#(275 2 #reduceActionForenum_body1: 29893633 false) 
	#(276 1 #reduceActionFortype_arguments1: 29998081 false) 
	#(274 4 #reduceActionForenum_declaration2: 29775874 false) 
	#(130 4 #reduceActionForsingle_type_import_declaration2: 5625858 false) 
	#(163 4 #reduceActionForinterface_declaration1: 11229185 false) 
	#(274 4 #reduceActionForenum_declaration3: 29775875 false) 
	#(128 4 #reduceActionForpackage_declaration1: 5409793 false) 
	#(287 2 #reduceActionForempty_dim_expr1: 31174657 false) 
	#(287 2 #reduceActionForempty_dim_expr1: 31174658 false) 
	#(285 3 #reduceActionFortype_arguments2: 30949378 false) 
	#(234 2 #reduceActionForimport_declarations2: 22374402 false) 
	#(233 4 #reduceActionForarray_creation_expression2: 21991426 false) 
	#(233 4 #reduceActionForarray_creation_expression5: 21991429 false) 
	#(233 4 #reduceActionForarray_creation_expression2: 21991428 false) 
	#(233 4 #reduceActionForarray_creation_expression5: 21991430 false) 
	#(231 4 #reduceActionForclass_instance_creation_expression1: 21239809 false) 
	#(232 1 #reduceActionFortype_arguments1: 21890049 false) 
	#(213 3 #reduceActionFortype_arguments_opt2: 18785281 false) 
	#(220 2 #reduceActionForfinally1: 19510273 false) 
	#(216 2 #reduceActionForimport_declarations2: 19127298 false) 
	#(212 4 #reduceActionFortry_statement4: 18529284 false) 
	#(212 4 #reduceActionFortry_statement2: 18529282 false) 
	#(212 4 #reduceActionFortry_statement5: 18529285 false) 
	#(240 4 #reduceActionForarray_access1: 23575553 false) 
	#(240 4 #reduceActionForarray_access1: 23575554 false) 
	#(239 4 #reduceActionFormethod_invocation1: 22952961 false) 
	#(290 4 #reduceActionForqualified_type_name1: 31403009 false) 
	#(248 4 #reduceActionForcast_expression1: 24824833 false) 
	#(248 4 #reduceActionForcast_expression1: 24824836 false) 
	#(248 4 #reduceActionForcast_expression1: 24824834 false) 
	#(226 3 #reduceActionFortype_arguments2: 20689922 false) 
	#(154 3 #reduceActionForformal_parameter1: 9355265 false) 
	#(252 4 #reduceActionForrelational_expression7: 26383367 false) 
	#(282 1 #reduceActionFortype_arguments1: 30617601 false) 
	#(281 3 #reduceActionFortype_parameter2: 30515202 false) 
	#(280 3 #reduceActionFortype_arguments2: 30405634 false) 
	#(150 4 #reduceActionFormethod_header3: 8621059 false) 
	#(150 4 #reduceActionFormethod_header3: 8621063 false) 
	#(150 4 #reduceActionFormethod_header2: 8621058 false) 
	#(150 4 #reduceActionFormethod_header2: 8621062 false) 
	#(144 3 #reduceActionFortype_arguments2: 7842818 false) 
	#(146 3 #reduceActionForinitialized_variable_declarator1: 8118273 false) 
	#(148 1 #liftFirstValue: 8443906 false) 
	#(148 1 #liftFirstValue: 8443905 false) 
	#(143 4 #reduceActionForfield_declaration2: 7734274 false) 
	#(159 4 #reduceActionForconstructor_declaration4: 9971716 false) 
	#(161 3 #reduceActionForconstructor_body2: 10256386 false) 
	#(161 3 #reduceActionForblock2: 10256387 false) 
	#(160 4 #reduceActionForconstructor_declarator1: 10110977 false) 
	#(153 1 #reduceActionFortype_arguments1: 9226241 false) 
	#(175 4 #reduceActionForinterface_method_header1: 13165569 false) 
	#(175 4 #reduceActionForinterface_method_header1: 13165571 false) 
	#(165 2 #reduceActionForannotation_interface_body1: 11590657 false) 
	#(167 1 #liftFirstValue: 11904002 false) 
	#(167 1 #liftFirstValue: 11904003 false) 
	#(166 1 #reduceActionForimport_declarations1: 11700225 false) 
	#(167 1 #liftFirstValue: 11904001 false) 
	#(168 1 #liftFirstValue: 12023809 false) 
	#(272 2 #reduceActionForelementValueArrayInitializer1: 29555713 false) 
	#(273 1 #reduceActionFortype_arguments1: 29682689 false) 
	#(267 5 #reduceActionForannotation2: 29076482 false) 
	#(136 2 #reduceActionForempty_dim_expr1: 6994945 false) 
	#(139 2 #reduceActionForannotation_interface_body1: 7249921 false) 
	#(140 1 #reduceActionForimport_declarations1: 7327745 false) 
	#(135 5 #reduceActionForclass_declaration3: 6805507 false) 
	#(135 5 #reduceActionForclass_declaration2: 6805506 false) 
	#(275 3 #reduceActionForenum_body3: 29893635 false) 
	#(278 2 #reduceActionForenum_body_declarations2: 30238722 false) 
	#(277 2 #reduceActionForenum_constant1: 30101505 false) 
	#(275 3 #reduceActionForenum_body5: 29893637 false) 
	#(275 3 #reduceActionForenum_body2: 29893634 false) 
	#(131 5 #reduceActionFortype_import_on_demand_declaration1: 5774337 false) 
	#(169 2 #reduceActionForextends_interfaces1: 12322817 false) 
	#(170 2 #reduceActionForannotation_interface_body1: 12475393 false) 
	#(171 1 #reduceActionForimport_declarations1: 12563457 false) 
	#(163 5 #reduceActionForinterface_declaration2: 11229186 false) 
	#(164 5 #reduceActionForannotation_interface_declaration2: 11423746 false) 
	#(135 5 #reduceActionForclass_declaration5: 6805509 false) 
	#(274 5 #reduceActionForenum_declaration4: 29775876 false) 
	#(163 5 #reduceActionForinterface_declaration3: 11229187 false) 
	#(221 5 #reduceActionForassert_statement2: 19584002 false) 
	#(205 1 #liftFirstValue: 17669121 false) 
	#(206 3 #reduceActionForstatement_expression_list2: 17715202 false) 
	#(193 5 #reduceActionForif_then_statement1: 15728641 false) 
	#(235 3 #reduceActionFordim_expr1: 22458369 false) 
	#(180 2 #reduceActionForarray_initializer4: 13687812 false) 
	#(181 1 #reduceActionFortype_arguments1: 14013441 false) 
	#(231 5 #reduceActionForclass_instance_creation_expression3: 21239811 false) 
	#(231 5 #reduceActionForclass_instance_creation_expression2: 21239810 false) 
	#(195 5 #reduceActionForswitch_statement1: 16072705 false) 
	#(211 5 #reduceActionForsynchronized_statement1: 18363393 false) 
	#(213 4 #reduceActionFortry_resources2: 18785282 false) 
	#(214 3 #reduceActionFortype_arguments2: 18876418 false) 
	#(215 3 #reduceActionFortry_resource1: 18991105 false) 
	#(212 5 #reduceActionFortry_statement6: 18529286 false) 
	#(201 5 #reduceActionForwhile_statement1: 17050625 false) 
	#(238 5 #reduceActionForfield_access3: 22672387 false) 
	#(239 5 #reduceActionFormethod_invocation2: 22952962 false) 
	#(283 0 #reduceActionFortype_arguments_opt1: 30684161 false) 
	#(154 4 #reduceActionForformal_parameter2: 9355266 false) 
	#(259 5 #reduceActionForconditional_expression2: 28295170 false) 
	#(150 5 #reduceActionFormethod_header4: 8621060 false) 
	#(150 5 #reduceActionFormethod_header4: 8621064 false) 
	#(152 3 #reduceActionFormethod_declarator1: 8923137 false) 
	#(152 3 #reduceActionFormethod_declarator3: 8923139 false) 
	#(156 3 #reduceActionFortype_arguments2: 9648130 false) 
	#(161 4 #reduceActionForconstructor_body1: 10256385 false) 
	#(160 5 #reduceActionForconstructor_declarator2: 10110978 false) 
	#(175 5 #reduceActionForinterface_method_header2: 13165570 false) 
	#(175 5 #reduceActionForinterface_method_header2: 13165572 false) 
	#(165 3 #reduceActionForannotation_interface_body2: 11590658 false) 
	#(166 2 #reduceActionForimport_declarations2: 11700226 false) 
	#(272 3 #reduceActionForelementValueArrayInitializer2: 29555714 false) 
	#(272 3 #reduceActionForelementValueArrayInitializer3: 29555715 false) 
	#(270 3 #reduceActionForelementValuePair1: 29365249 false) 
	#(269 3 #reduceActionFortype_arguments2: 29255682 false) 
	#(139 3 #reduceActionForannotation_interface_body2: 7249922 false) 
	#(140 2 #reduceActionForimport_declarations2: 7327746 false) 
	#(135 6 #reduceActionForclass_declaration4: 6805508 false) 
	#(138 3 #reduceActionFortype_arguments2: 7129090 false) 
	#(275 4 #reduceActionForenum_body4: 29893636 false) 
	#(277 3 #reduceActionForenum_constant2: 30101506 false) 
	#(275 4 #reduceActionForenum_body7: 29893639 false) 
	#(276 3 #reduceActionFortype_arguments2: 29998082 false) 
	#(275 4 #reduceActionForenum_body6: 29893638 false) 
	#(131 6 #reduceActionFortype_import_on_demand_declaration2: 5774338 false) 
	#(170 3 #reduceActionForannotation_interface_body2: 12475394 false) 
	#(171 2 #reduceActionForimport_declarations2: 12563458 false) 
	#(169 3 #reduceActionForextends_interfaces2: 12322818 false) 
	#(135 6 #reduceActionForclass_declaration7: 6805511 false) 
	#(135 6 #reduceActionForclass_declaration6: 6805510 false) 
	#(163 6 #reduceActionForinterface_declaration4: 11229188 false) 
	#(203 6 #reduceActionForfor_statement1: 17372161 false) 
	#(180 3 #reduceActionForarray_initializer3: 13687811 false) 
	#(180 3 #reduceActionForarray_initializer2: 13687810 false) 
	#(231 6 #reduceActionForclass_instance_creation_expression4: 21239812 false) 
	#(232 3 #reduceActionFortype_arguments2: 21890050 false) 
	#(239 6 #reduceActionFormethod_invocation5: 22952965 false) 
	#(196 2 #reduceActionForswitch_block4: 16221188 false) 
	#(197 1 #reduceActionForimport_declarations1: 16541697 false) 
	#(199 1 #reduceActionForimport_declarations1: 16808961 false) 
	#(219 1 #reduceActionFortype_arguments1: 19441665 false) 
	#(239 6 #reduceActionFormethod_invocation3: 22952963 false) 
	#(248 6 #reduceActionForcast_expression5: 24824837 false) 
	#(248 6 #reduceActionForcast_expression5: 24824835 false) 
	#(282 3 #reduceActionFortype_arguments2: 30617602 false) 
	#(152 4 #reduceActionFormethod_declarator2: 8923138 false) 
	#(162 4 #reduceActionForexplicit_constructor_invocation3: 10594307 false) 
	#(162 4 #reduceActionForexplicit_constructor_invocation1: 10594305 false) 
	#(153 3 #reduceActionFortype_arguments2: 9226242 false) 
	#(272 4 #reduceActionForelementValueArrayInitializer4: 29555716 false) 
	#(273 3 #reduceActionFortype_arguments2: 29682690 false) 
	#(277 4 #reduceActionForenum_constant3: 30101507 false) 
	#(275 5 #reduceActionForenum_body8: 29893640 false) 
	#(135 7 #reduceActionForclass_declaration8: 6805512 false) 
	#(202 7 #reduceActionFordo_statement1: 17196033 false) 
	#(203 7 #reduceActionForfor_statement2: 17372162 false) 
	#(203 7 #reduceActionForfor_statement3: 17372163 false) 
	#(203 7 #reduceActionForfor_statement5: 17372165 false) 
	#(194 7 #reduceActionForif_then_else_statement1: 15870977 false) 
	#(180 4 #reduceActionForarray_initializer1: 13687809 false) 
	#(181 3 #reduceActionFortype_arguments2: 14013442 false) 
	#(239 7 #reduceActionFormethod_invocation6: 22952966 false) 
	#(265 1 #liftFirstValue: 28973057 false) 
	#(200 2 #reduceActionForswitch_label2: 16891906 false) 
	#(196 3 #reduceActionForswitch_block2: 16221186 false) 
	#(197 2 #reduceActionForimport_declarations2: 16541698 false) 
	#(196 3 #reduceActionForswitch_block3: 16221187 false) 
	#(198 2 #reduceActionForswitch_block_statement_group1: 16709633 false) 
	#(199 2 #reduceActionForimport_declarations2: 16808962 false) 
	#(217 5 #reduceActionForcatch_clause1: 19196929 false) 
	#(218 3 #reduceActionForcatch_parameter1: 19332097 false) 
	#(283 2 #reduceActionFortype_arguments_opt3: 30684163 false) 
	#(239 7 #reduceActionFormethod_invocation4: 22952964 false) 
	#(162 5 #reduceActionForexplicit_constructor_invocation4: 10594308 false) 
	#(162 5 #reduceActionForexplicit_constructor_invocation2: 10594306 false) 
	#(168 4 #reduceActionForannotation_method_declaration2: 12023810 false) 
	#(168 4 #reduceActionForannotation_method_declaration2: 12023811 false) 
	#(277 5 #reduceActionForenum_constant4: 30101508 false) 
	#(277 5 #reduceActionForenum_constant5: 30101509 false) 
	#(203 8 #reduceActionForfor_statement4: 17372164 false) 
	#(203 8 #reduceActionForfor_statement6: 17372166 false) 
	#(203 8 #reduceActionForfor_statement7: 17372167 false) 
	#(200 3 #reduceActionForswitch_label1: 16891905 false) 
	#(196 4 #reduceActionForswitch_block1: 16221185 false) 
	#(219 3 #reduceActionFortype_arguments2: 19441666 false) 
	#(239 8 #reduceActionFormethod_invocation7: 22952967 false) 
	#(283 3 #reduceActionFortype_arguments_opt2: 30684162 false) 
	#(231 8 #reduceActionForclass_instance_creation_expression5: 21239813 false) 
	#(162 6 #reduceActionForexplicit_constructor_invocation7: 10594311 false) 
	#(162 6 #reduceActionForexplicit_constructor_invocation5: 10594309 false) 
	#(277 6 #reduceActionForenum_constant6: 30101510 false) 
	#(203 9 #reduceActionForfor_statement8: 17372168 false) 
	#(291 9 #reduceActionForforeach_statement1: 31525889 false) 
	#(239 9 #reduceActionFormethod_invocation8: 22952968 false) 
	#(231 9 #reduceActionForclass_instance_creation_expression7: 21239815 false) 
	#(231 9 #reduceActionForclass_instance_creation_expression6: 21239814 false) 
	#(162 7 #reduceActionForexplicit_constructor_invocation8: 10594312 false) 
	#(162 7 #reduceActionForexplicit_constructor_invocation6: 10594310 false) 
	#(231 10 #reduceActionForclass_instance_creation_expression8: 21239816 false)
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
JavaParser class >> startingStateForclass_or_interface_body_declaration [
	^ 7
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
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '">="' '">>="' '">>>="' '"?"' '"@"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"assert"' '"boolean"' '"break"' '"byte"' '"case"' '"catch"' '"char"' '"class"' '"continue"' '"default"' '"do"' '"double"' '"else"' '"enum"' '"extends"' '"final"' '"finally"' '"float"' '"for"' '"if"' '"implements"' '"import"' '"instanceof"' '"int"' '"interface"' '"long"' '"native"' '"new"' '"package"' '"private"' '"protected"' '"public"' '"return"' '"short"' '"static"' '"strictfp"' '"super"' '"switch"' '"synchronized"' '"this"' '"throw"' '"throws"' '"transient"' '"try"' '"void"' '"volatile"' '"while"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<GREATER_THAN>' '<SIGNED_RIGHT_SHIFT>' '<UNSIGNED_RIGHT_SHIFT>' '<INTEGER_LITERAL>' '<FLOATING_POINT_LITERAL>' '<BOOLEAN_LITERAL>' '<CHARACTER_LITERAL>' '<STRING_LITERAL>' '<NULL_LITERAL>' '<IDENTIFIER>' '<whitespace>' '<comment>' '<patternToken>' 'B e g i n' 'goal' 'literal' 'type' 'primitive_type' 'numeric_type' 'integral_type' 'floating_point_type' 'reference_type' 'class_or_interface_type' 'class_type' 'interface_type' 'array_type' 'name' 'simple_name' 'qualified_name' 'compilation_unit' 'import_declarations' 'type_declarations' 'package_declaration' 'import_declaration' 'single_type_import_declaration' 'type_import_on_demand_declaration' 'type_declaration' 'modifiers' 'modifier' 'class_declaration' 'super' 'interfaces' 'interface_type_list' 'class_body' 'class_body_declarations' 'class_body_declaration' 'class_member_declaration' 'field_declaration' 'variable_declarators' 'variable_declarator' 'initialized_variable_declarator' 'variable_declarator_id' 'variable_initializer' 'method_declaration' 'method_header' 'void' 'method_declarator' 'formal_parameter_list' 'formal_parameter' 'throws' 'class_type_list' 'method_body' 'static_initializer' 'constructor_declaration' 'constructor_declarator' 'constructor_body' 'explicit_constructor_invocation' 'interface_declaration' 'annotation_interface_declaration' 'annotation_interface_body' 'annotation_interface_member_declarations' 'annotation_interface_member_declaration' 'annotation_method_declaration' 'extends_interfaces' 'interface_body' 'interface_member_declarations' 'interface_member_declaration' 'constant_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_modifier*' 'interface_modifier' 'default_modifier' 'abstract_method_declaration' 'array_initializer' 'variable_initializers' 'block' 'block_statements' 'block_statement' 'local_variable_declaration_statement' 'local_variable_declaration' 'statement' 'statement_without_trailing_substatement' 'empty_statement' 'labeled_statement' 'expression_statement' 'statement_expression' 'if_then_statement' 'if_then_else_statement' 'switch_statement' 'switch_block' 'switch_block_statement_groups' 'switch_block_statement_group' 'switch_labels' 'switch_label' 'while_statement' 'do_statement' 'for_statement' 'for_init' 'for_update' 'statement_expression_list' 'break_statement' 'continue_statement' 'return_statement' 'throw_statement' 'synchronized_statement' 'try_statement' 'try_resources' 'try_resources_list' 'try_resource' 'catches' 'catch_clause' 'catch_parameter' 'catch_types' 'finally' 'assert_statement' 'primary' 'primary_no_new_array' 'lambda_expression' 'lambda_parameters' 'lambda_parameter_list' 'lambda_parameter' 'untyped_lambda_parameter' 'lambda_function' 'method_reference_expression' 'class_instance_creation_expression' 'argument_list' 'array_creation_expression' 'dim_exprs' 'dim_expr' 'dims' 'empty_dim_expr' 'field_access' 'method_invocation' 'array_access' 'postfix_expression' 'postincrement_expression' 'postdecrement_expression' 'unary_expression' 'preincrement_expression' 'predecrement_expression' 'unary_expression_not_plus_minus' 'cast_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'conditional_expression' 'assignment_expression' 'assignment' 'left_hand_side' 'assignment_operator' 'expression' 'constant_expression' 'annotations' 'annotation' 'annotation_args' 'elementValuePairs' 'elementValuePair' 'elementValue' 'elementValueArrayInitializer' 'elementValues' 'enum_declaration' 'enum_body' 'enum_constants' 'enum_constant' 'enum_body_declarations' 'type_parameters_opt' 'type_parameters' 'type_parameter' 'type_bound' 'type_arguments_or_diamond_opt' 'type_arguments_opt' 'type_arguments' 'type_argument' 'type_argument_type' 'type_name' 'simple_type_name' 'qualified_type_name' 'foreach_statement' 'variable_modifiers' 'variable_modifier' 'primary_or_name' 'class_or_interface_body_declaration' 'E O F' 'error')
]

{ #category : #generated }
JavaParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JavaProgramFileNode #JavaProgramFileNode #JavaLiteralNode #JavaTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaArrayTypeNode #JavaNameNode #JavaNameNode #JavaQualifiedNameNode #JavaProgramFileNode #OrderedCollection #OrderedCollection #JavaPackageDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaTypeImportOnDemandDeclarationNode #JavaProgramNode #OrderedCollection #JavaProgramNode #JavaDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaProgramNode #JavaFieldDeclarationNode #OrderedCollection #JavaVariableDeclarationNode #JavaInitializedVariableDeclarationNode #JavaProgramNode #JavaProgramNode #JavaMethodDeclarationNode #OrderedCollection #JavaVoidTypeNode #JavaProgramNode #OrderedCollection #JavaParameterNode #JavaThrowsNode #OrderedCollection #JavaProgramNode #JavaStaticInitializerNode #JavaConstructorDeclarationNode #OrderedCollection #JavaBlockNode #JavaStatementNode #JavaInterfaceDeclarationNode #JavaAnnotationInterfaceNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaAbstractMethodDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaFieldDeclarationNode #JavaMethodDeclarationNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaModifierNode #JavaAbstractMethodDeclarationNode #JavaArrayInitializerNode #OrderedCollection #JavaBlockNode #OrderedCollection #JavaProgramNode #JavaLocalVariableDeclarationStatementNode #JavaLocalVariableDeclarationNode #JavaStatementNode #JavaStatementNode #JavaEmptyStatementNode #JavaLabeledStatementNode #JavaExpressionStatementNode #JavaExpressionNode #JavaIfStatementNode #JavaIfElseStatementNode #JavaSwitchStatementNode #JavaSwitchBlockNode #OrderedCollection #JavaSwitchBlockStatementGroupNode #OrderedCollection #JavaProgramNode #JavaWhileStatementNode #JavaDoWhileStatementNode #JavaForStatementNode #JavaProgramNode #JavaStatementExpressionListNode #JavaStatementExpressionListNode #JavaBreakStatementNode #JavaContinueStatementNode #JavaReturnStatementNode #JavaThrowStatementNode #JavaSynchronizedStatementNode #JavaTryStatementNode #OrderedCollection #OrderedCollection #JavaLocalVariableDeclarationNode #OrderedCollection #JavaCatchClauseNode #JavaCatchParameterNode #OrderedCollection #JavaFinallyClauseNode #JavaAssertStatementNode #JavaExpressionNode #JavaExpressionNode #JavaLambdaExpressionNode #OrderedCollection #OrderedCollection #JavaParameterNode #JavaParameterNode #JavaProgramNode #JavaMethodReferenceNode #JavaNewNode #OrderedCollection #JavaNewArrayNode #OrderedCollection #JavaDimensionExpressionNode #OrderedCollection #OrderedCollection #JavaFieldAccessNode #JavaMethodInvocationNode #JavaArrayAccessNode #JavaExpressionNode #JavaPostIncrementExpressionNode #JavaPostDecrementExpressionNode #JavaExpressionNode #JavaPreIncrementExpressionNode #JavaPreDecrementExpressionNode #JavaExpressionNode #JavaCastExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaAssignmentNode #JavaExpressionNode #SmaCCToken #JavaExpressionNode #JavaExpressionNode #OrderedCollection #JavaAnnotationNode #OrderedCollection #OrderedCollection #JavaElementValuePairNode #JavaProgramNode #JavaElementArrayInitializerNode #OrderedCollection #JavaEnumDeclarationNode #OrderedCollection #OrderedCollection #JavaEnumConstantNode #OrderedCollection #JavaTypeParametersNode #OrderedCollection #JavaTypeParameterNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaTypeArgumentNode #OrderedCollection #JavaTypeNameNode #JavaTypeNameNode #JavaQualifiedTypeNameNode #JavaForEachStatementNode #OrderedCollection #JavaProgramNode #JavaExpressionNode #JavaProgramNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JavaParser class >> transitionTable [
^#(
#[1 0 33 0 26 0 7 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 6 0 71 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 0 101 0 110 0 101 0 125 0 109 0 126 0 113 0 127 0 117 0 128 0 121 0 129 0 121 0 130 0 121 0 131 0 133 0 132 0 137 0 133 0 141 0 134 0 133 0 135 0 133 0 163 0 133 0 164 0 157 1 10 0 141 1 11 0 133 1 18 0 10 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 213 0 51 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 1 133 0 135 1 121 0 151 1 133 0 163 1 133 0 182 1 133 0 184 1 133 0 185 1 141 0 186 1 133 0 187 1 133 0 188 1 133 0 189 1 133 0 190 1 133 0 191 1 165 0 192 1 133 0 193 1 133 0 194 1 133 0 195 1 133 0 201 1 133 0 202 1 133 0 203 1 133 0 207 1 133 0 208 1 133 0 209 1 133 0 210 1 133 0 211 1 133 0 212 1 133 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 1 133 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 1 133 1 35 2 45 1 36 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 2 185 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 2 185 1 3 2 185 1 4 2 181 1 5 2 21 1 6 2 185 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 2 189 0 132 0 137 0 133 0 141 0 134 2 189 0 135 2 189 0 163 2 189 0 164 0 141 1 11 2 189 1 18] 
#[1 2 193 0 27 0 189 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 22 0 76 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 0 22 0 105 2 197 0 133 0 141 0 134 2 201 0 149 2 205 0 150 0 141 1 11 2 209 1 23] 
#[1 0 33 0 26 2 193 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 2 213 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 1 33 0 90 0 91 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 2 241 0 132 2 237 0 133 0 141 0 134 2 241 0 135 2 241 0 141 2 241 0 142 2 241 0 143 2 241 0 149 2 205 0 150 2 241 0 158 2 241 0 159 3 9 0 160 2 241 0 163 2 241 0 164 3 13 0 182 0 141 1 11 2 241 1 18 3 17 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 72 0 147 0 73 0 151 0 74 0 155 0 76 0 159 0 77 0 163 0 78 0 167 0 81 0 171 0 85 0 175 0 87 0 179 0 88 1 33 0 90 0 183 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 3 21 0 132 2 237 0 133 0 141 0 134 3 21 0 135 3 61 0 141 3 61 0 142 3 29 0 143 3 61 0 149 3 33 0 150 3 61 0 158 3 61 0 159 3 9 0 160 3 21 0 163 3 21 0 164 3 61 0 172 3 61 0 173 3 61 0 174 3 49 0 175 3 53 0 176 3 61 0 179 3 13 0 182 0 141 1 11 3 21 1 18 3 17 1 23 2 29 1 32 2 29 1 33 2 29 1 34 3 61 1 39] 
#[0 0 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 3 65 0 67 3 69 0 105 3 73 0 122 3 73 0 123 3 73 0 124] 
#[0 0 34 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 3 77 0 105] 
#[0 3 81 0 105] 
#[0 0 38 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 3 85 0 77 3 69 0 105 3 89 0 122 3 89 0 123 3 89 0 124] 
#[0 3 93 0 105] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 46 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 50 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 54 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 58 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 62 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 66 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 70 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 74 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 0 1 40] 
#[0 0 78 1 40] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 3 97 0 127 3 101 0 129 3 101 0 130 3 101 0 131 0 133 0 132 0 137 0 133 0 141 0 134 0 133 0 135 0 133 0 163 0 133 0 164 0 141 1 11 0 133 1 18 0 82 1 40] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 3 105 0 132 0 137 0 133 0 141 0 134 3 105 0 135 3 105 0 163 3 105 0 164 0 141 1 11 3 105 1 18 0 86 1 40] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 3 109 0 126 3 113 0 127 0 121 0 129 0 121 0 130 0 121 0 131 0 133 0 132 0 137 0 133 0 141 0 134 0 133 0 135 0 133 0 163 0 133 0 164 0 141 1 11 0 133 1 18 0 90 1 40] 
#[0 0 94 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[0 0 98 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[0 0 102 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[0 0 106 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[1 3 117 0 37 0 41 0 42 3 121 0 50 3 125 0 56 0 53 0 58 3 129 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 3 133 0 134 3 133 1 11] 
#[0 0 110 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 114 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 0 118 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 0 122 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 0 189 0 37 3 137 0 71 3 141 1 11] 
#[0 0 126 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 0 130 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 3 145 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 3 145 1 3 3 145 1 4 2 181 1 5 2 21 1 6 3 145 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 3 157 0 244 3 157 0 245 3 157 0 246 3 157 0 247 3 157 0 248 3 157 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 3 165 0 244 3 165 0 245 3 165 0 246 3 165 0 247 3 165 0 248 3 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 0 134 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 3 169 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 76 3 173 0 96 0 6 0 105 3 177 1 10 3 181 1 29 3 185 1 30] 
#[1 3 69 0 105 3 73 0 122 3 73 0 123 3 73 0 124] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 3 189 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 3 189 1 3 3 189 1 4 2 181 1 5 2 21 1 6 3 189 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 0 138 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 3 193 0 26 3 197 0 105] 
#[0 0 142 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 146 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 3 201 0 26 3 205 0 105] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 3 213 0 182 3 213 0 187 3 213 0 188 3 213 0 189 3 213 0 190 3 213 0 191 1 165 0 192 3 213 0 193 3 213 0 194 3 213 0 195 3 213 0 201 3 213 0 202 3 213 0 203 3 213 0 207 3 213 0 208 3 213 0 209 3 213 0 210 3 213 0 211 3 213 0 212 3 213 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 3 213 1 35 2 49 1 38] 
#[0 0 150 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 154 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 3 217 0 8] 
#[0 3 221 0 8] 
#[0 0 158 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 162 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 3 225 0 113 3 225 0 114 3 225 0 115 3 225 0 116 3 229 0 118 3 233 0 119 3 237 1 32 3 237 1 33 3 237 1 34] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 3 241 0 26 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 3 245 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 3 245 1 3 3 245 1 4 2 181 1 5 2 21 1 6 3 245 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 0 166 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 3 249 0 20] 
#[0 3 253 0 8] 
#[1 4 1 0 8 0 66 0 37 0 66 0 42 0 66 0 50 0 66 0 56 0 66 0 58 0 66 0 67 0 66 0 69 0 66 0 72 0 66 0 73 0 66 0 74 0 66 0 77 0 66 0 78 0 66 0 81 0 66 0 85 0 66 0 88] 
#[0 0 170 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 4 5 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 4 5 1 3 4 5 1 4 2 181 1 5 2 21 1 6 4 5 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 4 9 0 8 1 33 0 90 4 13 0 182 4 17 0 213] 
#[0 0 174 0 20 0 105] 
#[0 4 21 0 8] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 213 0 51 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 4 25 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 4 33 0 135 1 121 0 151 4 33 0 163 4 33 0 182 4 29 0 183 4 33 0 184 4 33 0 185 1 141 0 186 4 33 0 187 4 33 0 188 4 33 0 189 4 33 0 190 4 33 0 191 1 165 0 192 4 33 0 193 4 33 0 194 4 33 0 195 4 33 0 201 4 33 0 202 4 33 0 203 4 33 0 207 4 33 0 208 4 33 0 209 4 33 0 210 4 33 0 211 4 33 0 212 4 33 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 4 33 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 4 33 1 35 2 45 1 36 2 49 1 38] 
#[0 0 178 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 0 182 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 0 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 0 190 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 0 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 0 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 0 202 0 4 0 202 0 7 0 202 0 11 0 202 0 13 0 202 0 14 0 202 0 17 0 202 0 18 0 195 0 20 0 202 0 23 4 37 0 24 0 195 0 25 0 185 0 27 0 202 0 29 0 202 0 31 0 202 0 34 0 202 0 35 0 195 0 38 0 202 0 41 0 202 0 92 4 41 1 28] 
#[0 0 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 4 45 0 20] 
#[1 0 199 0 20 4 53 0 38 4 57 0 236 4 61 0 237] 
#[0 0 214 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 218 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[0 0 222 0 5 0 9 0 15 0 20 0 21 0 38 0 91 0 96 0 105] 
#[1 0 226 0 20 4 65 0 25] 
#[0 0 230 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 0 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[1 0 238 0 2 0 238 0 3 0 242 0 4 0 238 0 5 0 238 0 6 0 242 0 7 0 238 0 9 0 238 0 10 0 242 0 11 0 238 0 12 0 238 0 13 0 242 0 14 0 238 0 15 0 238 0 16 0 238 0 17 0 242 0 18 0 203 0 20 0 238 0 22 0 242 0 23 0 238 0 24 0 246 0 25 0 238 0 26 0 238 0 27 0 238 0 28 0 242 0 29 0 238 0 30 0 242 0 31 0 238 0 32 0 238 0 33 0 242 0 34 0 242 0 35 0 238 0 36 4 73 0 38 0 238 0 39 0 238 0 40 0 242 0 41 0 238 0 65 0 238 0 91 0 242 0 92 0 238 0 93 0 238 0 94 0 238 0 96 0 238 0 97 0 238 0 98 0 238 1 40] 
#[0 0 250 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[1 0 189 0 37 0 41 0 42 3 121 0 50 3 125 0 56 0 53 0 58 3 129 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 3 133 0 134 3 133 1 11] 
#[0 1 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 4 77 0 20] 
#[0 1 6 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 0 0 1 40] 
#[0 1 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 4 81 0 26] 
#[0 1 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 4 85 0 26] 
#[0 1 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 62 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 70 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 74 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 1 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 1 90 0 2 1 90 0 3 1 90 0 5 1 90 0 6 1 90 0 9 1 90 0 10 1 90 0 12 1 90 0 13 1 90 0 15 1 90 0 16 1 90 0 17 0 207 0 20 1 90 0 22 1 90 0 24 1 94 0 25 1 90 0 26 1 90 0 27 1 90 0 28 1 90 0 30 1 90 0 32 1 90 0 33 1 90 0 36 1 90 0 39 1 90 0 40 1 90 0 65 1 90 0 91 1 90 0 93 1 90 0 94 1 90 0 96 1 90 0 97 1 90 0 98 1 90 1 40] 
#[1 1 98 0 2 1 98 0 3 1 98 0 5 1 98 0 6 1 98 0 9 1 98 0 10 1 98 0 12 1 98 0 13 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 20 1 98 0 22 1 98 0 24 1 98 0 25 1 98 0 26 1 98 0 27 1 98 0 28 1 98 0 30 1 98 0 32 1 98 0 33 1 98 0 36 4 93 0 38 1 98 0 39 1 98 0 40 1 98 0 65 1 98 0 91 1 98 0 93 1 98 0 94 1 98 0 96 1 98 0 97 1 98 0 98 1 98 1 40] 
#[0 1 102 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 1 106 0 9 1 110 0 13 1 106 0 15 1 110 0 17 1 110 0 20 1 110 0 25 1 106 0 26 1 110 0 38] 
#[0 1 114 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 1 118 0 2 1 118 0 3 1 122 0 4 1 118 0 5 1 118 0 6 1 122 0 7 1 118 0 9 1 118 0 10 1 122 0 11 1 118 0 12 1 118 0 13 1 122 0 14 1 118 0 15 1 118 0 16 1 118 0 17 1 122 0 18 1 118 0 20 1 118 0 22 1 122 0 23 1 118 0 24 1 118 0 25 1 118 0 26 1 118 0 27 1 118 0 28 1 122 0 29 1 118 0 30 1 122 0 31 1 118 0 32 1 118 0 33 1 122 0 34 1 122 0 35 1 118 0 36 1 118 0 38 1 118 0 39 1 118 0 40 1 122 0 41 1 118 0 65 1 118 0 91 1 122 0 92 1 118 0 93 1 118 0 94 1 118 0 96 1 118 0 97 1 118 0 98 1 118 1 40] 
#[1 1 126 0 9 1 130 0 13 1 126 0 15 1 130 0 17 1 130 0 20 1 130 0 25 1 126 0 26 1 130 0 38] 
#[1 1 134 0 2 1 134 0 3 1 138 0 4 1 134 0 5 1 134 0 6 1 138 0 7 1 134 0 9 1 134 0 10 1 138 0 11 1 134 0 12 1 134 0 13 1 138 0 14 1 134 0 15 1 134 0 16 1 134 0 17 1 138 0 18 1 134 0 20 1 134 0 22 1 138 0 23 1 134 0 24 1 134 0 25 1 134 0 26 1 134 0 27 1 134 0 28 1 138 0 29 1 134 0 30 1 138 0 31 1 134 0 32 1 134 0 33 1 138 0 34 1 138 0 35 1 134 0 36 1 134 0 38 1 134 0 39 1 134 0 40 1 138 0 41 1 134 0 65 1 134 0 91 1 138 0 92 1 134 0 93 1 134 0 94 1 134 0 96 1 134 0 97 1 134 0 98 1 134 1 40] 
#[1 4 97 0 13 4 101 0 17] 
#[1 1 142 0 9 1 146 0 13 1 142 0 15 1 146 0 17 1 142 0 26] 
#[1 1 150 0 9 1 154 0 13 1 150 0 15 1 154 0 17 1 150 0 26] 
#[0 1 158 0 9 0 15 0 26] 
#[0 1 162 0 9 0 15 0 26] 
#[0 1 166 0 9 0 15 0 26] 
#[0 4 153 0 4 0 7 0 11 0 14 0 18 0 23 0 29 0 31 0 34 0 35 0 41 0 92 1 7] 
#[0 4 157 0 105] 
#[1 1 170 0 2 1 170 0 3 1 170 0 5 1 170 0 6 1 170 0 9 1 170 0 10 1 170 0 12 1 170 0 15 1 170 0 16 0 211 0 20 1 170 0 21 1 170 0 22 1 170 0 24 1 170 0 25 1 170 0 26 1 170 0 27 1 170 0 28 1 170 0 30 1 170 0 32 1 170 0 33 1 170 0 36 4 53 0 38 1 170 0 39 1 170 0 40 1 170 0 65 1 170 0 91 1 170 0 93 1 170 0 94 1 170 0 96 1 170 0 97 1 170 0 98 1 170 0 105 4 165 0 236 4 61 0 237 1 170 1 40] 
#[0 1 174 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 1 178 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 1 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 4 169 0 58 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 4 173 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 4 173 0 117 4 173 0 118 4 173 0 121 4 181 1 11 2 29 1 32 2 29 1 33 2 29 1 34 4 181 1 37] 
#[1 4 185 0 20 4 189 0 25] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 4 193 0 244 4 193 0 245 4 193 0 246 4 193 0 247 4 193 0 248 4 193 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 4 197 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 0 245 0 70 0 47 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 215 0 105 1 225 0 111 1 69 0 112 4 201 0 113 4 201 0 114 4 201 0 115 4 201 0 116 4 205 0 117 4 205 0 118 4 205 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 4 217 0 154 1 221 0 222 1 225 0 223 3 145 0 224 2 85 0 225 4 213 0 226 4 217 0 227 4 221 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 3 145 1 3 3 145 1 4 2 181 1 5 2 21 1 6 3 145 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 4 225 1 36 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 4 229 0 244 4 229 0 245 4 229 0 246 4 229 0 247 4 229 0 248 4 229 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 4 233 0 244 4 233 0 245 4 233 0 246 4 233 0 247 4 233 0 248 4 233 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 4 237 0 244 4 237 0 245 4 237 0 246 4 237 0 247 4 237 0 248 4 237 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 195 0 5 0 202 0 6 0 202 0 7 0 219 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 223 0 15 0 202 0 16 0 202 0 17 0 202 0 18 1 186 0 19 0 195 0 20 0 202 0 22 0 202 0 23 0 202 0 24 0 195 0 25 0 202 0 26 0 227 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 202 0 36 0 219 0 38 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 65 0 202 0 91 0 202 0 92 0 202 0 93 0 202 0 94 0 202 0 96 0 202 0 97 0 202 0 98 4 41 1 28 0 202 1 40] 
#[1 1 190 0 9 1 190 0 15 1 190 0 19 4 241 0 38] 
#[0 1 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 4 245 0 19] 
#[0 1 198 0 19] 
#[0 1 110 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 1 202 0 2 1 202 0 3 1 202 0 5 1 202 0 6 1 202 0 9 1 202 0 10 1 202 0 12 4 97 0 13 1 202 0 15 1 202 0 16 4 101 0 17 1 202 0 22 1 202 0 24 1 202 0 26 1 202 0 27 1 202 0 28 1 202 0 30 1 202 0 32 1 202 0 33 1 202 0 36 1 202 0 39 1 202 0 40 1 202 0 65 1 202 0 91 1 202 0 93 1 202 0 94 1 202 0 96 1 202 0 97 1 202 0 98 1 202 1 40] 
#[0 1 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 154 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 214 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 222 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 1 226 0 2 0 231 0 3 1 226 0 5 1 226 0 6 1 226 0 9 0 235 0 10 1 226 0 12 1 226 0 15 1 226 0 16 0 239 0 22 1 226 0 24 1 226 0 26 1 226 0 27 1 226 0 28 1 226 0 30 1 226 0 32 1 226 0 33 1 226 0 36 1 226 0 39 1 226 0 40 1 226 0 65 1 226 0 91 1 226 0 93 1 226 0 94 1 226 0 96 1 226 0 97 1 226 0 98 1 226 1 40] 
#[1 1 230 0 2 1 230 0 3 1 230 0 5 1 230 0 6 1 230 0 9 1 230 0 10 0 243 0 12 1 230 0 15 0 247 0 16 1 230 0 22 1 230 0 24 1 230 0 26 1 230 0 27 1 230 0 28 1 230 0 30 1 230 0 32 1 230 0 33 1 230 0 36 1 230 0 39 1 230 0 40 1 230 0 65 1 230 0 91 1 230 0 93 1 230 0 94 1 230 0 96 1 230 0 97 1 230 0 98 1 230 1 40] 
#[1 1 234 0 2 1 234 0 3 1 234 0 5 1 234 0 6 1 234 0 9 1 234 0 10 1 234 0 12 1 234 0 15 1 234 0 16 1 234 0 22 1 234 0 24 1 234 0 26 1 234 0 27 0 251 0 28 1 234 0 30 1 234 0 32 1 234 0 33 1 234 0 36 1 234 0 39 1 234 0 40 1 234 0 65 1 234 0 91 1 234 0 93 1 234 0 94 1 234 0 96 0 255 0 97 1 3 0 98 1 234 1 40] 
#[1 1 238 0 2 1 238 0 3 1 238 0 5 1 238 0 6 1 238 0 9 1 238 0 10 1 238 0 12 1 238 0 15 1 238 0 16 1 238 0 22 1 238 0 24 1 238 0 26 1 7 0 27 1 238 0 28 1 11 0 30 1 238 0 32 1 15 0 33 1 238 0 36 1 238 0 39 1 238 0 40 1 19 0 65 1 238 0 91 1 238 0 93 1 238 0 94 1 23 0 96 1 238 0 97 1 238 0 98 1 238 1 40] 
#[1 1 27 0 2 1 242 0 3 1 242 0 5 1 242 0 6 1 242 0 9 1 242 0 10 1 242 0 12 1 242 0 15 1 242 0 16 1 242 0 22 1 242 0 24 1 242 0 26 1 242 0 27 1 242 0 28 1 242 0 30 1 31 0 32 1 242 0 33 1 242 0 36 1 242 0 39 1 242 0 40 1 242 0 65 1 242 0 91 1 242 0 93 1 242 0 94 1 242 0 96 1 242 0 97 1 242 0 98 1 242 1 40] 
#[1 1 246 0 2 1 246 0 3 1 35 0 5 1 246 0 6 1 246 0 9 1 246 0 10 1 246 0 12 1 246 0 15 1 246 0 16 1 246 0 22 1 246 0 24 1 246 0 26 1 246 0 27 1 246 0 28 1 246 0 30 1 246 0 32 1 246 0 33 1 246 0 36 1 246 0 39 1 246 0 40 1 246 0 65 1 246 0 91 1 246 0 93 1 246 0 94 1 246 0 96 1 246 0 97 1 246 0 98 1 246 1 40] 
#[1 1 250 0 2 1 250 0 3 1 250 0 5 1 250 0 6 1 250 0 9 1 250 0 10 1 250 0 12 1 250 0 15 1 250 0 16 1 250 0 22 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 30 1 250 0 32 1 250 0 33 1 250 0 36 1 250 0 39 1 39 0 40 1 250 0 65 1 250 0 91 1 250 0 93 1 250 0 94 1 250 0 96 1 250 0 97 1 250 0 98 1 250 1 40] 
#[1 1 254 0 2 1 254 0 3 1 254 0 5 1 254 0 6 1 254 0 9 1 254 0 10 1 254 0 12 1 254 0 15 1 254 0 16 1 254 0 22 1 254 0 24 1 254 0 26 1 254 0 27 1 254 0 28 1 254 0 30 1 254 0 32 1 254 0 33 1 254 0 36 1 254 0 39 1 254 0 40 1 254 0 65 1 43 0 91 1 254 0 93 1 254 0 94 1 254 0 96 1 254 0 97 1 254 0 98 1 254 1 40] 
#[1 2 2 0 2 2 2 0 3 2 2 0 5 1 47 0 6 2 2 0 9 2 2 0 10 2 2 0 12 2 2 0 15 2 2 0 16 2 2 0 22 2 2 0 24 2 2 0 26 2 2 0 27 2 2 0 28 2 2 0 30 2 2 0 32 2 2 0 33 2 2 0 36 2 2 0 39 2 2 0 40 2 2 0 65 2 2 0 91 2 2 0 93 2 2 0 94 2 2 0 96 2 2 0 97 2 2 0 98 2 2 1 40] 
#[1 2 6 0 2 2 6 0 3 2 6 0 5 2 6 0 6 2 6 0 9 2 6 0 10 2 6 0 12 2 6 0 15 2 6 0 16 2 6 0 22 2 6 0 24 2 6 0 26 2 6 0 27 2 6 0 28 2 6 0 30 2 6 0 32 2 6 0 33 1 51 0 36 2 6 0 39 2 6 0 40 2 6 0 65 2 6 0 91 1 55 0 93 2 6 0 94 2 6 0 96 2 6 0 97 2 6 0 98 2 6 1 40] 
#[0 2 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 2 14 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 59 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 0 0 1 40] 
#[0 0 0 1 40] 
#[1 5 77 0 105 5 81 1 24 5 85 1 25] 
#[1 2 193 0 27 0 189 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 22 0 76 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 0 22 0 105 3 133 0 134 3 133 1 11 5 89 1 23] 
#[0 0 0 1 40] 
#[1 5 93 0 26 1 33 0 90 5 97 0 157 5 97 0 182] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 1 25 0 87 2 217 0 105 5 105 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 5 105 0 117 5 105 0 118 5 105 0 121 5 109 0 151 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 0 58 0 27 0 58 0 37 0 58 0 42 0 58 0 44 0 58 0 46 0 58 0 49 0 58 0 50 0 58 0 54 0 58 0 56 0 58 0 58 0 58 0 60 0 58 0 66 0 58 0 67 0 58 0 68 0 58 0 69 0 58 0 72 0 58 0 73 0 58 0 74 0 58 0 76 0 58 0 77 0 58 0 78 0 58 0 81 0 58 0 85 0 58 0 87 0 58 0 88 1 33 0 90 0 58 0 105 5 113 0 182] 
#[1 0 18 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 15 0 18 0 16 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 24 0 18 0 26 1 63 0 27 0 18 0 28 0 18 0 30 0 18 0 32 0 18 0 33 0 18 0 36 0 18 0 38 0 18 0 39 0 18 0 40 0 18 0 52 0 18 0 63 0 18 0 65 0 18 0 90 0 18 0 91 0 18 0 93 0 18 0 94 0 18 0 96 0 18 0 97 0 18 0 98 0 18 0 105 4 41 1 28 0 18 1 40] 
#[1 5 117 0 105 5 121 0 144 5 125 0 145 5 125 0 146 5 133 0 147] 
#[1 0 210 0 5 0 210 0 15 0 210 0 21 4 53 0 38 0 210 0 91 0 210 0 96 0 210 0 105 4 57 0 236 4 61 0 237] 
#[0 0 226 0 5 0 15 0 21 0 91 0 96 0 105] 
#[0 2 26 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 2 193 0 27 3 117 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 121 0 50 0 71 0 54 3 125 0 56 0 53 0 58 0 75 0 60 0 79 0 66 3 129 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 0 91 0 105 5 137 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 5 137 0 117 5 137 0 118 5 137 0 121 3 133 0 134 5 141 0 160 3 133 1 11 5 145 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 0 0 1 40] 
#[0 2 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 2 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 2 38 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 2 42 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 2 46 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 5 149 0 84 5 153 0 90 5 157 0 155 5 161 0 161] 
#[0 2 50 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 1 25 0 87 3 153 0 105 5 105 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 5 105 0 117 5 105 0 118 5 105 0 121 5 165 0 123 5 109 0 151 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 1 67 1 40] 
#[0 2 58 1 40] 
#[0 1 71 1 40] 
#[1 5 169 0 26 1 33 0 90 5 97 0 157 5 97 0 182] 
#[0 2 66 1 40] 
#[0 2 70 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105 1 40] 
#[0 2 74 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105 1 40] 
#[1 1 33 0 90 5 173 0 182] 
#[1 2 193 0 27 0 189 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 5 177 0 52 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 22 0 76 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 0 22 0 105 5 185 0 134 5 185 0 177 5 185 0 178 5 185 1 11 5 193 1 23] 
#[0 2 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105 1 40] 
#[0 0 0 1 40] 
#[0 5 197 0 105] 
#[0 0 202 0 8 0 9 0 15 0 20 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 5 201 0 8 2 82 0 9 2 82 0 15 5 205 0 20 2 82 0 26 2 82 0 27 2 82 0 37 2 82 0 42 2 82 0 44 2 82 0 46 2 82 0 49 2 82 0 50 2 82 0 52 2 82 0 54 2 82 0 56 2 82 0 58 2 82 0 60 2 82 0 66 2 82 0 67 2 82 0 68 2 82 0 69 2 82 0 71 2 82 0 72 2 82 0 73 2 82 0 74 2 82 0 76 2 82 0 77 2 82 0 78 2 82 0 81 2 82 0 85 2 82 0 87 2 82 0 88 2 82 0 94 2 82 0 105] 
#[1 2 193 0 27 0 22 0 57 0 22 0 63 0 22 0 90 5 209 1 23] 
#[1 5 213 0 63 5 217 0 90 5 221 0 137 5 225 1 19] 
#[1 3 69 0 105 5 229 0 122 5 229 0 123 5 229 0 124] 
#[1 5 233 0 20 5 237 0 26] 
#[1 2 193 0 27 0 22 0 57 0 22 0 90 5 241 1 23] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 3 105 0 132 0 137 0 133 0 141 0 134 3 105 0 135 3 105 0 163 3 105 0 164 0 141 1 11 3 105 1 18 2 86 1 40] 
#[0 2 90 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[0 2 94 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 5 245 0 127 3 101 0 129 3 101 0 130 3 101 0 131 0 133 0 132 0 137 0 133 0 141 0 134 0 133 0 135 0 133 0 163 0 133 0 164 0 141 1 11 0 133 1 18 2 98 1 40] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 3 105 0 132 0 137 0 133 0 141 0 134 3 105 0 135 3 105 0 163 3 105 0 164 0 141 1 11 3 105 1 18 2 102 1 40] 
#[1 5 249 0 67 3 69 0 105 3 73 0 122 3 73 0 123 3 73 0 124] 
#[0 5 253 0 105] 
#[0 6 1 0 105] 
#[0 6 5 0 105] 
#[0 2 106 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 3 69 0 105 6 9 0 122 6 9 0 123 6 9 0 124] 
#[0 2 110 0 37 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 71 0 76 0 105] 
#[0 6 13 0 9] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 4 201 0 113 4 201 0 114 4 201 0 115 4 201 0 116 4 205 0 117 4 205 0 118 4 205 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 3 145 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 3 145 1 3 3 145 1 4 2 181 1 5 2 21 1 6 3 145 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 8 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 15 0 202 0 16 0 202 0 17 0 202 0 18 0 195 0 20 0 202 0 22 0 202 0 23 0 202 0 24 0 195 0 25 0 202 0 26 0 227 0 27 0 202 0 28 0 202 0 29 0 202 0 30 0 202 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 202 0 36 0 195 0 38 0 202 0 39 0 202 0 40 0 202 0 41 0 202 0 65 0 202 0 91 0 202 0 92 0 202 0 93 0 202 0 94 0 202 0 96 0 202 0 97 0 202 0 98 0 18 0 105 4 41 1 28 0 202 1 40] 
#[0 2 114 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 2 18 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 2 118 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 2 122 0 15 6 17 0 57 6 21 0 79 2 122 0 96 6 25 1 31] 
#[0 2 126 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[1 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 6 29 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 6 29 0 117 6 29 0 118 6 29 0 121 3 141 1 11 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 6 33 0 15 6 37 0 96] 
#[0 2 130 0 15 0 96] 
#[1 6 41 0 24 6 45 0 26] 
#[0 2 134 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 49 0 26] 
#[0 2 138 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 53 0 26] 
#[0 4 1 0 8] 
#[0 6 57 0 89] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 6 61 0 26 0 185 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 0 245 0 70 0 47 0 76 1 1 0 79 1 13 0 82 1 25 0 87 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 1 75 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 6 73 0 186 6 69 0 192 6 73 0 204 6 77 0 206 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 6 69 0 245 6 69 0 246 6 69 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 6 81 1 36 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 6 85 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 6 85 1 3 6 85 1 4 2 181 1 5 2 21 1 6 6 85 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 6 89 0 38 6 93 0 234 6 97 0 235 6 101 0 236 4 61 0 237] 
#[1 2 142 0 8 6 89 0 38 6 105 0 234 6 97 0 235 6 109 0 236 4 61 0 237] 
#[0 6 113 0 8] 
#[1 1 170 0 8 1 170 0 9 1 170 0 15 4 161 0 20 1 170 0 26 1 170 0 38 1 170 0 52 1 170 0 63 1 170 0 90] 
#[0 2 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 117 0 26] 
#[1 0 185 0 27 1 79 0 105 6 125 1 28] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 6 129 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 6 129 1 3 6 129 1 4 2 181 1 5 2 21 1 6 6 129 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 6 133 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 6 133 1 3 6 133 1 4 2 181 1 5 2 21 1 6 6 133 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 6 137 0 26] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 6 141 0 214 6 145 0 215 6 149 1 36] 
#[1 6 153 0 48 6 157 0 59 6 161 0 216 6 165 0 217 6 169 0 220] 
#[1 1 33 0 90 6 173 0 182] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 6 177 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 6 177 1 3 6 177 1 4 2 181 1 5 2 21 1 6 6 177 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 2 150 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 213 0 51 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 6 181 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 6 185 0 135 1 121 0 151 6 185 0 163 6 185 0 182 6 185 0 184 6 185 0 185 1 141 0 186 6 185 0 187 6 185 0 188 6 185 0 189 6 185 0 190 6 185 0 191 1 165 0 192 6 185 0 193 6 185 0 194 6 185 0 195 6 185 0 201 6 185 0 202 6 185 0 203 6 185 0 207 6 185 0 208 6 185 0 209 6 185 0 210 6 185 0 211 6 185 0 212 6 185 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 6 185 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 6 185 1 35 2 45 1 36 2 49 1 38] 
#[0 2 154 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 6 189 0 182 6 189 0 187 6 189 0 188 6 189 0 189 6 189 0 190 6 189 0 191 1 165 0 192 6 189 0 193 6 189 0 194 6 189 0 195 6 189 0 201 6 189 0 202 6 189 0 203 6 189 0 207 6 189 0 208 6 189 0 209 6 189 0 210 6 189 0 211 6 189 0 212 6 189 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 6 189 1 35 2 49 1 38] 
#[0 2 158 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 6 193 0 50] 
#[0 6 197 0 50] 
#[0 6 201 0 39] 
#[1 2 162 0 2 2 162 0 3 2 162 0 5 2 162 0 6 2 162 0 9 2 162 0 10 2 162 0 12 2 162 0 15 2 162 0 16 2 162 0 20 2 162 0 21 2 162 0 22 2 162 0 24 2 162 0 25 2 162 0 26 2 162 0 27 2 162 0 28 2 162 0 30 2 162 0 32 2 162 0 33 2 162 0 36 4 53 0 38 2 162 0 39 2 162 0 40 2 162 0 65 2 162 0 91 2 162 0 93 2 162 0 94 2 162 0 96 2 162 0 97 2 162 0 98 2 162 0 105 6 205 0 237 2 162 1 40] 
#[0 2 166 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 6 209 0 70] 
#[1 6 213 0 79 6 217 0 82 6 221 0 105] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 6 225 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 6 225 1 3 6 225 1 4 2 181 1 5 2 21 1 6 6 225 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 6 229 0 50] 
#[0 2 170 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 2 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 233 0 105] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 6 237 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 6 237 1 3 6 237 1 4 2 181 1 5 2 21 1 6 6 237 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 2 178 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 2 182 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 2 186 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 190 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 194 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 198 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 202 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 206 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 210 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 214 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 218 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 222 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 226 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 2 230 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 76 0 79 0 82 0 87 0 95 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 6 241 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 6 241 1 3 6 241 1 4 2 181 1 5 2 21 1 6 6 241 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 6 245 0 8] 
#[0 6 249 0 105] 
#[1 2 234 0 2 2 234 0 3 2 234 0 5 2 234 0 6 2 234 0 9 2 234 0 10 2 234 0 12 2 234 0 15 2 234 0 16 2 234 0 20 2 234 0 21 2 234 0 22 2 234 0 24 2 234 0 25 2 234 0 26 2 234 0 27 2 234 0 28 2 234 0 30 2 234 0 32 2 234 0 33 2 234 0 36 4 53 0 38 2 234 0 39 2 234 0 40 2 234 0 65 2 234 0 91 2 234 0 93 2 234 0 94 2 234 0 96 2 234 0 97 2 234 0 98 2 234 0 105 6 205 0 237 2 234 1 40] 
#[0 2 238 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[1 5 117 0 105 6 253 0 144 5 125 0 145 5 125 0 146 5 133 0 147] 
#[0 2 242 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[0 2 246 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 76 0 105] 
#[1 0 185 0 27 7 1 0 70 0 18 0 105 7 5 1 28] 
#[0 7 9 0 105] 
#[0 2 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 2 254 0 19] 
#[1 7 13 0 9 0 199 0 20 4 53 0 38 4 57 0 236 4 61 0 237] 
#[1 7 17 0 5 7 21 0 9 0 226 0 20 4 65 0 25] 
#[0 3 2 0 9 0 15] 
#[1 7 25 0 9 7 29 0 15] 
#[0 3 6 0 9 0 15] 
#[1 3 10 0 9 3 10 0 15 1 198 0 19] 
#[1 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 4 169 0 58 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 7 33 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 7 33 0 117 7 33 0 118 7 33 0 121 4 181 1 11 2 29 1 32 2 29 1 33 2 29 1 34 4 181 1 37] 
#[0 3 14 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 3 18 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 3 22 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 7 37 0 39] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 1 33 0 90 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 7 45 0 182 1 221 0 222 1 225 0 223 7 45 0 224 2 85 0 225 2 89 0 228 7 45 0 229 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 7 45 1 3 7 45 1 4 2 181 1 5 2 21 1 6 7 45 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 7 53 0 244 7 53 0 245 7 53 0 246 7 53 0 247 7 53 0 248 7 53 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 7 57 0 244 7 57 0 245 7 57 0 246 7 57 0 247 7 57 0 248 7 57 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 7 61 0 244 7 61 0 245 7 61 0 246 7 61 0 247 7 61 0 248 7 61 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 7 65 0 244 7 65 0 245 7 65 0 246 7 65 0 247 7 65 0 248 7 65 0 249 7 65 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 7 69 0 244 7 69 0 245 7 69 0 246 7 69 0 247 7 69 0 248 7 69 0 249 7 69 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 7 73 0 250 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 7 77 0 250 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 7 81 0 250 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 7 85 0 251 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 7 89 0 251 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 7 93 0 251 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 7 97 0 113 7 97 0 114 7 97 0 115 7 97 0 116 7 101 0 117 7 101 0 118 7 101 0 121 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 7 105 0 251 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 7 109 0 252 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 7 113 0 252 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 7 117 0 253 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 7 121 0 254 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 7 125 0 255 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 7 129 1 0 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 7 133 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 7 133 1 3 7 133 1 4 2 181 1 5 2 21 1 6 7 133 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 7 137 1 1 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 3 26 0 15 7 141 0 57 3 26 0 96] 
#[1 7 145 0 15 7 149 0 96] 
#[0 3 30 0 15 0 96] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 1 25 0 87 2 217 0 105 7 153 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 7 153 0 117 7 153 0 118 7 153 0 121 7 157 0 151 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 3 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 3 38 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 3 42 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 7 161 0 105 7 165 0 152] 
#[1 7 161 0 105 7 169 0 152] 
#[0 3 46 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 1 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 7 173 0 15 7 177 0 26] 
#[0 3 50 0 15 0 26] 
#[0 3 54 0 15 0 26] 
#[1 3 58 0 15 3 58 0 26 7 181 0 31 4 241 0 38] 
#[1 5 117 0 105 7 185 0 144 5 125 0 145 5 125 0 146 5 133 0 147] 
#[1 5 149 0 84 5 153 0 90 7 189 0 155 7 193 0 161] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 1 25 0 87 3 153 0 105 7 153 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 7 153 0 117 7 153 0 118 7 153 0 121 5 165 0 123 7 157 0 151 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 2 217 0 105 7 201 0 118 7 201 0 119 7 205 0 156 3 237 1 32 3 237 1 33 3 237 1 34] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 213 0 51 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 7 209 0 79 1 5 0 80 1 9 0 81 7 213 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 7 217 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 4 33 0 135 1 121 0 151 7 221 0 162 4 33 0 163 4 33 0 182 7 225 0 183 4 33 0 184 4 33 0 185 1 141 0 186 4 33 0 187 4 33 0 188 4 33 0 189 4 33 0 190 4 33 0 191 1 165 0 192 4 33 0 193 4 33 0 194 4 33 0 195 4 33 0 201 4 33 0 202 4 33 0 203 4 33 0 207 4 33 0 208 4 33 0 209 4 33 0 210 4 33 0 211 4 33 0 212 4 33 0 221 7 229 0 222 1 225 0 223 1 225 0 230 1 233 0 231 7 229 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 4 33 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 4 33 1 35 2 45 1 36 2 49 1 38] 
#[1 5 153 0 90 7 233 0 161] 
#[0 3 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 7 237 0 8] 
#[0 1 83 1 40] 
#[0 3 70 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105 1 40] 
#[0 3 74 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 3 78 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 3 82 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[0 3 86 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 105] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 1 25 0 87 2 217 0 105 7 241 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 7 241 0 117 7 241 0 118 7 241 0 121 7 245 0 151 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 7 249 0 90 7 253 0 165] 
#[1 2 53 0 1 3 149 0 8 3 90 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 8 1 0 90 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 1 87 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 29 1 3 2 133 1 5 2 21 1 6 8 29 1 11 8 17 1 12 8 21 1 13 8 25 1 14 8 29 1 15 8 29 1 16 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 6 221 0 105] 
#[1 8 37 0 57 5 213 0 63 8 41 0 90 8 45 0 136 8 49 0 137 8 53 0 139] 
#[1 2 217 0 105 8 61 0 118 8 61 0 120 8 65 0 138 3 237 1 32 3 237 1 33 3 237 1 34] 
#[1 8 69 0 15 8 73 0 26 0 6 0 37 8 77 0 94 0 6 0 105 8 81 1 10 8 85 1 20 8 89 1 21 8 93 1 22] 
#[1 5 217 0 90 8 97 1 19] 
#[0 3 94 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 8 101 0 20 8 105 0 26] 
#[1 8 109 0 10 6 221 0 105] 
#[0 3 98 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[1 8 113 0 57 8 117 0 90 8 121 0 169 8 125 0 170] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 97 0 88 3 105 0 132 0 137 0 133 0 141 0 134 3 105 0 135 3 105 0 163 3 105 0 164 0 141 1 11 3 105 1 18 3 102 1 40] 
#[0 8 129 0 105] 
#[1 2 193 0 27 0 22 0 57 0 22 0 63 0 22 0 90 8 133 1 23] 
#[1 5 213 0 63 5 217 0 90 8 137 0 137 8 141 1 19] 
#[1 2 193 0 27 0 22 0 57 0 22 0 90 8 145 1 23] 
#[1 5 205 0 20 8 149 0 26] 
#[0 3 106 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 8 153 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 8 153 0 117 8 153 0 118 8 153 0 121 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 8 157 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 8 157 0 117 8 157 0 118 8 157 0 121 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 3 110 0 15 0 96] 
#[0 3 114 0 15 0 96] 
#[1 3 169 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 76 0 6 0 105 3 177 1 10 8 161 1 30] 
#[0 3 118 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 165 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 165 1 3 8 165 1 4 2 181 1 5 2 21 1 6 8 165 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 3 122 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 3 126 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 3 130 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 8 169 0 8] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 8 173 0 26 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 177 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 177 1 3 8 177 1 4 2 181 1 5 2 21 1 6 8 177 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 3 134 0 26] 
#[0 3 138 0 9 0 15 0 26] 
#[0 8 181 0 26] 
#[1 8 185 0 15 3 142 0 26] 
#[1 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 4 169 0 58 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 8 189 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 8 189 0 117 8 189 0 118 8 189 0 121 4 181 1 11 2 29 1 32 2 29 1 33 2 29 1 34 4 181 1 37] 
#[0 8 193 0 9] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 6 201 0 39 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 197 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 197 1 3 8 197 1 4 2 181 1 5 2 21 1 6 8 197 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 3 146 0 2 3 146 0 3 3 146 0 5 3 146 0 6 3 146 0 9 3 146 0 10 3 146 0 12 3 146 0 13 3 146 0 15 3 146 0 16 3 146 0 17 3 146 0 20 3 146 0 22 3 146 0 24 3 146 0 25 3 146 0 26 3 146 0 27 3 146 0 28 3 146 0 30 3 146 0 32 3 146 0 33 3 146 0 36 6 89 0 38 3 146 0 39 3 146 0 40 3 146 0 65 3 146 0 91 3 146 0 93 3 146 0 94 3 146 0 96 3 146 0 97 3 146 0 98 8 201 0 235 8 205 0 236 4 61 0 237 3 146 1 40] 
#[0 3 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 4 53 0 38 8 209 0 90 8 213 0 180 6 205 0 237] 
#[1 3 154 0 2 3 154 0 3 3 154 0 5 3 154 0 6 3 154 0 9 3 154 0 10 3 154 0 12 3 154 0 13 3 154 0 15 3 154 0 16 3 154 0 17 3 154 0 20 3 154 0 22 3 154 0 24 3 154 0 25 3 154 0 26 3 154 0 27 3 154 0 28 3 154 0 30 3 154 0 32 3 154 0 33 3 154 0 36 6 89 0 38 3 154 0 39 3 154 0 40 3 154 0 65 3 154 0 91 3 154 0 93 3 154 0 94 3 154 0 96 3 154 0 97 3 154 0 98 8 201 0 235 8 217 0 236 4 61 0 237 3 154 1 40] 
#[1 4 53 0 38 8 209 0 90 8 221 0 180 6 205 0 237] 
#[1 2 53 0 1 2 57 0 8 8 225 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 8 229 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 3 158 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 3 162 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 8 237 0 105] 
#[0 8 241 0 9] 
#[0 8 245 0 9] 
#[0 3 166 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 8 249 0 9 8 253 0 26] 
#[0 3 170 0 9 0 26] 
#[1 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 4 169 0 58 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 9 1 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 9 1 0 117 9 1 0 118 9 1 0 121 4 181 1 11 2 29 1 32 2 29 1 33 2 29 1 34 4 181 1 37] 
#[0 9 5 0 8] 
#[1 1 33 0 90 9 9 0 182] 
#[1 3 174 0 8 3 174 0 13 3 174 0 17 3 174 0 26 3 174 0 27 3 174 0 37 3 174 0 42 3 174 0 43 3 174 0 44 3 174 0 45 3 174 0 46 3 174 0 47 6 153 0 48 3 174 0 49 3 174 0 50 3 174 0 51 3 174 0 52 3 174 0 53 3 174 0 54 3 174 0 55 3 174 0 56 3 174 0 58 6 157 0 59 3 174 0 60 3 174 0 61 3 174 0 62 3 174 0 66 3 174 0 67 3 174 0 68 3 174 0 69 3 174 0 70 3 174 0 72 3 174 0 73 3 174 0 74 3 174 0 75 3 174 0 76 3 174 0 77 3 174 0 78 3 174 0 79 3 174 0 80 3 174 0 81 3 174 0 82 3 174 0 83 3 174 0 85 3 174 0 86 3 174 0 87 3 174 0 88 3 174 0 89 3 174 0 90 3 174 0 94 3 174 0 99 3 174 0 100 3 174 0 101 3 174 0 102 3 174 0 103 3 174 0 104 3 174 0 105 9 13 0 217 9 17 0 220 3 174 1 40] 
#[0 3 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 3 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 3 186 0 8 3 186 0 13 3 186 0 17 3 186 0 26 3 186 0 27 3 186 0 37 3 186 0 42 3 186 0 43 3 186 0 44 3 186 0 45 3 186 0 46 3 186 0 47 6 153 0 48 3 186 0 49 3 186 0 50 3 186 0 51 3 186 0 52 3 186 0 53 3 186 0 54 3 186 0 55 3 186 0 56 3 186 0 58 6 157 0 59 3 186 0 60 3 186 0 61 3 186 0 62 3 186 0 66 3 186 0 67 3 186 0 68 3 186 0 69 3 186 0 70 3 186 0 72 3 186 0 73 3 186 0 74 3 186 0 75 3 186 0 76 3 186 0 77 3 186 0 78 3 186 0 79 3 186 0 80 3 186 0 81 3 186 0 82 3 186 0 83 3 186 0 85 3 186 0 86 3 186 0 87 3 186 0 88 3 186 0 89 3 186 0 90 3 186 0 94 3 186 0 99 3 186 0 100 3 186 0 101 3 186 0 102 3 186 0 103 3 186 0 104 3 186 0 105 9 21 0 216 6 165 0 217 9 25 0 220 3 186 1 40] 
#[0 9 29 0 9] 
#[0 3 190 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 3 194 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 3 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 3 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 3 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 3 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 3 214 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 3 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 9 33 0 20] 
#[0 3 222 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 3 226 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 91 0 92 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 9 37 0 39] 
#[0 3 230 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 3 234 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 9 41 0 39] 
#[0 3 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 2 53 0 1 2 57 0 8 9 45 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 9 49 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 18 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 15 0 18 0 16 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 24 0 18 0 25 0 18 0 26 1 63 0 27 0 18 0 28 0 18 0 30 0 18 0 32 0 18 0 33 0 18 0 36 0 18 0 38 0 18 0 39 0 18 0 40 0 18 0 52 0 18 0 63 0 18 0 65 0 18 0 90 0 18 0 91 0 18 0 93 0 18 0 94 0 18 0 96 0 18 0 97 0 18 0 98 0 18 0 105 9 53 1 28 0 18 1 40] 
#[1 7 173 0 15 3 242 0 26] 
#[1 0 185 0 27 0 18 0 105 9 57 1 28] 
#[0 9 61 0 105] 
#[0 3 246 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 9 65 0 244 9 65 0 245 9 65 0 246 9 65 0 247 9 65 0 248 9 65 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 217 0 105 9 69 0 118 9 69 0 120 3 237 1 32 3 237 1 33 3 237 1 34] 
#[1 2 53 0 1 2 57 0 8 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 9 73 0 122 9 73 0 123 9 73 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 9 77 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 225 0 238 1 225 0 239 1 225 0 240 2 101 0 241 2 101 0 242 2 101 0 243 9 89 0 247 9 89 0 248 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 3 250 0 19] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 1 91 0 105 2 77 0 147 9 93 0 154 9 93 0 227 9 93 0 228 4 225 1 36] 
#[1 9 101 0 21 5 117 0 105 9 105 0 147] 
#[0 3 254 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 4 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 4 6 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 4 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 4 14 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 4 18 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 4 22 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 4 26 0 2 1 95 0 3 4 26 0 5 4 26 0 6 4 26 0 9 1 99 0 10 4 26 0 12 4 26 0 15 4 26 0 16 1 103 0 22 4 26 0 24 4 26 0 26 4 26 0 27 4 26 0 28 4 26 0 30 4 26 0 32 4 26 0 33 4 26 0 36 4 26 0 39 4 26 0 40 4 26 0 65 4 26 0 91 4 26 0 93 4 26 0 94 4 26 0 96 4 26 0 97 4 26 0 98 4 26 1 40] 
#[1 4 30 0 2 1 107 0 3 4 30 0 5 4 30 0 6 4 30 0 9 1 111 0 10 4 30 0 12 4 30 0 15 4 30 0 16 1 115 0 22 4 30 0 24 4 30 0 26 4 30 0 27 4 30 0 28 4 30 0 30 4 30 0 32 4 30 0 33 4 30 0 36 4 30 0 39 4 30 0 40 4 30 0 65 4 30 0 91 4 30 0 93 4 30 0 94 4 30 0 96 4 30 0 97 4 30 0 98 4 30 1 40] 
#[1 4 34 0 2 4 34 0 3 4 34 0 5 4 34 0 6 4 34 0 9 4 34 0 10 1 119 0 12 4 34 0 15 1 123 0 16 4 34 0 22 4 34 0 24 4 34 0 26 4 34 0 27 4 34 0 28 4 34 0 30 4 34 0 32 4 34 0 33 4 34 0 36 4 34 0 39 4 34 0 40 4 34 0 65 4 34 0 91 4 34 0 93 4 34 0 94 4 34 0 96 4 34 0 97 4 34 0 98 4 34 1 40] 
#[1 4 38 0 2 4 38 0 3 4 38 0 5 4 38 0 6 4 38 0 9 4 38 0 10 1 127 0 12 4 38 0 15 1 131 0 16 4 38 0 22 4 38 0 24 4 38 0 26 4 38 0 27 4 38 0 28 4 38 0 30 4 38 0 32 4 38 0 33 4 38 0 36 4 38 0 39 4 38 0 40 4 38 0 65 4 38 0 91 4 38 0 93 4 38 0 94 4 38 0 96 4 38 0 97 4 38 0 98 4 38 1 40] 
#[1 4 42 0 2 4 42 0 3 4 42 0 5 4 42 0 6 4 42 0 9 4 42 0 10 1 135 0 12 4 42 0 15 1 139 0 16 4 42 0 22 4 42 0 24 4 42 0 26 4 42 0 27 4 42 0 28 4 42 0 30 4 42 0 32 4 42 0 33 4 42 0 36 4 42 0 39 4 42 0 40 4 42 0 65 4 42 0 91 4 42 0 93 4 42 0 94 4 42 0 96 4 42 0 97 4 42 0 98 4 42 1 40] 
#[1 4 46 0 2 4 46 0 3 4 46 0 5 4 46 0 6 4 46 0 9 4 46 0 10 4 46 0 12 4 46 0 15 4 46 0 16 4 46 0 22 4 46 0 24 4 46 0 26 4 46 0 27 1 143 0 28 4 46 0 30 4 46 0 32 4 46 0 33 4 46 0 36 4 46 0 39 4 46 0 40 4 46 0 65 4 46 0 91 4 46 0 93 4 46 0 94 4 46 0 96 1 147 0 97 1 151 0 98 4 46 1 40] 
#[1 4 50 0 2 4 50 0 3 4 50 0 5 4 50 0 6 4 50 0 9 4 50 0 10 4 50 0 12 4 50 0 15 4 50 0 16 4 50 0 22 4 50 0 24 4 50 0 26 4 50 0 27 1 155 0 28 4 50 0 30 4 50 0 32 4 50 0 33 4 50 0 36 4 50 0 39 4 50 0 40 4 50 0 65 4 50 0 91 4 50 0 93 4 50 0 94 4 50 0 96 1 159 0 97 1 163 0 98 4 50 1 40] 
#[1 4 54 0 2 4 54 0 3 4 54 0 5 4 54 0 6 4 54 0 9 4 54 0 10 4 54 0 12 4 54 0 15 4 54 0 16 4 54 0 22 4 54 0 24 4 54 0 26 4 54 0 27 1 167 0 28 4 54 0 30 4 54 0 32 4 54 0 33 4 54 0 36 4 54 0 39 4 54 0 40 4 54 0 65 4 54 0 91 4 54 0 93 4 54 0 94 4 54 0 96 1 171 0 97 1 175 0 98 4 54 1 40] 
#[1 4 53 0 38 4 57 0 236 4 61 0 237] 
#[1 4 58 0 2 4 58 0 3 4 58 0 5 4 58 0 6 4 58 0 9 4 58 0 10 4 58 0 12 4 58 0 15 4 58 0 16 4 58 0 22 4 58 0 24 4 58 0 26 4 58 0 27 4 58 0 28 4 58 0 30 4 58 0 32 4 58 0 33 4 58 0 36 4 58 0 39 4 58 0 40 4 58 0 65 4 58 0 91 4 58 0 93 4 58 0 94 4 58 0 96 4 58 0 97 4 58 0 98 5 117 0 105 9 109 0 147 4 58 1 40] 
#[1 4 62 0 2 4 62 0 3 4 62 0 5 4 62 0 6 4 62 0 9 4 62 0 10 4 62 0 12 4 62 0 15 4 62 0 16 4 62 0 22 4 62 0 24 4 62 0 26 4 62 0 27 1 179 0 28 4 62 0 30 4 62 0 32 4 62 0 33 4 62 0 36 4 62 0 39 4 62 0 40 4 62 0 65 4 62 0 91 4 62 0 93 4 62 0 94 4 62 0 96 1 183 0 97 1 187 0 98 4 62 1 40] 
#[1 4 66 0 2 4 66 0 3 4 66 0 5 4 66 0 6 4 66 0 9 4 66 0 10 4 66 0 12 4 66 0 15 4 66 0 16 4 66 0 22 4 66 0 24 4 66 0 26 1 191 0 27 4 66 0 28 1 195 0 30 4 66 0 32 1 199 0 33 4 66 0 36 4 66 0 39 4 66 0 40 1 203 0 65 4 66 0 91 4 66 0 93 4 66 0 94 1 207 0 96 4 66 0 97 4 66 0 98 4 66 1 40] 
#[1 4 70 0 2 4 70 0 3 4 70 0 5 4 70 0 6 4 70 0 9 4 70 0 10 4 70 0 12 4 70 0 15 4 70 0 16 4 70 0 22 4 70 0 24 4 70 0 26 1 211 0 27 4 70 0 28 1 215 0 30 4 70 0 32 1 219 0 33 4 70 0 36 4 70 0 39 4 70 0 40 1 223 0 65 4 70 0 91 4 70 0 93 4 70 0 94 1 227 0 96 4 70 0 97 4 70 0 98 4 70 1 40] 
#[1 1 231 0 2 4 74 0 3 4 74 0 5 4 74 0 6 4 74 0 9 4 74 0 10 4 74 0 12 4 74 0 15 4 74 0 16 4 74 0 22 4 74 0 24 4 74 0 26 4 74 0 27 4 74 0 28 4 74 0 30 1 235 0 32 4 74 0 33 4 74 0 36 4 74 0 39 4 74 0 40 4 74 0 65 4 74 0 91 4 74 0 93 4 74 0 94 4 74 0 96 4 74 0 97 4 74 0 98 4 74 1 40] 
#[1 4 78 0 2 4 78 0 3 1 239 0 5 4 78 0 6 4 78 0 9 4 78 0 10 4 78 0 12 4 78 0 15 4 78 0 16 4 78 0 22 4 78 0 24 4 78 0 26 4 78 0 27 4 78 0 28 4 78 0 30 4 78 0 32 4 78 0 33 4 78 0 36 4 78 0 39 4 78 0 40 4 78 0 65 4 78 0 91 4 78 0 93 4 78 0 94 4 78 0 96 4 78 0 97 4 78 0 98 4 78 1 40] 
#[1 4 82 0 2 4 82 0 3 4 82 0 5 4 82 0 6 4 82 0 9 4 82 0 10 4 82 0 12 4 82 0 15 4 82 0 16 4 82 0 22 4 82 0 24 4 82 0 26 4 82 0 27 4 82 0 28 4 82 0 30 4 82 0 32 4 82 0 33 4 82 0 36 4 82 0 39 1 243 0 40 4 82 0 65 4 82 0 91 4 82 0 93 4 82 0 94 4 82 0 96 4 82 0 97 4 82 0 98 4 82 1 40] 
#[1 4 86 0 2 4 86 0 3 4 86 0 5 4 86 0 6 4 86 0 9 4 86 0 10 4 86 0 12 4 86 0 15 4 86 0 16 4 86 0 22 4 86 0 24 4 86 0 26 4 86 0 27 4 86 0 28 4 86 0 30 4 86 0 32 4 86 0 33 4 86 0 36 4 86 0 39 4 86 0 40 4 86 0 65 1 247 0 91 4 86 0 93 4 86 0 94 4 86 0 96 4 86 0 97 4 86 0 98 4 86 1 40] 
#[0 9 113 0 24] 
#[1 4 90 0 2 4 90 0 3 4 90 0 5 1 251 0 6 4 90 0 9 4 90 0 10 4 90 0 12 4 90 0 15 4 90 0 16 4 90 0 22 4 90 0 24 4 90 0 26 4 90 0 27 4 90 0 28 4 90 0 30 4 90 0 32 4 90 0 33 4 90 0 36 4 90 0 39 4 90 0 40 4 90 0 65 4 90 0 91 4 90 0 93 4 90 0 94 4 90 0 96 4 90 0 97 4 90 0 98 4 90 1 40] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 9 117 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 9 117 0 117 9 117 0 118 9 117 0 121 9 121 1 26 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 5 77 0 105 9 125 1 25] 
#[0 4 94 0 44 0 46 0 49 0 54 0 57 0 60 0 63 0 66 0 68 0 76 0 87 0 90 0 105] 
#[1 7 161 0 105 9 129 0 152] 
#[1 7 161 0 105 9 133 0 152] 
#[0 9 137 0 8] 
#[1 4 98 0 26 9 141 0 38 4 98 0 52 5 149 0 84 4 98 0 90 9 145 0 155] 
#[1 4 102 0 26 9 141 0 38 4 102 0 52 5 149 0 84 4 102 0 90 9 149 0 155] 
#[1 5 117 0 105 9 153 0 145 9 153 0 146 5 133 0 147] 
#[0 4 106 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 8 209 0 90 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 9 157 0 148 1 121 0 151 9 157 0 180 1 221 0 222 1 225 0 223 9 157 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 9 157 1 3 9 157 1 4 2 181 1 5 2 21 1 6 9 157 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 7 173 0 15 9 169 0 26] 
#[1 5 153 0 90 9 173 0 161] 
#[0 4 110 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 2 142 0 15 0 26 0 52 0 63 0 90] 
#[0 4 114 0 15 0 26 0 52 0 90] 
#[1 9 177 0 15 4 118 0 26 4 118 0 52 4 118 0 90] 
#[1 9 181 0 8 3 249 0 20] 
#[1 9 185 0 8 0 170 0 13 0 170 0 17 0 170 0 20 0 170 0 25 0 170 0 38] 
#[0 4 122 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 213 0 51 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 9 189 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 4 33 0 135 1 121 0 151 4 33 0 163 4 33 0 182 9 193 0 183 4 33 0 184 4 33 0 185 1 141 0 186 4 33 0 187 4 33 0 188 4 33 0 189 4 33 0 190 4 33 0 191 1 165 0 192 4 33 0 193 4 33 0 194 4 33 0 195 4 33 0 201 4 33 0 202 4 33 0 203 4 33 0 207 4 33 0 208 4 33 0 209 4 33 0 210 4 33 0 211 4 33 0 212 4 33 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 4 33 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 4 33 1 35 2 45 1 36 2 49 1 38] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 213 0 51 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 9 197 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 6 185 0 135 1 121 0 151 6 185 0 163 6 185 0 182 6 185 0 184 6 185 0 185 1 141 0 186 6 185 0 187 6 185 0 188 6 185 0 189 6 185 0 190 6 185 0 191 1 165 0 192 6 185 0 193 6 185 0 194 6 185 0 195 6 185 0 201 6 185 0 202 6 185 0 203 6 185 0 207 6 185 0 208 6 185 0 209 6 185 0 210 6 185 0 211 6 185 0 212 6 185 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 6 185 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 6 185 1 35 2 45 1 36 2 49 1 38] 
#[1 1 90 0 13 1 90 0 17 1 255 0 20 1 94 0 25] 
#[0 4 126 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 9 205 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 9 209 0 153 9 213 0 154 4 225 1 36] 
#[1 7 161 0 105 9 217 0 152] 
#[1 7 161 0 105 9 221 0 152] 
#[1 0 33 0 26 2 193 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 9 225 0 94 0 91 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 9 249 0 132 9 233 0 133 0 141 0 134 9 249 0 135 9 249 0 143 9 241 0 150 9 249 0 163 9 249 0 164 9 245 0 166 9 249 0 167 9 249 0 168 9 249 0 179 0 141 1 11 9 249 1 18 2 209 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 4 130 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 10 5 0 15 2 65 0 16 0 177 0 17 0 185 0 27 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 8 1 0 90 10 9 0 94 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 10 13 1 3 2 133 1 5 2 21 1 6 10 13 1 11 10 13 1 15 10 13 1 16 10 17 1 17 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 202 0 2 0 202 0 3 0 202 0 4 0 202 0 5 0 202 0 6 0 202 0 7 0 202 0 9 0 202 0 10 0 202 0 11 0 202 0 12 0 202 0 13 0 202 0 14 0 202 0 16 0 202 0 17 0 202 0 18 0 195 0 20 0 202 0 22 0 202 0 23 0 195 0 25 0 227 0 27 0 202 0 28 0 202 0 29 0 202 0 30 2 3 0 31 0 202 0 32 0 202 0 33 0 202 0 34 0 202 0 35 0 202 0 36 0 195 0 38 0 202 0 40 0 202 0 41 0 202 0 65 0 202 0 91 0 202 0 92 0 202 0 93 0 202 0 96 0 202 0 97 0 202 0 98 4 41 1 28] 
#[0 4 134 0 9 0 15 0 94] 
#[0 4 138 0 9 0 15 0 94] 
#[0 10 25 0 9] 
#[1 4 142 0 9 10 29 0 15] 
#[0 4 146 0 9 0 15] 
#[0 4 150 0 9] 
#[0 4 154 0 9 0 15 0 94] 
#[1 2 217 0 105 10 33 0 118 10 33 0 119 3 237 1 32 3 237 1 33 3 237 1 34] 
#[1 0 33 0 26 2 193 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 2 213 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 1 33 0 90 10 37 0 94 0 91 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 10 45 0 132 2 237 0 133 0 141 0 134 10 45 0 135 10 41 0 140 10 45 0 141 10 45 0 142 10 45 0 143 10 45 0 149 2 205 0 150 10 45 0 158 10 45 0 159 3 9 0 160 10 45 0 163 10 45 0 164 3 13 0 182 0 141 1 11 10 45 1 18 3 17 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 5 213 0 63 8 41 0 90 10 49 0 137 10 53 0 139] 
#[1 8 41 0 90 10 57 0 139] 
#[0 4 158 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 4 162 0 9 0 15 0 90] 
#[0 4 166 0 15 0 90] 
#[1 10 61 0 15 4 170 0 90] 
#[1 8 73 0 26 10 65 0 94 10 69 1 22] 
#[1 0 33 0 26 2 193 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 2 213 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 1 33 0 90 4 174 0 94 0 91 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 10 45 0 132 2 237 0 133 0 141 0 134 10 45 0 135 10 73 0 140 10 45 0 141 10 45 0 142 10 45 0 143 10 45 0 149 2 205 0 150 10 45 0 158 10 45 0 159 3 9 0 160 10 45 0 163 10 45 0 164 3 13 0 182 0 141 1 11 10 45 1 18 3 17 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 4 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 189 0 37 10 77 0 105 3 141 1 11] 
#[1 10 81 0 15 8 73 0 26 10 85 0 94 10 89 1 22] 
#[0 4 182 0 15 0 26 0 94] 
#[0 10 93 0 94] 
#[0 4 186 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 10 97 0 10 6 221 0 105] 
#[0 4 190 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[0 10 101 0 26] 
#[1 2 217 0 105 10 105 0 118 10 105 0 120 3 237 1 32 3 237 1 33 3 237 1 34] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 72 0 147 0 73 0 151 0 74 0 155 0 76 2 7 0 77 0 163 0 78 0 167 0 81 0 171 0 85 0 175 0 87 0 179 0 88 10 109 0 94 0 183 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 10 129 0 132 9 233 0 133 0 141 0 134 10 129 0 135 10 129 0 143 10 121 0 150 10 129 0 163 10 129 0 164 10 125 0 171 10 129 0 172 10 129 0 173 10 129 0 174 3 49 0 175 3 53 0 176 10 129 0 179 0 141 1 11 10 129 1 18 2 209 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 10 133 0 15 8 117 0 90 10 137 0 170] 
#[0 4 194 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 7 249 0 90 10 141 0 165] 
#[1 8 37 0 57 5 213 0 63 8 41 0 90 10 145 0 136 10 149 0 137 10 153 0 139] 
#[1 5 217 0 90 10 157 1 19] 
#[0 4 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 8 113 0 57 8 117 0 90 10 161 0 169 10 165 0 170] 
#[0 4 202 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[0 4 206 0 15 0 96] 
#[0 4 210 0 15 0 96] 
#[0 4 214 0 15 0 96] 
#[0 10 169 0 26] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 10 173 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 10 173 1 3 10 173 1 4 2 181 1 5 2 21 1 6 10 173 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 169 0 8 10 177 0 9 0 173 0 13 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 6 69 0 192 10 181 0 205 10 185 0 206 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 6 69 0 245 6 69 0 246 6 69 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 10 189 0 26] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 10 193 0 26 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 10 197 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 10 197 1 3 10 197 1 4 2 181 1 5 2 21 1 6 10 197 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 10 201 0 192 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 10 201 0 245 10 201 0 246 10 201 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 5 117 0 105 6 253 0 144 5 125 0 145 5 125 0 146 10 205 0 147] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 10 209 0 182 10 209 0 187 10 209 0 188 10 209 0 189 10 209 0 190 10 209 0 191 1 165 0 192 10 209 0 193 10 209 0 194 10 209 0 195 10 209 0 201 10 209 0 202 10 209 0 203 10 209 0 207 10 209 0 208 10 209 0 209 10 209 0 210 10 209 0 211 10 209 0 212 10 209 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 10 209 1 35 2 49 1 38] 
#[0 10 213 0 39] 
#[0 4 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 4 222 0 2 4 222 0 3 4 222 0 5 4 222 0 6 4 222 0 9 4 222 0 10 4 222 0 12 4 222 0 13 4 222 0 15 4 222 0 16 4 222 0 17 4 222 0 20 4 222 0 22 4 222 0 24 4 222 0 25 4 222 0 26 4 222 0 27 4 222 0 28 4 222 0 30 4 222 0 32 4 222 0 33 4 222 0 36 4 53 0 38 4 222 0 39 4 222 0 40 4 222 0 65 4 222 0 91 4 222 0 93 4 222 0 94 4 222 0 96 4 222 0 97 4 222 0 98 6 205 0 237 4 222 1 40] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 10 217 0 15 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 8 209 0 90 10 221 0 94 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 10 225 0 148 1 121 0 151 10 225 0 180 10 229 0 181 1 221 0 222 1 225 0 223 10 225 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 10 225 1 3 10 225 1 4 2 181 1 5 2 21 1 6 10 225 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 4 226 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 4 230 0 2 4 230 0 3 4 230 0 5 4 230 0 6 4 230 0 9 4 230 0 10 4 230 0 12 4 230 0 13 4 230 0 15 4 230 0 16 4 230 0 17 4 230 0 20 4 230 0 22 4 230 0 24 4 230 0 25 4 230 0 26 4 230 0 27 4 230 0 28 4 230 0 30 4 230 0 32 4 230 0 33 4 230 0 36 4 53 0 38 4 230 0 39 4 230 0 40 4 230 0 65 4 230 0 91 4 230 0 93 4 230 0 94 4 230 0 96 4 230 0 97 4 230 0 98 6 205 0 237 4 230 1 40] 
#[0 4 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 4 238 0 2 4 238 0 3 4 238 0 5 4 238 0 6 4 238 0 9 4 238 0 10 4 238 0 12 4 238 0 13 4 238 0 15 4 238 0 16 4 238 0 17 4 238 0 20 4 238 0 22 4 238 0 24 4 238 0 25 4 238 0 26 4 238 0 27 4 238 0 28 4 238 0 30 4 238 0 32 4 238 0 33 4 238 0 36 4 238 0 38 4 238 0 39 4 238 0 40 4 238 0 65 8 41 0 90 4 238 0 91 4 238 0 93 4 238 0 94 4 238 0 96 4 238 0 97 4 238 0 98 10 233 0 139 4 238 1 40] 
#[1 10 237 0 9 10 241 0 15] 
#[0 4 242 0 9 0 15] 
#[0 10 245 0 8] 
#[1 10 249 0 90 10 253 0 196] 
#[1 1 33 0 90 11 1 0 182] 
#[0 4 246 0 90] 
#[1 11 5 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 11 9 0 215 6 149 1 36] 
#[1 5 117 0 105 11 13 0 146 11 17 0 147] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 11 21 0 218 11 25 1 36] 
#[0 4 250 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 4 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 5 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 5 6 0 8 5 6 0 13 5 6 0 17 5 6 0 26 5 6 0 27 5 6 0 37 5 6 0 42 5 6 0 43 5 6 0 44 5 6 0 45 5 6 0 46 5 6 0 47 6 153 0 48 5 6 0 49 5 6 0 50 5 6 0 51 5 6 0 52 5 6 0 53 5 6 0 54 5 6 0 55 5 6 0 56 5 6 0 58 6 157 0 59 5 6 0 60 5 6 0 61 5 6 0 62 5 6 0 66 5 6 0 67 5 6 0 68 5 6 0 69 5 6 0 70 5 6 0 72 5 6 0 73 5 6 0 74 5 6 0 75 5 6 0 76 5 6 0 77 5 6 0 78 5 6 0 79 5 6 0 80 5 6 0 81 5 6 0 82 5 6 0 83 5 6 0 85 5 6 0 86 5 6 0 87 5 6 0 88 5 6 0 89 5 6 0 90 5 6 0 94 5 6 0 99 5 6 0 100 5 6 0 101 5 6 0 102 5 6 0 103 5 6 0 104 5 6 0 105 9 13 0 217 11 29 0 220 5 6 1 40] 
#[0 5 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 11 33 0 182 11 33 0 187 11 33 0 188 11 33 0 189 11 33 0 190 11 33 0 191 1 165 0 192 11 33 0 193 11 33 0 194 11 33 0 195 11 33 0 201 11 33 0 202 11 33 0 203 11 33 0 207 11 33 0 208 11 33 0 209 11 33 0 210 11 33 0 211 11 33 0 212 11 33 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 11 33 1 35 2 49 1 38] 
#[1 0 185 0 27 2 11 0 105 11 41 1 28] 
#[0 5 14 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 5 18 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 5 22 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 11 45 0 9 10 241 0 15] 
#[0 5 26 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 105 1 40] 
#[0 11 49 0 105] 
#[0 11 53 0 8] 
#[0 5 30 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 11 57 0 9] 
#[1 0 238 0 2 0 238 0 3 0 238 0 5 0 238 0 6 0 238 0 9 0 238 0 10 0 238 0 12 0 238 0 13 0 238 0 15 0 238 0 16 0 238 0 17 0 203 0 20 0 238 0 22 0 238 0 24 0 246 0 25 0 238 0 26 0 238 0 27 0 238 0 28 0 238 0 30 0 238 0 32 0 238 0 33 0 238 0 36 4 73 0 38 0 238 0 39 0 238 0 40 0 238 0 65 0 238 0 91 0 238 0 93 0 238 0 94 0 238 0 96 0 238 0 97 0 238 0 98 0 238 1 40] 
#[0 5 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 118 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 1 134 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 5 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 5 42 0 9 0 15] 
#[0 3 10 0 9 0 15] 
#[1 5 117 0 105 11 61 0 147] 
#[1 5 46 0 9 5 46 0 15 4 241 0 38] 
#[1 5 50 0 2 5 50 0 3 5 50 0 5 5 50 0 6 5 50 0 9 5 50 0 10 5 50 0 12 5 50 0 15 5 50 0 16 5 50 0 22 5 50 0 24 5 50 0 26 5 50 0 27 5 50 0 28 5 50 0 30 5 50 0 32 5 50 0 33 5 50 0 36 4 241 0 38 5 50 0 39 5 50 0 40 5 50 0 65 5 50 0 91 5 50 0 93 5 50 0 94 5 50 0 96 5 50 0 97 5 50 0 98 5 50 1 40] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 11 65 1 3 2 133 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 5 54 0 5 0 15 0 96] 
#[1 11 69 0 5 5 58 0 15 5 58 0 96] 
#[0 5 62 0 15 0 96] 
#[1 5 66 0 26 9 141 0 38 5 66 0 52 5 149 0 84 5 66 0 90 11 73 0 155] 
#[1 5 70 0 26 9 141 0 38 5 70 0 52 5 149 0 84 5 70 0 90 11 77 0 155] 
#[1 11 81 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 11 85 0 153 9 213 0 154 4 225 1 36] 
#[0 11 89 0 39] 
#[0 5 74 0 26 0 52 0 90] 
#[0 5 78 0 26 0 52 0 90] 
#[0 5 82 0 15 0 26] 
#[0 5 86 0 9 0 15 0 26] 
#[0 5 90 0 9 0 15 0 26 0 94] 
#[0 5 94 0 9 0 15 0 26 0 94] 
#[0 5 98 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 5 102 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 2 217 0 105 11 93 0 118 11 93 0 119 3 237 1 32 3 237 1 33 3 237 1 34] 
#[1 2 53 0 1 2 57 0 8 11 97 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 11 101 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 11 105 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 11 109 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 5 106 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 213 0 51 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 11 113 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 6 185 0 135 1 121 0 151 6 185 0 163 6 185 0 182 6 185 0 184 6 185 0 185 1 141 0 186 6 185 0 187 6 185 0 188 6 185 0 189 6 185 0 190 6 185 0 191 1 165 0 192 6 185 0 193 6 185 0 194 6 185 0 195 6 185 0 201 6 185 0 202 6 185 0 203 6 185 0 207 6 185 0 208 6 185 0 209 6 185 0 210 6 185 0 211 6 185 0 212 6 185 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 6 185 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 6 185 1 35 2 45 1 36 2 49 1 38] 
#[0 5 110 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 11 117 0 79 11 121 0 82 6 233 0 105] 
#[0 5 114 0 84 0 90] 
#[1 11 125 0 9 11 129 0 15] 
#[0 5 118 0 9 0 15] 
#[1 9 141 0 38 5 149 0 84 5 122 0 90 11 133 0 155] 
#[1 9 141 0 38 5 149 0 84 5 126 0 90 11 137 0 155] 
#[0 5 130 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 5 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 2 193 0 27 3 117 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 121 0 50 0 71 0 54 3 125 0 56 0 53 0 58 0 75 0 60 0 79 0 66 3 129 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 0 91 0 105 5 137 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 5 137 0 117 5 137 0 118 5 137 0 121 3 133 0 134 3 133 1 11 5 89 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 5 138 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 11 141 0 26 11 145 0 52] 
#[1 0 33 0 26 2 193 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 0 81 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 11 149 0 94 0 91 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 11 153 0 132 9 233 0 133 0 141 0 134 11 153 0 135 11 153 0 143 9 241 0 150 11 153 0 163 11 153 0 164 11 153 0 167 11 153 0 168 11 153 0 179 0 141 1 11 11 153 1 18 2 209 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 5 142 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 5 146 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 5 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 11 157 0 94] 
#[0 5 154 0 9 0 15 0 94] 
#[0 5 158 0 15 0 94] 
#[1 11 161 0 15 11 165 0 94] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 8 1 0 90 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 11 169 1 3 2 133 1 5 2 21 1 6 11 169 1 11 11 169 1 15 11 169 1 16 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 5 162 0 9 0 15 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 11 173 0 105 11 177 1 14] 
#[0 5 166 0 63 0 90] 
#[0 5 170 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 33 0 26 2 193 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 2 213 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 1 33 0 90 11 181 0 94 0 91 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 11 185 0 132 2 237 0 133 0 141 0 134 11 185 0 135 11 185 0 141 11 185 0 142 11 185 0 143 11 185 0 149 2 205 0 150 11 185 0 158 11 185 0 159 3 9 0 160 11 185 0 163 11 185 0 164 3 13 0 182 0 141 1 11 11 185 1 18 3 17 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 5 174 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[1 8 41 0 90 11 189 0 139] 
#[0 5 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 5 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 2 217 0 105 11 193 0 118 11 193 0 120 3 237 1 32 3 237 1 33 3 237 1 34] 
#[0 5 186 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 11 197 0 94] 
#[1 0 33 0 26 2 193 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 87 0 76 2 213 0 77 0 85 0 78 0 89 0 81 0 93 0 85 0 22 0 87 0 97 0 88 1 33 0 90 5 190 0 94 0 91 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 11 185 0 132 2 237 0 133 0 141 0 134 11 185 0 135 11 185 0 141 11 185 0 142 11 185 0 143 11 185 0 149 2 205 0 150 11 185 0 158 11 185 0 159 3 9 0 160 11 185 0 163 11 185 0 164 3 13 0 182 0 141 1 11 11 185 1 18 3 17 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 11 201 0 8 5 194 0 15 5 194 0 26 8 41 0 90 5 194 0 94 11 205 0 139] 
#[1 8 73 0 26 0 6 0 37 11 209 0 94 0 6 0 105 8 81 1 10 11 213 1 21 11 217 1 22] 
#[0 5 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 11 221 0 94] 
#[0 5 202 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 11 225 0 26] 
#[0 5 206 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[0 5 210 0 15 0 90] 
#[0 5 214 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 2 54 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 2 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 11 141 0 26] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 72 0 147 0 73 0 151 0 74 0 155 0 76 2 7 0 77 0 163 0 78 0 167 0 81 0 171 0 85 0 175 0 87 0 179 0 88 11 229 0 94 0 183 0 105 2 221 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 2 221 0 117 2 221 0 118 2 221 0 121 11 233 0 132 9 233 0 133 0 141 0 134 11 233 0 135 11 233 0 143 10 121 0 150 11 233 0 163 11 233 0 164 11 233 0 172 11 233 0 173 11 233 0 174 3 49 0 175 3 53 0 176 11 233 0 179 0 141 1 11 11 233 1 18 2 209 1 23 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 5 218 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 2 217 0 105 11 237 0 118 11 237 0 120 3 237 1 32 3 237 1 33 3 237 1 34] 
#[0 5 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 5 226 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[1 5 213 0 63 8 41 0 90 11 241 0 137 11 245 0 139] 
#[1 8 41 0 90 11 249 0 139] 
#[0 5 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 5 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 10 133 0 15 8 117 0 90 11 253 0 170] 
#[0 5 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 5 242 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 12 1 0 9] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 12 5 0 182 12 5 0 187 12 5 0 188 12 5 0 189 12 5 0 190 12 5 0 191 1 165 0 192 12 5 0 193 12 5 0 194 12 5 0 195 12 5 0 201 12 5 0 202 12 5 0 203 12 5 0 207 12 5 0 208 12 5 0 209 12 5 0 210 12 5 0 211 12 5 0 212 12 5 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 12 5 1 35 2 49 1 38] 
#[0 12 9 0 9] 
#[1 5 246 0 9 8 185 0 15] 
#[1 0 169 0 8 12 13 0 9 0 173 0 13 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 6 69 0 192 12 17 0 205 10 185 0 206 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 6 69 0 245 6 69 0 246 6 69 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 169 0 8 12 21 0 9 0 173 0 13 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 6 69 0 192 12 25 0 205 10 185 0 206 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 6 69 0 245 6 69 0 246 6 69 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 12 29 0 26] 
#[0 5 250 0 9 0 15 0 26] 
#[1 3 58 0 15 12 33 0 24 3 58 0 26 7 181 0 31 4 241 0 38] 
#[1 5 254 0 8 5 254 0 13 5 254 0 17 5 254 0 26 5 254 0 27 5 254 0 37 5 254 0 42 5 254 0 43 5 254 0 44 5 254 0 45 5 254 0 46 5 254 0 47 5 254 0 49 5 254 0 50 5 254 0 51 5 254 0 52 5 254 0 53 5 254 0 54 12 37 0 55 5 254 0 56 5 254 0 58 5 254 0 60 5 254 0 61 5 254 0 62 5 254 0 66 5 254 0 67 5 254 0 68 5 254 0 69 5 254 0 70 5 254 0 72 5 254 0 73 5 254 0 74 5 254 0 75 5 254 0 76 5 254 0 77 5 254 0 78 5 254 0 79 5 254 0 80 5 254 0 81 5 254 0 82 5 254 0 83 5 254 0 85 5 254 0 86 5 254 0 87 5 254 0 88 5 254 0 89 5 254 0 90 5 254 0 94 5 254 0 99 5 254 0 100 5 254 0 101 5 254 0 102 5 254 0 103 5 254 0 104 5 254 0 105 5 254 1 40] 
#[0 6 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 12 41 0 94] 
#[0 6 6 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 6 10 0 15 0 94] 
#[1 12 45 0 15 12 49 0 94] 
#[0 6 14 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 6 18 0 2 6 18 0 3 6 18 0 5 6 18 0 6 6 18 0 9 6 18 0 10 6 18 0 12 6 18 0 13 6 18 0 15 6 18 0 16 6 18 0 17 6 18 0 20 6 18 0 22 6 18 0 24 6 18 0 25 6 18 0 26 6 18 0 27 6 18 0 28 6 18 0 30 6 18 0 32 6 18 0 33 6 18 0 36 6 18 0 38 6 18 0 39 6 18 0 40 6 18 0 65 8 41 0 90 6 18 0 91 6 18 0 93 6 18 0 94 6 18 0 96 6 18 0 97 6 18 0 98 12 53 0 139 6 18 1 40] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 12 57 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 12 57 1 3 12 57 1 4 2 181 1 5 2 21 1 6 12 57 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 12 61 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 12 65 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 12 69 0 47 12 73 0 52 12 77 0 94 12 81 0 197 12 85 0 198 12 89 0 199 12 93 0 200] 
#[0 6 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 30 0 90] 
#[0 6 34 0 9 0 26] 
#[0 6 38 0 9 0 26] 
#[1 7 181 0 31 4 241 0 38] 
#[0 12 97 0 9] 
#[1 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 4 169 0 58 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 12 101 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 12 101 0 117 12 101 0 118 12 101 0 121 12 105 0 219 4 181 1 11 2 29 1 32 2 29 1 33 2 29 1 34 4 181 1 37] 
#[0 6 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 50 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 91 0 92 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 12 109 0 105] 
#[0 6 54 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 6 58 0 8 12 113 0 27 12 117 1 27] 
#[1 2 53 0 1 2 57 0 8 12 121 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 12 125 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 9 73 0 122 9 73 0 123 9 73 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 12 129 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 225 0 238 1 225 0 239 1 225 0 240 2 101 0 241 2 101 0 242 2 101 0 243 12 133 0 247 12 133 0 248 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 6 62 0 9 6 62 0 15 4 241 0 38] 
#[0 6 66 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 12 137 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 12 137 0 117 12 137 0 118 12 137 0 121 2 29 1 32 2 29 1 33 2 29 1 34] 
#[0 6 70 0 26 0 52 0 90] 
#[0 6 74 0 26 0 52 0 90] 
#[0 6 78 0 26 0 38 0 52 0 84 0 90] 
#[1 12 141 0 9 11 129 0 15] 
#[0 6 82 0 26 0 38 0 52 0 84 0 90] 
#[0 6 86 0 15 0 26 0 52 0 90] 
#[0 12 145 0 26] 
#[1 12 149 0 9 10 241 0 15] 
#[0 12 153 0 26] 
#[1 12 157 0 9 10 241 0 15] 
#[0 6 90 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 12 161 0 8] 
#[0 12 165 0 8] 
#[0 6 94 0 84 0 90] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 76 0 14 0 105 12 169 0 154 4 225 1 36] 
#[0 6 98 0 90] 
#[0 6 102 0 90] 
#[0 3 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 8 209 0 90 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 12 173 0 148 1 121 0 151 12 173 0 180 1 221 0 222 1 225 0 223 12 173 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 12 173 1 3 12 173 1 4 2 181 1 5 2 21 1 6 12 173 1 8 12 177 1 11 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 6 106 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105 1 40] 
#[0 6 110 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 6 114 0 9 0 15 0 94] 
#[1 2 53 0 1 3 149 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 189 0 37 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 8 1 0 90 12 181 0 94 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 1 221 0 222 1 225 0 223 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 12 185 1 3 2 133 1 5 2 21 1 6 12 185 1 11 12 185 1 15 12 185 1 16 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 6 118 0 9 0 15 0 94] 
#[0 6 122 0 9 0 15] 
#[0 10 21 0 31] 
#[0 6 126 0 9 0 15] 
#[0 6 130 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 91 0 93 0 94 0 96 0 97 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 90 0 94 0 105] 
#[0 6 138 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 142 0 15 0 90] 
#[0 6 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 2 53 0 1 2 57 0 8 12 189 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 12 193 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 6 150 0 15 0 26 0 94] 
#[0 6 154 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 158 0 15 0 26 0 94] 
#[0 12 197 0 94] 
#[0 6 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 166 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 77 0 78 0 81 0 85 0 88 1 40] 
#[0 6 170 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 174 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 6 178 0 15 0 90] 
#[1 8 41 0 90 12 201 0 139] 
#[0 6 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 186 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 6 190 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 12 205 0 26] 
#[0 6 194 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 12 209 0 182 12 209 0 187 12 209 0 188 12 209 0 189 12 209 0 190 12 209 0 191 1 165 0 192 12 209 0 193 12 209 0 194 12 209 0 195 12 209 0 201 12 209 0 202 12 209 0 203 12 209 0 207 12 209 0 208 12 209 0 209 12 209 0 210 12 209 0 211 12 209 0 212 12 209 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 12 209 1 35 2 49 1 38] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 12 213 0 182 12 213 0 187 12 213 0 188 12 213 0 189 12 213 0 190 12 213 0 191 1 165 0 192 12 213 0 193 12 213 0 194 12 213 0 195 12 213 0 201 12 213 0 202 12 213 0 203 12 213 0 207 12 213 0 208 12 213 0 209 12 213 0 210 12 213 0 211 12 213 0 212 12 213 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 12 213 1 35 2 49 1 38] 
#[0 12 217 0 9] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 12 221 0 182 12 221 0 187 12 221 0 188 12 221 0 189 12 221 0 190 12 221 0 191 1 165 0 192 12 221 0 193 12 221 0 194 12 221 0 195 12 221 0 201 12 221 0 202 12 221 0 203 12 221 0 207 12 221 0 208 12 221 0 209 12 221 0 210 12 221 0 211 12 221 0 212 12 221 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 12 221 1 35 2 49 1 38] 
#[0 12 225 0 9] 
#[1 0 169 0 8 12 229 0 9 0 173 0 13 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 187 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 6 69 0 192 12 233 0 205 10 185 0 206 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 6 69 0 245 6 69 0 246 6 69 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 12 237 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 12 237 1 3 12 237 1 4 2 181 1 5 2 21 1 6 12 237 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 12 241 0 182 12 241 0 187 12 241 0 188 12 241 0 189 12 241 0 190 12 241 0 191 1 165 0 192 12 241 0 193 12 241 0 194 12 241 0 195 12 241 0 201 12 241 0 202 12 241 0 203 12 241 0 207 12 241 0 208 12 241 0 209 12 241 0 210 12 241 0 211 12 241 0 212 12 241 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 12 241 1 35 2 49 1 38] 
#[0 6 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 8 209 0 90 12 245 0 94 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 12 249 0 148 1 121 0 151 12 249 0 180 1 221 0 222 1 225 0 223 12 249 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 12 249 1 3 12 249 1 4 2 181 1 5 2 21 1 6 12 249 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 6 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 6 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 6 210 0 9 0 15] 
#[0 6 214 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 12 253 0 9 10 241 0 15] 
#[1 2 53 0 1 2 57 0 8 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 13 5 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 13 5 1 3 13 5 1 4 2 181 1 5 2 21 1 6 13 5 1 8 13 5 1 9 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 13 9 0 24] 
#[0 6 218 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 12 69 0 47 12 73 0 52 13 13 0 94 13 17 0 198 13 21 0 199 12 93 0 200] 
#[0 6 222 0 47 0 52 0 94] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 12 69 0 47 0 23 0 49 0 45 0 50 0 213 0 51 12 73 0 52 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 13 25 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 4 33 0 135 1 121 0 151 4 33 0 163 4 33 0 182 13 29 0 183 4 33 0 184 4 33 0 185 1 141 0 186 4 33 0 187 4 33 0 188 4 33 0 189 4 33 0 190 4 33 0 191 1 165 0 192 4 33 0 193 4 33 0 194 4 33 0 195 13 33 0 200 4 33 0 201 4 33 0 202 4 33 0 203 4 33 0 207 4 33 0 208 4 33 0 209 4 33 0 210 4 33 0 211 4 33 0 212 4 33 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 4 33 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 4 33 1 35 2 45 1 36 2 49 1 38] 
#[0 6 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[1 1 33 0 90 13 37 0 182] 
#[0 6 230 0 91 0 105] 
#[1 13 41 0 91 5 117 0 105 13 45 0 147] 
#[0 13 49 0 8] 
#[1 3 169 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 76 13 53 0 96 0 6 0 105 3 177 1 10 13 57 1 29 3 185 1 30] 
#[0 13 61 0 8] 
#[0 6 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 13 65 0 9 10 241 0 15] 
#[0 6 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 6 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 6 246 0 5 0 15 0 96] 
#[0 6 250 0 26 0 38 0 52 0 84 0 90] 
#[0 6 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 13 69 0 26] 
#[0 7 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 13 73 0 26] 
#[1 2 53 0 1 2 57 0 8 13 77 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 13 81 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[1 2 53 0 1 2 57 0 8 13 85 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 13 89 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 7 6 0 9 0 15] 
#[0 13 93 0 26] 
#[0 13 97 0 26] 
#[0 7 10 0 9 0 15 0 94] 
#[0 7 14 0 15 0 94] 
#[1 7 18 0 15 7 18 0 26 8 41 0 90 7 18 0 94 13 101 0 139] 
#[1 13 105 0 9 10 241 0 15] 
#[0 7 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 13 109 0 182 13 109 0 187 13 109 0 188 13 109 0 189 13 109 0 190 13 109 0 191 1 165 0 192 13 109 0 193 13 109 0 194 13 109 0 195 13 109 0 201 13 109 0 202 13 109 0 203 13 109 0 207 13 109 0 208 13 109 0 209 13 109 0 210 13 109 0 211 13 109 0 212 13 109 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 13 109 1 35 2 49 1 38] 
#[0 7 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 13 113 0 182 13 113 0 187 13 113 0 188 13 113 0 189 13 113 0 190 13 113 0 191 1 165 0 192 13 113 0 193 13 113 0 194 13 113 0 195 13 113 0 201 13 113 0 202 13 113 0 203 13 113 0 207 13 113 0 208 13 113 0 209 13 113 0 210 13 113 0 211 13 113 0 212 13 113 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 13 113 1 35 2 49 1 38] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 13 117 0 182 13 117 0 187 13 117 0 188 13 117 0 189 13 117 0 190 13 117 0 191 1 165 0 192 13 117 0 193 13 117 0 194 13 117 0 195 13 117 0 201 13 117 0 202 13 117 0 203 13 117 0 207 13 117 0 208 13 117 0 209 13 117 0 210 13 117 0 211 13 117 0 212 13 117 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 13 117 1 35 2 49 1 38] 
#[0 13 121 0 9] 
#[0 13 125 0 9] 
#[0 7 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 7 54 0 15 0 94] 
#[0 7 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 7 62 0 24] 
#[0 13 129 0 24] 
#[0 7 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 7 70 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 74 0 47 0 52 0 94] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 12 69 0 47 0 23 0 49 0 45 0 50 0 213 0 51 12 73 0 52 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 13 133 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 4 33 0 135 1 121 0 151 4 33 0 163 4 33 0 182 13 29 0 183 4 33 0 184 4 33 0 185 1 141 0 186 4 33 0 187 4 33 0 188 4 33 0 189 4 33 0 190 4 33 0 191 1 165 0 192 4 33 0 193 4 33 0 194 4 33 0 195 13 33 0 200 4 33 0 201 4 33 0 202 4 33 0 203 4 33 0 207 4 33 0 208 4 33 0 209 4 33 0 210 4 33 0 211 4 33 0 212 4 33 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 4 33 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 4 33 1 35 2 45 1 36 2 49 1 38] 
#[0 7 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 11 0 37 0 41 0 42 0 193 0 43 0 15 0 44 0 201 0 45 0 19 0 46 7 82 0 47 0 23 0 49 0 45 0 50 0 213 0 51 7 82 0 52 0 217 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 229 0 61 0 233 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 245 0 70 0 69 0 72 0 73 0 73 0 77 0 74 0 249 0 75 0 47 0 76 0 81 0 77 0 85 0 78 1 1 0 79 1 5 0 80 1 9 0 81 1 13 0 82 1 17 0 83 0 93 0 85 1 21 0 86 1 25 0 87 0 97 0 88 1 29 0 89 1 33 0 90 7 82 0 94 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 51 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 113 0 133 0 141 0 134 6 185 0 135 1 121 0 151 6 185 0 163 6 185 0 182 6 185 0 184 6 185 0 185 1 141 0 186 6 185 0 187 6 185 0 188 6 185 0 189 6 185 0 190 6 185 0 191 1 165 0 192 6 185 0 193 6 185 0 194 6 185 0 195 6 185 0 201 6 185 0 202 6 185 0 203 6 185 0 207 6 185 0 208 6 185 0 209 6 185 0 210 6 185 0 211 6 185 0 212 6 185 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 0 141 1 11 6 185 1 18 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 6 185 1 35 2 45 1 36 2 49 1 38] 
#[0 7 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 7 90 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 253 0 76 2 217 0 105 13 137 0 112 2 225 0 113 2 225 0 114 2 225 0 115 2 225 0 116 13 137 0 117 13 137 0 118 13 137 0 121 2 29 1 32 2 29 1 33 2 29 1 34] 
#[1 7 94 0 9 4 241 0 38] 
#[1 2 53 0 1 2 57 0 8 13 141 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 13 145 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 7 98 0 8] 
#[1 6 33 0 15 13 149 0 96] 
#[1 2 53 0 1 2 57 0 8 13 153 0 9 2 61 0 12 0 173 0 13 2 65 0 16 0 177 0 17 0 185 0 27 0 197 0 44 0 205 0 46 0 209 0 49 0 221 0 54 0 225 0 60 0 237 0 66 0 241 0 68 0 245 0 70 0 253 0 76 1 1 0 79 1 13 0 82 1 25 0 87 2 69 0 95 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 55 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 2 77 0 147 1 121 0 151 1 221 0 222 1 225 0 223 8 233 0 224 2 85 0 225 2 89 0 228 1 225 0 230 1 225 0 231 13 157 0 232 1 221 0 233 1 241 0 238 1 225 0 239 1 249 0 240 2 101 0 241 2 101 0 242 2 101 0 243 2 133 0 244 2 133 0 245 2 133 0 246 2 133 0 247 2 133 0 248 2 133 0 249 2 137 0 250 2 141 0 251 2 145 0 252 2 149 0 253 2 153 0 254 2 157 0 255 2 161 1 0 2 165 1 1 2 169 1 2 8 233 1 3 8 233 1 4 2 181 1 5 2 21 1 6 8 233 1 8 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 2 49 1 38] 
#[0 7 102 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 7 106 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 7 110 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 13 161 0 26] 
#[1 13 165 0 9 10 241 0 15] 
#[0 13 169 0 26] 
#[1 13 173 0 9 10 241 0 15] 
#[0 7 114 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 7 118 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 76 0 77 0 78 0 81 0 85 0 87 0 88 0 94 0 105] 
#[0 7 122 0 15 0 26 0 94] 
#[1 7 126 0 15 7 126 0 26 8 41 0 90 7 126 0 94 13 177 0 139] 
#[0 7 130 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 134 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 138 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 13 181 0 182 13 181 0 187 13 181 0 188 13 181 0 189 13 181 0 190 13 181 0 191 1 165 0 192 13 181 0 193 13 181 0 194 13 181 0 195 13 181 0 201 13 181 0 202 13 181 0 203 13 181 0 207 13 181 0 208 13 181 0 209 13 181 0 210 13 181 0 211 13 181 0 212 13 181 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 13 181 1 35 2 49 1 38] 
#[1 0 169 0 8 0 173 0 13 0 177 0 17 0 181 0 26 0 185 0 27 0 193 0 43 0 197 0 44 0 201 0 45 0 205 0 46 0 209 0 49 0 213 0 51 0 217 0 53 0 221 0 54 0 225 0 60 0 229 0 61 0 233 0 62 0 237 0 66 0 241 0 68 0 245 0 70 0 249 0 75 0 253 0 76 1 1 0 79 1 5 0 80 3 209 0 81 1 13 0 82 1 17 0 83 1 21 0 86 1 25 0 87 1 29 0 89 1 33 0 90 1 37 0 99 1 41 0 100 1 45 0 101 1 49 0 102 1 53 0 103 1 57 0 104 0 191 0 105 1 225 0 111 1 69 0 112 1 73 0 113 1 73 0 114 1 73 0 115 1 73 0 116 1 89 0 117 1 89 0 118 1 89 0 121 1 101 0 122 1 101 0 123 1 101 0 124 1 121 0 151 13 185 0 182 13 185 0 187 13 185 0 188 13 185 0 189 13 185 0 190 13 185 0 191 1 165 0 192 13 185 0 193 13 185 0 194 13 185 0 195 13 185 0 201 13 185 0 202 13 185 0 203 13 185 0 207 13 185 0 208 13 185 0 209 13 185 0 210 13 185 0 211 13 185 0 212 13 185 0 221 1 221 0 222 1 225 0 223 1 225 0 230 1 233 0 231 1 221 0 233 1 241 0 238 1 245 0 239 1 249 0 240 1 253 0 241 2 1 0 242 2 5 0 243 1 165 0 245 1 165 0 246 1 165 1 5 2 21 1 6 2 25 1 28 2 29 1 32 2 29 1 33 2 29 1 34 13 185 1 35 2 49 1 38] 
#[0 7 142 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 7 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 150 0 91 0 105] 
#[0 7 154 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 13 189 0 9 10 241 0 15] 
#[0 7 158 0 8] 
#[1 7 162 0 2 7 162 0 3 7 162 0 5 7 162 0 6 7 162 0 9 7 162 0 10 7 162 0 12 7 162 0 13 7 162 0 15 7 162 0 16 7 162 0 17 7 162 0 20 7 162 0 22 7 162 0 24 7 162 0 25 7 162 0 26 7 162 0 27 7 162 0 28 7 162 0 30 7 162 0 32 7 162 0 33 7 162 0 36 7 162 0 38 7 162 0 39 7 162 0 40 7 162 0 65 8 41 0 90 7 162 0 91 7 162 0 93 7 162 0 94 7 162 0 96 7 162 0 97 7 162 0 98 13 193 0 139 7 162 1 40] 
#[1 13 197 0 9 10 241 0 15] 
#[0 7 166 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 13 201 0 26] 
#[0 7 170 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 13 205 0 26] 
#[0 7 174 0 15 0 26 0 94] 
#[0 7 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105 1 40] 
#[0 7 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[0 7 190 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40] 
#[1 7 194 0 2 7 194 0 3 7 194 0 5 7 194 0 6 7 194 0 9 7 194 0 10 7 194 0 12 7 194 0 13 7 194 0 15 7 194 0 16 7 194 0 17 7 194 0 20 7 194 0 22 7 194 0 24 7 194 0 25 7 194 0 26 7 194 0 27 7 194 0 28 7 194 0 30 7 194 0 32 7 194 0 33 7 194 0 36 7 194 0 38 7 194 0 39 7 194 0 40 7 194 0 65 8 41 0 90 7 194 0 91 7 194 0 93 7 194 0 94 7 194 0 96 7 194 0 97 7 194 0 98 13 209 0 139 7 194 1 40] 
#[0 7 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 7 202 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 85 0 86 0 87 0 88 0 89 0 90 0 94 0 99 0 100 0 101 0 102 0 103 0 104 0 105] 
#[0 7 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 91 0 93 0 94 0 96 0 97 0 98 1 40]
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
	result typeParameters: ((nodes at: 1) at: 1).
	result type: ((nodes at: 1) at: 2).
	result declarator: ((nodes at: 1) at: 3).
	result throws: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result modifiers.
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation1: nodes [
	| result |
	result := JavaAnnotationNode new.
	result _at: (nodes at: 1).
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation2: nodes [
	| result |
	result := JavaAnnotationNode new.
	result _at: (nodes at: 1).
	result name: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result values.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_args1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_args2: nodes [
	| result |
	result := nodes at: 1.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_interface_body1: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_interface_body2: nodes [
	| result |
	result := Array new: 3.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 3).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_interface_declaration1: nodes [
	| result |
	result := JavaAnnotationInterfaceNode new.
	result atToken: (nodes at: 1).
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result rightBrace: ((nodes at: 4) at: 2).
	result addNodes: ((nodes at: 4) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_interface_declaration2: nodes [
	| result |
	result := JavaAnnotationInterfaceNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result atToken: (nodes at: 2).
	result interfaceToken: (nodes at: 3).
	result name: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForannotation_method_declaration2: nodes [
	| result |
	result := JavaAnnotationMethodDeclarationNode new.
	result typeParameters: ((nodes at: 1) at: 1).
	result type: ((nodes at: 1) at: 2).
	result declarator: ((nodes at: 1) at: 3).
	result throws: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result modifiers.
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
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForarray_creation_expression2: nodes [
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
JavaParser >> reduceActionForarray_creation_expression5: nodes [
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
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForblock2: nodes [
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
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForbreak_statement2: nodes [
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
JavaParser >> reduceActionForcast_expression5: nodes [
	| result |
	result := JavaCastExpressionNode new.
	result leftParen: (nodes at: 1).
	result type: (nodes at: 2).
	result ampToken: (nodes at: 3).
	result interfaceType: (nodes at: 4).
	result rightParen: (nodes at: 5).
	result expression: (nodes at: 6).
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
JavaParser >> reduceActionForclass_declaration1: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result rightBrace: ((nodes at: 4) at: 2).
	result addNodes: ((nodes at: 4) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration2: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration3: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result extendsToken: ((nodes at: 4) at: 1).
	result superclass: ((nodes at: 4) at: 2).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration4: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result extendsToken: ((nodes at: 4) at: 1).
	result superclass: ((nodes at: 4) at: 2).
	result implementsToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration5: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration6: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result implementsToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration7: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result extendsToken: ((nodes at: 5) at: 1).
	result superclass: ((nodes at: 5) at: 2).
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration8: nodes [
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
	result rightBrace: ((nodes at: 7) at: 2).
	result addNodes: ((nodes at: 7) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression1: nodes [
	| result |
	result := JavaNewNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression2: nodes [
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
JavaParser >> reduceActionForclass_instance_creation_expression3: nodes [
	| result |
	result := JavaNewClassNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression4: nodes [
	| result |
	result := JavaNewClassNode new.
	result newToken: (nodes at: 1).
	result type: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression5: nodes [
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
	result rightParen: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression6: nodes [
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
JavaParser >> reduceActionForclass_instance_creation_expression7: nodes [
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
	result rightParen: (nodes at: 8).
	result leftBrace: ((nodes at: 9) at: 1).
	result rightBrace: ((nodes at: 9) at: 2).
	result addNodes: ((nodes at: 9) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_instance_creation_expression8: nodes [
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
	result rightBrace: ((nodes at: 10) at: 2).
	result addNodes: ((nodes at: 10) at: 3) to: result declarations.
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
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit2: nodes [
	| result |
	result := JavaProgramFileNode new.
	result addNodes: (nodes at: 1) to: result typeDeclarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit3: nodes [
	| result |
	result := JavaProgramFileNode new.
	result addNodes: (nodes at: 1) to: result imports.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit4: nodes [
	| result |
	result := JavaProgramFileNode new.
	result addNodes: (nodes at: 1) to: result imports.
	result addNodes: (nodes at: 2) to: result typeDeclarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit5: nodes [
	| result |
	result := JavaProgramFileNode new.
	result packageDeclaration: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit6: nodes [
	| result |
	result := JavaProgramFileNode new.
	result packageDeclaration: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result typeDeclarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit7: nodes [
	| result |
	result := JavaProgramFileNode new.
	result packageDeclaration: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result imports.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcompilation_unit8: nodes [
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
JavaParser >> reduceActionForconstructor_declaration1: nodes [
	| result |
	result := JavaConstructorDeclarationNode new.
	result typeParameters: ((nodes at: 1) at: 1).
	result name: ((nodes at: 1) at: 2).
	result leftParen: ((nodes at: 1) at: 3).
	result rightParen: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result parameters.
	result addTokens: ((nodes at: 1) at: 6) to: result commas.
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_declaration2: nodes [
	| result |
	result := JavaConstructorDeclarationNode new.
	result typeParameters: ((nodes at: 1) at: 1).
	result name: ((nodes at: 1) at: 2).
	result leftParen: ((nodes at: 1) at: 3).
	result rightParen: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result parameters.
	result addTokens: ((nodes at: 1) at: 6) to: result commas.
	result throws: (nodes at: 2).
	result body: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_declaration3: nodes [
	| result |
	result := JavaConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result typeParameters: ((nodes at: 2) at: 1).
	result name: ((nodes at: 2) at: 2).
	result leftParen: ((nodes at: 2) at: 3).
	result rightParen: ((nodes at: 2) at: 4).
	result addNodes: ((nodes at: 2) at: 5) to: result parameters.
	result addTokens: ((nodes at: 2) at: 6) to: result commas.
	result body: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_declaration4: nodes [
	| result |
	result := JavaConstructorDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result typeParameters: ((nodes at: 2) at: 1).
	result name: ((nodes at: 2) at: 2).
	result leftParen: ((nodes at: 2) at: 3).
	result rightParen: ((nodes at: 2) at: 4).
	result addNodes: ((nodes at: 2) at: 5) to: result parameters.
	result addTokens: ((nodes at: 2) at: 6) to: result commas.
	result throws: (nodes at: 3).
	result body: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_declarator1: nodes [
	| result |
	result := Array new: 6.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconstructor_declarator2: nodes [
	| result |
	result := Array new: 6.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	self addAll: ((nodes at: 4) at: 1) to: (result at: 5).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 6).
	result at: 4 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcontinue_statement1: nodes [
	| result |
	result := JavaContinueStatementNode new.
	result continueToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForcontinue_statement2: nodes [
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
	result rightBrace: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForelementValueArrayInitializer2: nodes [
	| result |
	result := JavaElementArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addToken: (nodes at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForelementValueArrayInitializer3: nodes [
	| result |
	result := JavaElementArrayInitializerNode new.
	result leftBrace: (nodes at: 1).
	result addNodes: ((nodes at: 2) at: 1) to: result values.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result rightBrace: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForelementValueArrayInitializer4: nodes [
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
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body2: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 3 put: ((nodes at: 2) at: 1).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body3: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 5).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body4: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 5).
	result at: 3 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body5: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 6).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body6: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 6).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	result at: 3 put: ((nodes at: 3) at: 1).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 4).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body7: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 6).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	self add: (nodes at: 3) to: (result at: 5).
	result at: 2 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body8: nodes [
	| result |
	result := Array new: 6.
	result at: 4 put: (OrderedCollection new: 2).
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 6).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 5).
	self add: (nodes at: 3) to: (result at: 5).
	result at: 3 put: ((nodes at: 4) at: 1).
	self addAll: ((nodes at: 4) at: 2) to: (result at: 4).
	result at: 2 put: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body_declarations1: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_body_declarations2: nodes [
	| result |
	result := Array new: 2.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant1: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant2: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result rightBrace: ((nodes at: 3) at: 2).
	result addNodes: ((nodes at: 3) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant3: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant4: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant5: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_constant6: nodes [
	| result |
	result := JavaEnumConstantNode new.
	result addNodes: (nodes at: 1) to: result annotations.
	result name: (nodes at: 2).
	result leftParen: (nodes at: 3).
	result addNodes: ((nodes at: 4) at: 1) to: result expressions.
	result addTokens: ((nodes at: 4) at: 2) to: result commas.
	result rightParen: (nodes at: 5).
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_declaration1: nodes [
	| result |
	result := JavaEnumDeclarationNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	result leftBrace: ((nodes at: 3) at: 1).
	result rightBrace: ((nodes at: 3) at: 2).
	result semicolon: ((nodes at: 3) at: 3).
	result addNodes: ((nodes at: 3) at: 4) to: result declarations.
	result addTokens: ((nodes at: 3) at: 5) to: result commas.
	result addNodes: ((nodes at: 3) at: 6) to: result constants.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_declaration2: nodes [
	| result |
	result := JavaEnumDeclarationNode new.
	result enumToken: (nodes at: 1).
	result name: (nodes at: 2).
	result implementsToken: ((nodes at: 3) at: 1).
	result addNodes: ((nodes at: 3) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 3) at: 3) to: result commas.
	result leftBrace: ((nodes at: 4) at: 1).
	result rightBrace: ((nodes at: 4) at: 2).
	result semicolon: ((nodes at: 4) at: 3).
	result addNodes: ((nodes at: 4) at: 4) to: result declarations.
	result addTokens: ((nodes at: 4) at: 5) to: result commas.
	result addNodes: ((nodes at: 4) at: 6) to: result constants.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_declaration3: nodes [
	| result |
	result := JavaEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result rightBrace: ((nodes at: 4) at: 2).
	result semicolon: ((nodes at: 4) at: 3).
	result addNodes: ((nodes at: 4) at: 4) to: result declarations.
	result addTokens: ((nodes at: 4) at: 5) to: result commas.
	result addNodes: ((nodes at: 4) at: 6) to: result constants.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForenum_declaration4: nodes [
	| result |
	result := JavaEnumDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result enumToken: (nodes at: 2).
	result name: (nodes at: 3).
	result implementsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result semicolon: ((nodes at: 5) at: 3).
	result addNodes: ((nodes at: 5) at: 4) to: result declarations.
	result addTokens: ((nodes at: 5) at: 5) to: result commas.
	result addNodes: ((nodes at: 5) at: 6) to: result constants.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation1: nodes [
	| result |
	result := JavaThisConstructorInvocationNode new.
	result thisToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result rightParen: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation2: nodes [
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
JavaParser >> reduceActionForexplicit_constructor_invocation3: nodes [
	| result |
	result := JavaSuperConstructorInvocationNode new.
	result superToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result rightParen: (nodes at: 3).
	result semicolon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation4: nodes [
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
JavaParser >> reduceActionForexplicit_constructor_invocation5: nodes [
	| result |
	result := JavaThisConstructorInvocationNode new.
	result primary: (nodes at: 1).
	result period: (nodes at: 2).
	result thisToken: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result rightParen: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation6: nodes [
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
JavaParser >> reduceActionForexplicit_constructor_invocation7: nodes [
	| result |
	result := JavaSuperConstructorInvocationNode new.
	result primary: (nodes at: 1).
	result period: (nodes at: 2).
	result superToken: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result rightParen: (nodes at: 5).
	result semicolon: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForexplicit_constructor_invocation8: nodes [
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
	result type: (nodes at: 1).
	result
		addNodes: ((nodes at: 2) at: 1)
		to: result variableDeclarations.
	result addTokens: ((nodes at: 2) at: 2) to: result commas.
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfield_declaration2: nodes [
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
	result firstSemicolon: (nodes at: 3).
	result secondSemicolon: (nodes at: 4).
	result rightParen: (nodes at: 5).
	result statement: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfor_statement2: nodes [
	| result |
	result := JavaForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result firstSemicolon: (nodes at: 3).
	result secondSemicolon: (nodes at: 4).
	result _update: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfor_statement3: nodes [
	| result |
	result := JavaForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result firstSemicolon: (nodes at: 3).
	result test: (nodes at: 4).
	result secondSemicolon: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfor_statement4: nodes [
	| result |
	result := JavaForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result firstSemicolon: (nodes at: 3).
	result test: (nodes at: 4).
	result secondSemicolon: (nodes at: 5).
	result _update: (nodes at: 6).
	result rightParen: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfor_statement5: nodes [
	| result |
	result := JavaForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result initial: (nodes at: 3).
	result firstSemicolon: (nodes at: 4).
	result secondSemicolon: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result statement: (nodes at: 7).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfor_statement6: nodes [
	| result |
	result := JavaForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result initial: (nodes at: 3).
	result firstSemicolon: (nodes at: 4).
	result secondSemicolon: (nodes at: 5).
	result _update: (nodes at: 6).
	result rightParen: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfor_statement7: nodes [
	| result |
	result := JavaForStatementNode new.
	result forToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result initial: (nodes at: 3).
	result firstSemicolon: (nodes at: 4).
	result test: (nodes at: 5).
	result secondSemicolon: (nodes at: 6).
	result rightParen: (nodes at: 7).
	result statement: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForfor_statement8: nodes [
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
JavaParser >> reduceActionForimport_declarations1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForimport_declarations2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
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
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result leftBrace: ((nodes at: 4) at: 1).
	result rightBrace: ((nodes at: 4) at: 2).
	result addNodes: ((nodes at: 4) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinterface_declaration2: nodes [
	| result |
	result := JavaInterfaceDeclarationNode new.
	result interfaceToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result extendsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result interfaceTypes.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinterface_declaration3: nodes [
	| result |
	result := JavaInterfaceDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result interfaceToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result rightBrace: ((nodes at: 5) at: 2).
	result addNodes: ((nodes at: 5) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinterface_declaration4: nodes [
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
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinterface_method_declaration1: nodes [
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
JavaParser >> reduceActionForinterface_method_header1: nodes [
	| result |
	result := Array new: 5.
	result at: 1 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForinterface_method_header2: nodes [
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
	result rightParen: ((nodes at: 1) at: 2).
	result addNodes: ((nodes at: 1) at: 3) to: result parameters.
	result addTokens: ((nodes at: 1) at: 4) to: result commas.
	result arrowToken: (nodes at: 2).
	result value: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlambda_parameters1: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlambda_parameters2: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 4).
	result at: 2 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForlambda_parameters3: nodes [
	| result |
	result := Array new: 4.
	result at: 3 put: (OrderedCollection new: 2).
	result at: 4 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 3).
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
	result typeParameters: ((nodes at: 1) at: 1).
	result type: ((nodes at: 1) at: 2).
	result declarator: ((nodes at: 1) at: 3).
	result throws: ((nodes at: 1) at: 4).
	result addNodes: ((nodes at: 1) at: 5) to: result modifiers.
	result body: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_declarator1: nodes [
	| result |
	result := JavaMethodDeclaratorNode new.
	result name: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result rightParen: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_declarator2: nodes [
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
JavaParser >> reduceActionFormethod_declarator3: nodes [
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
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_header2: nodes [
	| result |
	result := Array new: 5.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	result at: 3 put: (nodes at: 3).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_header3: nodes [
	| result |
	result := Array new: 5.
	result at: 5 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 5).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_header4: nodes [
	| result |
	result := Array new: 5.
	result at: 5 put: (OrderedCollection new: 2).
	self addAll: (nodes at: 1) to: (result at: 5).
	result at: 1 put: (nodes at: 2).
	result at: 2 put: (nodes at: 3).
	result at: 3 put: (nodes at: 4).
	result at: 4 put: (nodes at: 5).
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
	result rightParen: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_invocation2: nodes [
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
JavaParser >> reduceActionFormethod_invocation3: nodes [
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
	result rightParen: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_invocation4: nodes [
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
JavaParser >> reduceActionFormethod_invocation5: nodes [
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
	result rightParen: (nodes at: 6).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_invocation6: nodes [
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
JavaParser >> reduceActionFormethod_invocation7: nodes [
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
	result rightParen: (nodes at: 8).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_invocation8: nodes [
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
JavaParser >> reduceActionForrelational_expression7: nodes [
	| result |
	result := JavaInstanceofPatternExpressionNode new.
	result leftExpression: (nodes at: 1).
	result op: (nodes at: 2).
	result rightExpression: (nodes at: 3).
	result variable: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForreturn_statement1: nodes [
	| result |
	result := JavaReturnStatementNode new.
	result returnToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForreturn_statement2: nodes [
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
	result name: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForsingle_type_import_declaration2: nodes [
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
JavaParser >> reduceActionFortry_resources2: nodes [
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
	result block: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result catches.
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
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement3: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result finally: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement4: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result block: (nodes at: 2).
	result addNodes: (nodes at: 3) to: result catches.
	result finally: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement5: nodes [
	| result |
	result := JavaTryStatementNode new.
	result tryToken: (nodes at: 1).
	result leftParen: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result resources.
	result addTokens: ((nodes at: 2) at: 3) to: result semicolons.
	result rightParen: ((nodes at: 2) at: 4).
	result block: (nodes at: 3).
	result finally: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortry_statement6: nodes [
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
JavaParser >> reduceActionFortry_statement7: nodes [
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
	result addNodes: (nodes at: 1) to: result annotations.
	result type: (nodes at: 2).
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
	result name: (nodes at: 2).
	result period: (nodes at: 3).
	result star: (nodes at: 4).
	result semicolon: (nodes at: 5).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_import_on_demand_declaration2: nodes [
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
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFortype_parameter2: nodes [
	| result |
	result := JavaTypeParameterNode new.
	result name: (nodes at: 1).
	result extendsToken: (nodes at: 2).
	result addNodes: ((nodes at: 3) at: 1) to: result types.
	result addTokens: ((nodes at: 3) at: 2) to: result amps.
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
