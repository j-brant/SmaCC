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
#[ 0 14 0 197] 
#[ 0 14 0 205] 
#[ 0 14 0 213] 
#[ 0 14 0 217] 
#[ 0 14 0 229] 
#[ 0 14 0 53] 
#[ 0 14 0 233] 
#[ 0 14 0 245] 
#[ 0 14 0 249] 
#[ 0 14 1 5] 
#[ 0 14 0 18 1 73] 
#[ 0 18 2 97] 
#[ 0 22 0 205] 
#[ 0 22 0 213] 
#[ 0 22 0 217] 
#[ 0 22 0 229] 
#[ 0 22 0 233] 
#[ 0 22 0 245] 
#[ 0 22 0 249] 
#[ 0 22 1 5] 
#[ 0 22 2 245] 
#[ 0 26 2 221] 
#[ 0 26 0 37] 
#[ 0 26 0 41] 
#[ 0 22 0 26 0 205] 
#[ 0 22 0 26 0 213] 
#[ 0 22 0 26 0 217] 
#[ 0 22 0 26 0 229] 
#[ 0 26 0 53] 
#[ 0 22 0 26 0 233] 
#[ 0 22 0 26 0 245] 
#[ 0 22 0 26 0 249] 
#[ 0 26 0 65] 
#[ 0 26 0 69] 
#[ 0 26 0 73] 
#[ 0 26 0 77] 
#[ 0 22 0 26 1 5] 
#[ 0 26 2 241] 
#[ 0 26 0 89] 
#[ 0 26 0 93] 
#[ 0 26 0 97] 
#[ 0 22 0 26] 
#[ 0 26 0 101] 
#[ 0 22 0 26 2 245] 
#[ 0 18 3 189] 
#[ 0 18 1 73] 
#[ 0 18 0 206] 
#[ 0 18 0 193 0 206] 
#[ 0 214 4 97] 
#[ 0 18 0 250 4 117] 
#[ 0 193 0 242 0 250] 
#[ 1 102 4 141] 
#[ 1 98 1 102] 
#[ 1 110 1 114] 
#[ 1 186 4 213] 
#[ 0 14 0 18 2 97] 
#[ 0 18 0 206 1 202] 
#[ 0 206 1 202] 
#[ 1 242 5 49] 
#[ 1 242 5 53] 
#[ 1 242 5 57] 
#[ 1 246 5 61] 
#[ 1 246 5 65] 
#[ 1 250 5 69] 
#[ 1 250 5 73] 
#[ 1 250 5 77] 
#[ 1 254 5 81] 
#[ 1 254 5 85] 
#[ 1 254 5 89] 
#[ 1 254 5 93] 
#[ 1 254 5 97] 
#[ 2 2 5 101] 
#[ 2 2 5 105] 
#[ 2 6 5 109] 
#[ 2 10 5 113] 
#[ 2 14 5 117] 
#[ 2 18 5 121] 
#[ 2 22 5 125] 
#[ 2 22 5 129] 
#[ 2 34 2 38] 
#[ 0 18 0 193] 
#[ 2 42 2 70] 
#[ 2 50 2 78] 
#[ 0 14 0 18 3 189] 
#[ 0 18 6 185] 
#[ 0 14 3 97] 
#[ 3 54 3 86] 
#[ 0 18 8 89] 
#[ 0 14 5 173] 
#[ 4 50 5 49] 
#[ 4 50 5 53] 
#[ 4 50 5 57] 
#[ 4 54 5 49] 
#[ 4 54 5 53] 
#[ 4 54 5 57] 
#[ 4 58 5 61] 
#[ 4 58 5 65] 
#[ 4 62 5 61] 
#[ 4 62 5 65] 
#[ 4 66 5 61] 
#[ 4 66 5 65] 
#[ 4 70 5 69] 
#[ 4 70 5 73] 
#[ 4 70 5 77] 
#[ 4 74 5 69] 
#[ 4 74 5 73] 
#[ 4 74 5 77] 
#[ 4 78 5 69] 
#[ 4 78 5 73] 
#[ 4 78 5 77] 
#[ 4 86 5 69] 
#[ 4 86 5 73] 
#[ 4 86 5 77] 
#[ 4 90 5 81] 
#[ 4 90 5 85] 
#[ 4 90 5 89] 
#[ 4 90 5 93] 
#[ 4 90 5 97] 
#[ 4 94 5 81] 
#[ 4 94 5 85] 
#[ 4 94 5 89] 
#[ 4 94 5 93] 
#[ 4 94 5 97] 
#[ 4 98 5 101] 
#[ 4 98 5 105] 
#[ 4 102 5 109] 
#[ 4 106 5 113] 
#[ 4 110 5 117] 
#[ 4 114 5 121] 
#[ 1 102 10 53] 
#[ 0 206 10 129] 
#[ 0 26 0 85] 
#[ 0 18 11 161] 
#[ 2 81 5 86] 
#[ 2 85 5 86] 
#[ 0 193 5 86]
	).
]

{ #category : #'generated-accessing' }
JavaParser class >> cacheId [
	^'2024-03-27T12:04:45.304124-05:00'
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
					SynchronizedStatement TryStatement AssertStatement ThisConstructorInvocation SuperConstructorInvocation YieldStatement);
%hierarchy Expression (UnaryExpression BinaryExpression ConditionalExpression Assignment 
					ClassExpression FieldAccess MethodInvocation ArrayAccess OuterThis
					New Literal Name NewArray LambdaExpression MethodReference InstanceofPatternExpression SwitchExpression);
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
						VariableDeclaration RecordDeclaration);
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
	| \""\""\""\s*[\r\n] ([^\""] | (\"" ([^\""] | \""[^\""])))* \""\""\"" 
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
	| record_declaration
	| "";"" 'semicolon' {{EmptyDeclaration}}
	;
record_declaration
	: modifiers? ""record"" 'recordToken' <IDENTIFIER> 'name' type_parameters_opt 'typeParameters' ""("" 'leftParen' formal_parameter_list? "")"" 'rightParen' interfaces? record_body {{RecordDeclaration}}
	;
record_body
	: ""{"" 'leftBrace' record_body_declarations ""}"" 'rightBrace'
	;
record_body_declarations
	: record_body_declaration 'declaration'*
	;
record_body_declaration
	: class_member_declaration 
	| static_initializer 
	| record_constructor_declaration 
	;
record_constructor_declaration
	: modifiers? record_constructor_declarator throws 'throws'?
			constructor_body 'body' {{ConstructorDeclaration}}
	;
record_constructor_declarator
	: type_parameters_opt 'typeParameters' simple_name 'name' (""("" 'leftParen' formal_parameter_list? "")"" 'rightParen')?
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
	| switch_expression
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
	| yield_statement
	| synchronized_statement 
	| throw_statement 
	| try_statement 
	| assert_statement
	;
yield_statement
	: ""yield"" 'yieldToken' expression 'expression'? "";"" 'semicolon' {{YieldStatement}}
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
	: ""case"" 'caseToken' constant_expression 'constant' ("","" 'comma' constant_expression 'constant')* "":"" 'colon' {{SwitchLabel}}
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
	| simple_name
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
	| switch_expression
	;
switch_expression
	: ""switch"" 'switchToken' ""("" 'leftParen' expression 'expression' "")"" 'rightParen' switch_expression_block {{SwitchExpression}}
	;
switch_expression_block
	: ""{"" 'leftBrace' switch_block_expression_groups ""}"" 'rightBrace'
	;
switch_block_expression_groups
	: switch_block_expression_group 'statementGroup' 
	| switch_block_expression_groups switch_block_expression_group 'statementGroup' 
	;
switch_block_expression_group
	: switch_expression_labels (expression 'value' "";"" 'semicolon' | block 'value' "";"" 'semicolon'? | throw_statement 'value') {{SwitchBlockExpressionGroup}}
	;
switch_expression_labels
	: ""case"" 'caseToken' constant_expression 'constant' ("","" 'comma' constant_expression 'constant')* ""->"" 'arrowToken'
	| ""default"" 'defaultToken' ""->"" 'arrowToken'
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
	: primary_or_name 'receiver' type_arguments_opt ""::"" 'colonColonToken' <IDENTIFIER> 'name' {{MethodReference}}
	| reference_type 'receiver' type_arguments_opt ""::"" 'colonColonToken' ""new"" 'name' {{MethodReference}}
	| (name 'receiver' type_arguments_opt ""."" 'superPeriod')? ""super"" 'superToken' ""::"" 'colonColonToken' <IDENTIFIER> 'name' {{MethodReference}}
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
			"":"" 'colon' (conditional_expression 'falseExpression' | 
	| lambda_expression 'falseExpression') {{ConditionalExpression}}
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
	#(283 0 #reduceActionForannotations1: 31217665 false) 
	#(127 0 #reduceActionForcompilation_unit1: 5160961 false) 
	#(309 0 #reduceActionForannotations1: 33945601 false) 
	#(301 0 #reduceActionFortype_arguments_opt1: 33041409 false) 
	#(296 0 #nil 32509953 false) 
	#(185 0 #reduceActionForannotations1: 14125057 false) 
	#(134 1 #reduceActionFortype_declaration5: 6064133 false) 
	#(143 1 #reduceActionFormodifier5: 7158789 false) 
	#(143 1 #reduceActionFormodifier5: 7158790 false) 
	#(143 1 #reduceActionFormodifier5: 7158791 false) 
	#(143 1 #reduceActionFormodifier5: 7158787 false) 
	#(143 1 #reduceActionFormodifier5: 7158786 false) 
	#(143 1 #reduceActionFormodifier5: 7158785 false) 
	#(143 1 #reduceActionFormodifier5: 7158788 false) 
	#(143 1 #reduceActionFormodifier5: 7158795 false) 
	#(143 1 #reduceActionFormodifier5: 7158792 false) 
	#(143 1 #reduceActionFormodifier5: 7158793 false) 
	#(143 1 #reduceActionFormodifier5: 7158794 false) 
	#(112 1 #liftFirstValue: 3765249 false) 
	#(127 1 #reduceActionForcompilation_unit3: 5160963 false) 
	#(127 1 #reduceActionForcompilation_unit2: 5160962 false) 
	#(127 1 #reduceActionForcompilation_unit5: 5160965 false) 
	#(128 1 #reduceActionForimport_declarations1: 5291009 false) 
	#(131 1 #liftFirstValue: 5639169 false) 
	#(131 1 #liftFirstValue: 5639170 false) 
	#(129 1 #reduceActionForimport_declarations1: 5400577 false) 
	#(134 1 #liftFirstValue: 6064132 false) 
	#(142 1 #reduceActionForimport_declarations1: 7087105 false) 
	#(134 1 #liftFirstValue: 6064129 false) 
	#(134 1 #liftFirstValue: 6064130 false) 
	#(134 1 #liftFirstValue: 6064131 false) 
	#(143 1 #liftFirstValue: 7158796 false) 
	#(144 1 #liftFirstValue: 7736329 false) 
	#(199 1 #reduceActionForempty_statement1: 16313345 false) 
	#(115 1 #reduceActionForprimitive_type2: 4209666 false) 
	#(117 1 #reduceActionForintegral_type1: 4343809 false) 
	#(117 1 #reduceActionForintegral_type5: 4343813 false) 
	#(118 1 #reduceActionForfloating_point_type2: 4520962 false) 
	#(118 1 #reduceActionForfloating_point_type1: 4520961 false) 
	#(117 1 #reduceActionForintegral_type3: 4343811 false) 
	#(117 1 #reduceActionForintegral_type4: 4343812 false) 
	#(117 1 #reduceActionForintegral_type2: 4343810 false) 
	#(235 1 #reduceActionForprimary_no_new_array2: 21062658 false) 
	#(160 1 #reduceActionForvoid1: 9802753 false) 
	#(113 1 #reduceActionForliteral1: 3823617 false) 
	#(113 1 #reduceActionForliteral2: 3823618 false) 
	#(113 1 #reduceActionForliteral3: 3823619 false) 
	#(113 1 #reduceActionForliteral4: 3823620 false) 
	#(113 1 #reduceActionForliteral5: 3823621 false) 
	#(113 1 #reduceActionForliteral6: 3823622 false) 
	#(125 1 #reduceActionForprimary_no_new_array2: 5003265 false) 
	#(235 1 #liftFirstValue: 21062657 false) 
	#(114 1 #liftFirstValue: 4162561 false) 
	#(115 1 #liftFirstValue: 4209665 false) 
	#(116 1 #liftFirstValue: 4284417 false) 
	#(116 1 #liftFirstValue: 4284418 false) 
	#(114 1 #liftFirstValue: 4162562 false) 
	#(119 1 #liftFirstValue: 4615169 false) 
	#(119 1 #liftFirstValue: 4615170 false) 
	#(258 1 #liftFirstValue: 25954306 false) 
	#(279 1 #liftFirstValue: 30907393 false) 
	#(311 1 #liftFirstValue: 34093058 false) 
	#(124 1 #liftFirstValue: 4959233 false) 
	#(124 1 #liftFirstValue: 4959234 false) 
	#(193 1 #liftFirstValue: 15296515 false) 
	#(193 1 #liftFirstValue: 15296516 false) 
	#(197 1 #liftFirstValue: 15895553 false) 
	#(193 1 #liftFirstValue: 15296513 false) 
	#(193 1 #liftFirstValue: 15296514 false) 
	#(196 1 #liftFirstValue: 15682561 false) 
	#(197 1 #liftFirstValue: 15895561 false) 
	#(197 1 #liftFirstValue: 15895554 false) 
	#(196 1 #liftFirstValue: 15682562 false) 
	#(197 1 #liftFirstValue: 15895555 false) 
	#(196 1 #liftFirstValue: 15682563 false) 
	#(196 1 #liftFirstValue: 15682564 false) 
	#(197 1 #liftFirstValue: 15895556 false) 
	#(196 1 #liftFirstValue: 15682565 false) 
	#(197 1 #liftFirstValue: 15895557 false) 
	#(196 1 #liftFirstValue: 15682566 false) 
	#(197 1 #liftFirstValue: 15895558 false) 
	#(197 1 #liftFirstValue: 15895559 false) 
	#(197 1 #liftFirstValue: 15895560 false) 
	#(197 1 #liftFirstValue: 15895563 false) 
	#(197 1 #liftFirstValue: 15895562 false) 
	#(197 1 #liftFirstValue: 15895564 false) 
	#(197 1 #liftFirstValue: 15895565 false) 
	#(258 1 #liftFirstValue: 25954305 false) 
	#(311 1 #liftFirstValue: 34093057 false) 
	#(234 1 #liftFirstValue: 20994049 false) 
	#(196 1 #liftFirstValue: 15682568 false) 
	#(235 1 #liftFirstValue: 21062669 false) 
	#(235 1 #liftFirstValue: 21062668 false) 
	#(202 1 #liftFirstValue: 16585735 false) 
	#(235 1 #liftFirstValue: 21062660 false) 
	#(234 1 #liftFirstValue: 20994050 false) 
	#(235 1 #liftFirstValue: 21062661 false) 
	#(279 1 #liftFirstValue: 30907394 false) 
	#(202 1 #liftFirstValue: 16585734 false) 
	#(235 1 #liftFirstValue: 21062662 false) 
	#(235 1 #liftFirstValue: 21062663 false) 
	#(279 1 #liftFirstValue: 30907395 false) 
	#(202 1 #liftFirstValue: 16585732 false) 
	#(258 1 #liftFirstValue: 25954307 false) 
	#(202 1 #liftFirstValue: 16585733 false) 
	#(258 1 #liftFirstValue: 25954308 false) 
	#(202 1 #liftFirstValue: 16585730 false) 
	#(202 1 #liftFirstValue: 16585731 false) 
	#(202 1 #liftFirstValue: 16585729 false) 
	#(120 1 #reduceActionForclass_or_interface_type1: 4678657 false) 
	#(305 1 #liftFirstValue: 33465345 false) 
	#(305 1 #liftFirstValue: 33465346 false) 
	#(196 1 #liftFirstValue: 15682567 false) 
	#(156 1 #reduceActionForvariable_declarator_id1: 9207809 false) 
	#(245 1 #reduceActionForuntyped_lambda_parameter1: 22854657 false) 
	#(281 1 #liftFirstValue: 31109122 false) 
	#(242 1 #reduceActionForlambda_parameters3: 22535171 false) 
	#(264 1 #liftFirstValue: 26774529 false) 
	#(266 1 #liftFirstValue: 27449345 false) 
	#(261 1 #liftFirstValue: 26281985 false) 
	#(261 1 #liftFirstValue: 26281986 false) 
	#(261 1 #liftFirstValue: 26281989 false) 
	#(264 1 #liftFirstValue: 26774532 false) 
	#(267 1 #liftFirstValue: 27842561 false) 
	#(268 1 #liftFirstValue: 28131329 false) 
	#(269 1 #liftFirstValue: 28537857 false) 
	#(270 1 #liftFirstValue: 29317121 false) 
	#(271 1 #liftFirstValue: 29595649 false) 
	#(272 1 #liftFirstValue: 29745153 false) 
	#(273 1 #liftFirstValue: 29902849 false) 
	#(274 1 #liftFirstValue: 30078977 false) 
	#(275 1 #liftFirstValue: 30262273 false) 
	#(276 1 #liftFirstValue: 30449665 false) 
	#(277 1 #liftFirstValue: 30732289 false) 
	#(281 1 #liftFirstValue: 31109121 false) 
	#(261 1 #liftFirstValue: 26281990 false) 
	#(277 1 #liftFirstValue: 30732290 false) 
	#(151 1 #liftFirstValue: 8539139 false) 
	#(150 1 #liftFirstValue: 8395777 false) 
	#(151 1 #liftFirstValue: 8539137 false) 
	#(151 1 #liftFirstValue: 8539138 false) 
	#(150 1 #liftFirstValue: 8395778 false) 
	#(150 1 #liftFirstValue: 8395779 false) 
	#(150 1 #reduceActionForclass_body_declaration4: 8395780 false) 
	#(181 1 #liftFirstValue: 13654020 false) 
	#(312 1 #liftFirstValue: 34134017 false) 
	#(182 1 #liftFirstValue: 13799425 false) 
	#(312 1 #liftFirstValue: 34134018 false) 
	#(181 1 #liftFirstValue: 13654017 false) 
	#(181 1 #liftFirstValue: 13654019 false) 
	#(181 1 #liftFirstValue: 13654018 false) 
	#(284 2 #reduceActionForannotation1: 31276033 false) 
	#(127 2 #reduceActionForcompilation_unit4: 5160964 false) 
	#(128 2 #reduceActionForimport_declarations2: 5291010 false) 
	#(129 2 #reduceActionForimport_declarations2: 5400578 false) 
	#(127 2 #reduceActionForcompilation_unit7: 5160967 false) 
	#(127 2 #reduceActionForcompilation_unit6: 5160966 false) 
	#(142 2 #reduceActionForimport_declarations2: 7087106 false) 
	#(283 2 #reduceActionForimport_declarations2: 31217666 false) 
	#(262 2 #reduceActionForpreincrement_expression1: 26559489 false) 
	#(263 2 #reduceActionForpredecrement_expression1: 26665985 false) 
	#(304 0 #reduceActionFortype_argument_type3: 33374211 false) 
	#(301 2 #reduceActionFortype_arguments_opt3: 33041411 false) 
	#(302 1 #reduceActionFortype_arguments1: 33148929 false) 
	#(219 2 #reduceActionForbreak_statement1: 19042305 false) 
	#(220 2 #reduceActionForcontinue_statement1: 19150849 false) 
	#(121 1 #liftFirstValue: 4742145 false) 
	#(221 2 #reduceActionForreturn_statement1: 19271681 false) 
	#(198 2 #reduceActionForyield_statement1: 16207873 false) 
	#(191 2 #reduceActionForblock1: 15116289 false) 
	#(192 1 #reduceActionForimport_declarations1: 15192065 false) 
	#(306 2 #reduceActionForsimple_type_name1: 33524737 false) 
	#(123 2 #reduceActionForarray_type1: 4836353 false) 
	#(253 1 #reduceActionFordims1: 24716289 false) 
	#(194 2 #reduceActionForlocal_variable_declaration_statement1: 15422465 false) 
	#(201 2 #reduceActionForexpression_statement1: 16481281 false) 
	#(259 2 #reduceActionForpostincrement_expression1: 26058753 false) 
	#(260 2 #reduceActionForpostdecrement_expression1: 26169345 false) 
	#(280 1 #liftFirstValue: 30970884 false) 
	#(280 1 #liftFirstValue: 30970890 false) 
	#(280 1 #liftFirstValue: 30970882 false) 
	#(280 1 #liftFirstValue: 30970885 false) 
	#(280 1 #liftFirstValue: 30970886 false) 
	#(280 1 #liftFirstValue: 30970883 false) 
	#(280 1 #liftFirstValue: 30970887 false) 
	#(280 1 #liftFirstValue: 30970881 false) 
	#(280 1 #liftFirstValue: 30970888 false) 
	#(280 1 #liftFirstValue: 30970889 false) 
	#(280 1 #liftFirstValue: 30970891 false) 
	#(280 1 #liftFirstValue: 30970892 false) 
	#(123 2 #reduceActionForarray_type1: 4836354 false) 
	#(310 1 #reduceActionFormodifier5: 34024449 false) 
	#(310 1 #liftFirstValue: 34024450 false) 
	#(309 2 #reduceActionForimport_declarations2: 33945602 false) 
	#(264 2 #reduceActionForunary_expression_not_plus_minus3: 26774531 false) 
	#(242 2 #reduceActionForlambda_parameters1: 22535169 false) 
	#(244 1 #liftFirstValue: 22785025 false) 
	#(243 1 #reduceActionFortype_arguments1: 22659073 false) 
	#(244 1 #liftFirstValue: 22785026 false) 
	#(261 2 #reduceActionForunary_expression3: 26281987 false) 
	#(261 2 #reduceActionForunary_expression4: 26281988 false) 
	#(264 2 #reduceActionForunary_expression_not_plus_minus2: 26774530 false) 
	#(298 1 #reduceActionFortype_parameter1: 32714753 false) 
	#(297 1 #reduceActionFortype_arguments1: 32605185 false) 
	#(166 1 #reduceActionFormethod_body2: 10682370 false) 
	#(158 2 #reduceActionFormethod_declaration1: 9468929 false) 
	#(166 1 #liftFirstValue: 10682369 false) 
	#(167 2 #reduceActionForstatic_initializer1: 10779649 false) 
	#(153 1 #reduceActionFortype_arguments1: 8773633 false) 
	#(154 1 #liftFirstValue: 8926210 false) 
	#(154 1 #reduceActionForvariable_declarator1: 8926209 false) 
	#(168 2 #reduceActionForconstructor_declaration1: 10902529 false) 
	#(188 2 #reduceActionForabstract_method_declaration1: 14504961 false) 
	#(183 2 #reduceActionForinterface_method_declaration1: 13998081 false) 
	#(187 1 #reduceActionFormodifier5: 14448641 false) 
	#(186 1 #liftFirstValue: 14370817 false) 
	#(185 2 #reduceActionForimport_declarations2: 14125058 false) 
	#(186 1 #liftFirstValue: 14370818 false) 
	#(285 0 #reduceActionForannotation_args1: 31385601 false) 
	#(291 3 #reduceActionForenum_declaration1: 31975425 false) 
	#(132 3 #reduceActionForsingle_type_import_declaration1: 5737473 false) 
	#(127 3 #reduceActionForcompilation_unit8: 5160968 false) 
	#(235 3 #reduceActionForprimary_no_new_array3: 21062659 false) 
	#(303 2 #reduceActionFortype_argument2: 33252354 false) 
	#(303 2 #reduceActionFortype_argument1: 33252353 false) 
	#(301 3 #reduceActionFortype_arguments_opt2: 33041410 false) 
	#(233 3 #reduceActionForassert_statement1: 20723713 false) 
	#(219 3 #reduceActionForbreak_statement2: 19042306 false) 
	#(220 3 #reduceActionForcontinue_statement2: 19150850 false) 
	#(216 1 #liftFirstValue: 18717698 false) 
	#(218 1 #reduceActionForstatement_expression_list1: 18839553 false) 
	#(216 1 #liftFirstValue: 18717697 false) 
	#(250 3 #reduceActionForarray_creation_expression1: 24145921 false) 
	#(251 1 #reduceActionForimport_declarations1: 24528897 false) 
	#(250 3 #reduceActionForarray_creation_expression1: 24145923 false) 
	#(221 3 #reduceActionForreturn_statement2: 19271682 false) 
	#(255 3 #reduceActionForfield_access2: 24826882 false) 
	#(247 3 #reduceActionFormethod_reference_expression3: 22994947 false) 
	#(222 3 #reduceActionForthrow_statement1: 19382273 false) 
	#(227 1 #liftFirstValue: 20115458 false) 
	#(226 1 #reduceActionFortype_arguments1: 20000769 false) 
	#(224 3 #reduceActionFortry_statement1: 19653633 false) 
	#(228 1 #reduceActionForimport_declarations1: 20267009 false) 
	#(224 3 #reduceActionFortry_statement3: 19653635 false) 
	#(224 3 #reduceActionFortry_statement7: 19653639 false) 
	#(198 3 #reduceActionForyield_statement2: 16207874 false) 
	#(191 3 #reduceActionForblock2: 15116290 false) 
	#(192 2 #reduceActionForimport_declarations2: 15192066 false) 
	#(200 3 #reduceActionForlabeled_statement1: 16372737 false) 
	#(235 3 #reduceActionForprimary_no_new_array10: 21062666 false) 
	#(235 3 #reduceActionForprimary_no_new_array10: 21062664 false) 
	#(254 2 #reduceActionForempty_dim_expr1: 24767489 false) 
	#(253 2 #reduceActionFordims2: 24716290 false) 
	#(235 3 #reduceActionForprimary_no_new_array11: 21062667 false) 
	#(126 3 #reduceActionForqualified_name1: 5052417 false) 
	#(235 3 #reduceActionForprimary_no_new_array10: 21062665 false) 
	#(255 3 #reduceActionForfield_access1: 24826881 false) 
	#(278 3 #reduceActionForassignment1: 30801921 false) 
	#(195 3 #reduceActionForlocal_variable_declaration1: 15564801 false) 
	#(242 3 #reduceActionForlambda_parameters2: 22535170 false) 
	#(156 3 #reduceActionForvariable_declarator_id2: 9207810 false) 
	#(246 1 #liftFirstValue: 22935553 false) 
	#(241 3 #reduceActionForlambda_expression1: 22435841 false) 
	#(246 1 #liftFirstValue: 22935554 false) 
	#(266 3 #reduceActionFormultiplicative_expression4: 27449348 false) 
	#(266 3 #reduceActionFormultiplicative_expression4: 27449346 false) 
	#(266 3 #reduceActionFormultiplicative_expression4: 27449347 false) 
	#(267 3 #reduceActionFormultiplicative_expression4: 27842562 false) 
	#(267 3 #reduceActionFormultiplicative_expression4: 27842563 false) 
	#(268 3 #reduceActionFormultiplicative_expression4: 28131330 false) 
	#(268 3 #reduceActionFormultiplicative_expression4: 28131331 false) 
	#(268 3 #reduceActionFormultiplicative_expression4: 28131332 false) 
	#(269 3 #reduceActionFormultiplicative_expression4: 28537858 false) 
	#(269 3 #reduceActionFormultiplicative_expression4: 28537860 false) 
	#(269 3 #reduceActionFormultiplicative_expression4: 28537861 false) 
	#(269 3 #reduceActionFormultiplicative_expression4: 28537862 false) 
	#(269 3 #reduceActionFormultiplicative_expression4: 28537859 false) 
	#(270 3 #reduceActionFormultiplicative_expression4: 29317123 false) 
	#(270 3 #reduceActionFormultiplicative_expression4: 29317122 false) 
	#(271 3 #reduceActionFormultiplicative_expression4: 29595650 false) 
	#(272 3 #reduceActionFormultiplicative_expression4: 29745154 false) 
	#(273 3 #reduceActionFormultiplicative_expression4: 29902850 false) 
	#(274 3 #reduceActionFormultiplicative_expression4: 30078978 false) 
	#(275 3 #reduceActionFormultiplicative_expression4: 30262274 false) 
	#(296 3 #reduceActionFortype_parameters_opt2: 32509954 false) 
	#(159 3 #reduceActionFormethod_header1: 9551873 false) 
	#(159 3 #reduceActionFormethod_header1: 9551877 false) 
	#(152 3 #reduceActionForfield_declaration1: 8665089 false) 
	#(168 3 #reduceActionForconstructor_declaration3: 10902531 false) 
	#(165 1 #reduceActionFortype_arguments1: 10578945 false) 
	#(164 2 #reduceActionForthrows1: 10513409 false) 
	#(170 2 #reduceActionForblock1: 11187204 false) 
	#(168 3 #reduceActionForconstructor_declaration2: 10902530 false) 
	#(173 4 #reduceActionForannotation_interface_declaration1: 12354561 false) 
	#(288 1 #liftFirstValue: 31665153 false) 
	#(288 1 #liftFirstValue: 31665154 false) 
	#(285 1 #reduceActionForannotation_args2: 31385602 false) 
	#(286 1 #reduceActionFortype_arguments1: 31455233 false) 
	#(285 1 #reduceActionFortype_arguments1: 31385603 false) 
	#(288 1 #liftFirstValue: 31665155 false) 
	#(144 4 #reduceActionForclass_declaration1: 7736321 false) 
	#(122 1 #liftFirstValue: 4786177 false) 
	#(147 1 #reduceActionFortype_arguments1: 8059905 false) 
	#(146 2 #reduceActionForinterfaces1: 7989249 false) 
	#(295 1 #reduceActionForenum_body_declarations1: 32438273 false) 
	#(292 2 #reduceActionForenum_body1: 32093185 false) 
	#(293 1 #reduceActionFortype_arguments1: 32197633 false) 
	#(291 4 #reduceActionForenum_declaration2: 31975426 false) 
	#(132 4 #reduceActionForsingle_type_import_declaration2: 5737474 false) 
	#(172 4 #reduceActionForinterface_declaration1: 12160001 false) 
	#(291 4 #reduceActionForenum_declaration3: 31975427 false) 
	#(130 4 #reduceActionForpackage_declaration1: 5521409 false) 
	#(304 2 #reduceActionForempty_dim_expr1: 33374209 false) 
	#(304 2 #reduceActionForempty_dim_expr1: 33374210 false) 
	#(302 3 #reduceActionFortype_arguments2: 33148930 false) 
	#(251 2 #reduceActionForimport_declarations2: 24528898 false) 
	#(250 4 #reduceActionForarray_creation_expression2: 24145922 false) 
	#(250 4 #reduceActionForarray_creation_expression5: 24145925 false) 
	#(250 4 #reduceActionForarray_creation_expression2: 24145924 false) 
	#(250 4 #reduceActionForarray_creation_expression5: 24145926 false) 
	#(248 4 #reduceActionForclass_instance_creation_expression1: 23394305 false) 
	#(249 1 #reduceActionFortype_arguments1: 24044545 false) 
	#(225 3 #reduceActionFortype_arguments_opt2: 19909633 false) 
	#(232 2 #reduceActionForfinally1: 20649985 false) 
	#(228 2 #reduceActionForimport_declarations2: 20267010 false) 
	#(224 4 #reduceActionFortry_statement4: 19653636 false) 
	#(224 4 #reduceActionFortry_statement2: 19653634 false) 
	#(224 4 #reduceActionFortry_statement5: 19653637 false) 
	#(247 4 #reduceActionFormethod_reference_expression2: 22994946 false) 
	#(257 4 #reduceActionForarray_access1: 25730049 false) 
	#(257 4 #reduceActionForarray_access1: 25730050 false) 
	#(256 4 #reduceActionFormethod_invocation1: 25107457 false) 
	#(307 4 #reduceActionForqualified_type_name1: 33602561 false) 
	#(247 4 #reduceActionFormethod_reference_expression2: 22994945 false) 
	#(265 4 #reduceActionForcast_expression1: 26979329 false) 
	#(265 4 #reduceActionForcast_expression1: 26979332 false) 
	#(265 4 #reduceActionForcast_expression1: 26979330 false) 
	#(243 3 #reduceActionFortype_arguments2: 22659074 false) 
	#(163 3 #reduceActionForformal_parameter1: 10286081 false) 
	#(269 4 #reduceActionForrelational_expression7: 28537863 false) 
	#(276 4 #reduceActionForconditional_expression3: 30449667 false) 
	#(299 1 #reduceActionFortype_arguments1: 32817153 false) 
	#(298 3 #reduceActionFortype_parameter2: 32714754 false) 
	#(297 3 #reduceActionFortype_arguments2: 32605186 false) 
	#(159 4 #reduceActionFormethod_header3: 9551875 false) 
	#(159 4 #reduceActionFormethod_header3: 9551879 false) 
	#(159 4 #reduceActionFormethod_header2: 9551874 false) 
	#(159 4 #reduceActionFormethod_header2: 9551878 false) 
	#(153 3 #reduceActionFortype_arguments2: 8773634 false) 
	#(155 3 #reduceActionForinitialized_variable_declarator1: 9049089 false) 
	#(157 1 #liftFirstValue: 9374722 false) 
	#(157 1 #liftFirstValue: 9374721 false) 
	#(152 4 #reduceActionForfield_declaration2: 8665090 false) 
	#(168 4 #reduceActionForconstructor_declaration4: 10902532 false) 
	#(170 3 #reduceActionForconstructor_body2: 11187202 false) 
	#(170 3 #reduceActionForblock2: 11187203 false) 
	#(169 4 #reduceActionForconstructor_declarator1: 11041793 false) 
	#(162 1 #reduceActionFortype_arguments1: 10157057 false) 
	#(184 4 #reduceActionForinterface_method_header1: 14096385 false) 
	#(184 4 #reduceActionForinterface_method_header1: 14096387 false) 
	#(174 2 #reduceActionForannotation_interface_body1: 12521473 false) 
	#(176 1 #liftFirstValue: 12834818 false) 
	#(176 1 #liftFirstValue: 12834819 false) 
	#(175 1 #reduceActionForimport_declarations1: 12631041 false) 
	#(176 1 #liftFirstValue: 12834817 false) 
	#(177 1 #liftFirstValue: 12954625 false) 
	#(289 2 #reduceActionForelementValueArrayInitializer1: 31755265 false) 
	#(290 1 #reduceActionFortype_arguments1: 31882241 false) 
	#(284 5 #reduceActionForannotation2: 31276034 false) 
	#(145 2 #reduceActionForempty_dim_expr1: 7925761 false) 
	#(148 2 #reduceActionForannotation_interface_body1: 8180737 false) 
	#(149 1 #reduceActionForimport_declarations1: 8258561 false) 
	#(144 5 #reduceActionForclass_declaration3: 7736323 false) 
	#(144 5 #reduceActionForclass_declaration2: 7736322 false) 
	#(292 3 #reduceActionForenum_body3: 32093187 false) 
	#(295 2 #reduceActionForenum_body_declarations2: 32438274 false) 
	#(294 2 #reduceActionForenum_constant1: 32301057 false) 
	#(292 3 #reduceActionForenum_body5: 32093189 false) 
	#(292 3 #reduceActionForenum_body2: 32093186 false) 
	#(133 5 #reduceActionFortype_import_on_demand_declaration1: 5885953 false) 
	#(178 2 #reduceActionForextends_interfaces1: 13253633 false) 
	#(179 2 #reduceActionForannotation_interface_body1: 13406209 false) 
	#(180 1 #reduceActionForimport_declarations1: 13494273 false) 
	#(172 5 #reduceActionForinterface_declaration2: 12160002 false) 
	#(173 5 #reduceActionForannotation_interface_declaration2: 12354562 false) 
	#(144 5 #reduceActionForclass_declaration5: 7736325 false) 
	#(291 5 #reduceActionForenum_declaration4: 31975428 false) 
	#(172 5 #reduceActionForinterface_declaration3: 12160003 false) 
	#(233 5 #reduceActionForassert_statement2: 20723714 false) 
	#(217 1 #liftFirstValue: 18793473 false) 
	#(218 3 #reduceActionForstatement_expression_list2: 18839554 false) 
	#(203 5 #reduceActionForif_then_statement1: 16805889 false) 
	#(252 3 #reduceActionFordim_expr1: 24612865 false) 
	#(189 2 #reduceActionForarray_initializer4: 14618628 false) 
	#(190 1 #reduceActionFortype_arguments1: 14944257 false) 
	#(248 5 #reduceActionForclass_instance_creation_expression3: 23394307 false) 
	#(248 5 #reduceActionForclass_instance_creation_expression2: 23394306 false) 
	#(205 5 #reduceActionForswitch_statement1: 17149953 false) 
	#(236 5 #reduceActionForswitch_expression1: 21627905 false) 
	#(223 5 #reduceActionForsynchronized_statement1: 19487745 false) 
	#(225 4 #reduceActionFortry_resources2: 19909634 false) 
	#(226 3 #reduceActionFortype_arguments2: 20000770 false) 
	#(227 3 #reduceActionFortry_resource1: 20115457 false) 
	#(224 5 #reduceActionFortry_statement6: 19653638 false) 
	#(213 5 #reduceActionForwhile_statement1: 18174977 false) 
	#(255 5 #reduceActionForfield_access3: 24826883 false) 
	#(256 5 #reduceActionFormethod_invocation2: 25107458 false) 
	#(300 0 #reduceActionFortype_arguments_opt1: 32883713 false) 
	#(163 4 #reduceActionForformal_parameter2: 10286082 false) 
	#(276 5 #reduceActionForconditional_expression4: 30449668 false) 
	#(276 5 #reduceActionForconditional_expression4: 30449666 false) 
	#(159 5 #reduceActionFormethod_header4: 9551876 false) 
	#(159 5 #reduceActionFormethod_header4: 9551880 false) 
	#(161 3 #reduceActionFormethod_declarator1: 9853953 false) 
	#(161 3 #reduceActionFormethod_declarator3: 9853955 false) 
	#(165 3 #reduceActionFortype_arguments2: 10578946 false) 
	#(170 4 #reduceActionForconstructor_body1: 11187201 false) 
	#(169 5 #reduceActionForconstructor_declarator2: 11041794 false) 
	#(184 5 #reduceActionForinterface_method_header2: 14096386 false) 
	#(184 5 #reduceActionForinterface_method_header2: 14096388 false) 
	#(174 3 #reduceActionForannotation_interface_body2: 12521474 false) 
	#(175 2 #reduceActionForimport_declarations2: 12631042 false) 
	#(289 3 #reduceActionForelementValueArrayInitializer2: 31755266 false) 
	#(289 3 #reduceActionForelementValueArrayInitializer3: 31755267 false) 
	#(287 3 #reduceActionForelementValuePair1: 31564801 false) 
	#(286 3 #reduceActionFortype_arguments2: 31455234 false) 
	#(148 3 #reduceActionForannotation_interface_body2: 8180738 false) 
	#(149 2 #reduceActionForimport_declarations2: 8258562 false) 
	#(144 6 #reduceActionForclass_declaration4: 7736324 false) 
	#(147 3 #reduceActionFortype_arguments2: 8059906 false) 
	#(292 4 #reduceActionForenum_body4: 32093188 false) 
	#(294 3 #reduceActionForenum_constant2: 32301058 false) 
	#(292 4 #reduceActionForenum_body7: 32093191 false) 
	#(293 3 #reduceActionFortype_arguments2: 32197634 false) 
	#(292 4 #reduceActionForenum_body6: 32093190 false) 
	#(133 6 #reduceActionFortype_import_on_demand_declaration2: 5885954 false) 
	#(179 3 #reduceActionForannotation_interface_body2: 13406210 false) 
	#(180 2 #reduceActionForimport_declarations2: 13494274 false) 
	#(178 3 #reduceActionForextends_interfaces2: 13253634 false) 
	#(138 0 #reduceActionForannotations1: 6564865 false) 
	#(135 6 #reduceActionForrecord_declaration1: 6235137 false) 
	#(144 6 #reduceActionForclass_declaration7: 7736327 false) 
	#(144 6 #reduceActionForclass_declaration6: 7736326 false) 
	#(172 6 #reduceActionForinterface_declaration4: 12160004 false) 
	#(215 6 #reduceActionForfor_statement1: 18496513 false) 
	#(189 3 #reduceActionForarray_initializer3: 14618627 false) 
	#(189 3 #reduceActionForarray_initializer2: 14618626 false) 
	#(248 6 #reduceActionForclass_instance_creation_expression4: 23394308 false) 
	#(249 3 #reduceActionFortype_arguments2: 24044546 false) 
	#(256 6 #reduceActionFormethod_invocation5: 25107461 false) 
	#(206 2 #reduceActionForswitch_block4: 17298436 false) 
	#(207 1 #reduceActionForimport_declarations1: 17618945 false) 
	#(209 1 #reduceActionForimport_declarations1: 17886209 false) 
	#(238 1 #reduceActionForimport_declarations1: 21876737 false) 
	#(231 1 #reduceActionFortype_arguments1: 20581377 false) 
	#(247 6 #reduceActionFormethod_reference_expression4: 22994948 false) 
	#(256 6 #reduceActionFormethod_invocation3: 25107459 false) 
	#(265 6 #reduceActionForcast_expression5: 26979333 false) 
	#(265 6 #reduceActionForcast_expression5: 26979331 false) 
	#(299 3 #reduceActionFortype_arguments2: 32817154 false) 
	#(161 4 #reduceActionFormethod_declarator2: 9853954 false) 
	#(171 4 #reduceActionForexplicit_constructor_invocation3: 11525123 false) 
	#(171 4 #reduceActionForexplicit_constructor_invocation1: 11525121 false) 
	#(162 3 #reduceActionFortype_arguments2: 10157058 false) 
	#(289 4 #reduceActionForelementValueArrayInitializer4: 31755268 false) 
	#(290 3 #reduceActionFortype_arguments2: 31882242 false) 
	#(294 4 #reduceActionForenum_constant3: 32301059 false) 
	#(292 5 #reduceActionForenum_body8: 32093192 false) 
	#(137 1 #reduceActionForannotation_args2: 6536193 false) 
	#(135 7 #reduceActionForrecord_declaration2: 6235138 false) 
	#(135 7 #reduceActionForrecord_declaration3: 6235139 false) 
	#(144 7 #reduceActionForclass_declaration8: 7736328 false) 
	#(135 7 #reduceActionForrecord_declaration5: 6235141 false) 
	#(214 7 #reduceActionFordo_statement1: 18320385 false) 
	#(215 7 #reduceActionForfor_statement2: 18496514 false) 
	#(215 7 #reduceActionForfor_statement3: 18496515 false) 
	#(215 7 #reduceActionForfor_statement5: 18496517 false) 
	#(204 7 #reduceActionForif_then_else_statement1: 16948225 false) 
	#(189 4 #reduceActionForarray_initializer1: 14618625 false) 
	#(190 3 #reduceActionFortype_arguments2: 14944258 false) 
	#(256 7 #reduceActionFormethod_invocation6: 25107462 false) 
	#(282 1 #liftFirstValue: 31172609 false) 
	#(212 0 #reduceActionForannotation_args1: 18037761 false) 
	#(240 2 #reduceActionForswitch_expression_labels2: 22240258 false) 
	#(210 2 #reduceActionForswitch_label2: 17969154 false) 
	#(206 3 #reduceActionForswitch_block2: 17298434 false) 
	#(207 2 #reduceActionForimport_declarations2: 17618946 false) 
	#(206 3 #reduceActionForswitch_block3: 17298435 false) 
	#(208 2 #reduceActionForswitch_block_statement_group1: 17786881 false) 
	#(209 2 #reduceActionForimport_declarations2: 17886210 false) 
	#(237 3 #reduceActionForswitch_expression_block1: 21780481 false) 
	#(238 2 #reduceActionForimport_declarations2: 21876738 false) 
	#(239 2 #reduceActionForswitch_block_expression_group2: 22047746 false) 
	#(239 2 #reduceActionForswitch_block_expression_group2: 22047748 false) 
	#(229 5 #reduceActionForcatch_clause1: 20336641 false) 
	#(230 3 #reduceActionForcatch_parameter1: 20471809 false) 
	#(300 2 #reduceActionFortype_arguments_opt3: 32883715 false) 
	#(256 7 #reduceActionFormethod_invocation4: 25107460 false) 
	#(171 5 #reduceActionForexplicit_constructor_invocation4: 11525124 false) 
	#(171 5 #reduceActionForexplicit_constructor_invocation2: 11525122 false) 
	#(177 4 #reduceActionForannotation_method_declaration2: 12954626 false) 
	#(177 4 #reduceActionForannotation_method_declaration2: 12954627 false) 
	#(294 5 #reduceActionForenum_constant4: 32301060 false) 
	#(294 5 #reduceActionForenum_constant5: 32301061 false) 
	#(136 3 #reduceActionForswitch_expression_block1: 6458369 false) 
	#(138 2 #reduceActionForimport_declarations2: 6564866 false) 
	#(139 1 #liftFirstValue: 6607875 false) 
	#(139 1 #liftFirstValue: 6607873 false) 
	#(139 1 #liftFirstValue: 6607874 false) 
	#(135 8 #reduceActionForrecord_declaration4: 6235140 false) 
	#(135 8 #reduceActionForrecord_declaration6: 6235142 false) 
	#(135 8 #reduceActionForrecord_declaration7: 6235143 false) 
	#(215 8 #reduceActionForfor_statement4: 18496516 false) 
	#(215 8 #reduceActionForfor_statement6: 18496518 false) 
	#(215 8 #reduceActionForfor_statement7: 18496519 false) 
	#(206 4 #reduceActionForswitch_block1: 17298433 false) 
	#(239 3 #reduceActionForswitch_block_expression_group3: 22047747 false) 
	#(239 3 #reduceActionForswitch_block_expression_group3: 22047745 false) 
	#(231 3 #reduceActionFortype_arguments2: 20581378 false) 
	#(256 8 #reduceActionFormethod_invocation7: 25107463 false) 
	#(300 3 #reduceActionFortype_arguments_opt2: 32883714 false) 
	#(248 8 #reduceActionForclass_instance_creation_expression5: 23394309 false) 
	#(171 6 #reduceActionForexplicit_constructor_invocation7: 11525127 false) 
	#(171 6 #reduceActionForexplicit_constructor_invocation5: 11525125 false) 
	#(294 6 #reduceActionForenum_constant6: 32301062 false) 
	#(140 2 #reduceActionForconstructor_declaration1: 6724609 false) 
	#(141 2 #reduceActionForrecord_constructor_declarator1: 6877185 false) 
	#(135 9 #reduceActionForrecord_declaration8: 6235144 false) 
	#(215 9 #reduceActionForfor_statement8: 18496520 false) 
	#(308 9 #reduceActionForforeach_statement1: 33725441 false) 
	#(240 4 #reduceActionForswitch_expression_labels1: 22240257 false) 
	#(210 4 #reduceActionForswitch_label1: 17969153 false) 
	#(212 2 #reduceActionFordims2: 18037762 false) 
	#(256 9 #reduceActionFormethod_invocation8: 25107464 false) 
	#(248 9 #reduceActionForclass_instance_creation_expression7: 23394311 false) 
	#(248 9 #reduceActionForclass_instance_creation_expression6: 23394310 false) 
	#(171 7 #reduceActionForexplicit_constructor_invocation8: 11525128 false) 
	#(171 7 #reduceActionForexplicit_constructor_invocation6: 11525126 false) 
	#(140 3 #reduceActionForconstructor_declaration2: 6724610 false) 
	#(140 3 #reduceActionForconstructor_declaration3: 6724611 false) 
	#(211 2 #reduceActionForempty_dim_expr1: 18037761 false) 
	#(248 10 #reduceActionForclass_instance_creation_expression8: 23394312 false) 
	#(140 4 #reduceActionForconstructor_declaration4: 6724612 false) 
	#(141 4 #reduceActionForconstructor_declarator1: 6877186 false) 
	#(141 5 #reduceActionForconstructor_declarator2: 6877187 false)
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
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '">="' '">>="' '">>>="' '"?"' '"@"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"assert"' '"boolean"' '"break"' '"byte"' '"case"' '"catch"' '"char"' '"class"' '"continue"' '"default"' '"do"' '"double"' '"else"' '"enum"' '"extends"' '"final"' '"finally"' '"float"' '"for"' '"if"' '"implements"' '"import"' '"instanceof"' '"int"' '"interface"' '"long"' '"native"' '"new"' '"package"' '"private"' '"protected"' '"public"' '"record"' '"return"' '"short"' '"static"' '"strictfp"' '"super"' '"switch"' '"synchronized"' '"this"' '"throw"' '"throws"' '"transient"' '"try"' '"void"' '"volatile"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<GREATER_THAN>' '<SIGNED_RIGHT_SHIFT>' '<UNSIGNED_RIGHT_SHIFT>' '<INTEGER_LITERAL>' '<FLOATING_POINT_LITERAL>' '<BOOLEAN_LITERAL>' '<CHARACTER_LITERAL>' '<STRING_LITERAL>' '<NULL_LITERAL>' '<IDENTIFIER>' '<whitespace>' '<comment>' '<patternToken>' 'B e g i n' 'goal' 'literal' 'type' 'primitive_type' 'numeric_type' 'integral_type' 'floating_point_type' 'reference_type' 'class_or_interface_type' 'class_type' 'interface_type' 'array_type' 'name' 'simple_name' 'qualified_name' 'compilation_unit' 'import_declarations' 'type_declarations' 'package_declaration' 'import_declaration' 'single_type_import_declaration' 'type_import_on_demand_declaration' 'type_declaration' 'record_declaration' 'record_body' 'record_body_declarations' 'record_body_declaration ''declaration''*' 'record_body_declaration' 'record_constructor_declaration' 'record_constructor_declarator' 'modifiers' 'modifier' 'class_declaration' 'super' 'interfaces' 'interface_type_list' 'class_body' 'class_body_declarations' 'class_body_declaration' 'class_member_declaration' 'field_declaration' 'variable_declarators' 'variable_declarator' 'initialized_variable_declarator' 'variable_declarator_id' 'variable_initializer' 'method_declaration' 'method_header' 'void' 'method_declarator' 'formal_parameter_list' 'formal_parameter' 'throws' 'class_type_list' 'method_body' 'static_initializer' 'constructor_declaration' 'constructor_declarator' 'constructor_body' 'explicit_constructor_invocation' 'interface_declaration' 'annotation_interface_declaration' 'annotation_interface_body' 'annotation_interface_member_declarations' 'annotation_interface_member_declaration' 'annotation_method_declaration' 'extends_interfaces' 'interface_body' 'interface_member_declarations' 'interface_member_declaration' 'constant_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_modifier*' 'interface_modifier' 'default_modifier' 'abstract_method_declaration' 'array_initializer' 'variable_initializers' 'block' 'block_statements' 'block_statement' 'local_variable_declaration_statement' 'local_variable_declaration' 'statement' 'statement_without_trailing_substatement' 'yield_statement' 'empty_statement' 'labeled_statement' 'expression_statement' 'statement_expression' 'if_then_statement' 'if_then_else_statement' 'switch_statement' 'switch_block' 'switch_block_statement_groups' 'switch_block_statement_group' 'switch_labels' 'switch_label' '("," ''comma'' constant_expression ''constant'')' '("," ''comma'' constant_expression ''constant'')*' 'while_statement' 'do_statement' 'for_statement' 'for_init' 'for_update' 'statement_expression_list' 'break_statement' 'continue_statement' 'return_statement' 'throw_statement' 'synchronized_statement' 'try_statement' 'try_resources' 'try_resources_list' 'try_resource' 'catches' 'catch_clause' 'catch_parameter' 'catch_types' 'finally' 'assert_statement' 'primary' 'primary_no_new_array' 'switch_expression' 'switch_expression_block' 'switch_block_expression_groups' 'switch_block_expression_group' 'switch_expression_labels' 'lambda_expression' 'lambda_parameters' 'lambda_parameter_list' 'lambda_parameter' 'untyped_lambda_parameter' 'lambda_function' 'method_reference_expression' 'class_instance_creation_expression' 'argument_list' 'array_creation_expression' 'dim_exprs' 'dim_expr' 'dims' 'empty_dim_expr' 'field_access' 'method_invocation' 'array_access' 'postfix_expression' 'postincrement_expression' 'postdecrement_expression' 'unary_expression' 'preincrement_expression' 'predecrement_expression' 'unary_expression_not_plus_minus' 'cast_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'conditional_expression' 'assignment_expression' 'assignment' 'left_hand_side' 'assignment_operator' 'expression' 'constant_expression' 'annotations' 'annotation' 'annotation_args' 'elementValuePairs' 'elementValuePair' 'elementValue' 'elementValueArrayInitializer' 'elementValues' 'enum_declaration' 'enum_body' 'enum_constants' 'enum_constant' 'enum_body_declarations' 'type_parameters_opt' 'type_parameters' 'type_parameter' 'type_bound' 'type_arguments_or_diamond_opt' 'type_arguments_opt' 'type_arguments' 'type_argument' 'type_argument_type' 'type_name' 'simple_type_name' 'qualified_type_name' 'foreach_statement' 'variable_modifiers' 'variable_modifier' 'primary_or_name' 'class_or_interface_body_declaration' 'E O F' 'error')
]

{ #category : #generated }
JavaParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JavaProgramFileNode #JavaProgramFileNode #JavaLiteralNode #JavaTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaArrayTypeNode #JavaNameNode #JavaNameNode #JavaQualifiedNameNode #JavaProgramFileNode #OrderedCollection #OrderedCollection #JavaPackageDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaTypeImportOnDemandDeclarationNode #JavaProgramNode #JavaRecordDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaConstructorDeclarationNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaProgramNode #JavaFieldDeclarationNode #OrderedCollection #JavaVariableDeclarationNode #JavaInitializedVariableDeclarationNode #JavaProgramNode #JavaProgramNode #JavaMethodDeclarationNode #OrderedCollection #JavaVoidTypeNode #JavaProgramNode #OrderedCollection #JavaParameterNode #JavaThrowsNode #OrderedCollection #JavaProgramNode #JavaStaticInitializerNode #JavaConstructorDeclarationNode #OrderedCollection #JavaBlockNode #JavaStatementNode #JavaInterfaceDeclarationNode #JavaAnnotationInterfaceNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaAbstractMethodDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaFieldDeclarationNode #JavaMethodDeclarationNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaModifierNode #JavaAbstractMethodDeclarationNode #JavaArrayInitializerNode #OrderedCollection #JavaBlockNode #OrderedCollection #JavaProgramNode #JavaLocalVariableDeclarationStatementNode #JavaLocalVariableDeclarationNode #JavaProgramNode #JavaStatementNode #JavaYieldStatementNode #JavaEmptyStatementNode #JavaLabeledStatementNode #JavaExpressionStatementNode #JavaExpressionNode #JavaIfStatementNode #JavaIfElseStatementNode #JavaSwitchStatementNode #JavaSwitchBlockNode #OrderedCollection #JavaSwitchBlockStatementGroupNode #OrderedCollection #JavaProgramNode #OrderedCollection #OrderedCollection #JavaWhileStatementNode #JavaDoWhileStatementNode #JavaForStatementNode #JavaProgramNode #JavaStatementExpressionListNode #JavaStatementExpressionListNode #JavaBreakStatementNode #JavaContinueStatementNode #JavaReturnStatementNode #JavaThrowStatementNode #JavaSynchronizedStatementNode #JavaTryStatementNode #OrderedCollection #OrderedCollection #JavaProgramNode #OrderedCollection #JavaCatchClauseNode #JavaCatchParameterNode #OrderedCollection #JavaFinallyClauseNode #JavaAssertStatementNode #JavaExpressionNode #JavaExpressionNode #JavaSwitchExpressionNode #OrderedCollection #OrderedCollection #JavaSwitchBlockExpressionGroupNode #OrderedCollection #JavaLambdaExpressionNode #OrderedCollection #OrderedCollection #JavaParameterNode #JavaParameterNode #JavaProgramNode #JavaMethodReferenceNode #JavaNewNode #OrderedCollection #JavaNewArrayNode #OrderedCollection #JavaDimensionExpressionNode #OrderedCollection #OrderedCollection #JavaFieldAccessNode #JavaMethodInvocationNode #JavaArrayAccessNode #JavaExpressionNode #JavaPostIncrementExpressionNode #JavaPostDecrementExpressionNode #JavaExpressionNode #JavaPreIncrementExpressionNode #JavaPreDecrementExpressionNode #JavaExpressionNode #JavaCastExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaAssignmentNode #JavaExpressionNode #SmaCCToken #JavaExpressionNode #JavaExpressionNode #OrderedCollection #JavaAnnotationNode #OrderedCollection #OrderedCollection #JavaElementValuePairNode #JavaProgramNode #JavaElementArrayInitializerNode #OrderedCollection #JavaEnumDeclarationNode #OrderedCollection #OrderedCollection #JavaEnumConstantNode #OrderedCollection #JavaTypeParametersNode #OrderedCollection #JavaTypeParameterNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaTypeArgumentNode #OrderedCollection #JavaTypeNameNode #JavaTypeNameNode #JavaQualifiedTypeNameNode #JavaForEachStatementNode #OrderedCollection #JavaProgramNode #JavaExpressionNode #JavaProgramNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JavaParser class >> transitionTable [
^#(
#[1 0 33 0 26 0 7 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 6 0 71 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 0 105 0 112 0 105 0 127 0 113 0 128 0 117 0 129 0 121 0 130 0 125 0 131 0 125 0 132 0 125 0 133 0 137 0 134 0 137 0 135 0 145 0 142 0 149 0 143 0 137 0 144 0 137 0 172 0 137 0 173 0 165 1 27 0 149 1 28 0 137 1 35 0 10 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 221 0 51 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 1 145 0 144 1 133 0 160 1 145 0 172 1 145 0 191 1 145 0 193 1 145 0 194 1 153 0 195 1 145 0 196 1 145 0 197 1 145 0 198 1 145 0 199 1 145 0 200 1 145 0 201 1 181 0 202 1 145 0 203 1 145 0 204 1 145 0 205 1 145 0 213 1 145 0 214 1 145 0 215 1 145 0 219 1 145 0 220 1 145 0 221 1 145 0 222 1 145 0 223 1 145 0 224 1 145 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 1 145 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 1 145 1 52 2 65 1 53 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 2 213 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 2 213 1 20 2 213 1 21 2 209 1 22 2 41 1 23 2 213 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 2 217 0 134 2 217 0 135 0 145 0 142 0 149 0 143 2 217 0 144 2 217 0 172 2 217 0 173 0 149 1 28 2 217 1 35] 
#[1 2 221 0 27 0 197 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 22 0 77 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 0 22 0 107 2 225 0 142 0 149 0 143 2 229 0 158 2 233 0 159 0 149 1 28 2 237 1 40] 
#[1 0 33 0 26 2 221 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 87 0 77 2 241 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 1 45 0 92 0 91 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 3 13 0 134 3 13 0 135 3 9 0 142 0 149 0 143 3 13 0 144 3 13 0 150 3 13 0 151 3 13 0 152 3 13 0 158 2 233 0 159 3 13 0 167 3 13 0 168 3 37 0 169 3 13 0 172 3 13 0 173 3 41 0 191 0 149 1 28 3 13 1 35 3 45 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 72 0 147 0 73 0 151 0 74 0 81 0 75 0 155 0 77 0 159 0 78 0 163 0 79 0 167 0 82 0 171 0 86 0 175 0 88 0 179 0 89 1 45 0 92 0 183 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 3 49 0 134 3 49 0 135 3 9 0 142 0 149 0 143 3 49 0 144 3 89 0 150 3 89 0 151 3 57 0 152 3 89 0 158 3 61 0 159 3 89 0 167 3 89 0 168 3 37 0 169 3 49 0 172 3 49 0 173 3 89 0 181 3 89 0 182 3 89 0 183 3 77 0 184 3 81 0 185 3 89 0 188 3 41 0 191 0 149 1 28 3 49 1 35 3 45 1 40 2 49 1 49 2 49 1 50 2 49 1 51 3 89 1 56] 
#[0 0 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 3 93 0 67 3 97 0 107 3 101 0 124 3 101 0 125 3 101 0 126] 
#[0 0 34 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 3 105 0 107] 
#[0 3 109 0 107] 
#[0 0 38 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[1 3 113 0 78 3 97 0 107 3 117 0 124 3 117 0 125 3 117 0 126] 
#[0 3 121 0 107] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 46 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 50 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 54 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 3 125 0 107] 
#[0 0 58 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 62 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 66 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 70 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 74 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 0 1 57] 
#[0 0 78 1 57] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 3 129 0 129 3 133 0 131 3 133 0 132 3 133 0 133 0 137 0 134 0 137 0 135 0 145 0 142 0 149 0 143 0 137 0 144 0 137 0 172 0 137 0 173 0 149 1 28 0 137 1 35 0 82 1 57] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 3 137 0 134 3 137 0 135 0 145 0 142 0 149 0 143 3 137 0 144 3 137 0 172 3 137 0 173 0 149 1 28 3 137 1 35 0 86 1 57] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 3 141 0 128 3 145 0 129 0 125 0 131 0 125 0 132 0 125 0 133 0 137 0 134 0 137 0 135 0 145 0 142 0 149 0 143 0 137 0 144 0 137 0 172 0 137 0 173 0 149 1 28 0 137 1 35 0 90 1 57] 
#[0 0 94 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 0 98 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 0 102 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 0 106 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 0 110 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 3 149 0 37 0 41 0 42 3 153 0 50 3 157 0 56 0 53 0 58 3 161 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 3 165 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 3 169 0 143 3 169 1 28] 
#[0 0 114 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 118 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 0 122 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 0 126 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 0 197 0 37 3 173 0 71 3 177 1 28] 
#[0 0 130 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 0 134 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 3 181 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 3 181 1 20 3 181 1 21 2 209 1 22 2 41 1 23 3 181 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 3 193 1 5 3 193 1 6 3 193 1 7 3 193 1 8 3 193 1 9 3 193 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 3 201 1 5 3 201 1 6 3 201 1 7 3 201 1 8 3 201 1 9 3 201 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 0 138 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 3 205 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 77 3 209 0 98 0 6 0 107 3 213 1 27 3 217 1 46 3 221 1 47] 
#[1 3 97 0 107 3 101 0 124 3 101 0 125 3 101 0 126] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 3 225 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 3 225 1 20 3 225 1 21 2 209 1 22 2 41 1 23 3 225 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 0 142 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[1 3 229 0 26 3 233 0 107] 
#[0 0 146 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[0 0 150 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[1 3 237 0 26 3 241 0 107] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 3 249 0 191 3 249 0 196 3 249 0 197 3 249 0 198 3 249 0 199 3 249 0 200 3 249 0 201 1 181 0 202 3 249 0 203 3 249 0 204 3 249 0 205 3 249 0 213 3 249 0 214 3 249 0 215 3 249 0 219 3 249 0 220 3 249 0 221 3 249 0 222 3 249 0 223 3 249 0 224 3 249 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 3 249 1 52 2 69 1 55] 
#[0 0 154 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[0 0 158 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[0 3 253 0 8] 
#[0 4 1 0 8] 
#[0 0 162 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[0 0 166 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 4 5 0 115 4 5 0 116 4 5 0 117 4 5 0 118 4 9 0 120 4 13 0 121 4 17 1 49 4 17 1 50 4 17 1 51] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 4 21 0 26 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 4 25 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 4 25 1 20 4 25 1 21 2 209 1 22 2 41 1 23 4 25 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 0 170 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[1 4 29 0 20 4 33 0 25] 
#[0 4 37 0 8] 
#[1 4 41 0 8 0 66 0 37 0 66 0 42 0 66 0 50 0 66 0 56 0 66 0 58 0 66 0 67 0 66 0 69 0 66 0 72 0 66 0 73 0 66 0 74 0 66 0 78 0 66 0 79 0 66 0 82 0 66 0 86 0 66 0 89] 
#[0 0 174 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 4 45 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 4 45 1 20 4 45 1 21 2 209 1 22 2 41 1 23 4 45 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 4 49 0 8 1 45 0 92 4 53 0 191 4 57 0 225] 
#[0 0 178 0 20 0 107] 
#[0 4 61 0 8] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 4 65 0 26 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 4 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 4 69 1 20 4 69 1 21 2 209 1 22 2 41 1 23 4 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 221 0 51 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 4 73 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 4 81 0 144 1 133 0 160 4 81 0 172 4 81 0 191 4 77 0 192 4 81 0 193 4 81 0 194 1 153 0 195 4 81 0 196 4 81 0 197 4 81 0 198 4 81 0 199 4 81 0 200 4 81 0 201 1 181 0 202 4 81 0 203 4 81 0 204 4 81 0 205 4 81 0 213 4 81 0 214 4 81 0 215 4 81 0 219 4 81 0 220 4 81 0 221 4 81 0 222 4 81 0 223 4 81 0 224 4 81 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 4 81 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 4 81 1 52 2 65 1 53 2 69 1 55] 
#[0 0 182 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 0 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 0 190 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 0 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 0 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 0 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 0 206 0 4 0 206 0 7 0 206 0 11 0 206 0 13 0 206 0 14 0 206 0 17 0 206 0 18 0 195 0 20 0 206 0 23 4 85 0 24 0 195 0 25 0 199 0 27 0 206 0 29 0 206 0 31 0 206 0 34 0 206 0 35 0 195 0 38 0 206 0 41 0 206 0 94 4 89 1 45] 
#[0 0 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 4 93 0 20] 
#[1 0 203 0 20 4 101 0 38 4 105 0 253 4 109 0 254] 
#[0 0 218 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[0 0 222 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[0 0 226 0 5 0 9 0 15 0 20 0 21 0 38 0 93 0 98 0 107] 
#[1 0 230 0 20 0 18 0 25 0 193 0 27 4 113 1 45] 
#[0 0 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 0 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[1 0 242 0 2 0 242 0 3 0 246 0 4 0 242 0 5 0 242 0 6 0 246 0 7 0 242 0 9 0 242 0 10 0 246 0 11 0 242 0 12 0 242 0 13 0 246 0 14 0 242 0 15 0 242 0 16 0 242 0 17 0 246 0 18 0 242 0 19 0 207 0 20 0 242 0 22 0 246 0 23 0 242 0 24 0 250 0 25 0 242 0 26 0 211 0 27 0 242 0 28 0 246 0 29 0 242 0 30 0 246 0 31 0 242 0 32 0 242 0 33 0 246 0 34 0 246 0 35 0 242 0 36 4 121 0 38 0 242 0 39 0 242 0 40 0 246 0 41 0 242 0 65 0 242 0 93 0 246 0 94 0 242 0 95 0 242 0 96 0 242 0 98 0 242 0 99 0 242 0 100 4 125 1 45 0 242 1 57] 
#[0 0 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 93 0 94 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 1 2 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 93 0 94 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[1 0 197 0 37 0 41 0 42 3 153 0 50 3 157 0 56 0 53 0 58 3 161 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 3 169 0 143 3 169 1 28] 
#[0 1 6 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 4 129 0 20] 
#[0 1 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 0 0 1 57] 
#[0 1 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 4 133 0 26] 
#[0 1 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 4 137 0 26] 
#[0 1 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 62 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 70 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 74 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 90 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 1 94 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 1 98 0 2 1 98 0 3 1 98 0 5 1 98 0 6 1 98 0 9 1 98 0 10 1 98 0 12 1 98 0 13 1 98 0 15 1 98 0 16 1 98 0 17 1 98 0 19 0 215 0 20 1 98 0 22 1 98 0 24 1 102 0 25 1 98 0 26 0 219 0 27 1 98 0 28 1 98 0 30 1 98 0 32 1 98 0 33 1 98 0 36 1 98 0 39 1 98 0 40 1 98 0 65 1 98 0 93 1 98 0 95 1 98 0 96 1 98 0 98 1 98 0 99 1 98 0 100 1 98 1 57] 
#[1 1 106 0 2 1 106 0 3 1 106 0 5 1 106 0 6 1 106 0 9 1 106 0 10 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 16 1 106 0 17 1 106 0 19 1 106 0 20 1 106 0 22 1 106 0 24 1 106 0 25 1 106 0 26 1 106 0 27 1 106 0 28 1 106 0 30 1 106 0 32 1 106 0 33 1 106 0 36 4 145 0 38 1 106 0 39 1 106 0 40 1 106 0 65 1 106 0 93 1 106 0 95 1 106 0 96 1 106 0 98 1 106 0 99 1 106 0 100 1 106 1 57] 
#[1 1 110 0 8 0 223 0 13 0 223 0 17 1 114 0 20 1 114 0 25 1 110 0 26 0 223 0 27 1 110 0 37 1 114 0 38 1 110 0 42 1 110 0 43 1 110 0 44 1 110 0 45 1 110 0 46 1 110 0 47 1 110 0 49 1 110 0 50 1 110 0 51 1 110 0 52 1 110 0 53 1 110 0 54 1 110 0 55 1 110 0 56 1 110 0 58 1 110 0 60 1 110 0 61 1 110 0 62 1 110 0 66 1 110 0 67 1 110 0 68 1 110 0 69 1 110 0 70 1 110 0 72 1 110 0 73 1 110 0 74 1 110 0 76 1 110 0 77 1 110 0 78 1 110 0 79 1 110 0 80 1 110 0 81 1 110 0 82 1 110 0 83 1 110 0 84 1 110 0 86 1 110 0 87 1 110 0 88 1 110 0 89 1 110 0 90 1 110 0 91 1 110 0 92 1 110 0 96 1 110 0 101 1 110 0 102 1 110 0 103 1 110 0 104 1 110 0 105 1 110 0 106 1 110 0 107 1 110 1 57] 
#[0 1 118 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 1 122 0 9 1 126 0 13 1 122 0 15 1 126 0 17 1 126 0 20 1 126 0 25 1 122 0 26 1 126 0 27 1 126 0 38] 
#[0 1 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 1 134 0 2 1 134 0 3 1 138 0 4 1 134 0 5 1 134 0 6 1 138 0 7 1 134 0 9 1 134 0 10 1 138 0 11 1 134 0 12 1 134 0 13 1 138 0 14 1 134 0 15 1 134 0 16 1 134 0 17 1 138 0 18 1 134 0 19 1 134 0 20 1 134 0 22 1 138 0 23 1 134 0 24 1 134 0 25 1 134 0 26 1 134 0 27 1 134 0 28 1 138 0 29 1 134 0 30 1 138 0 31 1 134 0 32 1 134 0 33 1 138 0 34 1 138 0 35 1 134 0 36 1 134 0 38 1 134 0 39 1 134 0 40 1 138 0 41 1 134 0 65 1 134 0 93 1 138 0 94 1 134 0 95 1 134 0 96 1 134 0 98 1 134 0 99 1 134 0 100 1 134 1 57] 
#[1 1 142 0 9 1 146 0 13 1 142 0 15 1 146 0 17 1 146 0 20 1 146 0 25 1 142 0 26 1 146 0 27 1 146 0 38] 
#[1 1 150 0 2 1 150 0 3 1 154 0 4 1 150 0 5 1 150 0 6 1 154 0 7 1 150 0 9 1 150 0 10 1 154 0 11 1 150 0 12 1 150 0 13 1 154 0 14 1 150 0 15 1 150 0 16 1 150 0 17 1 154 0 18 1 150 0 19 1 150 0 20 1 150 0 22 1 154 0 23 1 150 0 24 1 150 0 25 1 150 0 26 1 150 0 27 1 150 0 28 1 154 0 29 1 150 0 30 1 154 0 31 1 150 0 32 1 150 0 33 1 154 0 34 1 154 0 35 1 150 0 36 1 150 0 38 1 150 0 39 1 150 0 40 1 154 0 41 1 150 0 65 1 150 0 93 1 154 0 94 1 150 0 95 1 150 0 96 1 150 0 98 1 150 0 99 1 150 0 100 1 150 1 57] 
#[1 4 149 0 13 4 153 0 17] 
#[1 1 158 0 9 1 162 0 13 1 158 0 15 1 162 0 17 1 158 0 26] 
#[1 1 166 0 9 1 170 0 13 1 166 0 15 1 170 0 17 1 166 0 26] 
#[0 1 174 0 9 0 15 0 26] 
#[0 1 178 0 9 0 15 0 26] 
#[0 1 182 0 9 0 15 0 26] 
#[0 4 205 0 4 0 7 0 11 0 14 0 18 0 23 0 29 0 31 0 34 0 35 0 41 0 94 1 24] 
#[0 4 209 0 107] 
#[1 1 186 0 2 1 186 0 3 1 186 0 5 1 186 0 6 1 186 0 9 1 186 0 10 1 186 0 12 1 186 0 15 1 186 0 16 1 186 0 19 0 227 0 20 1 186 0 21 1 186 0 22 1 186 0 24 1 186 0 25 1 186 0 26 1 186 0 27 1 186 0 28 1 186 0 30 1 186 0 32 1 186 0 33 1 186 0 36 4 101 0 38 1 186 0 39 1 186 0 40 1 186 0 65 1 186 0 93 1 186 0 95 1 186 0 96 1 186 0 98 1 186 0 99 1 186 0 100 1 186 0 107 4 217 0 253 4 109 0 254 1 186 1 57] 
#[0 1 190 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 1 194 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 1 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 4 221 0 58 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 4 225 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 4 225 0 119 4 225 0 120 4 225 0 123 4 233 1 28 2 49 1 49 2 49 1 50 2 49 1 51 4 233 1 54] 
#[1 4 237 0 20 0 18 0 25 0 193 0 27 4 241 1 45] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 4 245 1 5 4 245 1 6 4 245 1 7 4 245 1 8 4 245 1 9 4 245 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 4 249 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 0 253 0 70 0 47 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 231 0 107 1 241 0 113 1 81 0 114 4 253 0 115 4 253 0 116 4 253 0 117 4 253 0 118 5 1 0 119 5 1 0 120 5 1 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 5 13 0 163 1 237 0 234 1 241 0 235 1 241 0 236 3 181 0 241 2 113 0 242 5 9 0 243 5 13 0 244 5 17 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 3 181 1 20 3 181 1 21 2 209 1 22 2 41 1 23 3 181 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 5 21 1 53 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 5 25 1 5 5 25 1 6 5 25 1 7 5 25 1 8 5 25 1 9 5 25 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 5 29 1 5 5 29 1 6 5 29 1 7 5 29 1 8 5 29 1 9 5 29 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 5 33 0 8] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 5 37 1 5 5 37 1 6 5 37 1 7 5 37 1 8 5 37 1 9 5 37 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 195 0 5 0 206 0 6 0 206 0 7 0 235 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 239 0 15 0 206 0 16 0 206 0 17 0 206 0 18 0 239 0 19 0 195 0 20 0 206 0 22 0 206 0 23 0 206 0 24 0 195 0 25 0 206 0 26 0 199 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 0 235 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 65 0 206 0 93 0 206 0 94 0 206 0 95 0 206 0 96 0 206 0 98 0 206 0 99 0 206 0 100 4 89 1 45 0 206 1 57] 
#[1 1 206 0 9 1 206 0 15 1 206 0 19 5 41 0 38] 
#[0 1 114 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 5 45 0 19] 
#[0 1 214 0 19] 
#[0 1 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 146 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 1 218 0 2 1 218 0 3 1 218 0 5 1 218 0 6 1 218 0 9 1 218 0 10 1 218 0 12 4 149 0 13 1 218 0 15 1 218 0 16 4 153 0 17 1 218 0 19 1 218 0 22 1 218 0 24 1 218 0 26 1 218 0 27 1 218 0 28 1 218 0 30 1 218 0 32 1 218 0 33 1 218 0 36 1 218 0 39 1 218 0 40 1 218 0 65 1 218 0 93 1 218 0 95 1 218 0 96 1 218 0 98 1 218 0 99 1 218 0 100 1 218 1 57] 
#[0 1 162 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 170 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 222 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 226 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 230 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 1 242 0 2 0 243 0 3 1 242 0 5 1 242 0 6 1 242 0 9 0 247 0 10 1 242 0 12 1 242 0 15 1 242 0 16 1 242 0 19 0 251 0 22 1 242 0 24 1 242 0 26 1 242 0 27 1 242 0 28 1 242 0 30 1 242 0 32 1 242 0 33 1 242 0 36 1 242 0 39 1 242 0 40 1 242 0 65 1 242 0 93 1 242 0 95 1 242 0 96 1 242 0 98 1 242 0 99 1 242 0 100 1 242 1 57] 
#[1 1 246 0 2 1 246 0 3 1 246 0 5 1 246 0 6 1 246 0 9 1 246 0 10 0 255 0 12 1 246 0 15 1 3 0 16 1 246 0 19 1 246 0 22 1 246 0 24 1 246 0 26 1 246 0 27 1 246 0 28 1 246 0 30 1 246 0 32 1 246 0 33 1 246 0 36 1 246 0 39 1 246 0 40 1 246 0 65 1 246 0 93 1 246 0 95 1 246 0 96 1 246 0 98 1 246 0 99 1 246 0 100 1 246 1 57] 
#[1 1 250 0 2 1 250 0 3 1 250 0 5 1 250 0 6 1 250 0 9 1 250 0 10 1 250 0 12 1 250 0 15 1 250 0 16 1 250 0 19 1 250 0 22 1 250 0 24 1 250 0 26 1 250 0 27 1 7 0 28 1 250 0 30 1 250 0 32 1 250 0 33 1 250 0 36 1 250 0 39 1 250 0 40 1 250 0 65 1 250 0 93 1 250 0 95 1 250 0 96 1 250 0 98 1 11 0 99 1 15 0 100 1 250 1 57] 
#[1 1 254 0 2 1 254 0 3 1 254 0 5 1 254 0 6 1 254 0 9 1 254 0 10 1 254 0 12 1 254 0 15 1 254 0 16 1 254 0 19 1 254 0 22 1 254 0 24 1 254 0 26 1 19 0 27 1 254 0 28 1 23 0 30 1 254 0 32 1 27 0 33 1 254 0 36 1 254 0 39 1 254 0 40 1 31 0 65 1 254 0 93 1 254 0 95 1 254 0 96 1 35 0 98 1 254 0 99 1 254 0 100 1 254 1 57] 
#[1 1 39 0 2 2 2 0 3 2 2 0 5 2 2 0 6 2 2 0 9 2 2 0 10 2 2 0 12 2 2 0 15 2 2 0 16 2 2 0 19 2 2 0 22 2 2 0 24 2 2 0 26 2 2 0 27 2 2 0 28 2 2 0 30 1 43 0 32 2 2 0 33 2 2 0 36 2 2 0 39 2 2 0 40 2 2 0 65 2 2 0 93 2 2 0 95 2 2 0 96 2 2 0 98 2 2 0 99 2 2 0 100 2 2 1 57] 
#[1 2 6 0 2 2 6 0 3 1 47 0 5 2 6 0 6 2 6 0 9 2 6 0 10 2 6 0 12 2 6 0 15 2 6 0 16 2 6 0 19 2 6 0 22 2 6 0 24 2 6 0 26 2 6 0 27 2 6 0 28 2 6 0 30 2 6 0 32 2 6 0 33 2 6 0 36 2 6 0 39 2 6 0 40 2 6 0 65 2 6 0 93 2 6 0 95 2 6 0 96 2 6 0 98 2 6 0 99 2 6 0 100 2 6 1 57] 
#[1 2 10 0 2 2 10 0 3 2 10 0 5 2 10 0 6 2 10 0 9 2 10 0 10 2 10 0 12 2 10 0 15 2 10 0 16 2 10 0 19 2 10 0 22 2 10 0 24 2 10 0 26 2 10 0 27 2 10 0 28 2 10 0 30 2 10 0 32 2 10 0 33 2 10 0 36 2 10 0 39 1 51 0 40 2 10 0 65 2 10 0 93 2 10 0 95 2 10 0 96 2 10 0 98 2 10 0 99 2 10 0 100 2 10 1 57] 
#[1 2 14 0 2 2 14 0 3 2 14 0 5 2 14 0 6 2 14 0 9 2 14 0 10 2 14 0 12 2 14 0 15 2 14 0 16 2 14 0 19 2 14 0 22 2 14 0 24 2 14 0 26 2 14 0 27 2 14 0 28 2 14 0 30 2 14 0 32 2 14 0 33 2 14 0 36 2 14 0 39 2 14 0 40 2 14 0 65 1 55 0 93 2 14 0 95 2 14 0 96 2 14 0 98 2 14 0 99 2 14 0 100 2 14 1 57] 
#[1 2 18 0 2 2 18 0 3 2 18 0 5 1 59 0 6 2 18 0 9 2 18 0 10 2 18 0 12 2 18 0 15 2 18 0 16 2 18 0 19 2 18 0 22 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 30 2 18 0 32 2 18 0 33 2 18 0 36 2 18 0 39 2 18 0 40 2 18 0 65 2 18 0 93 2 18 0 95 2 18 0 96 2 18 0 98 2 18 0 99 2 18 0 100 2 18 1 57] 
#[1 2 22 0 2 2 22 0 3 2 22 0 5 2 22 0 6 2 22 0 9 2 22 0 10 2 22 0 12 2 22 0 15 2 22 0 16 2 22 0 19 2 22 0 22 2 22 0 24 2 22 0 26 2 22 0 27 2 22 0 28 2 22 0 30 2 22 0 32 2 22 0 33 1 63 0 36 2 22 0 39 2 22 0 40 2 22 0 65 2 22 0 93 1 67 0 95 2 22 0 96 2 22 0 98 2 22 0 99 2 22 0 100 2 22 1 57] 
#[0 2 26 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 2 30 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 71 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 0 0 1 57] 
#[0 0 0 1 57] 
#[1 5 133 0 107 5 137 1 41 5 141 1 42] 
#[1 2 221 0 27 0 197 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 22 0 77 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 0 22 0 107 3 169 0 143 3 169 1 28 5 145 1 40] 
#[0 0 0 1 57] 
#[1 5 149 0 26 1 45 0 92 5 153 0 166 5 153 0 191] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 1 33 0 88 2 245 0 107 5 161 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 5 161 0 119 5 161 0 120 5 161 0 123 5 165 0 160 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 0 58 0 27 0 58 0 37 0 58 0 42 0 58 0 44 0 58 0 46 0 58 0 49 0 58 0 50 0 58 0 54 0 58 0 56 0 58 0 58 0 58 0 60 0 58 0 66 0 58 0 67 0 58 0 68 0 58 0 69 0 58 0 72 0 58 0 73 0 58 0 74 0 58 0 75 0 58 0 77 0 58 0 78 0 58 0 79 0 58 0 82 0 58 0 86 0 58 0 88 0 58 0 89 1 45 0 92 0 58 0 107 5 169 0 191] 
#[1 0 18 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 15 0 18 0 16 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 24 0 18 0 26 1 75 0 27 0 18 0 28 0 18 0 30 0 18 0 32 0 18 0 33 0 18 0 36 0 18 0 38 0 18 0 39 0 18 0 40 0 18 0 52 0 18 0 63 0 18 0 65 0 18 0 92 0 18 0 93 0 18 0 95 0 18 0 96 0 18 0 98 0 18 0 99 0 18 0 100 0 18 0 107 4 89 1 45 0 18 1 57] 
#[1 5 173 0 107 5 177 0 153 5 181 0 154 5 181 0 155 5 189 0 156] 
#[1 0 214 0 5 0 214 0 15 0 214 0 21 4 101 0 38 0 214 0 93 0 214 0 98 0 214 0 107 4 105 0 253 4 109 0 254] 
#[0 0 230 0 5 0 15 0 21 0 93 0 98 0 107] 
#[0 2 42 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 2 221 0 27 3 149 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 153 0 50 0 71 0 54 3 157 0 56 0 53 0 58 0 75 0 60 0 79 0 66 3 161 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 3 165 0 75 0 87 0 77 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 0 91 0 107 5 193 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 5 193 0 119 5 193 0 120 5 193 0 123 3 169 0 143 5 197 0 169 3 169 1 28 5 201 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 0 0 1 57] 
#[0 2 46 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 2 50 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 2 54 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 2 58 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 2 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 5 205 0 85 5 209 0 92 5 213 0 164 5 217 0 170] 
#[0 2 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 1 33 0 88 3 189 0 107 5 161 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 5 161 0 119 5 161 0 120 5 161 0 123 5 221 0 125 5 165 0 160 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 1 79 1 57] 
#[0 2 74 1 57] 
#[0 1 83 1 57] 
#[1 5 225 0 26 1 45 0 92 5 153 0 166 5 153 0 191] 
#[0 2 82 1 57] 
#[0 2 86 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107 1 57] 
#[0 2 90 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107 1 57] 
#[1 1 45 0 92 5 229 0 191] 
#[1 2 221 0 27 0 197 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 5 233 0 52 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 22 0 77 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 0 22 0 107 5 241 0 143 5 241 0 186 5 241 0 187 5 241 1 28 5 249 1 40] 
#[0 2 94 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107 1 57] 
#[0 0 0 1 57] 
#[0 5 253 0 107] 
#[0 0 206 0 8 0 9 0 15 0 20 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 6 1 0 8 2 98 0 9 2 98 0 15 6 5 0 20 2 98 0 26 2 98 0 27 2 98 0 37 2 98 0 42 2 98 0 44 2 98 0 46 2 98 0 49 2 98 0 50 2 98 0 52 2 98 0 54 2 98 0 56 2 98 0 58 2 98 0 60 2 98 0 66 2 98 0 67 2 98 0 68 2 98 0 69 2 98 0 71 2 98 0 72 2 98 0 73 2 98 0 74 2 98 0 75 2 98 0 77 2 98 0 78 2 98 0 79 2 98 0 82 2 98 0 86 2 98 0 88 2 98 0 89 2 98 0 96 2 98 0 107] 
#[1 2 221 0 27 0 22 0 57 0 22 0 63 0 22 0 92 6 9 1 40] 
#[1 6 13 0 63 6 17 0 92 6 21 0 146 6 25 1 36] 
#[1 3 97 0 107 6 29 0 124 6 29 0 125 6 29 0 126] 
#[1 6 33 0 20 6 37 0 26] 
#[1 2 221 0 27 0 22 0 57 0 22 0 92 6 41 1 40] 
#[1 0 22 0 8 2 221 0 27 6 45 1 40] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 3 137 0 134 3 137 0 135 0 145 0 142 0 149 0 143 3 137 0 144 3 137 0 172 3 137 0 173 0 149 1 28 3 137 1 35 2 102 1 57] 
#[0 2 106 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 2 110 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 6 49 0 129 3 133 0 131 3 133 0 132 3 133 0 133 0 137 0 134 0 137 0 135 0 145 0 142 0 149 0 143 0 137 0 144 0 137 0 172 0 137 0 173 0 149 1 28 0 137 1 35 2 114 1 57] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 3 137 0 134 3 137 0 135 0 145 0 142 0 149 0 143 3 137 0 144 3 137 0 172 3 137 0 173 0 149 1 28 3 137 1 35 2 118 1 57] 
#[1 6 53 0 67 3 97 0 107 3 101 0 124 3 101 0 125 3 101 0 126] 
#[0 6 57 0 107] 
#[0 6 61 0 107] 
#[0 6 65 0 107] 
#[0 6 69 0 107] 
#[0 2 122 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[1 3 97 0 107 6 73 0 124 6 73 0 125 6 73 0 126] 
#[0 2 126 0 37 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 71 0 77 0 107] 
#[0 6 77 0 9] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 4 253 0 115 4 253 0 116 4 253 0 117 4 253 0 118 5 1 0 119 5 1 0 120 5 1 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 3 181 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 3 181 1 20 3 181 1 21 2 209 1 22 2 41 1 23 3 181 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 8 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 15 0 206 0 16 0 206 0 17 0 206 0 18 0 206 0 19 0 195 0 20 0 206 0 22 0 206 0 23 0 206 0 24 0 195 0 25 0 206 0 26 0 199 0 27 0 206 0 28 0 206 0 29 0 206 0 30 0 206 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 0 195 0 38 0 206 0 39 0 206 0 40 0 206 0 41 0 206 0 65 0 206 0 85 0 206 0 92 0 206 0 93 0 206 0 94 0 206 0 95 0 206 0 96 0 206 0 98 0 206 0 99 0 206 0 100 0 18 0 107 4 89 1 45 0 206 1 57] 
#[0 2 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 2 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 2 134 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 2 138 0 15 6 81 0 57 6 85 0 80 2 138 0 98 6 89 1 48] 
#[0 2 142 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[1 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 6 93 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 6 93 0 119 6 93 0 120 6 93 0 123 3 177 1 28 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 6 97 0 15 6 101 0 98] 
#[0 2 146 0 15 0 98] 
#[1 6 105 0 24 6 109 0 26] 
#[0 2 150 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 113 0 26] 
#[0 2 154 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 117 0 26] 
#[0 4 41 0 8] 
#[0 6 121 0 90] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 6 125 0 26 0 193 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 0 253 0 70 0 47 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 1 87 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 6 137 0 195 6 133 0 202 6 137 0 216 6 141 0 218 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 6 133 1 6 6 133 1 7 6 133 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 6 145 1 53 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 6 149 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 6 149 1 20 6 149 1 21 2 209 1 22 2 41 1 23 6 149 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 6 153 0 38 6 157 0 251 6 161 0 252 6 165 0 253 4 109 0 254] 
#[1 2 158 0 8 6 153 0 38 6 169 0 251 6 161 0 252 6 173 0 253 4 109 0 254] 
#[0 6 177 0 8] 
#[1 1 186 0 8 1 186 0 9 1 186 0 15 4 213 0 20 1 186 0 26 1 186 0 38 1 186 0 52 1 186 0 63 1 186 0 92] 
#[0 2 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 181 0 26] 
#[1 0 193 0 27 1 91 0 107 6 189 1 45] 
#[0 6 193 0 107] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 6 197 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 6 197 1 20 6 197 1 21 2 209 1 22 2 41 1 23 6 197 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 6 201 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 6 201 1 20 6 201 1 21 2 209 1 22 2 41 1 23 6 201 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 6 205 0 26] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 1 95 0 107 6 217 0 125 6 213 0 226 6 217 0 227 6 221 1 53] 
#[1 6 225 0 48 6 229 0 59 6 233 0 228 6 237 0 229 6 241 0 232] 
#[1 1 45 0 92 6 245 0 191] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 6 249 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 6 249 1 20 6 249 1 21 2 209 1 22 2 41 1 23 6 249 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 2 166 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 253 0 26] 
#[0 2 170 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 221 0 51 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 7 1 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 7 5 0 144 1 133 0 160 7 5 0 172 7 5 0 191 7 5 0 193 7 5 0 194 1 153 0 195 7 5 0 196 7 5 0 197 7 5 0 198 7 5 0 199 7 5 0 200 7 5 0 201 1 181 0 202 7 5 0 203 7 5 0 204 7 5 0 205 7 5 0 213 7 5 0 214 7 5 0 215 7 5 0 219 7 5 0 220 7 5 0 221 7 5 0 222 7 5 0 223 7 5 0 224 7 5 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 7 5 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 7 5 1 52 2 65 1 53 2 69 1 55] 
#[0 2 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 7 9 0 191 7 9 0 196 7 9 0 197 7 9 0 198 7 9 0 199 7 9 0 200 7 9 0 201 1 181 0 202 7 9 0 203 7 9 0 204 7 9 0 205 7 9 0 213 7 9 0 214 7 9 0 215 7 9 0 219 7 9 0 220 7 9 0 221 7 9 0 222 7 9 0 223 7 9 0 224 7 9 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 7 9 1 52 2 69 1 55] 
#[0 2 178 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 7 13 0 50] 
#[0 7 17 0 50] 
#[0 7 21 0 39] 
#[1 2 182 0 2 2 182 0 3 2 182 0 5 2 182 0 6 2 182 0 9 2 182 0 10 2 182 0 12 2 182 0 15 2 182 0 16 2 182 0 19 2 182 0 20 2 182 0 21 2 182 0 22 2 182 0 24 2 182 0 25 2 182 0 26 2 182 0 27 2 182 0 28 2 182 0 30 2 182 0 32 2 182 0 33 2 182 0 36 4 101 0 38 2 182 0 39 2 182 0 40 2 182 0 65 2 182 0 93 2 182 0 95 2 182 0 96 2 182 0 98 2 182 0 99 2 182 0 100 2 182 0 107 7 25 0 254 2 182 1 57] 
#[0 2 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 7 29 0 25] 
#[1 7 33 0 80 7 37 0 83 7 41 0 107] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 7 45 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 7 45 1 20 7 45 1 21 2 209 1 22 2 41 1 23 7 45 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 7 49 0 20] 
#[0 7 53 0 50] 
#[0 2 190 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 2 194 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 7 57 0 107] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 7 61 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 7 61 1 20 7 61 1 21 2 209 1 22 2 41 1 23 7 61 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 2 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 2 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 2 206 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 210 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 214 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 218 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 222 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 226 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 230 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 234 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 238 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 242 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 246 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 2 250 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 88 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 7 65 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 7 65 1 20 7 65 1 21 2 209 1 22 2 41 1 23 7 65 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 7 69 0 8] 
#[0 7 73 0 107] 
#[1 2 254 0 2 2 254 0 3 2 254 0 5 2 254 0 6 2 254 0 9 2 254 0 10 2 254 0 12 2 254 0 15 2 254 0 16 2 254 0 19 2 254 0 20 2 254 0 21 2 254 0 22 2 254 0 24 2 254 0 25 2 254 0 26 2 254 0 27 2 254 0 28 2 254 0 30 2 254 0 32 2 254 0 33 2 254 0 36 4 101 0 38 2 254 0 39 2 254 0 40 2 254 0 65 2 254 0 93 2 254 0 95 2 254 0 96 2 254 0 98 2 254 0 99 2 254 0 100 2 254 0 107 7 25 0 254 2 254 1 57] 
#[0 3 2 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 77 0 107] 
#[1 5 173 0 107 7 77 0 153 5 181 0 154 5 181 0 155 5 189 0 156] 
#[0 3 6 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 77 0 107] 
#[0 3 10 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 77 0 107] 
#[1 0 193 0 27 7 81 0 70 0 18 0 107 7 85 1 45] 
#[0 7 89 0 25] 
#[0 3 14 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 3 18 0 19] 
#[1 7 93 0 9 0 203 0 20 4 101 0 38 4 105 0 253 4 109 0 254] 
#[1 7 97 0 5 7 101 0 9 0 230 0 20 0 18 0 25 0 193 0 27 4 113 1 45] 
#[0 3 22 0 9 0 15] 
#[1 7 105 0 9 7 109 0 15] 
#[0 3 26 0 9 0 15] 
#[1 3 30 0 9 3 30 0 15 1 214 0 19] 
#[1 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 4 221 0 58 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 7 113 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 7 113 0 119 7 113 0 120 7 113 0 123 4 233 1 28 2 49 1 49 2 49 1 50 2 49 1 51 4 233 1 54] 
#[0 3 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 3 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 7 117 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 7 117 1 20 7 117 1 21 2 209 1 22 2 41 1 23 7 117 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 3 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 7 121 0 39] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 1 45 0 92 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 7 129 0 191 1 237 0 234 1 241 0 235 1 241 0 236 7 129 0 241 2 113 0 242 2 117 0 245 7 129 0 246 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 7 129 1 20 7 129 1 21 2 209 1 22 2 41 1 23 7 129 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 7 137 1 5 7 137 1 6 7 137 1 7 7 137 1 8 7 137 1 9 7 137 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 7 141 1 5 7 141 1 6 7 141 1 7 7 141 1 8 7 141 1 9 7 141 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 7 145 1 5 7 145 1 6 7 145 1 7 7 145 1 8 7 145 1 9 7 145 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 7 149 1 5 7 149 1 6 7 149 1 7 7 149 1 8 7 149 1 9 7 149 1 10 7 149 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 7 153 1 5 7 153 1 6 7 153 1 7 7 153 1 8 7 153 1 9 7 153 1 10 7 153 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 7 157 1 11 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 7 161 1 11 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 7 165 1 11 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 7 169 1 12 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 7 173 1 12 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 7 177 1 12 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 7 181 0 115 7 181 0 116 7 181 0 117 7 181 0 118 7 185 0 119 7 185 0 120 7 185 0 123 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 7 189 1 12 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 7 193 1 13 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 7 197 1 13 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 7 201 1 14 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 7 205 1 15 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 7 209 1 16 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 7 213 1 17 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 7 217 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 7 217 1 20 7 217 1 21 2 209 1 22 2 41 1 23 7 217 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 7 221 1 18 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 3 46 0 15 7 225 0 57 3 46 0 98] 
#[1 7 229 0 15 7 233 0 98] 
#[0 3 50 0 15 0 98] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 1 33 0 88 2 245 0 107 7 237 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 7 237 0 119 7 237 0 120 7 237 0 123 7 241 0 160 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 3 54 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 3 58 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 3 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 7 245 0 107 7 249 0 161] 
#[1 7 245 0 107 7 253 0 161] 
#[0 3 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 1 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 8 1 0 15 8 5 0 26] 
#[0 3 70 0 15 0 26] 
#[0 3 74 0 15 0 26] 
#[1 3 78 0 15 3 78 0 26 8 9 0 31 5 41 0 38] 
#[1 5 173 0 107 8 13 0 153 5 181 0 154 5 181 0 155 5 189 0 156] 
#[1 5 205 0 85 5 209 0 92 8 17 0 164 8 21 0 170] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 1 33 0 88 3 189 0 107 7 237 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 7 237 0 119 7 237 0 120 7 237 0 123 5 221 0 125 7 241 0 160 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 2 245 0 107 8 29 0 120 8 29 0 121 8 33 0 165 4 17 1 49 4 17 1 50 4 17 1 51] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 221 0 51 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 8 37 0 80 1 13 0 81 1 17 0 82 8 41 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 8 45 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 4 81 0 144 1 133 0 160 8 49 0 171 4 81 0 172 4 81 0 191 8 53 0 192 4 81 0 193 4 81 0 194 1 153 0 195 4 81 0 196 4 81 0 197 4 81 0 198 4 81 0 199 4 81 0 200 4 81 0 201 1 181 0 202 4 81 0 203 4 81 0 204 4 81 0 205 4 81 0 213 4 81 0 214 4 81 0 215 4 81 0 219 4 81 0 220 4 81 0 221 4 81 0 222 4 81 0 223 4 81 0 224 4 81 0 233 8 57 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 8 57 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 4 81 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 4 81 1 52 2 65 1 53 2 69 1 55] 
#[1 5 209 0 92 8 61 0 170] 
#[0 3 82 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 8 65 0 8] 
#[0 1 99 1 57] 
#[0 3 90 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107 1 57] 
#[0 3 94 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 72 0 73 0 74 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 3 98 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 72 0 73 0 74 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 3 102 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 72 0 73 0 74 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[0 3 106 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 72 0 73 0 74 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 107] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 1 33 0 88 2 245 0 107 8 69 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 8 69 0 119 8 69 0 120 8 69 0 123 8 73 0 160 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 8 77 0 92 8 81 0 174] 
#[1 2 73 0 1 3 185 0 8 3 110 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 8 85 0 92 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 1 103 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 8 113 1 20 2 161 1 22 2 41 1 23 8 113 1 28 8 101 1 29 8 105 1 30 8 109 1 31 8 113 1 32 8 113 1 33 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 7 41 0 107] 
#[1 8 121 0 57 6 13 0 63 8 125 0 92 8 129 0 145 8 133 0 146 8 137 0 148] 
#[1 2 245 0 107 8 145 0 120 8 145 0 122 8 149 0 147 4 17 1 49 4 17 1 50 4 17 1 51] 
#[1 8 153 0 15 8 157 0 26 0 6 0 37 8 161 0 96 0 6 0 107 8 165 1 27 8 169 1 37 8 173 1 38 8 177 1 39] 
#[1 6 17 0 92 8 181 1 36] 
#[0 3 114 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 8 185 0 20 8 189 0 26] 
#[1 8 193 0 10 7 41 0 107] 
#[0 3 118 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[1 8 197 0 57 8 201 0 92 8 205 0 178 8 209 0 179] 
#[0 8 213 0 8] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 101 0 89 3 137 0 134 3 137 0 135 0 145 0 142 0 149 0 143 3 137 0 144 3 137 0 172 3 137 0 173 0 149 1 28 3 137 1 35 3 122 1 57] 
#[0 8 217 0 107] 
#[1 2 221 0 27 0 22 0 57 0 22 0 63 0 22 0 92 8 221 1 40] 
#[1 6 13 0 63 6 17 0 92 8 225 0 146 8 229 1 36] 
#[1 2 221 0 27 0 22 0 57 0 22 0 92 8 233 1 40] 
#[1 0 22 0 8 2 221 0 27 8 237 1 40] 
#[1 6 5 0 20 8 241 0 26] 
#[0 3 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 8 245 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 8 245 0 119 8 245 0 120 8 245 0 123 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 8 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 8 249 0 119 8 249 0 120 8 249 0 123 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 3 130 0 15 0 98] 
#[0 3 134 0 15 0 98] 
#[1 3 205 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 77 0 6 0 107 3 213 1 27 8 253 1 47] 
#[0 3 138 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 1 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 1 1 20 9 1 1 21 2 209 1 22 2 41 1 23 9 1 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 3 142 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 3 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 3 150 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 9 5 0 8] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 9 9 0 26 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 13 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 13 1 20 9 13 1 21 2 209 1 22 2 41 1 23 9 13 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 3 154 0 26] 
#[0 3 158 0 9 0 15 0 26] 
#[0 9 17 0 26] 
#[1 9 21 0 15 3 162 0 26] 
#[1 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 4 221 0 58 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 9 25 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 9 25 0 119 9 25 0 120 9 25 0 123 4 233 1 28 2 49 1 49 2 49 1 50 2 49 1 51 4 233 1 54] 
#[0 9 29 0 9] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 7 21 0 39 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 33 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 33 1 20 9 33 1 21 2 209 1 22 2 41 1 23 9 33 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 3 166 0 2 3 166 0 3 3 166 0 5 3 166 0 6 3 166 0 9 3 166 0 10 3 166 0 12 3 166 0 13 3 166 0 15 3 166 0 16 3 166 0 17 3 166 0 19 3 166 0 20 3 166 0 22 3 166 0 24 3 166 0 25 3 166 0 26 3 166 0 27 3 166 0 28 3 166 0 30 3 166 0 32 3 166 0 33 3 166 0 36 6 153 0 38 3 166 0 39 3 166 0 40 3 166 0 65 3 166 0 93 3 166 0 95 3 166 0 96 3 166 0 98 3 166 0 99 3 166 0 100 9 37 0 252 9 41 0 253 4 109 0 254 3 166 1 57] 
#[0 3 170 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 4 101 0 38 9 45 0 92 9 49 0 189 7 25 0 254] 
#[1 3 174 0 2 3 174 0 3 3 174 0 5 3 174 0 6 3 174 0 9 3 174 0 10 3 174 0 12 3 174 0 13 3 174 0 15 3 174 0 16 3 174 0 17 3 174 0 19 3 174 0 20 3 174 0 22 3 174 0 24 3 174 0 25 3 174 0 26 3 174 0 27 3 174 0 28 3 174 0 30 3 174 0 32 3 174 0 33 3 174 0 36 6 153 0 38 3 174 0 39 3 174 0 40 3 174 0 65 3 174 0 93 3 174 0 95 3 174 0 96 3 174 0 98 3 174 0 99 3 174 0 100 9 37 0 252 9 53 0 253 4 109 0 254 3 174 1 57] 
#[1 4 101 0 38 9 45 0 92 9 57 0 189 7 25 0 254] 
#[1 2 73 0 1 2 77 0 8 9 61 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 9 65 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 3 178 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 3 182 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 93 0 94 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 9 73 0 107] 
#[0 3 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 9 77 0 9] 
#[0 9 81 0 9] 
#[0 3 190 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 3 194 0 9 0 26] 
#[1 9 85 0 9 9 89 0 26] 
#[0 3 198 0 9 0 26] 
#[1 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 4 221 0 58 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 9 93 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 9 93 0 119 9 93 0 120 9 93 0 123 4 233 1 28 2 49 1 49 2 49 1 50 2 49 1 51 4 233 1 54] 
#[0 9 97 0 8] 
#[1 1 45 0 92 9 101 0 191] 
#[1 3 202 0 8 3 202 0 13 3 202 0 17 3 202 0 26 3 202 0 27 3 202 0 37 3 202 0 42 3 202 0 43 3 202 0 44 3 202 0 45 3 202 0 46 3 202 0 47 6 225 0 48 3 202 0 49 3 202 0 50 3 202 0 51 3 202 0 52 3 202 0 53 3 202 0 54 3 202 0 55 3 202 0 56 3 202 0 58 6 229 0 59 3 202 0 60 3 202 0 61 3 202 0 62 3 202 0 66 3 202 0 67 3 202 0 68 3 202 0 69 3 202 0 70 3 202 0 72 3 202 0 73 3 202 0 74 3 202 0 76 3 202 0 77 3 202 0 78 3 202 0 79 3 202 0 80 3 202 0 81 3 202 0 82 3 202 0 83 3 202 0 84 3 202 0 86 3 202 0 87 3 202 0 88 3 202 0 89 3 202 0 90 3 202 0 91 3 202 0 92 3 202 0 96 3 202 0 101 3 202 0 102 3 202 0 103 3 202 0 104 3 202 0 105 3 202 0 106 3 202 0 107 9 105 0 229 9 109 0 232 3 202 1 57] 
#[0 3 206 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 3 210 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 3 214 0 8 3 214 0 13 3 214 0 17 3 214 0 26 3 214 0 27 3 214 0 37 3 214 0 42 3 214 0 43 3 214 0 44 3 214 0 45 3 214 0 46 3 214 0 47 6 225 0 48 3 214 0 49 3 214 0 50 3 214 0 51 3 214 0 52 3 214 0 53 3 214 0 54 3 214 0 55 3 214 0 56 3 214 0 58 6 229 0 59 3 214 0 60 3 214 0 61 3 214 0 62 3 214 0 66 3 214 0 67 3 214 0 68 3 214 0 69 3 214 0 70 3 214 0 72 3 214 0 73 3 214 0 74 3 214 0 76 3 214 0 77 3 214 0 78 3 214 0 79 3 214 0 80 3 214 0 81 3 214 0 82 3 214 0 83 3 214 0 84 3 214 0 86 3 214 0 87 3 214 0 88 3 214 0 89 3 214 0 90 3 214 0 91 3 214 0 92 3 214 0 96 3 214 0 101 3 214 0 102 3 214 0 103 3 214 0 104 3 214 0 105 3 214 0 106 3 214 0 107 9 113 0 228 6 237 0 229 9 117 0 232 3 214 1 57] 
#[0 9 121 0 9] 
#[0 3 218 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 3 222 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 3 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 3 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 3 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 3 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 3 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 3 246 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 9 125 0 70] 
#[0 9 129 0 20] 
#[0 3 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 3 254 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 93 0 94 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 9 133 0 39] 
#[0 9 137 0 80] 
#[0 4 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 93 0 94 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 9 141 0 39] 
#[0 4 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 2 73 0 1 2 77 0 8 9 145 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 9 149 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 18 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 15 0 18 0 16 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 24 0 18 0 25 0 18 0 26 1 75 0 27 0 18 0 28 0 18 0 30 0 18 0 32 0 18 0 33 0 18 0 36 0 18 0 38 0 18 0 39 0 18 0 40 0 18 0 52 0 18 0 63 0 18 0 65 0 18 0 92 0 18 0 93 0 18 0 95 0 18 0 96 0 18 0 98 0 18 0 99 0 18 0 100 0 18 0 107 9 153 1 45 0 18 1 57] 
#[1 8 1 0 15 4 14 0 26] 
#[1 0 193 0 27 0 18 0 107 9 157 1 45] 
#[0 9 161 0 107] 
#[0 9 165 0 107] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 9 169 1 5 9 169 1 6 9 169 1 7 9 169 1 8 9 169 1 9 9 169 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 245 0 107 9 173 0 120 9 173 0 122 4 17 1 49 4 17 1 50 4 17 1 51] 
#[1 2 73 0 1 2 77 0 8 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 9 177 0 124 9 177 0 125 9 177 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 181 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 1 241 0 255 1 241 1 0 1 241 1 1 2 129 1 2 2 129 1 3 2 129 1 4 9 193 1 8 9 193 1 9 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 4 18 0 19] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 1 107 0 107 2 101 0 156 9 197 0 163 9 197 0 244 9 197 0 245 5 21 1 53] 
#[1 9 205 0 21 5 173 0 107 9 209 0 156] 
#[0 9 213 0 9] 
#[0 4 22 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 4 26 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 4 30 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 4 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 4 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 4 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 4 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 4 50 0 2 1 111 0 3 4 50 0 5 4 50 0 6 4 50 0 9 1 115 0 10 4 50 0 12 4 50 0 15 4 50 0 16 4 50 0 19 1 119 0 22 4 50 0 24 4 50 0 26 4 50 0 27 4 50 0 28 4 50 0 30 4 50 0 32 4 50 0 33 4 50 0 36 4 50 0 39 4 50 0 40 4 50 0 65 4 50 0 93 4 50 0 95 4 50 0 96 4 50 0 98 4 50 0 99 4 50 0 100 4 50 1 57] 
#[1 4 54 0 2 1 123 0 3 4 54 0 5 4 54 0 6 4 54 0 9 1 127 0 10 4 54 0 12 4 54 0 15 4 54 0 16 4 54 0 19 1 131 0 22 4 54 0 24 4 54 0 26 4 54 0 27 4 54 0 28 4 54 0 30 4 54 0 32 4 54 0 33 4 54 0 36 4 54 0 39 4 54 0 40 4 54 0 65 4 54 0 93 4 54 0 95 4 54 0 96 4 54 0 98 4 54 0 99 4 54 0 100 4 54 1 57] 
#[1 4 58 0 2 4 58 0 3 4 58 0 5 4 58 0 6 4 58 0 9 4 58 0 10 1 135 0 12 4 58 0 15 1 139 0 16 4 58 0 19 4 58 0 22 4 58 0 24 4 58 0 26 4 58 0 27 4 58 0 28 4 58 0 30 4 58 0 32 4 58 0 33 4 58 0 36 4 58 0 39 4 58 0 40 4 58 0 65 4 58 0 93 4 58 0 95 4 58 0 96 4 58 0 98 4 58 0 99 4 58 0 100 4 58 1 57] 
#[1 4 62 0 2 4 62 0 3 4 62 0 5 4 62 0 6 4 62 0 9 4 62 0 10 1 143 0 12 4 62 0 15 1 147 0 16 4 62 0 19 4 62 0 22 4 62 0 24 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 30 4 62 0 32 4 62 0 33 4 62 0 36 4 62 0 39 4 62 0 40 4 62 0 65 4 62 0 93 4 62 0 95 4 62 0 96 4 62 0 98 4 62 0 99 4 62 0 100 4 62 1 57] 
#[1 4 66 0 2 4 66 0 3 4 66 0 5 4 66 0 6 4 66 0 9 4 66 0 10 1 151 0 12 4 66 0 15 1 155 0 16 4 66 0 19 4 66 0 22 4 66 0 24 4 66 0 26 4 66 0 27 4 66 0 28 4 66 0 30 4 66 0 32 4 66 0 33 4 66 0 36 4 66 0 39 4 66 0 40 4 66 0 65 4 66 0 93 4 66 0 95 4 66 0 96 4 66 0 98 4 66 0 99 4 66 0 100 4 66 1 57] 
#[1 4 70 0 2 4 70 0 3 4 70 0 5 4 70 0 6 4 70 0 9 4 70 0 10 4 70 0 12 4 70 0 15 4 70 0 16 4 70 0 19 4 70 0 22 4 70 0 24 4 70 0 26 4 70 0 27 1 159 0 28 4 70 0 30 4 70 0 32 4 70 0 33 4 70 0 36 4 70 0 39 4 70 0 40 4 70 0 65 4 70 0 93 4 70 0 95 4 70 0 96 4 70 0 98 1 163 0 99 1 167 0 100 4 70 1 57] 
#[1 4 74 0 2 4 74 0 3 4 74 0 5 4 74 0 6 4 74 0 9 4 74 0 10 4 74 0 12 4 74 0 15 4 74 0 16 4 74 0 19 4 74 0 22 4 74 0 24 4 74 0 26 4 74 0 27 1 171 0 28 4 74 0 30 4 74 0 32 4 74 0 33 4 74 0 36 4 74 0 39 4 74 0 40 4 74 0 65 4 74 0 93 4 74 0 95 4 74 0 96 4 74 0 98 1 175 0 99 1 179 0 100 4 74 1 57] 
#[1 4 78 0 2 4 78 0 3 4 78 0 5 4 78 0 6 4 78 0 9 4 78 0 10 4 78 0 12 4 78 0 15 4 78 0 16 4 78 0 19 4 78 0 22 4 78 0 24 4 78 0 26 4 78 0 27 1 183 0 28 4 78 0 30 4 78 0 32 4 78 0 33 4 78 0 36 4 78 0 39 4 78 0 40 4 78 0 65 4 78 0 93 4 78 0 95 4 78 0 96 4 78 0 98 1 187 0 99 1 191 0 100 4 78 1 57] 
#[1 4 101 0 38 4 105 0 253 4 109 0 254] 
#[1 4 82 0 2 4 82 0 3 4 82 0 5 4 82 0 6 4 82 0 9 4 82 0 10 4 82 0 12 4 82 0 15 4 82 0 16 4 82 0 19 4 82 0 22 4 82 0 24 4 82 0 26 4 82 0 27 4 82 0 28 4 82 0 30 4 82 0 32 4 82 0 33 4 82 0 36 4 82 0 39 4 82 0 40 4 82 0 65 4 82 0 93 4 82 0 95 4 82 0 96 4 82 0 98 4 82 0 99 4 82 0 100 5 173 0 107 9 217 0 156 4 82 1 57] 
#[1 4 86 0 2 4 86 0 3 4 86 0 5 4 86 0 6 4 86 0 9 4 86 0 10 4 86 0 12 4 86 0 15 4 86 0 16 4 86 0 19 4 86 0 22 4 86 0 24 4 86 0 26 4 86 0 27 1 195 0 28 4 86 0 30 4 86 0 32 4 86 0 33 4 86 0 36 4 86 0 39 4 86 0 40 4 86 0 65 4 86 0 93 4 86 0 95 4 86 0 96 4 86 0 98 1 199 0 99 1 203 0 100 4 86 1 57] 
#[1 4 90 0 2 4 90 0 3 4 90 0 5 4 90 0 6 4 90 0 9 4 90 0 10 4 90 0 12 4 90 0 15 4 90 0 16 4 90 0 19 4 90 0 22 4 90 0 24 4 90 0 26 1 207 0 27 4 90 0 28 1 211 0 30 4 90 0 32 1 215 0 33 4 90 0 36 4 90 0 39 4 90 0 40 1 219 0 65 4 90 0 93 4 90 0 95 4 90 0 96 1 223 0 98 4 90 0 99 4 90 0 100 4 90 1 57] 
#[1 4 94 0 2 4 94 0 3 4 94 0 5 4 94 0 6 4 94 0 9 4 94 0 10 4 94 0 12 4 94 0 15 4 94 0 16 4 94 0 19 4 94 0 22 4 94 0 24 4 94 0 26 1 227 0 27 4 94 0 28 1 231 0 30 4 94 0 32 1 235 0 33 4 94 0 36 4 94 0 39 4 94 0 40 1 239 0 65 4 94 0 93 4 94 0 95 4 94 0 96 1 243 0 98 4 94 0 99 4 94 0 100 4 94 1 57] 
#[1 1 247 0 2 4 98 0 3 4 98 0 5 4 98 0 6 4 98 0 9 4 98 0 10 4 98 0 12 4 98 0 15 4 98 0 16 4 98 0 19 4 98 0 22 4 98 0 24 4 98 0 26 4 98 0 27 4 98 0 28 4 98 0 30 1 251 0 32 4 98 0 33 4 98 0 36 4 98 0 39 4 98 0 40 4 98 0 65 4 98 0 93 4 98 0 95 4 98 0 96 4 98 0 98 4 98 0 99 4 98 0 100 4 98 1 57] 
#[1 4 102 0 2 4 102 0 3 1 255 0 5 4 102 0 6 4 102 0 9 4 102 0 10 4 102 0 12 4 102 0 15 4 102 0 16 4 102 0 19 4 102 0 22 4 102 0 24 4 102 0 26 4 102 0 27 4 102 0 28 4 102 0 30 4 102 0 32 4 102 0 33 4 102 0 36 4 102 0 39 4 102 0 40 4 102 0 65 4 102 0 93 4 102 0 95 4 102 0 96 4 102 0 98 4 102 0 99 4 102 0 100 4 102 1 57] 
#[1 4 106 0 2 4 106 0 3 4 106 0 5 4 106 0 6 4 106 0 9 4 106 0 10 4 106 0 12 4 106 0 15 4 106 0 16 4 106 0 19 4 106 0 22 4 106 0 24 4 106 0 26 4 106 0 27 4 106 0 28 4 106 0 30 4 106 0 32 4 106 0 33 4 106 0 36 4 106 0 39 2 3 0 40 4 106 0 65 4 106 0 93 4 106 0 95 4 106 0 96 4 106 0 98 4 106 0 99 4 106 0 100 4 106 1 57] 
#[1 4 110 0 2 4 110 0 3 4 110 0 5 4 110 0 6 4 110 0 9 4 110 0 10 4 110 0 12 4 110 0 15 4 110 0 16 4 110 0 19 4 110 0 22 4 110 0 24 4 110 0 26 4 110 0 27 4 110 0 28 4 110 0 30 4 110 0 32 4 110 0 33 4 110 0 36 4 110 0 39 4 110 0 40 4 110 0 65 2 7 0 93 4 110 0 95 4 110 0 96 4 110 0 98 4 110 0 99 4 110 0 100 4 110 1 57] 
#[0 9 221 0 24] 
#[1 4 114 0 2 4 114 0 3 4 114 0 5 2 11 0 6 4 114 0 9 4 114 0 10 4 114 0 12 4 114 0 15 4 114 0 16 4 114 0 19 4 114 0 22 4 114 0 24 4 114 0 26 4 114 0 27 4 114 0 28 4 114 0 30 4 114 0 32 4 114 0 33 4 114 0 36 4 114 0 39 4 114 0 40 4 114 0 65 4 114 0 93 4 114 0 95 4 114 0 96 4 114 0 98 4 114 0 99 4 114 0 100 4 114 1 57] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 9 225 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 9 225 0 119 9 225 0 120 9 225 0 123 9 229 1 43 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 5 133 0 107 9 233 1 42] 
#[0 4 118 0 8 0 44 0 46 0 49 0 54 0 57 0 60 0 63 0 66 0 68 0 77 0 88 0 92 0 107] 
#[1 7 245 0 107 9 237 0 161] 
#[1 7 245 0 107 9 241 0 161] 
#[0 9 245 0 8] 
#[1 4 122 0 26 9 249 0 38 4 122 0 52 5 205 0 85 4 122 0 92 9 253 0 164] 
#[1 4 126 0 26 9 249 0 38 4 126 0 52 5 205 0 85 4 126 0 92 10 1 0 164] 
#[1 5 173 0 107 10 5 0 154 10 5 0 155 5 189 0 156] 
#[0 4 130 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 9 45 0 92 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 10 9 0 157 1 133 0 160 10 9 0 189 1 237 0 234 1 241 0 235 1 241 0 236 10 9 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 10 9 1 20 10 9 1 21 2 209 1 22 2 41 1 23 10 9 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 8 1 0 15 10 21 0 26] 
#[1 5 209 0 92 10 25 0 170] 
#[0 4 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 2 158 0 15 0 26 0 52 0 63 0 92] 
#[0 4 138 0 15 0 26 0 52 0 92] 
#[1 10 29 0 15 4 142 0 26 4 142 0 52 4 142 0 92] 
#[1 10 33 0 8 4 29 0 20 4 33 0 25] 
#[1 10 37 0 8 0 174 0 13 0 174 0 17 0 174 0 20 0 174 0 25 0 174 0 27 0 174 0 38] 
#[0 4 146 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 221 0 51 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 10 41 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 4 81 0 144 1 133 0 160 4 81 0 172 4 81 0 191 10 45 0 192 4 81 0 193 4 81 0 194 1 153 0 195 4 81 0 196 4 81 0 197 4 81 0 198 4 81 0 199 4 81 0 200 4 81 0 201 1 181 0 202 4 81 0 203 4 81 0 204 4 81 0 205 4 81 0 213 4 81 0 214 4 81 0 215 4 81 0 219 4 81 0 220 4 81 0 221 4 81 0 222 4 81 0 223 4 81 0 224 4 81 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 4 81 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 4 81 1 52 2 65 1 53 2 69 1 55] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 221 0 51 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 10 49 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 7 5 0 144 1 133 0 160 7 5 0 172 7 5 0 191 7 5 0 193 7 5 0 194 1 153 0 195 7 5 0 196 7 5 0 197 7 5 0 198 7 5 0 199 7 5 0 200 7 5 0 201 1 181 0 202 7 5 0 203 7 5 0 204 7 5 0 205 7 5 0 213 7 5 0 214 7 5 0 215 7 5 0 219 7 5 0 220 7 5 0 221 7 5 0 222 7 5 0 223 7 5 0 224 7 5 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 7 5 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 7 5 1 52 2 65 1 53 2 69 1 55] 
#[1 1 98 0 13 1 98 0 17 2 15 0 20 1 102 0 25 1 102 0 27] 
#[0 4 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 10 57 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 0 14 0 107 10 61 0 162 10 65 0 163 5 21 1 53] 
#[1 7 245 0 107 10 69 0 161] 
#[1 7 245 0 107 10 73 0 161] 
#[1 0 33 0 26 2 221 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 87 0 77 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 10 77 0 96 0 91 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 10 101 0 134 10 101 0 135 10 85 0 142 0 149 0 143 10 101 0 144 10 101 0 152 10 93 0 159 10 101 0 172 10 101 0 173 10 97 0 175 10 101 0 176 10 101 0 177 10 101 0 188 0 149 1 28 10 101 1 35 2 237 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 4 154 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 10 113 0 15 2 85 0 16 0 185 0 17 0 193 0 27 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 8 85 0 92 10 117 0 96 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 10 121 1 20 2 161 1 22 2 41 1 23 10 121 1 28 10 121 1 32 10 121 1 33 10 125 1 34 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 206 0 2 0 206 0 3 0 206 0 4 0 206 0 5 0 206 0 6 0 206 0 7 0 206 0 9 0 206 0 10 0 206 0 11 0 206 0 12 0 206 0 13 0 206 0 14 0 206 0 16 0 206 0 17 0 206 0 18 0 195 0 20 0 206 0 22 0 206 0 23 0 195 0 25 0 199 0 27 0 206 0 28 0 206 0 29 0 206 0 30 2 19 0 31 0 206 0 32 0 206 0 33 0 206 0 34 0 206 0 35 0 206 0 36 0 195 0 38 0 206 0 40 0 206 0 41 0 206 0 65 0 206 0 93 0 206 0 94 0 206 0 95 0 206 0 98 0 206 0 99 0 206 0 100 4 89 1 45] 
#[0 4 158 0 9 0 15 0 96] 
#[0 4 162 0 9 0 15 0 96] 
#[0 10 133 0 9] 
#[1 4 166 0 9 10 137 0 15] 
#[0 4 170 0 9 0 15] 
#[0 4 174 0 9] 
#[0 4 178 0 9 0 15 0 96] 
#[1 2 245 0 107 10 141 0 120 10 141 0 121 4 17 1 49 4 17 1 50 4 17 1 51] 
#[1 0 33 0 26 2 221 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 87 0 77 2 241 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 1 45 0 92 10 145 0 96 0 91 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 10 153 0 134 10 153 0 135 3 9 0 142 0 149 0 143 10 153 0 144 10 149 0 149 10 153 0 150 10 153 0 151 10 153 0 152 10 153 0 158 2 233 0 159 10 153 0 167 10 153 0 168 3 37 0 169 10 153 0 172 10 153 0 173 3 41 0 191 0 149 1 28 10 153 1 35 3 45 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 6 13 0 63 8 125 0 92 10 157 0 146 10 161 0 148] 
#[1 8 125 0 92 10 165 0 148] 
#[0 4 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 4 186 0 9 0 15 0 92] 
#[0 4 190 0 15 0 92] 
#[1 10 169 0 15 4 194 0 92] 
#[1 8 157 0 26 10 173 0 96 10 177 1 39] 
#[1 0 33 0 26 2 221 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 87 0 77 2 241 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 1 45 0 92 4 198 0 96 0 91 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 10 153 0 134 10 153 0 135 3 9 0 142 0 149 0 143 10 153 0 144 10 181 0 149 10 153 0 150 10 153 0 151 10 153 0 152 10 153 0 158 2 233 0 159 10 153 0 167 10 153 0 168 3 37 0 169 10 153 0 172 10 153 0 173 3 41 0 191 0 149 1 28 10 153 1 35 3 45 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 4 202 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 197 0 37 10 185 0 107 3 177 1 28] 
#[1 10 189 0 15 8 157 0 26 10 193 0 96 10 197 1 39] 
#[0 4 206 0 15 0 26 0 96] 
#[0 10 201 0 96] 
#[0 4 210 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 10 205 0 10 7 41 0 107] 
#[0 4 214 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 10 209 0 26] 
#[1 2 245 0 107 10 213 0 120 10 213 0 122 4 17 1 49 4 17 1 50 4 17 1 51] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 72 0 147 0 73 0 151 0 74 0 81 0 75 0 155 0 77 2 23 0 78 0 163 0 79 0 167 0 82 0 171 0 86 0 175 0 88 0 179 0 89 10 217 0 96 0 183 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 10 237 0 134 10 237 0 135 10 85 0 142 0 149 0 143 10 237 0 144 10 237 0 152 10 229 0 159 10 237 0 172 10 237 0 173 10 233 0 180 10 237 0 181 10 237 0 182 10 237 0 183 3 77 0 184 3 81 0 185 10 237 0 188 0 149 1 28 10 237 1 35 2 237 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 10 241 0 15 8 201 0 92 10 245 0 179] 
#[0 4 218 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 10 249 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 0 14 0 107 10 253 0 162 10 65 0 163 5 21 1 53] 
#[1 8 77 0 92 11 1 0 174] 
#[1 8 121 0 57 6 13 0 63 8 125 0 92 11 5 0 145 11 9 0 146 11 13 0 148] 
#[1 6 17 0 92 11 17 1 36] 
#[0 4 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 8 197 0 57 8 201 0 92 11 21 0 178 11 25 0 179] 
#[0 11 29 0 8] 
#[0 4 226 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 4 230 0 15 0 98] 
#[0 4 234 0 15 0 98] 
#[0 4 238 0 15 0 98] 
#[0 11 33 0 26] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 11 37 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 11 37 1 20 11 37 1 21 2 209 1 22 2 41 1 23 11 37 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 177 0 8 11 41 0 9 0 181 0 13 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 6 133 0 202 11 45 0 217 11 49 0 218 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 6 133 1 6 6 133 1 7 6 133 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 11 53 0 26] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 11 57 0 26 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 11 61 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 11 61 1 20 11 61 1 21 2 209 1 22 2 41 1 23 11 61 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 11 65 0 202 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 11 65 1 6 11 65 1 7 11 65 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 5 173 0 107 7 77 0 153 5 181 0 154 5 181 0 155 11 69 0 156] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 11 73 0 191 11 73 0 196 11 73 0 197 11 73 0 198 11 73 0 199 11 73 0 200 11 73 0 201 1 181 0 202 11 73 0 203 11 73 0 204 11 73 0 205 11 73 0 213 11 73 0 214 11 73 0 215 11 73 0 219 11 73 0 220 11 73 0 221 11 73 0 222 11 73 0 223 11 73 0 224 11 73 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 11 73 1 52 2 69 1 55] 
#[0 11 77 0 39] 
#[0 4 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 4 246 0 2 4 246 0 3 4 246 0 5 4 246 0 6 4 246 0 9 4 246 0 10 4 246 0 12 4 246 0 13 4 246 0 15 4 246 0 16 4 246 0 17 4 246 0 19 4 246 0 20 4 246 0 22 4 246 0 24 4 246 0 25 4 246 0 26 4 246 0 27 4 246 0 28 4 246 0 30 4 246 0 32 4 246 0 33 4 246 0 36 4 101 0 38 4 246 0 39 4 246 0 40 4 246 0 65 4 246 0 93 4 246 0 95 4 246 0 96 4 246 0 98 4 246 0 99 4 246 0 100 7 25 0 254 4 246 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 11 81 0 15 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 9 45 0 92 11 85 0 96 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 11 89 0 157 1 133 0 160 11 89 0 189 11 93 0 190 1 237 0 234 1 241 0 235 1 241 0 236 11 89 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 11 89 1 20 11 89 1 21 2 209 1 22 2 41 1 23 11 89 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 4 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 4 254 0 2 4 254 0 3 4 254 0 5 4 254 0 6 4 254 0 9 4 254 0 10 4 254 0 12 4 254 0 13 4 254 0 15 4 254 0 16 4 254 0 17 4 254 0 19 4 254 0 20 4 254 0 22 4 254 0 24 4 254 0 25 4 254 0 26 4 254 0 27 4 254 0 28 4 254 0 30 4 254 0 32 4 254 0 33 4 254 0 36 4 101 0 38 4 254 0 39 4 254 0 40 4 254 0 65 4 254 0 93 4 254 0 95 4 254 0 96 4 254 0 98 4 254 0 99 4 254 0 100 7 25 0 254 4 254 1 57] 
#[0 5 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 5 6 0 2 5 6 0 3 5 6 0 5 5 6 0 6 5 6 0 9 5 6 0 10 5 6 0 12 5 6 0 13 5 6 0 15 5 6 0 16 5 6 0 17 5 6 0 19 5 6 0 20 5 6 0 22 5 6 0 24 5 6 0 25 5 6 0 26 5 6 0 27 5 6 0 28 5 6 0 30 5 6 0 32 5 6 0 33 5 6 0 36 5 6 0 38 5 6 0 39 5 6 0 40 5 6 0 65 8 125 0 92 5 6 0 93 5 6 0 95 5 6 0 96 5 6 0 98 5 6 0 99 5 6 0 100 11 97 0 148 5 6 1 57] 
#[1 11 101 0 9 11 105 0 15] 
#[0 5 10 0 9 0 15] 
#[0 11 109 0 8] 
#[1 11 113 0 92 11 117 0 206 11 121 0 237] 
#[1 1 45 0 92 11 125 0 191] 
#[0 5 14 0 92] 
#[1 11 129 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 1 95 0 107 11 133 0 125 11 133 0 227 6 221 1 53] 
#[1 5 173 0 107 11 137 0 155 11 141 0 156] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 0 14 0 107 11 145 0 230 11 149 1 53] 
#[0 5 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 5 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 5 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 5 30 0 8 5 30 0 13 5 30 0 17 5 30 0 26 5 30 0 27 5 30 0 37 5 30 0 42 5 30 0 43 5 30 0 44 5 30 0 45 5 30 0 46 5 30 0 47 6 225 0 48 5 30 0 49 5 30 0 50 5 30 0 51 5 30 0 52 5 30 0 53 5 30 0 54 5 30 0 55 5 30 0 56 5 30 0 58 6 229 0 59 5 30 0 60 5 30 0 61 5 30 0 62 5 30 0 66 5 30 0 67 5 30 0 68 5 30 0 69 5 30 0 70 5 30 0 72 5 30 0 73 5 30 0 74 5 30 0 76 5 30 0 77 5 30 0 78 5 30 0 79 5 30 0 80 5 30 0 81 5 30 0 82 5 30 0 83 5 30 0 84 5 30 0 86 5 30 0 87 5 30 0 88 5 30 0 89 5 30 0 90 5 30 0 91 5 30 0 92 5 30 0 96 5 30 0 101 5 30 0 102 5 30 0 103 5 30 0 104 5 30 0 105 5 30 0 106 5 30 0 107 9 105 0 229 11 153 0 232 5 30 1 57] 
#[0 5 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 11 157 0 191 11 157 0 196 11 157 0 197 11 157 0 198 11 157 0 199 11 157 0 200 11 157 0 201 1 181 0 202 11 157 0 203 11 157 0 204 11 157 0 205 11 157 0 213 11 157 0 214 11 157 0 215 11 157 0 219 11 157 0 220 11 157 0 221 11 157 0 222 11 157 0 223 11 157 0 224 11 157 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 11 157 1 52 2 69 1 55] 
#[0 5 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 0 193 0 27 2 27 0 107 11 165 1 45] 
#[0 5 42 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 93 0 94 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 11 169 0 25] 
#[0 5 46 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 93 0 94 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 5 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 11 173 0 9 11 105 0 15] 
#[0 5 54 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 107 1 57] 
#[0 11 177 0 107] 
#[0 11 181 0 8] 
#[0 5 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 5 62 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 11 185 0 9] 
#[1 0 242 0 2 0 242 0 3 0 242 0 5 0 242 0 6 0 242 0 9 0 242 0 10 0 242 0 12 0 242 0 13 0 242 0 15 0 242 0 16 0 242 0 17 0 242 0 19 0 207 0 20 0 242 0 22 0 242 0 24 0 250 0 25 0 242 0 26 0 211 0 27 0 242 0 28 0 242 0 30 0 242 0 32 0 242 0 33 0 242 0 36 4 121 0 38 0 242 0 39 0 242 0 40 0 242 0 65 0 242 0 93 0 242 0 95 0 242 0 96 0 242 0 98 0 242 0 99 0 242 0 100 4 125 1 45 0 242 1 57] 
#[0 5 66 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 134 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 1 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 5 70 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 5 74 0 9 0 15] 
#[0 3 30 0 9 0 15] 
#[1 5 173 0 107 11 189 0 156] 
#[1 5 78 0 9 5 78 0 15 5 41 0 38] 
#[1 11 193 0 92 11 121 0 237] 
#[1 5 82 0 2 5 82 0 3 5 82 0 5 5 82 0 6 5 82 0 9 5 82 0 10 5 82 0 12 5 82 0 15 5 82 0 16 5 82 0 19 5 82 0 22 5 82 0 24 5 82 0 26 5 82 0 27 5 82 0 28 5 82 0 30 5 82 0 32 5 82 0 33 5 82 0 36 5 41 0 38 5 82 0 39 5 82 0 40 5 82 0 65 5 82 0 93 5 82 0 95 5 82 0 96 5 82 0 98 5 82 0 99 5 82 0 100 5 82 1 57] 
#[1 2 73 0 1 5 86 0 2 5 86 0 3 5 86 0 5 5 86 0 6 2 77 0 8 5 86 0 9 5 86 0 10 2 31 0 12 0 181 0 13 5 86 0 15 2 35 0 16 0 185 0 17 5 86 0 19 5 86 0 22 5 86 0 24 5 86 0 26 2 39 0 27 5 86 0 28 5 86 0 30 5 86 0 32 5 86 0 33 5 86 0 36 5 86 0 39 5 86 0 40 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 5 86 0 65 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 5 86 0 93 5 86 0 95 5 86 0 96 2 93 0 97 5 86 0 98 5 86 0 99 5 86 0 100 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 11 197 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 11 201 1 20 2 161 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55 5 86 1 57] 
#[0 5 90 0 5 0 15 0 98] 
#[1 11 205 0 5 5 94 0 15 5 94 0 98] 
#[0 5 98 0 15 0 98] 
#[1 5 102 0 26 9 249 0 38 5 102 0 52 5 205 0 85 5 102 0 92 11 209 0 164] 
#[1 5 106 0 26 9 249 0 38 5 106 0 52 5 205 0 85 5 106 0 92 11 213 0 164] 
#[1 11 217 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 0 14 0 107 11 221 0 162 10 65 0 163 5 21 1 53] 
#[0 11 225 0 39] 
#[0 5 110 0 26 0 52 0 92] 
#[0 5 114 0 26 0 52 0 92] 
#[0 5 118 0 15 0 26] 
#[0 5 122 0 9 0 15 0 26] 
#[0 5 126 0 9 0 15 0 26 0 96] 
#[0 5 130 0 9 0 15 0 26 0 96] 
#[0 5 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 5 138 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 2 245 0 107 11 229 0 120 11 229 0 121 4 17 1 49 4 17 1 50 4 17 1 51] 
#[1 2 73 0 1 2 77 0 8 11 233 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 11 237 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 11 241 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 11 245 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 5 142 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 221 0 51 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 11 249 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 7 5 0 144 1 133 0 160 7 5 0 172 7 5 0 191 7 5 0 193 7 5 0 194 1 153 0 195 7 5 0 196 7 5 0 197 7 5 0 198 7 5 0 199 7 5 0 200 7 5 0 201 1 181 0 202 7 5 0 203 7 5 0 204 7 5 0 205 7 5 0 213 7 5 0 214 7 5 0 215 7 5 0 219 7 5 0 220 7 5 0 221 7 5 0 222 7 5 0 223 7 5 0 224 7 5 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 7 5 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 7 5 1 52 2 65 1 53 2 69 1 55] 
#[0 5 146 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 11 253 0 80 12 1 0 83 7 57 0 107] 
#[0 5 150 0 85 0 92] 
#[1 12 5 0 9 12 9 0 15] 
#[0 5 154 0 9 0 15] 
#[1 9 249 0 38 5 205 0 85 5 158 0 92 12 13 0 164] 
#[1 9 249 0 38 5 205 0 85 5 162 0 92 12 17 0 164] 
#[0 5 166 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 5 170 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 2 221 0 27 3 149 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 153 0 50 0 71 0 54 3 157 0 56 0 53 0 58 0 75 0 60 0 79 0 66 3 161 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 3 165 0 75 0 87 0 77 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 0 91 0 107 5 193 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 5 193 0 119 5 193 0 120 5 193 0 123 3 169 0 143 3 169 1 28 5 145 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 5 174 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 12 21 0 26 12 25 0 52] 
#[1 0 33 0 26 2 221 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 87 0 77 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 12 29 0 96 0 91 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 12 33 0 134 12 33 0 135 10 85 0 142 0 149 0 143 12 33 0 144 12 33 0 152 10 93 0 159 12 33 0 172 12 33 0 173 12 33 0 176 12 33 0 177 12 33 0 188 0 149 1 28 12 33 1 35 2 237 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 5 178 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 5 182 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 5 186 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 12 37 0 96] 
#[0 5 190 0 9 0 15 0 96] 
#[0 5 194 0 15 0 96] 
#[1 12 41 0 15 12 45 0 96] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 8 85 0 92 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 12 49 1 20 2 161 1 22 2 41 1 23 12 49 1 28 12 49 1 32 12 49 1 33 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 5 198 0 9 0 15 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 12 53 0 107 12 57 1 31] 
#[0 5 202 0 63 0 92] 
#[0 5 206 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 33 0 26 2 221 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 87 0 77 2 241 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 1 45 0 92 12 61 0 96 0 91 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 12 65 0 134 12 65 0 135 3 9 0 142 0 149 0 143 12 65 0 144 12 65 0 150 12 65 0 151 12 65 0 152 12 65 0 158 2 233 0 159 12 65 0 167 12 65 0 168 3 37 0 169 12 65 0 172 12 65 0 173 3 41 0 191 0 149 1 28 12 65 1 35 3 45 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 5 210 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107] 
#[1 8 125 0 92 12 69 0 148] 
#[0 5 214 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 5 218 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 2 245 0 107 12 73 0 120 12 73 0 122 4 17 1 49 4 17 1 50 4 17 1 51] 
#[0 5 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 12 77 0 96] 
#[1 0 33 0 26 2 221 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 87 0 77 2 241 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 1 45 0 92 5 226 0 96 0 91 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 12 65 0 134 12 65 0 135 3 9 0 142 0 149 0 143 12 65 0 144 12 65 0 150 12 65 0 151 12 65 0 152 12 65 0 158 2 233 0 159 12 65 0 167 12 65 0 168 3 37 0 169 12 65 0 172 12 65 0 173 3 41 0 191 0 149 1 28 12 65 1 35 3 45 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 12 81 0 8 5 230 0 15 5 230 0 26 8 125 0 92 5 230 0 96 12 85 0 148] 
#[1 8 157 0 26 0 6 0 37 12 89 0 96 0 6 0 107 8 165 1 27 12 93 1 38 12 97 1 39] 
#[0 5 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 12 101 0 96] 
#[0 5 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 12 105 0 26] 
#[0 5 242 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 5 246 0 15 0 92] 
#[0 5 250 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 2 70 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 2 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 12 21 0 26] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 72 0 147 0 73 0 151 0 74 0 81 0 75 0 155 0 77 2 23 0 78 0 163 0 79 0 167 0 82 0 171 0 86 0 175 0 88 0 179 0 89 12 109 0 96 0 183 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 12 113 0 134 12 113 0 135 10 85 0 142 0 149 0 143 12 113 0 144 12 113 0 152 10 229 0 159 12 113 0 172 12 113 0 173 12 113 0 181 12 113 0 182 12 113 0 183 3 77 0 184 3 81 0 185 12 113 0 188 0 149 1 28 12 113 1 35 2 237 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 5 254 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 2 245 0 107 12 117 0 120 12 117 0 122 4 17 1 49 4 17 1 50 4 17 1 51] 
#[0 6 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 6 13 0 63 12 121 0 92 12 125 0 136 12 129 0 146] 
#[1 12 133 0 9 12 9 0 15] 
#[0 6 6 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 6 13 0 63 8 125 0 92 12 137 0 146 12 141 0 148] 
#[1 8 125 0 92 12 145 0 148] 
#[0 6 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 10 241 0 15 8 201 0 92 12 149 0 179] 
#[0 6 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 12 153 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 0 14 0 107 12 157 0 162 10 65 0 163 5 21 1 53] 
#[0 6 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 12 161 0 9] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 12 165 0 191 12 165 0 196 12 165 0 197 12 165 0 198 12 165 0 199 12 165 0 200 12 165 0 201 1 181 0 202 12 165 0 203 12 165 0 204 12 165 0 205 12 165 0 213 12 165 0 214 12 165 0 215 12 165 0 219 12 165 0 220 12 165 0 221 12 165 0 222 12 165 0 223 12 165 0 224 12 165 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 12 165 1 52 2 69 1 55] 
#[0 12 169 0 9] 
#[1 6 26 0 9 9 21 0 15] 
#[1 0 177 0 8 12 173 0 9 0 181 0 13 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 6 133 0 202 12 177 0 217 11 49 0 218 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 6 133 1 6 6 133 1 7 6 133 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 177 0 8 12 181 0 9 0 181 0 13 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 6 133 0 202 12 185 0 217 11 49 0 218 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 6 133 1 6 6 133 1 7 6 133 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 12 189 0 26] 
#[0 6 30 0 9 0 15 0 26] 
#[1 3 78 0 15 12 193 0 24 3 78 0 26 8 9 0 31 5 41 0 38] 
#[1 6 34 0 8 6 34 0 13 6 34 0 17 6 34 0 26 6 34 0 27 6 34 0 37 6 34 0 42 6 34 0 43 6 34 0 44 6 34 0 45 6 34 0 46 6 34 0 47 6 34 0 49 6 34 0 50 6 34 0 51 6 34 0 52 6 34 0 53 6 34 0 54 12 197 0 55 6 34 0 56 6 34 0 58 6 34 0 60 6 34 0 61 6 34 0 62 6 34 0 66 6 34 0 67 6 34 0 68 6 34 0 69 6 34 0 70 6 34 0 72 6 34 0 73 6 34 0 74 6 34 0 76 6 34 0 77 6 34 0 78 6 34 0 79 6 34 0 80 6 34 0 81 6 34 0 82 6 34 0 83 6 34 0 84 6 34 0 86 6 34 0 87 6 34 0 88 6 34 0 89 6 34 0 90 6 34 0 91 6 34 0 92 6 34 0 96 6 34 0 101 6 34 0 102 6 34 0 103 6 34 0 104 6 34 0 105 6 34 0 106 6 34 0 107 6 34 1 57] 
#[0 6 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 12 201 0 96] 
#[0 6 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 6 46 0 15 0 96] 
#[1 12 205 0 15 12 209 0 96] 
#[0 6 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 6 54 0 2 6 54 0 3 6 54 0 5 6 54 0 6 6 54 0 9 6 54 0 10 6 54 0 12 6 54 0 13 6 54 0 15 6 54 0 16 6 54 0 17 6 54 0 19 6 54 0 20 6 54 0 22 6 54 0 24 6 54 0 25 6 54 0 26 6 54 0 27 6 54 0 28 6 54 0 30 6 54 0 32 6 54 0 33 6 54 0 36 6 54 0 38 6 54 0 39 6 54 0 40 6 54 0 65 8 125 0 92 6 54 0 93 6 54 0 95 6 54 0 96 6 54 0 98 6 54 0 99 6 54 0 100 12 213 0 148 6 54 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 12 217 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 12 217 1 20 12 217 1 21 2 209 1 22 2 41 1 23 12 217 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 12 221 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 12 225 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 12 229 0 47 12 233 0 52 12 237 0 96 12 241 0 207 12 245 0 208 12 249 0 209 12 253 0 210 13 1 0 238 13 5 0 239 13 9 0 240] 
#[0 6 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 62 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 70 0 92] 
#[0 6 74 0 9 0 26] 
#[0 6 78 0 9 0 26] 
#[1 8 9 0 31 5 41 0 38] 
#[0 13 13 0 9] 
#[1 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 4 221 0 58 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 13 17 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 13 17 0 119 13 17 0 120 13 17 0 123 13 21 0 231 4 233 1 28 2 49 1 49 2 49 1 50 2 49 1 51 4 233 1 54] 
#[0 6 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 90 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 93 0 94 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 13 25 0 107] 
#[0 13 29 0 107] 
#[0 6 94 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 6 98 0 8 13 33 0 27 13 37 1 44] 
#[1 2 73 0 1 2 77 0 8 13 41 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 13 45 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 9 177 0 124 9 177 0 125 9 177 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 13 49 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 1 241 0 255 1 241 1 0 1 241 1 1 2 129 1 2 2 129 1 3 2 129 1 4 13 53 1 8 13 53 1 9 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 6 102 0 9 6 102 0 15 5 41 0 38] 
#[1 13 57 0 47 13 61 0 52 13 1 0 238 13 5 0 239 13 9 0 240] 
#[0 6 106 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 6 110 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 13 65 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 13 65 0 119 13 65 0 120 13 65 0 123 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 6 114 0 26 0 52 0 92] 
#[0 6 118 0 26 0 52 0 92] 
#[0 6 122 0 26 0 38 0 52 0 85 0 92] 
#[1 13 69 0 9 12 9 0 15] 
#[0 6 126 0 26 0 38 0 52 0 85 0 92] 
#[0 6 130 0 15 0 26 0 52 0 92] 
#[0 13 73 0 26] 
#[1 13 77 0 9 11 105 0 15] 
#[0 13 81 0 26] 
#[1 13 85 0 9 11 105 0 15] 
#[0 6 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 13 89 0 8] 
#[0 13 93 0 8] 
#[0 6 138 0 85 0 92] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 0 14 0 107 13 97 0 163 5 21 1 53] 
#[0 6 142 0 92] 
#[0 6 146 0 92] 
#[0 3 86 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 9 45 0 92 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 13 101 0 157 1 133 0 160 13 101 0 189 1 237 0 234 1 241 0 235 1 241 0 236 13 101 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 13 101 1 20 13 101 1 21 2 209 1 22 2 41 1 23 13 101 1 25 13 105 1 28 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 6 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 6 154 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 6 158 0 9 0 15 0 96] 
#[1 2 73 0 1 3 185 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 197 0 37 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 8 85 0 92 13 109 0 96 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 13 113 1 20 2 161 1 22 2 41 1 23 13 113 1 28 13 113 1 32 13 113 1 33 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 6 162 0 9 0 15 0 96] 
#[0 6 166 0 9 0 15] 
#[0 10 129 0 31] 
#[0 6 170 0 9 0 15] 
#[0 6 174 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 178 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107] 
#[0 6 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 186 0 15 0 92] 
#[0 6 190 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 2 73 0 1 2 77 0 8 13 117 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 13 121 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 6 194 0 15 0 26 0 96] 
#[0 6 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 202 0 15 0 26 0 96] 
#[0 13 125 0 96] 
#[0 6 206 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 210 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 72 0 73 0 74 0 75 0 78 0 79 0 82 0 86 0 89 1 57] 
#[0 6 214 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 218 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 6 222 0 15 0 92] 
#[1 6 226 0 26 6 226 0 27 6 226 0 37 6 226 0 42 6 226 0 44 6 226 0 46 6 226 0 49 6 226 0 50 6 226 0 54 6 226 0 56 6 226 0 58 6 226 0 60 6 226 0 66 6 226 0 67 6 226 0 68 6 226 0 69 6 226 0 72 6 226 0 73 6 226 0 74 6 226 0 75 6 226 0 77 6 226 0 78 6 226 0 79 6 226 0 82 6 226 0 86 6 226 0 88 6 226 0 89 6 226 0 96 6 226 0 107 13 129 0 137 13 133 0 138] 
#[0 6 230 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 12 121 0 92 13 137 0 136] 
#[1 6 13 0 63 12 121 0 92 13 141 0 136 13 145 0 146] 
#[1 8 125 0 92 13 149 0 148] 
#[0 6 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 6 242 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 6 13 0 63 12 121 0 92 13 153 0 136 13 157 0 146] 
#[1 13 161 0 9 12 9 0 15] 
#[0 13 165 0 26] 
#[0 6 246 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 13 169 0 191 13 169 0 196 13 169 0 197 13 169 0 198 13 169 0 199 13 169 0 200 13 169 0 201 1 181 0 202 13 169 0 203 13 169 0 204 13 169 0 205 13 169 0 213 13 169 0 214 13 169 0 215 13 169 0 219 13 169 0 220 13 169 0 221 13 169 0 222 13 169 0 223 13 169 0 224 13 169 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 13 169 1 52 2 69 1 55] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 13 173 0 191 13 173 0 196 13 173 0 197 13 173 0 198 13 173 0 199 13 173 0 200 13 173 0 201 1 181 0 202 13 173 0 203 13 173 0 204 13 173 0 205 13 173 0 213 13 173 0 214 13 173 0 215 13 173 0 219 13 173 0 220 13 173 0 221 13 173 0 222 13 173 0 223 13 173 0 224 13 173 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 13 173 1 52 2 69 1 55] 
#[0 13 177 0 9] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 13 181 0 191 13 181 0 196 13 181 0 197 13 181 0 198 13 181 0 199 13 181 0 200 13 181 0 201 1 181 0 202 13 181 0 203 13 181 0 204 13 181 0 205 13 181 0 213 13 181 0 214 13 181 0 215 13 181 0 219 13 181 0 220 13 181 0 221 13 181 0 222 13 181 0 223 13 181 0 224 13 181 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 13 181 1 52 2 69 1 55] 
#[0 13 185 0 9] 
#[1 0 177 0 8 13 189 0 9 0 181 0 13 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 187 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 6 133 0 202 13 193 0 217 11 49 0 218 1 237 0 234 1 241 0 235 1 241 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 6 133 1 6 6 133 1 7 6 133 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 13 197 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 13 197 1 20 13 197 1 21 2 209 1 22 2 41 1 23 13 197 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 13 201 0 191 13 201 0 196 13 201 0 197 13 201 0 198 13 201 0 199 13 201 0 200 13 201 0 201 1 181 0 202 13 201 0 203 13 201 0 204 13 201 0 205 13 201 0 213 13 201 0 214 13 201 0 215 13 201 0 219 13 201 0 220 13 201 0 221 13 201 0 222 13 201 0 223 13 201 0 224 13 201 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 13 201 1 52 2 69 1 55] 
#[0 6 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 9 45 0 92 13 205 0 96 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 13 209 0 157 1 133 0 160 13 209 0 189 1 237 0 234 1 241 0 235 1 241 0 236 13 209 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 13 209 1 20 13 209 1 21 2 209 1 22 2 41 1 23 13 209 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 6 254 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 7 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 7 6 0 9 0 15] 
#[0 7 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 13 213 0 9 11 105 0 15] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 13 221 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 13 221 1 20 13 221 1 21 2 209 1 22 2 41 1 23 13 221 1 25 13 221 1 26 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 13 225 0 19 13 229 0 24] 
#[0 7 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 13 233 0 47 13 237 0 52 13 241 0 96 13 245 0 208 13 249 0 209 12 253 0 210] 
#[0 7 18 0 47 0 52 0 96] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 13 233 0 47 0 23 0 49 0 45 0 50 0 221 0 51 13 237 0 52 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 13 253 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 4 81 0 144 1 133 0 160 4 81 0 172 4 81 0 191 14 1 0 192 4 81 0 193 4 81 0 194 1 153 0 195 4 81 0 196 4 81 0 197 4 81 0 198 4 81 0 199 4 81 0 200 4 81 0 201 1 181 0 202 4 81 0 203 4 81 0 204 4 81 0 205 14 5 0 210 4 81 0 213 4 81 0 214 4 81 0 215 4 81 0 219 4 81 0 220 4 81 0 221 4 81 0 222 4 81 0 223 4 81 0 224 4 81 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 4 81 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 4 81 1 52 2 65 1 53 2 69 1 55] 
#[0 7 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[1 13 57 0 47 13 61 0 52 14 9 0 96 14 13 0 239 13 9 0 240] 
#[0 7 26 0 47 0 52 0 96] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 25 0 84 1 33 0 88 1 45 0 92 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 14 17 0 191 14 21 0 222 1 237 0 234 1 241 0 235 1 241 0 236 14 25 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 14 25 1 20 14 25 1 21 2 209 1 22 2 41 1 23 14 25 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 1 45 0 92 14 29 0 191] 
#[0 7 30 0 93 0 107] 
#[1 14 33 0 93 5 173 0 107 14 37 0 156] 
#[0 14 41 0 8] 
#[0 7 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 3 205 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 77 14 45 0 98 0 6 0 107 3 213 1 27 14 49 1 46 3 221 1 47] 
#[0 14 53 0 8] 
#[0 7 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 14 57 0 9 11 105 0 15] 
#[0 7 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 7 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 14 61 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 14 61 1 20 14 61 1 21 2 209 1 22 2 41 1 23 14 61 1 25 14 61 1 26 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 13 225 0 19] 
#[0 7 50 0 5 0 15 0 98] 
#[0 7 54 0 26 0 38 0 52 0 85 0 92] 
#[0 7 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 14 65 0 26] 
#[0 7 62 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 14 69 0 26] 
#[1 2 73 0 1 2 77 0 8 14 73 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 14 77 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[1 2 73 0 1 2 77 0 8 14 81 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 14 85 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 7 66 0 9 0 15] 
#[0 14 89 0 26] 
#[0 14 93 0 26] 
#[0 7 70 0 9 0 15 0 96] 
#[0 7 74 0 15 0 96] 
#[1 7 78 0 15 7 78 0 26 8 125 0 92 7 78 0 96 14 97 0 148] 
#[1 14 101 0 9 11 105 0 15] 
#[0 7 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 14 105 0 96] 
#[1 0 33 0 26 2 221 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 0 81 0 75 0 87 0 77 2 241 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 7 86 0 96 0 91 0 107 2 249 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 2 249 0 119 2 249 0 120 2 249 0 123 14 109 0 134 14 109 0 135 14 109 0 139 14 109 0 140 14 117 0 141 14 121 0 142 0 149 0 143 14 109 0 144 14 109 0 151 14 109 0 152 14 109 0 158 2 233 0 159 14 109 0 167 14 109 0 172 14 109 0 173 0 149 1 28 14 109 1 35 14 133 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 7 90 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 7 94 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 12 121 0 92 14 137 0 136] 
#[0 7 98 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 7 102 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 12 121 0 92 14 141 0 136] 
#[1 6 13 0 63 12 121 0 92 14 145 0 136 14 149 0 146] 
#[0 7 106 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 7 110 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 7 114 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 14 153 0 191 14 153 0 196 14 153 0 197 14 153 0 198 14 153 0 199 14 153 0 200 14 153 0 201 1 181 0 202 14 153 0 203 14 153 0 204 14 153 0 205 14 153 0 213 14 153 0 214 14 153 0 215 14 153 0 219 14 153 0 220 14 153 0 221 14 153 0 222 14 153 0 223 14 153 0 224 14 153 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 14 153 1 52 2 69 1 55] 
#[0 7 118 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 14 157 0 191 14 157 0 196 14 157 0 197 14 157 0 198 14 157 0 199 14 157 0 200 14 157 0 201 1 181 0 202 14 157 0 203 14 157 0 204 14 157 0 205 14 157 0 213 14 157 0 214 14 157 0 215 14 157 0 219 14 157 0 220 14 157 0 221 14 157 0 222 14 157 0 223 14 157 0 224 14 157 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 14 157 1 52 2 69 1 55] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 14 161 0 191 14 161 0 196 14 161 0 197 14 161 0 198 14 161 0 199 14 161 0 200 14 161 0 201 1 181 0 202 14 161 0 203 14 161 0 204 14 161 0 205 14 161 0 213 14 161 0 214 14 161 0 215 14 161 0 219 14 161 0 220 14 161 0 221 14 161 0 222 14 161 0 223 14 161 0 224 14 161 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 14 161 1 52 2 69 1 55] 
#[0 14 165 0 9] 
#[0 14 169 0 9] 
#[0 7 122 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 7 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 7 130 0 15 0 96] 
#[0 7 134 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 7 138 0 15 0 19 0 24] 
#[1 7 142 0 15 7 142 0 19 7 142 0 24 14 173 0 212] 
#[0 7 146 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 84 0 88 0 92 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 7 150 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 14 177 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 14 177 1 20 14 177 1 21 2 209 1 22 2 41 1 23 14 177 1 25 14 177 1 26 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 13 229 0 24] 
#[0 7 154 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 7 158 0 47 0 52 0 96] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 13 233 0 47 0 23 0 49 0 45 0 50 0 221 0 51 13 237 0 52 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 14 181 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 4 81 0 144 1 133 0 160 4 81 0 172 4 81 0 191 14 1 0 192 4 81 0 193 4 81 0 194 1 153 0 195 4 81 0 196 4 81 0 197 4 81 0 198 4 81 0 199 4 81 0 200 4 81 0 201 1 181 0 202 4 81 0 203 4 81 0 204 4 81 0 205 14 5 0 210 4 81 0 213 4 81 0 214 4 81 0 215 4 81 0 219 4 81 0 220 4 81 0 221 4 81 0 222 4 81 0 223 4 81 0 224 4 81 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 4 81 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 4 81 1 52 2 65 1 53 2 69 1 55] 
#[0 7 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 11 0 37 0 41 0 42 0 201 0 43 0 15 0 44 0 209 0 45 0 19 0 46 7 166 0 47 0 23 0 49 0 45 0 50 0 221 0 51 7 166 0 52 0 225 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 237 0 61 0 241 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 0 253 0 70 0 69 0 72 0 73 0 73 0 77 0 74 1 1 0 76 0 47 0 77 0 85 0 78 0 89 0 79 1 9 0 80 1 13 0 81 1 17 0 82 1 21 0 83 1 25 0 84 0 97 0 86 1 29 0 87 1 33 0 88 0 101 0 89 1 37 0 90 1 41 0 91 1 45 0 92 7 166 0 96 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 51 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 125 0 142 0 149 0 143 7 5 0 144 1 133 0 160 7 5 0 172 7 5 0 191 7 5 0 193 7 5 0 194 1 153 0 195 7 5 0 196 7 5 0 197 7 5 0 198 7 5 0 199 7 5 0 200 7 5 0 201 1 181 0 202 7 5 0 203 7 5 0 204 7 5 0 205 7 5 0 213 7 5 0 214 7 5 0 215 7 5 0 219 7 5 0 220 7 5 0 221 7 5 0 222 7 5 0 223 7 5 0 224 7 5 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 0 149 1 28 7 5 1 35 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 7 5 1 52 2 65 1 53 2 69 1 55] 
#[0 7 170 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 7 174 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 93 0 95 0 96 0 98 0 99 0 100 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 7 178 0 47 0 52 0 96] 
#[1 14 185 0 26 7 182 0 47 7 182 0 52 7 182 0 96] 
#[0 7 186 0 47 0 52 0 96] 
#[0 14 189 0 26] 
#[0 7 190 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 2 245 0 107 14 193 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 14 193 0 119 14 193 0 120 14 193 0 123 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 7 194 0 9 5 41 0 38] 
#[1 2 73 0 1 2 77 0 8 14 197 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 14 201 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 7 198 0 8] 
#[1 6 97 0 15 14 205 0 98] 
#[1 2 73 0 1 2 77 0 8 14 209 0 9 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 9 69 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 14 213 0 249 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 9 69 1 20 9 69 1 21 2 209 1 22 2 41 1 23 9 69 1 25 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 7 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 7 142 0 15 7 142 0 19 14 217 0 212] 
#[0 7 206 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 7 210 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 14 221 0 26] 
#[1 14 225 0 9 11 105 0 15] 
#[0 14 229 0 26] 
#[1 14 233 0 9 11 105 0 15] 
#[0 7 214 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 7 218 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 7 222 0 15 0 26 0 96] 
#[1 7 226 0 15 7 226 0 26 8 125 0 92 7 226 0 96 14 237 0 148] 
#[0 7 230 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 7 234 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 7 238 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 5 205 0 85 5 209 0 92 14 241 0 164 14 245 0 170] 
#[1 2 221 0 27 3 149 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 153 0 50 0 71 0 54 3 157 0 56 0 53 0 58 0 75 0 60 0 79 0 66 3 161 0 67 0 83 0 68 0 65 0 69 0 69 0 72 0 73 0 73 0 77 0 74 3 165 0 75 0 87 0 77 0 85 0 78 0 89 0 79 0 93 0 82 0 97 0 86 0 22 0 88 0 101 0 89 0 91 0 107 5 193 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 5 193 0 119 5 193 0 120 5 193 0 123 14 249 0 141 3 169 0 143 3 169 1 28 14 253 1 40 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 7 242 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 7 246 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 1 33 0 88 3 189 0 107 5 161 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 5 161 0 119 5 161 0 120 5 161 0 123 15 1 0 125 5 165 0 160 2 49 1 49 2 49 1 50 2 49 1 51] 
#[0 7 250 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 7 254 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 8 2 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[1 12 121 0 92 15 5 0 136] 
#[0 8 6 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 8 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 8 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 15 9 0 191 15 9 0 196 15 9 0 197 15 9 0 198 15 9 0 199 15 9 0 200 15 9 0 201 1 181 0 202 15 9 0 203 15 9 0 204 15 9 0 205 15 9 0 213 15 9 0 214 15 9 0 215 15 9 0 219 15 9 0 220 15 9 0 221 15 9 0 222 15 9 0 223 15 9 0 224 15 9 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 15 9 1 52 2 69 1 55] 
#[1 0 177 0 8 0 181 0 13 0 185 0 17 0 189 0 26 0 193 0 27 0 201 0 43 0 205 0 44 0 209 0 45 0 213 0 46 0 217 0 49 0 221 0 51 0 225 0 53 0 229 0 54 0 233 0 60 0 237 0 61 0 241 0 62 0 245 0 66 0 249 0 68 0 253 0 70 1 1 0 76 1 5 0 77 1 9 0 80 1 13 0 81 3 245 0 82 1 21 0 83 1 25 0 84 1 29 0 87 1 33 0 88 1 37 0 90 1 41 0 91 1 45 0 92 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 191 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 1 133 0 160 15 13 0 191 15 13 0 196 15 13 0 197 15 13 0 198 15 13 0 199 15 13 0 200 15 13 0 201 1 181 0 202 15 13 0 203 15 13 0 204 15 13 0 205 15 13 0 213 15 13 0 214 15 13 0 215 15 13 0 219 15 13 0 220 15 13 0 221 15 13 0 222 15 13 0 223 15 13 0 224 15 13 0 233 1 237 0 234 1 241 0 235 1 245 0 236 1 241 0 247 1 253 0 248 1 237 0 250 2 5 0 255 2 9 1 0 2 13 1 1 2 17 1 2 2 21 1 3 2 25 1 4 1 181 1 6 1 181 1 7 1 181 1 22 2 41 1 23 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 15 13 1 52 2 69 1 55] 
#[1 15 17 0 15 15 21 0 19 15 25 0 24 15 29 0 211] 
#[1 7 142 0 15 7 142 0 24 15 33 0 212] 
#[0 8 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 8 22 0 47 0 52 0 96] 
#[0 8 26 0 47 0 52 0 96] 
#[0 8 30 0 93 0 107] 
#[0 8 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 15 37 0 9 11 105 0 15] 
#[0 8 38 0 8] 
#[1 8 42 0 2 8 42 0 3 8 42 0 5 8 42 0 6 8 42 0 9 8 42 0 10 8 42 0 12 8 42 0 13 8 42 0 15 8 42 0 16 8 42 0 17 8 42 0 19 8 42 0 20 8 42 0 22 8 42 0 24 8 42 0 25 8 42 0 26 8 42 0 27 8 42 0 28 8 42 0 30 8 42 0 32 8 42 0 33 8 42 0 36 8 42 0 38 8 42 0 39 8 42 0 40 8 42 0 65 8 125 0 92 8 42 0 93 8 42 0 95 8 42 0 96 8 42 0 98 8 42 0 99 8 42 0 100 15 41 0 148 8 42 1 57] 
#[1 15 45 0 9 11 105 0 15] 
#[1 15 17 0 15 15 21 0 19 15 29 0 211] 
#[0 8 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 15 49 0 26] 
#[0 8 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 15 53 0 26] 
#[0 8 54 0 15 0 26 0 96] 
#[1 5 209 0 92 15 57 0 170] 
#[0 8 58 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 5 205 0 85 5 209 0 92 15 61 0 164 15 65 0 170] 
#[1 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 1 5 0 77 1 33 0 88 3 189 0 107 7 237 0 114 2 253 0 115 2 253 0 116 2 253 0 117 2 253 0 118 7 237 0 119 7 237 0 120 7 237 0 123 15 1 0 125 7 241 0 160 2 49 1 49 2 49 1 50 2 49 1 51] 
#[1 15 69 0 8 8 62 0 85 8 62 0 92] 
#[0 8 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 92 0 96 0 107 1 57] 
#[0 8 70 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[0 8 74 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107 1 57] 
#[1 2 73 0 1 2 77 0 8 2 81 0 12 0 181 0 13 2 85 0 16 0 185 0 17 0 193 0 27 0 205 0 44 0 213 0 46 0 217 0 49 0 229 0 54 0 233 0 60 0 245 0 66 0 249 0 68 0 253 0 70 1 5 0 77 1 9 0 80 2 89 0 81 1 21 0 83 1 33 0 88 2 93 0 97 1 49 0 101 1 53 0 102 1 57 0 103 1 61 0 104 1 65 0 105 1 69 0 106 0 55 0 107 1 241 0 113 1 81 0 114 1 85 0 115 1 85 0 116 1 85 0 117 1 85 0 118 1 101 0 119 1 101 0 120 1 101 0 123 1 113 0 124 1 113 0 125 1 113 0 126 2 101 0 156 1 133 0 160 1 237 0 234 1 241 0 235 1 241 0 236 15 73 0 241 2 113 0 242 2 117 0 245 1 241 0 247 1 241 0 248 1 237 0 250 2 5 0 255 1 241 1 0 2 13 1 1 2 129 1 2 2 129 1 3 2 129 1 4 2 161 1 5 2 161 1 6 2 161 1 7 2 161 1 8 2 161 1 9 2 161 1 10 2 165 1 11 2 169 1 12 2 173 1 13 2 177 1 14 2 181 1 15 2 185 1 16 2 189 1 17 2 193 1 18 2 197 1 19 15 73 1 20 15 73 1 21 2 209 1 22 2 41 1 23 15 73 1 25 15 73 1 26 2 45 1 45 2 49 1 49 2 49 1 50 2 49 1 51 2 69 1 55] 
#[0 8 78 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 77 0 80 0 81 0 83 0 84 0 88 0 92 0 97 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 8 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 8 86 0 15 0 19 0 24] 
#[1 15 17 0 15 15 25 0 24 15 29 0 211] 
#[0 8 90 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 8 94 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[1 8 98 0 2 8 98 0 3 8 98 0 5 8 98 0 6 8 98 0 9 8 98 0 10 8 98 0 12 8 98 0 13 8 98 0 15 8 98 0 16 8 98 0 17 8 98 0 19 8 98 0 20 8 98 0 22 8 98 0 24 8 98 0 25 8 98 0 26 8 98 0 27 8 98 0 28 8 98 0 30 8 98 0 32 8 98 0 33 8 98 0 36 8 98 0 38 8 98 0 39 8 98 0 40 8 98 0 65 8 125 0 92 8 98 0 93 8 98 0 95 8 98 0 96 8 98 0 98 8 98 0 99 8 98 0 100 15 77 0 148 8 98 1 57] 
#[0 8 102 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 8 106 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 72 0 73 0 74 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 86 0 87 0 88 0 89 0 90 0 91 0 92 0 96 0 101 0 102 0 103 0 104 0 105 0 106 0 107] 
#[0 8 110 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 5 209 0 92 15 81 0 170] 
#[0 8 114 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[1 15 85 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 77 0 14 0 107 15 89 0 162 10 65 0 163 5 21 1 53] 
#[0 8 118 0 15 0 19 0 24] 
#[0 8 122 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 93 0 95 0 96 0 98 0 99 0 100 1 57] 
#[0 8 126 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 72 0 73 0 74 0 75 0 77 0 78 0 79 0 82 0 86 0 88 0 89 0 96 0 107] 
#[0 8 130 0 85 0 92] 
#[1 15 93 0 9 12 9 0 15] 
#[0 8 134 0 85 0 92]
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
JavaParser >> reduceActionForconditional_expression3: nodes [
	| result |
	result := JavaConditionalExpressionNode new.
	result testExpression: (nodes at: 1).
	result questionMark: (nodes at: 2).
	result trueExpression: (nodes at: 3).
	result colon: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForconditional_expression4: nodes [
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
	result lt: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result gt: ((nodes at: 2) at: 4).
	result colonColonToken: (nodes at: 3).
	result name: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_reference_expression3: nodes [
	| result |
	result := JavaMethodReferenceNode new.
	result superToken: (nodes at: 1).
	result colonColonToken: (nodes at: 2).
	result name: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionFormethod_reference_expression4: nodes [
	| result |
	result := JavaMethodReferenceNode new.
	result receiver: (nodes at: 1).
	result lt: ((nodes at: 2) at: 1).
	result addNodes: ((nodes at: 2) at: 2) to: result arguments.
	result addTokens: ((nodes at: 2) at: 3) to: result commas.
	result gt: ((nodes at: 2) at: 4).
	result superPeriod: (nodes at: 3).
	result superToken: (nodes at: 4).
	result colonColonToken: (nodes at: 5).
	result name: (nodes at: 6).
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
JavaParser >> reduceActionForrecord_constructor_declarator1: nodes [
	| result |
	result := Array new: 6.
	result at: 5 put: (OrderedCollection new: 2).
	result at: 6 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	result at: 2 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForrecord_declaration1: nodes [
	| result |
	result := JavaRecordDeclarationNode new.
	result recordToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result rightParen: (nodes at: 5).
	result leftBrace: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 6) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForrecord_declaration2: nodes [
	| result |
	result := JavaRecordDeclarationNode new.
	result recordToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result rightParen: (nodes at: 5).
	result implementsToken: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result leftBrace: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 7) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForrecord_declaration3: nodes [
	| result |
	result := JavaRecordDeclarationNode new.
	result recordToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result parameters.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result rightParen: (nodes at: 6).
	result leftBrace: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 7) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForrecord_declaration4: nodes [
	| result |
	result := JavaRecordDeclarationNode new.
	result recordToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result leftParen: (nodes at: 4).
	result addNodes: ((nodes at: 5) at: 1) to: result parameters.
	result addTokens: ((nodes at: 5) at: 2) to: result commas.
	result rightParen: (nodes at: 6).
	result implementsToken: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result leftBrace: ((nodes at: 8) at: 1).
	result addNodes: ((nodes at: 8) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 8) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForrecord_declaration5: nodes [
	| result |
	result := JavaRecordDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result recordToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result leftParen: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result leftBrace: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 7) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForrecord_declaration6: nodes [
	| result |
	result := JavaRecordDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result recordToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result leftParen: (nodes at: 5).
	result rightParen: (nodes at: 6).
	result implementsToken: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result leftBrace: ((nodes at: 8) at: 1).
	result addNodes: ((nodes at: 8) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 8) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForrecord_declaration7: nodes [
	| result |
	result := JavaRecordDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result recordToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result leftParen: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result parameters.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result rightParen: (nodes at: 7).
	result leftBrace: ((nodes at: 8) at: 1).
	result addNodes: ((nodes at: 8) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 8) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForrecord_declaration8: nodes [
	| result |
	result := JavaRecordDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result recordToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result leftParen: (nodes at: 5).
	result addNodes: ((nodes at: 6) at: 1) to: result parameters.
	result addTokens: ((nodes at: 6) at: 2) to: result commas.
	result rightParen: (nodes at: 7).
	result implementsToken: ((nodes at: 8) at: 1).
	result addNodes: ((nodes at: 8) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 8) at: 3) to: result commas.
	result leftBrace: ((nodes at: 9) at: 1).
	result addNodes: ((nodes at: 9) at: 2) to: result declarations.
	result rightBrace: ((nodes at: 9) at: 3).
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
JavaParser >> reduceActionForswitch_block_expression_group2: nodes [
	| result |
	result := JavaSwitchBlockExpressionGroupNode new.
	result caseToken: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result constants.
	result addTokens: ((nodes at: 1) at: 3) to: result commas.
	result arrowToken: ((nodes at: 1) at: 4).
	result defaultToken: ((nodes at: 1) at: 5).
	result value: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_block_expression_group3: nodes [
	| result |
	result := JavaSwitchBlockExpressionGroupNode new.
	result caseToken: ((nodes at: 1) at: 1).
	result addNodes: ((nodes at: 1) at: 2) to: result constants.
	result addTokens: ((nodes at: 1) at: 3) to: result commas.
	result arrowToken: ((nodes at: 1) at: 4).
	result defaultToken: ((nodes at: 1) at: 5).
	result value: (nodes at: 2).
	result semicolon: (nodes at: 3).
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
JavaParser >> reduceActionForswitch_expression1: nodes [
	| result |
	result := JavaSwitchExpressionNode new.
	result switchToken: (nodes at: 1).
	result leftParen: (nodes at: 2).
	result expression: (nodes at: 3).
	result rightParen: (nodes at: 4).
	result leftBrace: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result statementGroups.
	result rightBrace: ((nodes at: 5) at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_expression_block1: nodes [
	| result |
	result := Array new: 3.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self addAll: (nodes at: 2) to: (result at: 2).
	result at: 3 put: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_expression_labels1: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 1 put: (nodes at: 1).
	self add: (nodes at: 2) to: (result at: 2).
	self addAll: ((nodes at: 3) at: 1) to: (result at: 3).
	self addAll: ((nodes at: 3) at: 2) to: (result at: 2).
	result at: 4 put: (nodes at: 4).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_expression_labels2: nodes [
	| result |
	result := Array new: 5.
	result at: 2 put: (OrderedCollection new: 2).
	result at: 3 put: (OrderedCollection new: 2).
	result at: 5 put: (nodes at: 1).
	result at: 4 put: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForswitch_label1: nodes [
	| result |
	result := JavaSwitchLabelNode new.
	result caseToken: (nodes at: 1).
	result addNode: (nodes at: 2) to: result constants.
	result addTokens: ((nodes at: 3) at: 1) to: result commas.
	result addNodes: ((nodes at: 3) at: 2) to: result constants.
	result colon: (nodes at: 4).
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
JavaParser >> reduceActionFortype_declaration5: nodes [
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

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForyield_statement1: nodes [
	| result |
	result := JavaYieldStatementNode new.
	result yieldToken: (nodes at: 1).
	result semicolon: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForyield_statement2: nodes [
	| result |
	result := JavaYieldStatementNode new.
	result yieldToken: (nodes at: 1).
	result expression: (nodes at: 2).
	result semicolon: (nodes at: 3).
	^ result
]

{ #category : #private }
JavaParser >> tryAllTokens [
	^ (self class keywords includes: currentToken value) not
]
