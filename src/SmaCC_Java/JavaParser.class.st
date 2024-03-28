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
#[ 0 14 0 205] 
#[ 0 14 0 213] 
#[ 0 14 0 221] 
#[ 0 14 0 225] 
#[ 0 14 0 237] 
#[ 0 14 0 53] 
#[ 0 14 0 241] 
#[ 0 14 0 253] 
#[ 0 14 1 1] 
#[ 0 14 1 13] 
#[ 0 14 0 18 1 81] 
#[ 0 18 2 105] 
#[ 0 22 0 213] 
#[ 0 22 0 221] 
#[ 0 22 0 225] 
#[ 0 22 0 237] 
#[ 0 22 0 241] 
#[ 0 22 0 253] 
#[ 0 22 1 1] 
#[ 0 22 1 13] 
#[ 0 22 2 253] 
#[ 0 26 2 229] 
#[ 0 26 0 37] 
#[ 0 26 0 41] 
#[ 0 22 0 26 0 213] 
#[ 0 22 0 26 0 221] 
#[ 0 22 0 26 0 225] 
#[ 0 22 0 26 0 237] 
#[ 0 26 0 53] 
#[ 0 22 0 26 0 241] 
#[ 0 22 0 26 0 253] 
#[ 0 22 0 26 1 1] 
#[ 0 26 0 65] 
#[ 0 26 0 69] 
#[ 0 26 0 73] 
#[ 0 26 0 77] 
#[ 0 26 0 81] 
#[ 0 26 0 89] 
#[ 0 22 0 26 1 13] 
#[ 0 26 2 249] 
#[ 0 26 0 97] 
#[ 0 26 0 101] 
#[ 0 26 0 105] 
#[ 0 22 0 26] 
#[ 0 26 0 109] 
#[ 0 22 0 26 2 253] 
#[ 0 18 3 197] 
#[ 0 18 1 81] 
#[ 0 18 0 214] 
#[ 0 18 0 201 0 214] 
#[ 0 222 4 105] 
#[ 0 18 1 2 4 125] 
#[ 0 201 0 250 1 2] 
#[ 1 110 4 149] 
#[ 1 106 1 110] 
#[ 1 118 1 122] 
#[ 1 194 4 221] 
#[ 0 14 0 18 2 105] 
#[ 0 18 0 214 1 210] 
#[ 0 214 1 210] 
#[ 1 250 5 57] 
#[ 1 250 5 61] 
#[ 1 250 5 65] 
#[ 1 254 5 69] 
#[ 1 254 5 73] 
#[ 2 2 5 77] 
#[ 2 2 5 81] 
#[ 2 2 5 85] 
#[ 2 6 5 89] 
#[ 2 6 5 93] 
#[ 2 6 5 97] 
#[ 2 6 5 101] 
#[ 2 6 5 105] 
#[ 2 10 5 109] 
#[ 2 10 5 113] 
#[ 2 14 5 117] 
#[ 2 18 5 121] 
#[ 2 22 5 125] 
#[ 2 26 5 129] 
#[ 2 30 5 133] 
#[ 2 30 5 137] 
#[ 2 42 2 46] 
#[ 0 18 0 201] 
#[ 2 50 2 78] 
#[ 2 58 2 86] 
#[ 0 14 0 18 3 197] 
#[ 0 18 6 193] 
#[ 0 14 3 105] 
#[ 3 62 3 94] 
#[ 0 18 8 97] 
#[ 0 14 5 181] 
#[ 4 58 5 57] 
#[ 4 58 5 61] 
#[ 4 58 5 65] 
#[ 4 62 5 57] 
#[ 4 62 5 61] 
#[ 4 62 5 65] 
#[ 4 66 5 69] 
#[ 4 66 5 73] 
#[ 4 70 5 69] 
#[ 4 70 5 73] 
#[ 4 74 5 69] 
#[ 4 74 5 73] 
#[ 4 78 5 77] 
#[ 4 78 5 81] 
#[ 4 78 5 85] 
#[ 4 82 5 77] 
#[ 4 82 5 81] 
#[ 4 82 5 85] 
#[ 4 86 5 77] 
#[ 4 86 5 81] 
#[ 4 86 5 85] 
#[ 4 94 5 77] 
#[ 4 94 5 81] 
#[ 4 94 5 85] 
#[ 4 98 5 89] 
#[ 4 98 5 93] 
#[ 4 98 5 97] 
#[ 4 98 5 101] 
#[ 4 98 5 105] 
#[ 4 102 5 89] 
#[ 4 102 5 93] 
#[ 4 102 5 97] 
#[ 4 102 5 101] 
#[ 4 102 5 105] 
#[ 4 106 5 109] 
#[ 4 106 5 113] 
#[ 4 110 5 117] 
#[ 4 114 5 121] 
#[ 4 118 5 125] 
#[ 4 122 5 129] 
#[ 1 110 10 69] 
#[ 0 214 10 145] 
#[ 0 26 0 93] 
#[ 0 18 11 201] 
#[ 2 89 5 94] 
#[ 2 93 5 94] 
#[ 0 201 5 94]
	).
]

{ #category : #'generated-accessing' }
JavaParser class >> cacheId [
	^'2024-03-28T07:09:26.010152-05:00'
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
	| ""sealed"" 'token' {{Modifier}}
	| ""non-sealed"" 'token' {{Modifier}}
	| annotation
	;
# 19.8) Classes
# 19.8.1) Class Declaration:
class_declaration 
	: modifiers? ""class"" 'classToken' <IDENTIFIER> 'name' type_parameters_opt 'typeParameters' super? permits? interfaces? class_body {{ClassDeclaration}}
	| enum_declaration
	;
permits
	: ""permits"" 'permitsToken' permits_type_list
	;
permits_type_list
	: interface_type 'permit' ("","" 'comma' interface_type 'permit')*
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
	| relational_expression 'object' ""instanceof"" 'instanceofToken' reference_type 'type' variable_declarator_id 'variable' {{InstanceofPatternExpression}}
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
	#(290 0 #reduceActionForannotations1: 31439873 false) 
	#(130 0 #reduceActionForcompilation_unit1: 5160961 false) 
	#(316 0 #reduceActionForannotations1: 34167809 false) 
	#(308 0 #reduceActionFortype_arguments_opt1: 33263617 false) 
	#(303 0 #nil 32732161 false) 
	#(192 0 #reduceActionForannotations1: 14353409 false) 
	#(137 1 #reduceActionFortype_declaration5: 6064133 false) 
	#(146 1 #reduceActionFormodifier5: 7158789 false) 
	#(146 1 #reduceActionFormodifier5: 7158790 false) 
	#(146 1 #reduceActionFormodifier5: 7158791 false) 
	#(146 1 #reduceActionFormodifier5: 7158797 false) 
	#(146 1 #reduceActionFormodifier5: 7158787 false) 
	#(146 1 #reduceActionFormodifier5: 7158786 false) 
	#(146 1 #reduceActionFormodifier5: 7158785 false) 
	#(146 1 #reduceActionFormodifier5: 7158796 false) 
	#(146 1 #reduceActionFormodifier5: 7158788 false) 
	#(146 1 #reduceActionFormodifier5: 7158795 false) 
	#(146 1 #reduceActionFormodifier5: 7158792 false) 
	#(146 1 #reduceActionFormodifier5: 7158793 false) 
	#(146 1 #reduceActionFormodifier5: 7158794 false) 
	#(115 1 #liftFirstValue: 3765249 false) 
	#(130 1 #reduceActionForcompilation_unit3: 5160963 false) 
	#(130 1 #reduceActionForcompilation_unit2: 5160962 false) 
	#(130 1 #reduceActionForcompilation_unit5: 5160965 false) 
	#(131 1 #reduceActionForimport_declarations1: 5291009 false) 
	#(134 1 #liftFirstValue: 5639169 false) 
	#(134 1 #liftFirstValue: 5639170 false) 
	#(132 1 #reduceActionForimport_declarations1: 5400577 false) 
	#(137 1 #liftFirstValue: 6064132 false) 
	#(145 1 #reduceActionForimport_declarations1: 7087105 false) 
	#(137 1 #liftFirstValue: 6064129 false) 
	#(137 1 #liftFirstValue: 6064130 false) 
	#(137 1 #liftFirstValue: 6064131 false) 
	#(146 1 #liftFirstValue: 7158798 false) 
	#(147 1 #liftFirstValue: 7808017 false) 
	#(206 1 #reduceActionForempty_statement1: 16541697 false) 
	#(118 1 #reduceActionForprimitive_type2: 4209666 false) 
	#(120 1 #reduceActionForintegral_type1: 4343809 false) 
	#(120 1 #reduceActionForintegral_type5: 4343813 false) 
	#(121 1 #reduceActionForfloating_point_type2: 4520962 false) 
	#(121 1 #reduceActionForfloating_point_type1: 4520961 false) 
	#(120 1 #reduceActionForintegral_type3: 4343811 false) 
	#(120 1 #reduceActionForintegral_type4: 4343812 false) 
	#(120 1 #reduceActionForintegral_type2: 4343810 false) 
	#(242 1 #reduceActionForprimary_no_new_array2: 21291010 false) 
	#(167 1 #reduceActionForvoid1: 10031105 false) 
	#(116 1 #reduceActionForliteral1: 3823617 false) 
	#(116 1 #reduceActionForliteral2: 3823618 false) 
	#(116 1 #reduceActionForliteral3: 3823619 false) 
	#(116 1 #reduceActionForliteral4: 3823620 false) 
	#(116 1 #reduceActionForliteral5: 3823621 false) 
	#(116 1 #reduceActionForliteral6: 3823622 false) 
	#(128 1 #reduceActionForprimary_no_new_array2: 5003265 false) 
	#(242 1 #liftFirstValue: 21291009 false) 
	#(117 1 #liftFirstValue: 4162561 false) 
	#(118 1 #liftFirstValue: 4209665 false) 
	#(119 1 #liftFirstValue: 4284417 false) 
	#(119 1 #liftFirstValue: 4284418 false) 
	#(117 1 #liftFirstValue: 4162562 false) 
	#(122 1 #liftFirstValue: 4615169 false) 
	#(122 1 #liftFirstValue: 4615170 false) 
	#(265 1 #liftFirstValue: 26182658 false) 
	#(286 1 #liftFirstValue: 31129601 false) 
	#(318 1 #liftFirstValue: 34315266 false) 
	#(127 1 #liftFirstValue: 4959233 false) 
	#(127 1 #liftFirstValue: 4959234 false) 
	#(200 1 #liftFirstValue: 15524867 false) 
	#(200 1 #liftFirstValue: 15524868 false) 
	#(204 1 #liftFirstValue: 16123905 false) 
	#(200 1 #liftFirstValue: 15524865 false) 
	#(200 1 #liftFirstValue: 15524866 false) 
	#(203 1 #liftFirstValue: 15910913 false) 
	#(204 1 #liftFirstValue: 16123913 false) 
	#(204 1 #liftFirstValue: 16123906 false) 
	#(203 1 #liftFirstValue: 15910914 false) 
	#(204 1 #liftFirstValue: 16123907 false) 
	#(203 1 #liftFirstValue: 15910915 false) 
	#(203 1 #liftFirstValue: 15910916 false) 
	#(204 1 #liftFirstValue: 16123908 false) 
	#(203 1 #liftFirstValue: 15910917 false) 
	#(204 1 #liftFirstValue: 16123909 false) 
	#(203 1 #liftFirstValue: 15910918 false) 
	#(204 1 #liftFirstValue: 16123910 false) 
	#(204 1 #liftFirstValue: 16123911 false) 
	#(204 1 #liftFirstValue: 16123912 false) 
	#(204 1 #liftFirstValue: 16123915 false) 
	#(204 1 #liftFirstValue: 16123914 false) 
	#(204 1 #liftFirstValue: 16123916 false) 
	#(204 1 #liftFirstValue: 16123917 false) 
	#(265 1 #liftFirstValue: 26182657 false) 
	#(318 1 #liftFirstValue: 34315265 false) 
	#(241 1 #liftFirstValue: 21222401 false) 
	#(203 1 #liftFirstValue: 15910920 false) 
	#(242 1 #liftFirstValue: 21291021 false) 
	#(242 1 #liftFirstValue: 21291020 false) 
	#(209 1 #liftFirstValue: 16814087 false) 
	#(242 1 #liftFirstValue: 21291012 false) 
	#(241 1 #liftFirstValue: 21222402 false) 
	#(242 1 #liftFirstValue: 21291013 false) 
	#(286 1 #liftFirstValue: 31129602 false) 
	#(209 1 #liftFirstValue: 16814086 false) 
	#(242 1 #liftFirstValue: 21291014 false) 
	#(242 1 #liftFirstValue: 21291015 false) 
	#(286 1 #liftFirstValue: 31129603 false) 
	#(209 1 #liftFirstValue: 16814084 false) 
	#(265 1 #liftFirstValue: 26182659 false) 
	#(209 1 #liftFirstValue: 16814085 false) 
	#(265 1 #liftFirstValue: 26182660 false) 
	#(209 1 #liftFirstValue: 16814082 false) 
	#(209 1 #liftFirstValue: 16814083 false) 
	#(209 1 #liftFirstValue: 16814081 false) 
	#(123 1 #reduceActionForclass_or_interface_type1: 4678657 false) 
	#(312 1 #liftFirstValue: 33687553 false) 
	#(312 1 #liftFirstValue: 33687554 false) 
	#(203 1 #liftFirstValue: 15910919 false) 
	#(163 1 #reduceActionForvariable_declarator_id1: 9436161 false) 
	#(252 1 #reduceActionForuntyped_lambda_parameter1: 23083009 false) 
	#(288 1 #liftFirstValue: 31331330 false) 
	#(249 1 #reduceActionForlambda_parameters3: 22763523 false) 
	#(271 1 #liftFirstValue: 27002881 false) 
	#(273 1 #liftFirstValue: 27677697 false) 
	#(268 1 #liftFirstValue: 26510337 false) 
	#(268 1 #liftFirstValue: 26510338 false) 
	#(268 1 #liftFirstValue: 26510341 false) 
	#(271 1 #liftFirstValue: 27002884 false) 
	#(274 1 #liftFirstValue: 28070913 false) 
	#(275 1 #liftFirstValue: 28359681 false) 
	#(276 1 #liftFirstValue: 28766209 false) 
	#(277 1 #liftFirstValue: 29539329 false) 
	#(278 1 #liftFirstValue: 29817857 false) 
	#(279 1 #liftFirstValue: 29967361 false) 
	#(280 1 #liftFirstValue: 30125057 false) 
	#(281 1 #liftFirstValue: 30301185 false) 
	#(282 1 #liftFirstValue: 30484481 false) 
	#(283 1 #liftFirstValue: 30671873 false) 
	#(284 1 #liftFirstValue: 30954497 false) 
	#(288 1 #liftFirstValue: 31331329 false) 
	#(284 1 #liftFirstValue: 30954498 false) 
	#(268 1 #liftFirstValue: 26510342 false) 
	#(158 1 #liftFirstValue: 8767491 false) 
	#(157 1 #liftFirstValue: 8624129 false) 
	#(158 1 #liftFirstValue: 8767489 false) 
	#(158 1 #liftFirstValue: 8767490 false) 
	#(157 1 #liftFirstValue: 8624130 false) 
	#(157 1 #liftFirstValue: 8624131 false) 
	#(157 1 #reduceActionForclass_body_declaration4: 8624132 false) 
	#(188 1 #liftFirstValue: 13882372 false) 
	#(319 1 #liftFirstValue: 34356225 false) 
	#(189 1 #liftFirstValue: 14027777 false) 
	#(319 1 #liftFirstValue: 34356226 false) 
	#(188 1 #liftFirstValue: 13882369 false) 
	#(188 1 #liftFirstValue: 13882371 false) 
	#(188 1 #liftFirstValue: 13882370 false) 
	#(291 2 #reduceActionForannotation1: 31498241 false) 
	#(130 2 #reduceActionForcompilation_unit4: 5160964 false) 
	#(131 2 #reduceActionForimport_declarations2: 5291010 false) 
	#(132 2 #reduceActionForimport_declarations2: 5400578 false) 
	#(130 2 #reduceActionForcompilation_unit7: 5160967 false) 
	#(130 2 #reduceActionForcompilation_unit6: 5160966 false) 
	#(145 2 #reduceActionForimport_declarations2: 7087106 false) 
	#(290 2 #reduceActionForimport_declarations2: 31439874 false) 
	#(269 2 #reduceActionForpreincrement_expression1: 26787841 false) 
	#(270 2 #reduceActionForpredecrement_expression1: 26894337 false) 
	#(311 0 #reduceActionFortype_argument_type3: 33596419 false) 
	#(308 2 #reduceActionFortype_arguments_opt3: 33263619 false) 
	#(309 1 #reduceActionFortype_arguments1: 33371137 false) 
	#(226 2 #reduceActionForbreak_statement1: 19270657 false) 
	#(227 2 #reduceActionForcontinue_statement1: 19379201 false) 
	#(124 1 #liftFirstValue: 4742145 false) 
	#(228 2 #reduceActionForreturn_statement1: 19500033 false) 
	#(205 2 #reduceActionForyield_statement1: 16436225 false) 
	#(198 2 #reduceActionForblock1: 15344641 false) 
	#(199 1 #reduceActionForimport_declarations1: 15420417 false) 
	#(313 2 #reduceActionForsimple_type_name1: 33746945 false) 
	#(126 2 #reduceActionForarray_type1: 4836353 false) 
	#(260 1 #reduceActionFordims1: 24944641 false) 
	#(201 2 #reduceActionForlocal_variable_declaration_statement1: 15650817 false) 
	#(208 2 #reduceActionForexpression_statement1: 16709633 false) 
	#(266 2 #reduceActionForpostincrement_expression1: 26287105 false) 
	#(267 2 #reduceActionForpostdecrement_expression1: 26397697 false) 
	#(287 1 #liftFirstValue: 31193092 false) 
	#(287 1 #liftFirstValue: 31193098 false) 
	#(287 1 #liftFirstValue: 31193090 false) 
	#(287 1 #liftFirstValue: 31193093 false) 
	#(287 1 #liftFirstValue: 31193094 false) 
	#(287 1 #liftFirstValue: 31193091 false) 
	#(287 1 #liftFirstValue: 31193095 false) 
	#(287 1 #liftFirstValue: 31193089 false) 
	#(287 1 #liftFirstValue: 31193096 false) 
	#(287 1 #liftFirstValue: 31193097 false) 
	#(287 1 #liftFirstValue: 31193099 false) 
	#(287 1 #liftFirstValue: 31193100 false) 
	#(126 2 #reduceActionForarray_type1: 4836354 false) 
	#(317 1 #reduceActionFormodifier5: 34246657 false) 
	#(317 1 #liftFirstValue: 34246658 false) 
	#(316 2 #reduceActionForimport_declarations2: 34167810 false) 
	#(271 2 #reduceActionForunary_expression_not_plus_minus3: 27002883 false) 
	#(249 2 #reduceActionForlambda_parameters1: 22763521 false) 
	#(251 1 #liftFirstValue: 23013377 false) 
	#(250 1 #reduceActionFortype_arguments1: 22887425 false) 
	#(251 1 #liftFirstValue: 23013378 false) 
	#(268 2 #reduceActionForunary_expression3: 26510339 false) 
	#(268 2 #reduceActionForunary_expression4: 26510340 false) 
	#(271 2 #reduceActionForunary_expression_not_plus_minus2: 27002882 false) 
	#(305 1 #reduceActionFortype_parameter1: 32936961 false) 
	#(304 1 #reduceActionFortype_arguments1: 32827393 false) 
	#(173 1 #reduceActionFormethod_body2: 10910722 false) 
	#(165 2 #reduceActionFormethod_declaration1: 9697281 false) 
	#(173 1 #liftFirstValue: 10910721 false) 
	#(174 2 #reduceActionForstatic_initializer1: 11008001 false) 
	#(160 1 #reduceActionFortype_arguments1: 9001985 false) 
	#(161 1 #liftFirstValue: 9154562 false) 
	#(161 1 #reduceActionForvariable_declarator1: 9154561 false) 
	#(175 2 #reduceActionForconstructor_declaration1: 11130881 false) 
	#(195 2 #reduceActionForabstract_method_declaration1: 14733313 false) 
	#(190 2 #reduceActionForinterface_method_declaration1: 14226433 false) 
	#(194 1 #reduceActionFormodifier5: 14676993 false) 
	#(193 1 #liftFirstValue: 14599169 false) 
	#(192 2 #reduceActionForimport_declarations2: 14353410 false) 
	#(193 1 #liftFirstValue: 14599170 false) 
	#(292 0 #reduceActionForannotation_args1: 31607809 false) 
	#(298 3 #reduceActionForenum_declaration1: 32197633 false) 
	#(135 3 #reduceActionForsingle_type_import_declaration1: 5737473 false) 
	#(130 3 #reduceActionForcompilation_unit8: 5160968 false) 
	#(242 3 #reduceActionForprimary_no_new_array3: 21291011 false) 
	#(310 2 #reduceActionFortype_argument2: 33474562 false) 
	#(310 2 #reduceActionFortype_argument1: 33474561 false) 
	#(308 3 #reduceActionFortype_arguments_opt2: 33263618 false) 
	#(240 3 #reduceActionForassert_statement1: 20952065 false) 
	#(226 3 #reduceActionForbreak_statement2: 19270658 false) 
	#(227 3 #reduceActionForcontinue_statement2: 19379202 false) 
	#(223 1 #liftFirstValue: 18946050 false) 
	#(225 1 #reduceActionForstatement_expression_list1: 19067905 false) 
	#(223 1 #liftFirstValue: 18946049 false) 
	#(257 3 #reduceActionForarray_creation_expression1: 24374273 false) 
	#(258 1 #reduceActionForimport_declarations1: 24757249 false) 
	#(257 3 #reduceActionForarray_creation_expression1: 24374275 false) 
	#(228 3 #reduceActionForreturn_statement2: 19500034 false) 
	#(262 3 #reduceActionForfield_access2: 25055234 false) 
	#(254 3 #reduceActionFormethod_reference_expression3: 23223299 false) 
	#(229 3 #reduceActionForthrow_statement1: 19610625 false) 
	#(234 1 #liftFirstValue: 20343810 false) 
	#(233 1 #reduceActionFortype_arguments1: 20229121 false) 
	#(231 3 #reduceActionFortry_statement1: 19881985 false) 
	#(235 1 #reduceActionForimport_declarations1: 20495361 false) 
	#(231 3 #reduceActionFortry_statement3: 19881987 false) 
	#(231 3 #reduceActionFortry_statement7: 19881991 false) 
	#(205 3 #reduceActionForyield_statement2: 16436226 false) 
	#(198 3 #reduceActionForblock2: 15344642 false) 
	#(199 2 #reduceActionForimport_declarations2: 15420418 false) 
	#(207 3 #reduceActionForlabeled_statement1: 16601089 false) 
	#(242 3 #reduceActionForprimary_no_new_array10: 21291018 false) 
	#(242 3 #reduceActionForprimary_no_new_array10: 21291016 false) 
	#(261 2 #reduceActionForempty_dim_expr1: 24995841 false) 
	#(260 2 #reduceActionFordims2: 24944642 false) 
	#(242 3 #reduceActionForprimary_no_new_array11: 21291019 false) 
	#(129 3 #reduceActionForqualified_name1: 5052417 false) 
	#(242 3 #reduceActionForprimary_no_new_array10: 21291017 false) 
	#(262 3 #reduceActionForfield_access1: 25055233 false) 
	#(285 3 #reduceActionForassignment1: 31024129 false) 
	#(202 3 #reduceActionForlocal_variable_declaration1: 15793153 false) 
	#(249 3 #reduceActionForlambda_parameters2: 22763522 false) 
	#(163 3 #reduceActionForvariable_declarator_id2: 9436162 false) 
	#(253 1 #liftFirstValue: 23163905 false) 
	#(248 3 #reduceActionForlambda_expression1: 22664193 false) 
	#(253 1 #liftFirstValue: 23163906 false) 
	#(273 3 #reduceActionFormultiplicative_expression4: 27677700 false) 
	#(273 3 #reduceActionFormultiplicative_expression4: 27677698 false) 
	#(273 3 #reduceActionFormultiplicative_expression4: 27677699 false) 
	#(274 3 #reduceActionFormultiplicative_expression4: 28070914 false) 
	#(274 3 #reduceActionFormultiplicative_expression4: 28070915 false) 
	#(275 3 #reduceActionFormultiplicative_expression4: 28359682 false) 
	#(275 3 #reduceActionFormultiplicative_expression4: 28359683 false) 
	#(275 3 #reduceActionFormultiplicative_expression4: 28359684 false) 
	#(276 3 #reduceActionFormultiplicative_expression4: 28766210 false) 
	#(276 3 #reduceActionFormultiplicative_expression4: 28766212 false) 
	#(276 3 #reduceActionFormultiplicative_expression4: 28766213 false) 
	#(276 3 #reduceActionFormultiplicative_expression4: 28766214 false) 
	#(276 3 #reduceActionFormultiplicative_expression4: 28766211 false) 
	#(277 3 #reduceActionFormultiplicative_expression4: 29539331 false) 
	#(277 3 #reduceActionFormultiplicative_expression4: 29539330 false) 
	#(278 3 #reduceActionFormultiplicative_expression4: 29817858 false) 
	#(279 3 #reduceActionFormultiplicative_expression4: 29967362 false) 
	#(280 3 #reduceActionFormultiplicative_expression4: 30125058 false) 
	#(281 3 #reduceActionFormultiplicative_expression4: 30301186 false) 
	#(282 3 #reduceActionFormultiplicative_expression4: 30484482 false) 
	#(303 3 #reduceActionFortype_parameters_opt2: 32732162 false) 
	#(166 3 #reduceActionFormethod_header1: 9780225 false) 
	#(166 3 #reduceActionFormethod_header1: 9780229 false) 
	#(159 3 #reduceActionForfield_declaration1: 8893441 false) 
	#(175 3 #reduceActionForconstructor_declaration3: 11130883 false) 
	#(172 1 #reduceActionFortype_arguments1: 10807297 false) 
	#(171 2 #reduceActionForthrows1: 10741761 false) 
	#(177 2 #reduceActionForblock1: 11415556 false) 
	#(175 3 #reduceActionForconstructor_declaration2: 11130882 false) 
	#(180 4 #reduceActionForannotation_interface_declaration1: 12582913 false) 
	#(295 1 #liftFirstValue: 31887361 false) 
	#(295 1 #liftFirstValue: 31887362 false) 
	#(292 1 #reduceActionForannotation_args2: 31607810 false) 
	#(293 1 #reduceActionFortype_arguments1: 31677441 false) 
	#(292 1 #reduceActionFortype_arguments1: 31607811 false) 
	#(295 1 #liftFirstValue: 31887363 false) 
	#(147 4 #reduceActionForclass_declaration1: 7808001 false) 
	#(125 1 #liftFirstValue: 4786177 false) 
	#(154 1 #reduceActionFortype_arguments1: 8288257 false) 
	#(153 2 #reduceActionForinterfaces1: 8217601 false) 
	#(302 1 #reduceActionForenum_body_declarations1: 32660481 false) 
	#(299 2 #reduceActionForenum_body1: 32315393 false) 
	#(300 1 #reduceActionFortype_arguments1: 32419841 false) 
	#(298 4 #reduceActionForenum_declaration2: 32197634 false) 
	#(135 4 #reduceActionForsingle_type_import_declaration2: 5737474 false) 
	#(179 4 #reduceActionForinterface_declaration1: 12388353 false) 
	#(298 4 #reduceActionForenum_declaration3: 32197635 false) 
	#(133 4 #reduceActionForpackage_declaration1: 5521409 false) 
	#(311 2 #reduceActionForempty_dim_expr1: 33596417 false) 
	#(311 2 #reduceActionForempty_dim_expr1: 33596418 false) 
	#(309 3 #reduceActionFortype_arguments2: 33371138 false) 
	#(258 2 #reduceActionForimport_declarations2: 24757250 false) 
	#(257 4 #reduceActionForarray_creation_expression2: 24374274 false) 
	#(257 4 #reduceActionForarray_creation_expression5: 24374277 false) 
	#(257 4 #reduceActionForarray_creation_expression2: 24374276 false) 
	#(257 4 #reduceActionForarray_creation_expression5: 24374278 false) 
	#(255 4 #reduceActionForclass_instance_creation_expression1: 23622657 false) 
	#(256 1 #reduceActionFortype_arguments1: 24272897 false) 
	#(232 3 #reduceActionFortype_arguments_opt2: 20137985 false) 
	#(239 2 #reduceActionForfinally1: 20878337 false) 
	#(235 2 #reduceActionForimport_declarations2: 20495362 false) 
	#(231 4 #reduceActionFortry_statement4: 19881988 false) 
	#(231 4 #reduceActionFortry_statement2: 19881986 false) 
	#(231 4 #reduceActionFortry_statement5: 19881989 false) 
	#(254 4 #reduceActionFormethod_reference_expression2: 23223298 false) 
	#(264 4 #reduceActionForarray_access1: 25958401 false) 
	#(264 4 #reduceActionForarray_access1: 25958402 false) 
	#(263 4 #reduceActionFormethod_invocation1: 25335809 false) 
	#(314 4 #reduceActionForqualified_type_name1: 33824769 false) 
	#(254 4 #reduceActionFormethod_reference_expression2: 23223297 false) 
	#(272 4 #reduceActionForcast_expression1: 27207681 false) 
	#(272 4 #reduceActionForcast_expression1: 27207684 false) 
	#(272 4 #reduceActionForcast_expression1: 27207682 false) 
	#(250 3 #reduceActionFortype_arguments2: 22887426 false) 
	#(170 3 #reduceActionForformal_parameter1: 10514433 false) 
	#(276 4 #reduceActionForrelational_expression7: 28766215 false) 
	#(283 4 #reduceActionForconditional_expression3: 30671875 false) 
	#(306 1 #reduceActionFortype_arguments1: 33039361 false) 
	#(305 3 #reduceActionFortype_parameter2: 32936962 false) 
	#(304 3 #reduceActionFortype_arguments2: 32827394 false) 
	#(166 4 #reduceActionFormethod_header3: 9780227 false) 
	#(166 4 #reduceActionFormethod_header3: 9780231 false) 
	#(166 4 #reduceActionFormethod_header2: 9780226 false) 
	#(166 4 #reduceActionFormethod_header2: 9780230 false) 
	#(160 3 #reduceActionFortype_arguments2: 9001986 false) 
	#(162 3 #reduceActionForinitialized_variable_declarator1: 9277441 false) 
	#(164 1 #liftFirstValue: 9603074 false) 
	#(164 1 #liftFirstValue: 9603073 false) 
	#(159 4 #reduceActionForfield_declaration2: 8893442 false) 
	#(175 4 #reduceActionForconstructor_declaration4: 11130884 false) 
	#(177 3 #reduceActionForconstructor_body2: 11415554 false) 
	#(177 3 #reduceActionForblock2: 11415555 false) 
	#(176 4 #reduceActionForconstructor_declarator1: 11270145 false) 
	#(169 1 #reduceActionFortype_arguments1: 10385409 false) 
	#(191 4 #reduceActionForinterface_method_header1: 14324737 false) 
	#(191 4 #reduceActionForinterface_method_header1: 14324739 false) 
	#(181 2 #reduceActionForannotation_interface_body1: 12749825 false) 
	#(183 1 #liftFirstValue: 13063170 false) 
	#(183 1 #liftFirstValue: 13063171 false) 
	#(182 1 #reduceActionForimport_declarations1: 12859393 false) 
	#(183 1 #liftFirstValue: 13063169 false) 
	#(184 1 #liftFirstValue: 13182977 false) 
	#(296 2 #reduceActionForelementValueArrayInitializer1: 31977473 false) 
	#(297 1 #reduceActionFortype_arguments1: 32104449 false) 
	#(291 5 #reduceActionForannotation2: 31498242 false) 
	#(152 2 #reduceActionForempty_dim_expr1: 8154113 false) 
	#(151 0 #reduceActionForannotation_args1: 8111105 false) 
	#(148 2 #reduceActionForinterfaces1: 8006657 false) 
	#(155 2 #reduceActionForannotation_interface_body1: 8409089 false) 
	#(156 1 #reduceActionForimport_declarations1: 8486913 false) 
	#(147 5 #reduceActionForclass_declaration3: 7808003 false) 
	#(147 5 #reduceActionForclass_declaration5: 7808005 false) 
	#(147 5 #reduceActionForclass_declaration2: 7808002 false) 
	#(299 3 #reduceActionForenum_body3: 32315395 false) 
	#(302 2 #reduceActionForenum_body_declarations2: 32660482 false) 
	#(301 2 #reduceActionForenum_constant1: 32523265 false) 
	#(299 3 #reduceActionForenum_body5: 32315397 false) 
	#(299 3 #reduceActionForenum_body2: 32315394 false) 
	#(136 5 #reduceActionFortype_import_on_demand_declaration1: 5885953 false) 
	#(185 2 #reduceActionForextends_interfaces1: 13481985 false) 
	#(186 2 #reduceActionForannotation_interface_body1: 13634561 false) 
	#(187 1 #reduceActionForimport_declarations1: 13722625 false) 
	#(179 5 #reduceActionForinterface_declaration2: 12388354 false) 
	#(180 5 #reduceActionForannotation_interface_declaration2: 12582914 false) 
	#(147 5 #reduceActionForclass_declaration9: 7808009 false) 
	#(298 5 #reduceActionForenum_declaration4: 32197636 false) 
	#(179 5 #reduceActionForinterface_declaration3: 12388355 false) 
	#(240 5 #reduceActionForassert_statement2: 20952066 false) 
	#(224 1 #liftFirstValue: 19021825 false) 
	#(225 3 #reduceActionForstatement_expression_list2: 19067906 false) 
	#(210 5 #reduceActionForif_then_statement1: 17034241 false) 
	#(259 3 #reduceActionFordim_expr1: 24841217 false) 
	#(196 2 #reduceActionForarray_initializer4: 14846980 false) 
	#(197 1 #reduceActionFortype_arguments1: 15172609 false) 
	#(255 5 #reduceActionForclass_instance_creation_expression3: 23622659 false) 
	#(255 5 #reduceActionForclass_instance_creation_expression2: 23622658 false) 
	#(212 5 #reduceActionForswitch_statement1: 17378305 false) 
	#(243 5 #reduceActionForswitch_expression1: 21856257 false) 
	#(230 5 #reduceActionForsynchronized_statement1: 19716097 false) 
	#(232 4 #reduceActionFortry_resources2: 20137986 false) 
	#(233 3 #reduceActionFortype_arguments2: 20229122 false) 
	#(234 3 #reduceActionFortry_resource1: 20343809 false) 
	#(231 5 #reduceActionFortry_statement6: 19881990 false) 
	#(220 5 #reduceActionForwhile_statement1: 18403329 false) 
	#(262 5 #reduceActionForfield_access3: 25055235 false) 
	#(263 5 #reduceActionFormethod_invocation2: 25335810 false) 
	#(307 0 #reduceActionFortype_arguments_opt1: 33105921 false) 
	#(170 4 #reduceActionForformal_parameter2: 10514434 false) 
	#(283 5 #reduceActionForconditional_expression4: 30671876 false) 
	#(283 5 #reduceActionForconditional_expression4: 30671874 false) 
	#(166 5 #reduceActionFormethod_header4: 9780228 false) 
	#(166 5 #reduceActionFormethod_header4: 9780232 false) 
	#(168 3 #reduceActionFormethod_declarator1: 10082305 false) 
	#(168 3 #reduceActionFormethod_declarator3: 10082307 false) 
	#(172 3 #reduceActionFortype_arguments2: 10807298 false) 
	#(177 4 #reduceActionForconstructor_body1: 11415553 false) 
	#(176 5 #reduceActionForconstructor_declarator2: 11270146 false) 
	#(191 5 #reduceActionForinterface_method_header2: 14324738 false) 
	#(191 5 #reduceActionForinterface_method_header2: 14324740 false) 
	#(181 3 #reduceActionForannotation_interface_body2: 12749826 false) 
	#(182 2 #reduceActionForimport_declarations2: 12859394 false) 
	#(296 3 #reduceActionForelementValueArrayInitializer2: 31977474 false) 
	#(296 3 #reduceActionForelementValueArrayInitializer3: 31977475 false) 
	#(294 3 #reduceActionForelementValuePair1: 31787009 false) 
	#(293 3 #reduceActionFortype_arguments2: 31677442 false) 
	#(149 2 #reduceActionForpermits_type_list1: 8065025 false) 
	#(155 3 #reduceActionForannotation_interface_body2: 8409090 false) 
	#(156 2 #reduceActionForimport_declarations2: 8486914 false) 
	#(147 6 #reduceActionForclass_declaration4: 7808004 false) 
	#(147 6 #reduceActionForclass_declaration7: 7808007 false) 
	#(147 6 #reduceActionForclass_declaration6: 7808006 false) 
	#(154 3 #reduceActionFortype_arguments2: 8288258 false) 
	#(299 4 #reduceActionForenum_body4: 32315396 false) 
	#(301 3 #reduceActionForenum_constant2: 32523266 false) 
	#(299 4 #reduceActionForenum_body7: 32315399 false) 
	#(300 3 #reduceActionFortype_arguments2: 32419842 false) 
	#(299 4 #reduceActionForenum_body6: 32315398 false) 
	#(136 6 #reduceActionFortype_import_on_demand_declaration2: 5885954 false) 
	#(186 3 #reduceActionForannotation_interface_body2: 13634562 false) 
	#(187 2 #reduceActionForimport_declarations2: 13722626 false) 
	#(185 3 #reduceActionForextends_interfaces2: 13481986 false) 
	#(141 0 #reduceActionForannotations1: 6564865 false) 
	#(138 6 #reduceActionForrecord_declaration1: 6235137 false) 
	#(147 6 #reduceActionForclass_declaration11: 7808011 false) 
	#(147 6 #reduceActionForclass_declaration13: 7808013 false) 
	#(147 6 #reduceActionForclass_declaration10: 7808010 false) 
	#(179 6 #reduceActionForinterface_declaration4: 12388356 false) 
	#(222 6 #reduceActionForfor_statement1: 18724865 false) 
	#(196 3 #reduceActionForarray_initializer3: 14846979 false) 
	#(196 3 #reduceActionForarray_initializer2: 14846978 false) 
	#(255 6 #reduceActionForclass_instance_creation_expression4: 23622660 false) 
	#(256 3 #reduceActionFortype_arguments2: 24272898 false) 
	#(263 6 #reduceActionFormethod_invocation5: 25335813 false) 
	#(213 2 #reduceActionForswitch_block4: 17526788 false) 
	#(214 1 #reduceActionForimport_declarations1: 17847297 false) 
	#(216 1 #reduceActionForimport_declarations1: 18114561 false) 
	#(245 1 #reduceActionForimport_declarations1: 22105089 false) 
	#(238 1 #reduceActionFortype_arguments1: 20809729 false) 
	#(254 6 #reduceActionFormethod_reference_expression4: 23223300 false) 
	#(263 6 #reduceActionFormethod_invocation3: 25335811 false) 
	#(272 6 #reduceActionForcast_expression5: 27207685 false) 
	#(272 6 #reduceActionForcast_expression5: 27207683 false) 
	#(306 3 #reduceActionFortype_arguments2: 33039362 false) 
	#(168 4 #reduceActionFormethod_declarator2: 10082306 false) 
	#(178 4 #reduceActionForexplicit_constructor_invocation3: 11753475 false) 
	#(178 4 #reduceActionForexplicit_constructor_invocation1: 11753473 false) 
	#(169 3 #reduceActionFortype_arguments2: 10385410 false) 
	#(296 4 #reduceActionForelementValueArrayInitializer4: 31977476 false) 
	#(297 3 #reduceActionFortype_arguments2: 32104450 false) 
	#(151 2 #reduceActionFordims2: 8111106 false) 
	#(147 7 #reduceActionForclass_declaration8: 7808008 false) 
	#(301 4 #reduceActionForenum_constant3: 32523267 false) 
	#(299 5 #reduceActionForenum_body8: 32315400 false) 
	#(140 1 #reduceActionForannotation_args2: 6536193 false) 
	#(138 7 #reduceActionForrecord_declaration2: 6235138 false) 
	#(138 7 #reduceActionForrecord_declaration3: 6235139 false) 
	#(147 7 #reduceActionForclass_declaration12: 7808012 false) 
	#(147 7 #reduceActionForclass_declaration15: 7808015 false) 
	#(147 7 #reduceActionForclass_declaration14: 7808014 false) 
	#(138 7 #reduceActionForrecord_declaration5: 6235141 false) 
	#(221 7 #reduceActionFordo_statement1: 18548737 false) 
	#(222 7 #reduceActionForfor_statement2: 18724866 false) 
	#(222 7 #reduceActionForfor_statement3: 18724867 false) 
	#(222 7 #reduceActionForfor_statement5: 18724869 false) 
	#(211 7 #reduceActionForif_then_else_statement1: 17176577 false) 
	#(196 4 #reduceActionForarray_initializer1: 14846977 false) 
	#(197 3 #reduceActionFortype_arguments2: 15172610 false) 
	#(263 7 #reduceActionFormethod_invocation6: 25335814 false) 
	#(289 1 #liftFirstValue: 31394817 false) 
	#(219 0 #reduceActionForannotation_args1: 18266113 false) 
	#(247 2 #reduceActionForswitch_expression_labels2: 22468610 false) 
	#(217 2 #reduceActionForswitch_label2: 18197506 false) 
	#(213 3 #reduceActionForswitch_block2: 17526786 false) 
	#(214 2 #reduceActionForimport_declarations2: 17847298 false) 
	#(213 3 #reduceActionForswitch_block3: 17526787 false) 
	#(215 2 #reduceActionForswitch_block_statement_group1: 18015233 false) 
	#(216 2 #reduceActionForimport_declarations2: 18114562 false) 
	#(244 3 #reduceActionForswitch_expression_block1: 22008833 false) 
	#(245 2 #reduceActionForimport_declarations2: 22105090 false) 
	#(246 2 #reduceActionForswitch_block_expression_group2: 22276098 false) 
	#(246 2 #reduceActionForswitch_block_expression_group2: 22276100 false) 
	#(236 5 #reduceActionForcatch_clause1: 20564993 false) 
	#(237 3 #reduceActionForcatch_parameter1: 20700161 false) 
	#(307 2 #reduceActionFortype_arguments_opt3: 33105923 false) 
	#(263 7 #reduceActionFormethod_invocation4: 25335812 false) 
	#(178 5 #reduceActionForexplicit_constructor_invocation4: 11753476 false) 
	#(178 5 #reduceActionForexplicit_constructor_invocation2: 11753474 false) 
	#(184 4 #reduceActionForannotation_method_declaration2: 13182978 false) 
	#(184 4 #reduceActionForannotation_method_declaration2: 13182979 false) 
	#(150 2 #reduceActionForempty_dim_expr1: 8111105 false) 
	#(301 5 #reduceActionForenum_constant4: 32523268 false) 
	#(301 5 #reduceActionForenum_constant5: 32523269 false) 
	#(139 3 #reduceActionForswitch_expression_block1: 6458369 false) 
	#(141 2 #reduceActionForimport_declarations2: 6564866 false) 
	#(142 1 #liftFirstValue: 6607875 false) 
	#(142 1 #liftFirstValue: 6607873 false) 
	#(142 1 #liftFirstValue: 6607874 false) 
	#(138 8 #reduceActionForrecord_declaration4: 6235140 false) 
	#(147 8 #reduceActionForclass_declaration16: 7808016 false) 
	#(138 8 #reduceActionForrecord_declaration6: 6235142 false) 
	#(138 8 #reduceActionForrecord_declaration7: 6235143 false) 
	#(222 8 #reduceActionForfor_statement4: 18724868 false) 
	#(222 8 #reduceActionForfor_statement6: 18724870 false) 
	#(222 8 #reduceActionForfor_statement7: 18724871 false) 
	#(213 4 #reduceActionForswitch_block1: 17526785 false) 
	#(246 3 #reduceActionForswitch_block_expression_group3: 22276099 false) 
	#(246 3 #reduceActionForswitch_block_expression_group3: 22276097 false) 
	#(238 3 #reduceActionFortype_arguments2: 20809730 false) 
	#(263 8 #reduceActionFormethod_invocation7: 25335815 false) 
	#(307 3 #reduceActionFortype_arguments_opt2: 33105922 false) 
	#(255 8 #reduceActionForclass_instance_creation_expression5: 23622661 false) 
	#(178 6 #reduceActionForexplicit_constructor_invocation7: 11753479 false) 
	#(178 6 #reduceActionForexplicit_constructor_invocation5: 11753477 false) 
	#(301 6 #reduceActionForenum_constant6: 32523270 false) 
	#(143 2 #reduceActionForconstructor_declaration1: 6724609 false) 
	#(144 2 #reduceActionForrecord_constructor_declarator1: 6877185 false) 
	#(138 9 #reduceActionForrecord_declaration8: 6235144 false) 
	#(222 9 #reduceActionForfor_statement8: 18724872 false) 
	#(315 9 #reduceActionForforeach_statement1: 33947649 false) 
	#(247 4 #reduceActionForswitch_expression_labels1: 22468609 false) 
	#(217 4 #reduceActionForswitch_label1: 18197505 false) 
	#(219 2 #reduceActionFordims2: 18266114 false) 
	#(263 9 #reduceActionFormethod_invocation8: 25335816 false) 
	#(255 9 #reduceActionForclass_instance_creation_expression7: 23622663 false) 
	#(255 9 #reduceActionForclass_instance_creation_expression6: 23622662 false) 
	#(178 7 #reduceActionForexplicit_constructor_invocation8: 11753480 false) 
	#(178 7 #reduceActionForexplicit_constructor_invocation6: 11753478 false) 
	#(143 3 #reduceActionForconstructor_declaration2: 6724610 false) 
	#(143 3 #reduceActionForconstructor_declaration3: 6724611 false) 
	#(218 2 #reduceActionForempty_dim_expr1: 18266113 false) 
	#(255 10 #reduceActionForclass_instance_creation_expression8: 23622664 false) 
	#(143 4 #reduceActionForconstructor_declaration4: 6724612 false) 
	#(144 4 #reduceActionForconstructor_declarator1: 6877186 false) 
	#(144 5 #reduceActionForconstructor_declarator2: 6877187 false)
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
	^ #('"!"' '"!="' '"%"' '"%="' '"&"' '"&&"' '"&="' '"("' '")"' '"*"' '"*="' '"+"' '"++"' '"+="' '","' '"-"' '"--"' '"-="' '"->"' '"."' '"..."' '"/"' '"/="' '":"' '"::"' '";"' '"<"' '"<<"' '"<<="' '"<="' '"="' '"=="' '">="' '">>="' '">>>="' '"?"' '"@"' '"["' '"]"' '"^"' '"^="' '"abstract"' '"assert"' '"boolean"' '"break"' '"byte"' '"case"' '"catch"' '"char"' '"class"' '"continue"' '"default"' '"do"' '"double"' '"else"' '"enum"' '"extends"' '"final"' '"finally"' '"float"' '"for"' '"if"' '"implements"' '"import"' '"instanceof"' '"int"' '"interface"' '"long"' '"native"' '"new"' '"non-sealed"' '"package"' '"permits"' '"private"' '"protected"' '"public"' '"record"' '"return"' '"sealed"' '"short"' '"static"' '"strictfp"' '"super"' '"switch"' '"synchronized"' '"this"' '"throw"' '"throws"' '"transient"' '"try"' '"void"' '"volatile"' '"while"' '"yield"' '"{"' '"|"' '"|="' '"||"' '"}"' '"~"' '<GREATER_THAN>' '<SIGNED_RIGHT_SHIFT>' '<UNSIGNED_RIGHT_SHIFT>' '<INTEGER_LITERAL>' '<FLOATING_POINT_LITERAL>' '<BOOLEAN_LITERAL>' '<CHARACTER_LITERAL>' '<STRING_LITERAL>' '<NULL_LITERAL>' '<IDENTIFIER>' '<whitespace>' '<comment>' '<patternToken>' 'B e g i n' 'goal' 'literal' 'type' 'primitive_type' 'numeric_type' 'integral_type' 'floating_point_type' 'reference_type' 'class_or_interface_type' 'class_type' 'interface_type' 'array_type' 'name' 'simple_name' 'qualified_name' 'compilation_unit' 'import_declarations' 'type_declarations' 'package_declaration' 'import_declaration' 'single_type_import_declaration' 'type_import_on_demand_declaration' 'type_declaration' 'record_declaration' 'record_body' 'record_body_declarations' 'record_body_declaration ''declaration''*' 'record_body_declaration' 'record_constructor_declaration' 'record_constructor_declarator' 'modifiers' 'modifier' 'class_declaration' 'permits' 'permits_type_list' '("," ''comma'' interface_type ''permit'')' '("," ''comma'' interface_type ''permit'')*' 'super' 'interfaces' 'interface_type_list' 'class_body' 'class_body_declarations' 'class_body_declaration' 'class_member_declaration' 'field_declaration' 'variable_declarators' 'variable_declarator' 'initialized_variable_declarator' 'variable_declarator_id' 'variable_initializer' 'method_declaration' 'method_header' 'void' 'method_declarator' 'formal_parameter_list' 'formal_parameter' 'throws' 'class_type_list' 'method_body' 'static_initializer' 'constructor_declaration' 'constructor_declarator' 'constructor_body' 'explicit_constructor_invocation' 'interface_declaration' 'annotation_interface_declaration' 'annotation_interface_body' 'annotation_interface_member_declarations' 'annotation_interface_member_declaration' 'annotation_method_declaration' 'extends_interfaces' 'interface_body' 'interface_member_declarations' 'interface_member_declaration' 'constant_declaration' 'interface_method_declaration' 'interface_method_header' 'interface_modifier*' 'interface_modifier' 'default_modifier' 'abstract_method_declaration' 'array_initializer' 'variable_initializers' 'block' 'block_statements' 'block_statement' 'local_variable_declaration_statement' 'local_variable_declaration' 'statement' 'statement_without_trailing_substatement' 'yield_statement' 'empty_statement' 'labeled_statement' 'expression_statement' 'statement_expression' 'if_then_statement' 'if_then_else_statement' 'switch_statement' 'switch_block' 'switch_block_statement_groups' 'switch_block_statement_group' 'switch_labels' 'switch_label' '("," ''comma'' constant_expression ''constant'')' '("," ''comma'' constant_expression ''constant'')*' 'while_statement' 'do_statement' 'for_statement' 'for_init' 'for_update' 'statement_expression_list' 'break_statement' 'continue_statement' 'return_statement' 'throw_statement' 'synchronized_statement' 'try_statement' 'try_resources' 'try_resources_list' 'try_resource' 'catches' 'catch_clause' 'catch_parameter' 'catch_types' 'finally' 'assert_statement' 'primary' 'primary_no_new_array' 'switch_expression' 'switch_expression_block' 'switch_block_expression_groups' 'switch_block_expression_group' 'switch_expression_labels' 'lambda_expression' 'lambda_parameters' 'lambda_parameter_list' 'lambda_parameter' 'untyped_lambda_parameter' 'lambda_function' 'method_reference_expression' 'class_instance_creation_expression' 'argument_list' 'array_creation_expression' 'dim_exprs' 'dim_expr' 'dims' 'empty_dim_expr' 'field_access' 'method_invocation' 'array_access' 'postfix_expression' 'postincrement_expression' 'postdecrement_expression' 'unary_expression' 'preincrement_expression' 'predecrement_expression' 'unary_expression_not_plus_minus' 'cast_expression' 'multiplicative_expression' 'additive_expression' 'shift_expression' 'relational_expression' 'equality_expression' 'and_expression' 'exclusive_or_expression' 'inclusive_or_expression' 'conditional_and_expression' 'conditional_or_expression' 'conditional_expression' 'assignment_expression' 'assignment' 'left_hand_side' 'assignment_operator' 'expression' 'constant_expression' 'annotations' 'annotation' 'annotation_args' 'elementValuePairs' 'elementValuePair' 'elementValue' 'elementValueArrayInitializer' 'elementValues' 'enum_declaration' 'enum_body' 'enum_constants' 'enum_constant' 'enum_body_declarations' 'type_parameters_opt' 'type_parameters' 'type_parameter' 'type_bound' 'type_arguments_or_diamond_opt' 'type_arguments_opt' 'type_arguments' 'type_argument' 'type_argument_type' 'type_name' 'simple_type_name' 'qualified_type_name' 'foreach_statement' 'variable_modifiers' 'variable_modifier' 'primary_or_name' 'class_or_interface_body_declaration' 'E O F' 'error')
]

{ #category : #generated }
JavaParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #JavaProgramFileNode #JavaProgramFileNode #JavaLiteralNode #JavaTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaPrimitiveTypeNode #JavaTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaClassTypeNode #JavaArrayTypeNode #JavaNameNode #JavaNameNode #JavaQualifiedNameNode #JavaProgramFileNode #OrderedCollection #OrderedCollection #JavaPackageDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaSingleTypeImportDeclarationNode #JavaTypeImportOnDemandDeclarationNode #JavaProgramNode #JavaRecordDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaConstructorDeclarationNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaProgramNode #JavaFieldDeclarationNode #OrderedCollection #JavaVariableDeclarationNode #JavaInitializedVariableDeclarationNode #JavaProgramNode #JavaProgramNode #JavaMethodDeclarationNode #OrderedCollection #JavaVoidTypeNode #JavaProgramNode #OrderedCollection #JavaParameterNode #JavaThrowsNode #OrderedCollection #JavaProgramNode #JavaStaticInitializerNode #JavaConstructorDeclarationNode #OrderedCollection #JavaBlockNode #JavaStatementNode #JavaInterfaceDeclarationNode #JavaAnnotationInterfaceNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaAbstractMethodDeclarationNode #OrderedCollection #OrderedCollection #OrderedCollection #JavaProgramNode #JavaFieldDeclarationNode #JavaMethodDeclarationNode #OrderedCollection #OrderedCollection #JavaProgramNode #JavaModifierNode #JavaAbstractMethodDeclarationNode #JavaArrayInitializerNode #OrderedCollection #JavaBlockNode #OrderedCollection #JavaProgramNode #JavaLocalVariableDeclarationStatementNode #JavaLocalVariableDeclarationNode #JavaProgramNode #JavaStatementNode #JavaYieldStatementNode #JavaEmptyStatementNode #JavaLabeledStatementNode #JavaExpressionStatementNode #JavaExpressionNode #JavaIfStatementNode #JavaIfElseStatementNode #JavaSwitchStatementNode #JavaSwitchBlockNode #OrderedCollection #JavaSwitchBlockStatementGroupNode #OrderedCollection #JavaProgramNode #OrderedCollection #OrderedCollection #JavaWhileStatementNode #JavaDoWhileStatementNode #JavaForStatementNode #JavaProgramNode #JavaStatementExpressionListNode #JavaStatementExpressionListNode #JavaBreakStatementNode #JavaContinueStatementNode #JavaReturnStatementNode #JavaThrowStatementNode #JavaSynchronizedStatementNode #JavaTryStatementNode #OrderedCollection #OrderedCollection #JavaProgramNode #OrderedCollection #JavaCatchClauseNode #JavaCatchParameterNode #OrderedCollection #JavaFinallyClauseNode #JavaAssertStatementNode #JavaExpressionNode #JavaExpressionNode #JavaSwitchExpressionNode #OrderedCollection #OrderedCollection #JavaSwitchBlockExpressionGroupNode #OrderedCollection #JavaLambdaExpressionNode #OrderedCollection #OrderedCollection #JavaParameterNode #JavaParameterNode #JavaProgramNode #JavaMethodReferenceNode #JavaNewNode #OrderedCollection #JavaNewArrayNode #OrderedCollection #JavaDimensionExpressionNode #OrderedCollection #OrderedCollection #JavaFieldAccessNode #JavaMethodInvocationNode #JavaArrayAccessNode #JavaExpressionNode #JavaPostIncrementExpressionNode #JavaPostDecrementExpressionNode #JavaExpressionNode #JavaPreIncrementExpressionNode #JavaPreDecrementExpressionNode #JavaExpressionNode #JavaCastExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaExpressionNode #JavaAssignmentNode #JavaExpressionNode #SmaCCToken #JavaExpressionNode #JavaExpressionNode #OrderedCollection #JavaAnnotationNode #OrderedCollection #OrderedCollection #JavaElementValuePairNode #JavaProgramNode #JavaElementArrayInitializerNode #OrderedCollection #JavaEnumDeclarationNode #OrderedCollection #OrderedCollection #JavaEnumConstantNode #OrderedCollection #JavaTypeParametersNode #OrderedCollection #JavaTypeParameterNode #OrderedCollection #OrderedCollection #OrderedCollection #OrderedCollection #JavaTypeArgumentNode #OrderedCollection #JavaTypeNameNode #JavaTypeNameNode #JavaQualifiedTypeNameNode #JavaForEachStatementNode #OrderedCollection #JavaProgramNode #JavaExpressionNode #JavaProgramNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
JavaParser class >> transitionTable [
^#(
#[1 0 33 0 26 0 7 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 71 0 6 0 72 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 0 113 0 115 0 113 0 130 0 121 0 131 0 125 0 132 0 129 0 133 0 133 0 134 0 133 0 135 0 133 0 136 0 145 0 137 0 145 0 138 0 153 0 145 0 157 0 146 0 145 0 147 0 145 0 179 0 145 0 180 0 173 1 34 0 157 1 35 0 145 1 42 0 10 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 229 0 51 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 1 153 0 147 1 141 0 167 1 153 0 179 1 153 0 198 1 153 0 200 1 153 0 201 1 161 0 202 1 153 0 203 1 153 0 204 1 153 0 205 1 153 0 206 1 153 0 207 1 153 0 208 1 189 0 209 1 153 0 210 1 153 0 211 1 153 0 212 1 153 0 220 1 153 0 221 1 153 0 222 1 153 0 226 1 153 0 227 1 153 0 228 1 153 0 229 1 153 0 230 1 153 0 231 1 153 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 1 153 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 1 153 1 59 2 73 1 60 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 2 221 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 2 221 1 27 2 221 1 28 2 217 1 29 2 49 1 30 2 221 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 2 225 0 137 2 225 0 138 0 153 0 145 0 157 0 146 2 225 0 147 2 225 0 179 2 225 0 180 0 157 1 35 2 225 1 42] 
#[1 2 229 0 27 0 205 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 89 0 79 0 22 0 80 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 0 22 0 110 2 233 0 145 0 157 0 146 2 237 0 165 2 241 0 166 0 157 1 35 2 245 1 47] 
#[1 0 33 0 26 2 229 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 87 0 80 2 249 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 1 53 0 95 0 91 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 3 21 0 137 3 21 0 138 3 17 0 145 0 157 0 146 3 21 0 147 3 21 0 157 3 21 0 158 3 21 0 159 3 21 0 165 2 241 0 166 3 21 0 174 3 21 0 175 3 45 0 176 3 21 0 179 3 21 0 180 3 49 0 198 0 157 1 35 3 21 1 42 3 53 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 71 0 147 0 74 0 151 0 75 0 155 0 76 0 85 0 77 0 159 0 79 0 163 0 80 0 167 0 81 0 171 0 82 0 175 0 85 0 179 0 89 0 183 0 91 0 187 0 92 1 53 0 95 0 191 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 3 57 0 137 3 57 0 138 3 17 0 145 0 157 0 146 3 57 0 147 3 97 0 157 3 97 0 158 3 65 0 159 3 97 0 165 3 69 0 166 3 97 0 174 3 97 0 175 3 45 0 176 3 57 0 179 3 57 0 180 3 97 0 188 3 97 0 189 3 97 0 190 3 85 0 191 3 89 0 192 3 97 0 195 3 49 0 198 0 157 1 35 3 57 1 42 3 53 1 47 2 57 1 56 2 57 1 57 2 57 1 58 3 97 1 63] 
#[0 0 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 3 101 0 67 3 105 0 110 3 109 0 127 3 109 0 128 3 109 0 129] 
#[0 0 34 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 3 113 0 110] 
#[0 3 117 0 110] 
#[0 0 38 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[1 3 121 0 81 3 105 0 110 3 125 0 127 3 125 0 128 3 125 0 129] 
#[0 3 129 0 110] 
#[0 0 42 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 46 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 50 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 54 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 58 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 3 133 0 110] 
#[0 0 62 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 66 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 70 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 74 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 78 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 82 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 0 1 64] 
#[0 0 86 1 64] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 3 137 0 132 3 141 0 134 3 141 0 135 3 141 0 136 0 145 0 137 0 145 0 138 0 153 0 145 0 157 0 146 0 145 0 147 0 145 0 179 0 145 0 180 0 157 1 35 0 145 1 42 0 90 1 64] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 3 145 0 137 3 145 0 138 0 153 0 145 0 157 0 146 3 145 0 147 3 145 0 179 3 145 0 180 0 157 1 35 3 145 1 42 0 94 1 64] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 3 149 0 131 3 153 0 132 0 133 0 134 0 133 0 135 0 133 0 136 0 145 0 137 0 145 0 138 0 153 0 145 0 157 0 146 0 145 0 147 0 145 0 179 0 145 0 180 0 157 1 35 0 145 1 42 0 98 1 64] 
#[0 0 102 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 0 106 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 0 110 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 0 114 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 0 118 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 3 157 0 37 0 41 0 42 3 161 0 50 3 165 0 56 0 53 0 58 3 169 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 3 173 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 3 177 0 146 3 177 1 35] 
#[0 0 122 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 126 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 0 130 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 0 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 0 205 0 37 3 181 0 72 3 185 1 35] 
#[0 0 138 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 0 142 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 3 189 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 3 189 1 27 3 189 1 28 2 217 1 29 2 49 1 30 3 189 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 3 201 1 12 3 201 1 13 3 201 1 14 3 201 1 15 3 201 1 16 3 201 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 3 209 1 12 3 209 1 13 3 209 1 14 3 209 1 15 3 209 1 16 3 209 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 0 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 3 213 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 80 3 217 0 101 0 6 0 110 3 221 1 34 3 225 1 53 3 229 1 54] 
#[1 3 105 0 110 3 109 0 127 3 109 0 128 3 109 0 129] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 3 233 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 3 233 1 27 3 233 1 28 2 217 1 29 2 49 1 30 3 233 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 0 150 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[1 3 237 0 26 3 241 0 110] 
#[0 0 154 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[0 0 158 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[1 3 245 0 26 3 249 0 110] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 4 1 0 198 4 1 0 203 4 1 0 204 4 1 0 205 4 1 0 206 4 1 0 207 4 1 0 208 1 189 0 209 4 1 0 210 4 1 0 211 4 1 0 212 4 1 0 220 4 1 0 221 4 1 0 222 4 1 0 226 4 1 0 227 4 1 0 228 4 1 0 229 4 1 0 230 4 1 0 231 4 1 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 4 1 1 59 2 77 1 62] 
#[0 0 162 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[0 0 166 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[0 4 5 0 8] 
#[0 4 9 0 8] 
#[0 0 170 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[0 0 174 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 4 13 0 118 4 13 0 119 4 13 0 120 4 13 0 121 4 17 0 123 4 21 0 124 4 25 1 56 4 25 1 57 4 25 1 58] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 4 29 0 26 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 4 33 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 4 33 1 27 4 33 1 28 2 217 1 29 2 49 1 30 4 33 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 0 178 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[1 4 37 0 20 4 41 0 25] 
#[0 4 45 0 8] 
#[1 4 49 0 8 0 74 0 37 0 74 0 42 0 74 0 50 0 74 0 56 0 74 0 58 0 74 0 67 0 74 0 69 0 74 0 71 0 74 0 74 0 74 0 75 0 74 0 76 0 74 0 79 0 74 0 81 0 74 0 82 0 74 0 85 0 74 0 89 0 74 0 92] 
#[0 0 182 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 4 53 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 4 53 1 27 4 53 1 28 2 217 1 29 2 49 1 30 4 53 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 4 57 0 8 1 53 0 95 4 61 0 198 4 65 0 232] 
#[0 0 186 0 20 0 110] 
#[0 4 69 0 8] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 4 73 0 26 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 4 77 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 4 77 1 27 4 77 1 28 2 217 1 29 2 49 1 30 4 77 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 229 0 51 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 4 81 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 4 89 0 147 1 141 0 167 4 89 0 179 4 89 0 198 4 85 0 199 4 89 0 200 4 89 0 201 1 161 0 202 4 89 0 203 4 89 0 204 4 89 0 205 4 89 0 206 4 89 0 207 4 89 0 208 1 189 0 209 4 89 0 210 4 89 0 211 4 89 0 212 4 89 0 220 4 89 0 221 4 89 0 222 4 89 0 226 4 89 0 227 4 89 0 228 4 89 0 229 4 89 0 230 4 89 0 231 4 89 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 4 89 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 4 89 1 59 2 73 1 60 2 77 1 62] 
#[0 0 190 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 0 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 0 198 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 0 202 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 0 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 0 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 0 214 0 4 0 214 0 7 0 214 0 11 0 214 0 13 0 214 0 14 0 214 0 17 0 214 0 18 0 203 0 20 0 214 0 23 4 93 0 24 0 203 0 25 0 207 0 27 0 214 0 29 0 214 0 31 0 214 0 34 0 214 0 35 0 203 0 38 0 214 0 41 0 214 0 97 4 97 1 52] 
#[0 0 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 101 0 20] 
#[1 0 211 0 20 4 109 0 38 4 113 1 4 4 117 1 5] 
#[0 0 226 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[0 0 230 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[0 0 234 0 5 0 9 0 15 0 20 0 21 0 38 0 96 0 101 0 110] 
#[1 0 238 0 20 0 18 0 25 0 201 0 27 4 121 1 52] 
#[0 0 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 0 246 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[1 0 250 0 2 0 250 0 3 0 254 0 4 0 250 0 5 0 250 0 6 0 254 0 7 0 250 0 9 0 250 0 10 0 254 0 11 0 250 0 12 0 250 0 13 0 254 0 14 0 250 0 15 0 250 0 16 0 250 0 17 0 254 0 18 0 250 0 19 0 215 0 20 0 250 0 22 0 254 0 23 0 250 0 24 1 2 0 25 0 250 0 26 0 219 0 27 0 250 0 28 0 254 0 29 0 250 0 30 0 254 0 31 0 250 0 32 0 250 0 33 0 254 0 34 0 254 0 35 0 250 0 36 4 129 0 38 0 250 0 39 0 250 0 40 0 254 0 41 0 250 0 65 0 250 0 96 0 254 0 97 0 250 0 98 0 250 0 99 0 250 0 101 0 250 0 102 0 250 0 103 4 133 1 52 0 250 1 64] 
#[0 1 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 96 0 97 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 1 10 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 96 0 97 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[1 0 205 0 37 0 41 0 42 3 161 0 50 3 165 0 56 0 53 0 58 3 169 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 3 177 0 146 3 177 1 35] 
#[0 1 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 4 137 0 20] 
#[0 1 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 0 0 1 64] 
#[0 1 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 4 141 0 26] 
#[0 1 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 46 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 4 145 0 26] 
#[0 1 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 62 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 70 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 74 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 82 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 90 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 94 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 98 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 1 102 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 1 106 0 2 1 106 0 3 1 106 0 5 1 106 0 6 1 106 0 9 1 106 0 10 1 106 0 12 1 106 0 13 1 106 0 15 1 106 0 16 1 106 0 17 1 106 0 19 0 223 0 20 1 106 0 22 1 106 0 24 1 110 0 25 1 106 0 26 0 227 0 27 1 106 0 28 1 106 0 30 1 106 0 32 1 106 0 33 1 106 0 36 1 106 0 39 1 106 0 40 1 106 0 65 1 106 0 96 1 106 0 98 1 106 0 99 1 106 0 101 1 106 0 102 1 106 0 103 1 106 1 64] 
#[1 1 114 0 2 1 114 0 3 1 114 0 5 1 114 0 6 1 114 0 9 1 114 0 10 1 114 0 12 1 114 0 13 1 114 0 15 1 114 0 16 1 114 0 17 1 114 0 19 1 114 0 20 1 114 0 22 1 114 0 24 1 114 0 25 1 114 0 26 1 114 0 27 1 114 0 28 1 114 0 30 1 114 0 32 1 114 0 33 1 114 0 36 4 153 0 38 1 114 0 39 1 114 0 40 1 114 0 65 1 114 0 96 1 114 0 98 1 114 0 99 1 114 0 101 1 114 0 102 1 114 0 103 1 114 1 64] 
#[1 1 118 0 8 0 231 0 13 0 231 0 17 1 122 0 20 1 122 0 25 1 118 0 26 0 231 0 27 1 118 0 37 1 122 0 38 1 118 0 42 1 118 0 43 1 118 0 44 1 118 0 45 1 118 0 46 1 118 0 47 1 118 0 49 1 118 0 50 1 118 0 51 1 118 0 52 1 118 0 53 1 118 0 54 1 118 0 55 1 118 0 56 1 118 0 58 1 118 0 60 1 118 0 61 1 118 0 62 1 118 0 66 1 118 0 67 1 118 0 68 1 118 0 69 1 118 0 70 1 118 0 71 1 118 0 74 1 118 0 75 1 118 0 76 1 118 0 78 1 118 0 79 1 118 0 80 1 118 0 81 1 118 0 82 1 118 0 83 1 118 0 84 1 118 0 85 1 118 0 86 1 118 0 87 1 118 0 89 1 118 0 90 1 118 0 91 1 118 0 92 1 118 0 93 1 118 0 94 1 118 0 95 1 118 0 99 1 118 0 104 1 118 0 105 1 118 0 106 1 118 0 107 1 118 0 108 1 118 0 109 1 118 0 110 1 118 1 64] 
#[0 1 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 1 130 0 9 1 134 0 13 1 130 0 15 1 134 0 17 1 134 0 20 1 134 0 25 1 130 0 26 1 134 0 27 1 134 0 38] 
#[0 1 138 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 1 142 0 2 1 142 0 3 1 146 0 4 1 142 0 5 1 142 0 6 1 146 0 7 1 142 0 9 1 142 0 10 1 146 0 11 1 142 0 12 1 142 0 13 1 146 0 14 1 142 0 15 1 142 0 16 1 142 0 17 1 146 0 18 1 142 0 19 1 142 0 20 1 142 0 22 1 146 0 23 1 142 0 24 1 142 0 25 1 142 0 26 1 142 0 27 1 142 0 28 1 146 0 29 1 142 0 30 1 146 0 31 1 142 0 32 1 142 0 33 1 146 0 34 1 146 0 35 1 142 0 36 1 142 0 38 1 142 0 39 1 142 0 40 1 146 0 41 1 142 0 65 1 142 0 96 1 146 0 97 1 142 0 98 1 142 0 99 1 142 0 101 1 142 0 102 1 142 0 103 1 142 1 64] 
#[1 1 150 0 9 1 154 0 13 1 150 0 15 1 154 0 17 1 154 0 20 1 154 0 25 1 150 0 26 1 154 0 27 1 154 0 38] 
#[1 1 158 0 2 1 158 0 3 1 162 0 4 1 158 0 5 1 158 0 6 1 162 0 7 1 158 0 9 1 158 0 10 1 162 0 11 1 158 0 12 1 158 0 13 1 162 0 14 1 158 0 15 1 158 0 16 1 158 0 17 1 162 0 18 1 158 0 19 1 158 0 20 1 158 0 22 1 162 0 23 1 158 0 24 1 158 0 25 1 158 0 26 1 158 0 27 1 158 0 28 1 162 0 29 1 158 0 30 1 162 0 31 1 158 0 32 1 158 0 33 1 162 0 34 1 162 0 35 1 158 0 36 1 158 0 38 1 158 0 39 1 158 0 40 1 162 0 41 1 158 0 65 1 158 0 96 1 162 0 97 1 158 0 98 1 158 0 99 1 158 0 101 1 158 0 102 1 158 0 103 1 158 1 64] 
#[1 4 157 0 13 4 161 0 17] 
#[1 1 166 0 9 1 170 0 13 1 166 0 15 1 170 0 17 1 166 0 26] 
#[1 1 174 0 9 1 178 0 13 1 174 0 15 1 178 0 17 1 174 0 26] 
#[0 1 182 0 9 0 15 0 26] 
#[0 1 186 0 9 0 15 0 26] 
#[0 1 190 0 9 0 15 0 26] 
#[0 4 213 0 4 0 7 0 11 0 14 0 18 0 23 0 29 0 31 0 34 0 35 0 41 0 97 1 31] 
#[0 4 217 0 110] 
#[1 1 194 0 2 1 194 0 3 1 194 0 5 1 194 0 6 1 194 0 9 1 194 0 10 1 194 0 12 1 194 0 15 1 194 0 16 1 194 0 19 0 235 0 20 1 194 0 21 1 194 0 22 1 194 0 24 1 194 0 25 1 194 0 26 1 194 0 27 1 194 0 28 1 194 0 30 1 194 0 32 1 194 0 33 1 194 0 36 4 109 0 38 1 194 0 39 1 194 0 40 1 194 0 65 1 194 0 96 1 194 0 98 1 194 0 99 1 194 0 101 1 194 0 102 1 194 0 103 1 194 0 110 4 225 1 4 4 117 1 5 1 194 1 64] 
#[0 1 198 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 73 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 1 202 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 73 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 1 206 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 4 229 0 58 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 4 233 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 4 233 0 122 4 233 0 123 4 233 0 126 4 241 1 35 2 57 1 56 2 57 1 57 2 57 1 58 4 241 1 61] 
#[1 4 245 0 20 0 18 0 25 0 201 0 27 4 249 1 52] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 4 253 1 12 4 253 1 13 4 253 1 14 4 253 1 15 4 253 1 16 4 253 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 5 1 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 1 5 0 70 0 47 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 239 0 110 1 249 0 116 1 89 0 117 5 5 0 118 5 5 0 119 5 5 0 120 5 5 0 121 5 9 0 122 5 9 0 123 5 9 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 5 21 0 170 1 245 0 241 1 249 0 242 1 249 0 243 3 189 0 248 2 121 0 249 5 17 0 250 5 21 0 251 5 25 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 3 189 1 27 3 189 1 28 2 217 1 29 2 49 1 30 3 189 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 5 29 1 60 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 5 33 1 12 5 33 1 13 5 33 1 14 5 33 1 15 5 33 1 16 5 33 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 5 37 1 12 5 37 1 13 5 37 1 14 5 37 1 15 5 37 1 16 5 37 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 5 41 0 8] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 5 45 1 12 5 45 1 13 5 45 1 14 5 45 1 15 5 45 1 16 5 45 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 214 0 2 0 214 0 3 0 214 0 4 0 203 0 5 0 214 0 6 0 214 0 7 0 243 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 247 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 247 0 19 0 203 0 20 0 214 0 22 0 214 0 23 0 214 0 24 0 203 0 25 0 214 0 26 0 207 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 36 0 243 0 38 0 214 0 39 0 214 0 40 0 214 0 41 0 214 0 65 0 214 0 96 0 214 0 97 0 214 0 98 0 214 0 99 0 214 0 101 0 214 0 102 0 214 0 103 4 97 1 52 0 214 1 64] 
#[1 1 214 0 9 1 214 0 15 1 214 0 19 5 49 0 38] 
#[0 1 122 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 218 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 5 53 0 19] 
#[0 1 222 0 19] 
#[0 1 134 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 154 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 1 226 0 2 1 226 0 3 1 226 0 5 1 226 0 6 1 226 0 9 1 226 0 10 1 226 0 12 4 157 0 13 1 226 0 15 1 226 0 16 4 161 0 17 1 226 0 19 1 226 0 22 1 226 0 24 1 226 0 26 1 226 0 27 1 226 0 28 1 226 0 30 1 226 0 32 1 226 0 33 1 226 0 36 1 226 0 39 1 226 0 40 1 226 0 65 1 226 0 96 1 226 0 98 1 226 0 99 1 226 0 101 1 226 0 102 1 226 0 103 1 226 1 64] 
#[0 1 170 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 178 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 230 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 234 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 238 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 246 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 1 250 0 2 0 251 0 3 1 250 0 5 1 250 0 6 1 250 0 9 0 255 0 10 1 250 0 12 1 250 0 15 1 250 0 16 1 250 0 19 1 3 0 22 1 250 0 24 1 250 0 26 1 250 0 27 1 250 0 28 1 250 0 30 1 250 0 32 1 250 0 33 1 250 0 36 1 250 0 39 1 250 0 40 1 250 0 65 1 250 0 96 1 250 0 98 1 250 0 99 1 250 0 101 1 250 0 102 1 250 0 103 1 250 1 64] 
#[1 1 254 0 2 1 254 0 3 1 254 0 5 1 254 0 6 1 254 0 9 1 254 0 10 1 7 0 12 1 254 0 15 1 11 0 16 1 254 0 19 1 254 0 22 1 254 0 24 1 254 0 26 1 254 0 27 1 254 0 28 1 254 0 30 1 254 0 32 1 254 0 33 1 254 0 36 1 254 0 39 1 254 0 40 1 254 0 65 1 254 0 96 1 254 0 98 1 254 0 99 1 254 0 101 1 254 0 102 1 254 0 103 1 254 1 64] 
#[1 2 2 0 2 2 2 0 3 2 2 0 5 2 2 0 6 2 2 0 9 2 2 0 10 2 2 0 12 2 2 0 15 2 2 0 16 2 2 0 19 2 2 0 22 2 2 0 24 2 2 0 26 2 2 0 27 1 15 0 28 2 2 0 30 2 2 0 32 2 2 0 33 2 2 0 36 2 2 0 39 2 2 0 40 2 2 0 65 2 2 0 96 2 2 0 98 2 2 0 99 2 2 0 101 1 19 0 102 1 23 0 103 2 2 1 64] 
#[1 2 6 0 2 2 6 0 3 2 6 0 5 2 6 0 6 2 6 0 9 2 6 0 10 2 6 0 12 2 6 0 15 2 6 0 16 2 6 0 19 2 6 0 22 2 6 0 24 2 6 0 26 1 27 0 27 2 6 0 28 1 31 0 30 2 6 0 32 1 35 0 33 2 6 0 36 2 6 0 39 2 6 0 40 1 39 0 65 2 6 0 96 2 6 0 98 2 6 0 99 1 43 0 101 2 6 0 102 2 6 0 103 2 6 1 64] 
#[1 1 47 0 2 2 10 0 3 2 10 0 5 2 10 0 6 2 10 0 9 2 10 0 10 2 10 0 12 2 10 0 15 2 10 0 16 2 10 0 19 2 10 0 22 2 10 0 24 2 10 0 26 2 10 0 27 2 10 0 28 2 10 0 30 1 51 0 32 2 10 0 33 2 10 0 36 2 10 0 39 2 10 0 40 2 10 0 65 2 10 0 96 2 10 0 98 2 10 0 99 2 10 0 101 2 10 0 102 2 10 0 103 2 10 1 64] 
#[1 2 14 0 2 2 14 0 3 1 55 0 5 2 14 0 6 2 14 0 9 2 14 0 10 2 14 0 12 2 14 0 15 2 14 0 16 2 14 0 19 2 14 0 22 2 14 0 24 2 14 0 26 2 14 0 27 2 14 0 28 2 14 0 30 2 14 0 32 2 14 0 33 2 14 0 36 2 14 0 39 2 14 0 40 2 14 0 65 2 14 0 96 2 14 0 98 2 14 0 99 2 14 0 101 2 14 0 102 2 14 0 103 2 14 1 64] 
#[1 2 18 0 2 2 18 0 3 2 18 0 5 2 18 0 6 2 18 0 9 2 18 0 10 2 18 0 12 2 18 0 15 2 18 0 16 2 18 0 19 2 18 0 22 2 18 0 24 2 18 0 26 2 18 0 27 2 18 0 28 2 18 0 30 2 18 0 32 2 18 0 33 2 18 0 36 2 18 0 39 1 59 0 40 2 18 0 65 2 18 0 96 2 18 0 98 2 18 0 99 2 18 0 101 2 18 0 102 2 18 0 103 2 18 1 64] 
#[1 2 22 0 2 2 22 0 3 2 22 0 5 2 22 0 6 2 22 0 9 2 22 0 10 2 22 0 12 2 22 0 15 2 22 0 16 2 22 0 19 2 22 0 22 2 22 0 24 2 22 0 26 2 22 0 27 2 22 0 28 2 22 0 30 2 22 0 32 2 22 0 33 2 22 0 36 2 22 0 39 2 22 0 40 2 22 0 65 1 63 0 96 2 22 0 98 2 22 0 99 2 22 0 101 2 22 0 102 2 22 0 103 2 22 1 64] 
#[1 2 26 0 2 2 26 0 3 2 26 0 5 1 67 0 6 2 26 0 9 2 26 0 10 2 26 0 12 2 26 0 15 2 26 0 16 2 26 0 19 2 26 0 22 2 26 0 24 2 26 0 26 2 26 0 27 2 26 0 28 2 26 0 30 2 26 0 32 2 26 0 33 2 26 0 36 2 26 0 39 2 26 0 40 2 26 0 65 2 26 0 96 2 26 0 98 2 26 0 99 2 26 0 101 2 26 0 102 2 26 0 103 2 26 1 64] 
#[1 2 30 0 2 2 30 0 3 2 30 0 5 2 30 0 6 2 30 0 9 2 30 0 10 2 30 0 12 2 30 0 15 2 30 0 16 2 30 0 19 2 30 0 22 2 30 0 24 2 30 0 26 2 30 0 27 2 30 0 28 2 30 0 30 2 30 0 32 2 30 0 33 1 71 0 36 2 30 0 39 2 30 0 40 2 30 0 65 2 30 0 96 1 75 0 98 2 30 0 99 2 30 0 101 2 30 0 102 2 30 0 103 2 30 1 64] 
#[0 2 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 2 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 79 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 0 0 1 64] 
#[0 0 0 1 64] 
#[1 5 141 0 110 5 145 1 48 5 149 1 49] 
#[1 2 229 0 27 0 205 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 89 0 79 0 22 0 80 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 0 22 0 110 3 177 0 146 3 177 1 35 5 153 1 47] 
#[0 0 0 1 64] 
#[1 5 157 0 26 1 53 0 95 5 161 0 173 5 161 0 198] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 1 41 0 91 2 253 0 110 5 169 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 5 169 0 122 5 169 0 123 5 169 0 126 5 173 0 167 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 0 66 0 27 0 66 0 37 0 66 0 42 0 66 0 44 0 66 0 46 0 66 0 49 0 66 0 50 0 66 0 54 0 66 0 56 0 66 0 58 0 66 0 60 0 66 0 66 0 66 0 67 0 66 0 68 0 66 0 69 0 66 0 71 0 66 0 74 0 66 0 75 0 66 0 76 0 66 0 77 0 66 0 79 0 66 0 80 0 66 0 81 0 66 0 82 0 66 0 85 0 66 0 89 0 66 0 91 0 66 0 92 1 53 0 95 0 66 0 110 5 177 0 198] 
#[1 0 18 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 15 0 18 0 16 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 24 0 18 0 26 1 83 0 27 0 18 0 28 0 18 0 30 0 18 0 32 0 18 0 33 0 18 0 36 0 18 0 38 0 18 0 39 0 18 0 40 0 18 0 52 0 18 0 63 0 18 0 65 0 18 0 73 0 18 0 95 0 18 0 96 0 18 0 98 0 18 0 99 0 18 0 101 0 18 0 102 0 18 0 103 0 18 0 110 4 97 1 52 0 18 1 64] 
#[1 5 181 0 110 5 185 0 160 5 189 0 161 5 189 0 162 5 197 0 163] 
#[1 0 222 0 5 0 222 0 15 0 222 0 21 4 109 0 38 0 222 0 96 0 222 0 101 0 222 0 110 4 113 1 4 4 117 1 5] 
#[0 0 238 0 5 0 15 0 21 0 96 0 101 0 110] 
#[0 2 50 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 2 229 0 27 3 157 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 161 0 50 0 71 0 54 3 165 0 56 0 53 0 58 0 75 0 60 0 79 0 66 3 169 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 3 173 0 77 0 89 0 79 0 87 0 80 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 0 91 0 110 5 201 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 5 201 0 122 5 201 0 123 5 201 0 126 3 177 0 146 5 205 0 176 3 177 1 35 5 209 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 0 0 1 64] 
#[0 2 54 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 2 58 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 2 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 2 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 2 70 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 5 213 0 88 5 217 0 95 5 221 0 171 5 225 0 177] 
#[0 2 74 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 1 41 0 91 3 197 0 110 5 169 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 5 169 0 122 5 169 0 123 5 169 0 126 5 229 0 128 5 173 0 167 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 1 87 1 64] 
#[0 2 82 1 64] 
#[0 1 91 1 64] 
#[1 5 233 0 26 1 53 0 95 5 161 0 173 5 161 0 198] 
#[0 2 90 1 64] 
#[0 2 94 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110 1 64] 
#[0 2 98 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110 1 64] 
#[1 1 53 0 95 5 237 0 198] 
#[1 2 229 0 27 0 205 0 37 0 41 0 42 0 22 0 44 0 22 0 46 0 22 0 49 5 241 0 52 0 22 0 54 0 53 0 58 0 22 0 60 0 22 0 66 0 22 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 89 0 79 0 22 0 80 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 0 22 0 110 5 249 0 146 5 249 0 193 5 249 0 194 5 249 1 35 6 1 1 47] 
#[0 2 102 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110 1 64] 
#[0 0 0 1 64] 
#[0 6 5 0 110] 
#[0 0 214 0 8 0 9 0 15 0 20 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 6 9 0 8 2 106 0 9 2 106 0 15 6 13 0 20 2 106 0 26 2 106 0 27 2 106 0 37 2 106 0 42 2 106 0 44 2 106 0 46 2 106 0 49 2 106 0 50 2 106 0 52 2 106 0 54 2 106 0 56 2 106 0 58 2 106 0 60 2 106 0 66 2 106 0 67 2 106 0 68 2 106 0 69 2 106 0 71 2 106 0 72 2 106 0 74 2 106 0 75 2 106 0 76 2 106 0 77 2 106 0 79 2 106 0 80 2 106 0 81 2 106 0 82 2 106 0 85 2 106 0 89 2 106 0 91 2 106 0 92 2 106 0 99 2 106 0 110] 
#[1 2 229 0 27 0 22 0 57 0 22 0 63 0 22 0 73 0 22 0 95 6 17 1 47] 
#[1 6 21 0 63 6 25 0 95 6 29 0 153 6 33 1 43] 
#[1 3 105 0 110 6 37 0 127 6 37 0 128 6 37 0 129] 
#[1 6 41 0 20 6 45 0 26] 
#[1 2 229 0 27 0 22 0 57 0 22 0 95 6 49 1 47] 
#[1 0 22 0 8 2 229 0 27 6 53 1 47] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 3 145 0 137 3 145 0 138 0 153 0 145 0 157 0 146 3 145 0 147 3 145 0 179 3 145 0 180 0 157 1 35 3 145 1 42 2 110 1 64] 
#[0 2 114 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 2 118 0 26 0 37 0 42 0 50 0 56 0 58 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 57 0 64 0 61 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 6 57 0 132 3 141 0 134 3 141 0 135 3 141 0 136 0 145 0 137 0 145 0 138 0 153 0 145 0 157 0 146 0 145 0 147 0 145 0 179 0 145 0 180 0 157 1 35 0 145 1 42 2 122 1 64] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 3 145 0 137 3 145 0 138 0 153 0 145 0 157 0 146 3 145 0 147 3 145 0 179 3 145 0 180 0 157 1 35 3 145 1 42 2 126 1 64] 
#[1 6 61 0 67 3 105 0 110 3 109 0 127 3 109 0 128 3 109 0 129] 
#[0 6 65 0 110] 
#[0 6 69 0 110] 
#[0 6 73 0 110] 
#[0 6 77 0 110] 
#[0 2 130 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[1 3 105 0 110 6 81 0 127 6 81 0 128 6 81 0 129] 
#[0 2 134 0 37 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 72 0 80 0 110] 
#[0 6 85 0 9] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 5 5 0 118 5 5 0 119 5 5 0 120 5 5 0 121 5 9 0 122 5 9 0 123 5 9 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 3 189 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 3 189 1 27 3 189 1 28 2 217 1 29 2 49 1 30 3 189 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 8 0 214 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 15 0 214 0 16 0 214 0 17 0 214 0 18 0 214 0 19 0 203 0 20 0 214 0 22 0 214 0 23 0 214 0 24 0 203 0 25 0 214 0 26 0 207 0 27 0 214 0 28 0 214 0 29 0 214 0 30 0 214 0 31 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 36 0 203 0 38 0 214 0 39 0 214 0 40 0 214 0 41 0 214 0 65 0 214 0 88 0 214 0 95 0 214 0 96 0 214 0 97 0 214 0 98 0 214 0 99 0 214 0 101 0 214 0 102 0 214 0 103 0 18 0 110 4 97 1 52 0 214 1 64] 
#[0 2 138 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 2 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 2 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 2 146 0 15 6 89 0 57 6 93 0 83 2 146 0 101 6 97 1 55] 
#[0 2 150 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 73 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[1 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 6 101 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 6 101 0 122 6 101 0 123 6 101 0 126 3 185 1 35 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 6 105 0 15 6 109 0 101] 
#[0 2 154 0 15 0 101] 
#[1 6 113 0 24 6 117 0 26] 
#[0 2 158 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 121 0 26] 
#[0 2 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 125 0 26] 
#[0 4 49 0 8] 
#[0 6 129 0 93] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 6 133 0 26 0 201 0 27 0 14 0 37 0 15 0 44 0 19 0 46 0 23 0 49 0 27 0 54 0 14 0 58 0 35 0 60 0 39 0 66 0 43 0 68 1 5 0 70 0 47 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 1 95 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 6 145 0 202 6 141 0 209 6 145 0 223 6 149 0 225 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 6 141 1 13 6 141 1 14 6 141 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 6 153 1 60 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 6 157 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 6 157 1 27 6 157 1 28 2 217 1 29 2 49 1 30 6 157 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 6 161 0 38 6 165 1 2 6 169 1 3 6 173 1 4 4 117 1 5] 
#[1 2 166 0 8 6 161 0 38 6 177 1 2 6 169 1 3 6 181 1 4 4 117 1 5] 
#[0 6 185 0 8] 
#[1 1 194 0 8 1 194 0 9 1 194 0 15 4 221 0 20 1 194 0 26 1 194 0 38 1 194 0 52 1 194 0 63 1 194 0 73 1 194 0 95] 
#[0 2 170 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 189 0 26] 
#[1 0 201 0 27 1 99 0 110 6 197 1 52] 
#[0 6 201 0 110] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 6 205 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 6 205 1 27 6 205 1 28 2 217 1 29 2 49 1 30 6 205 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 6 209 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 6 209 1 27 6 209 1 28 2 217 1 29 2 49 1 30 6 209 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 6 213 0 26] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 1 103 0 110 6 225 0 128 6 221 0 233 6 225 0 234 6 229 1 60] 
#[1 6 233 0 48 6 237 0 59 6 241 0 235 6 245 0 236 6 249 0 239] 
#[1 1 53 0 95 6 253 0 198] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 7 1 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 7 1 1 27 7 1 1 28 2 217 1 29 2 49 1 30 7 1 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 2 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 5 0 26] 
#[0 2 178 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 229 0 51 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 7 9 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 7 13 0 147 1 141 0 167 7 13 0 179 7 13 0 198 7 13 0 200 7 13 0 201 1 161 0 202 7 13 0 203 7 13 0 204 7 13 0 205 7 13 0 206 7 13 0 207 7 13 0 208 1 189 0 209 7 13 0 210 7 13 0 211 7 13 0 212 7 13 0 220 7 13 0 221 7 13 0 222 7 13 0 226 7 13 0 227 7 13 0 228 7 13 0 229 7 13 0 230 7 13 0 231 7 13 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 7 13 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 7 13 1 59 2 73 1 60 2 77 1 62] 
#[0 2 182 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 7 17 0 198 7 17 0 203 7 17 0 204 7 17 0 205 7 17 0 206 7 17 0 207 7 17 0 208 1 189 0 209 7 17 0 210 7 17 0 211 7 17 0 212 7 17 0 220 7 17 0 221 7 17 0 222 7 17 0 226 7 17 0 227 7 17 0 228 7 17 0 229 7 17 0 230 7 17 0 231 7 17 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 7 17 1 59 2 77 1 62] 
#[0 2 186 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 73 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 7 21 0 50] 
#[0 7 25 0 50] 
#[0 7 29 0 39] 
#[1 2 190 0 2 2 190 0 3 2 190 0 5 2 190 0 6 2 190 0 9 2 190 0 10 2 190 0 12 2 190 0 15 2 190 0 16 2 190 0 19 2 190 0 20 2 190 0 21 2 190 0 22 2 190 0 24 2 190 0 25 2 190 0 26 2 190 0 27 2 190 0 28 2 190 0 30 2 190 0 32 2 190 0 33 2 190 0 36 4 109 0 38 2 190 0 39 2 190 0 40 2 190 0 65 2 190 0 96 2 190 0 98 2 190 0 99 2 190 0 101 2 190 0 102 2 190 0 103 2 190 0 110 7 33 1 5 2 190 1 64] 
#[0 2 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 7 37 0 25] 
#[1 7 41 0 83 7 45 0 86 7 49 0 110] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 7 53 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 7 53 1 27 7 53 1 28 2 217 1 29 2 49 1 30 7 53 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 7 57 0 20] 
#[0 7 61 0 50] 
#[0 2 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 2 202 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 65 0 110] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 7 69 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 7 69 1 27 7 69 1 28 2 217 1 29 2 49 1 30 7 69 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 2 206 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 2 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 2 214 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 218 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 222 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 226 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 230 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 234 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 238 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 242 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 246 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 250 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 2 254 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 3 2 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 91 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 7 73 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 7 73 1 27 7 73 1 28 2 217 1 29 2 49 1 30 7 73 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 7 77 0 8] 
#[0 7 81 0 110] 
#[1 3 6 0 2 3 6 0 3 3 6 0 5 3 6 0 6 3 6 0 9 3 6 0 10 3 6 0 12 3 6 0 15 3 6 0 16 3 6 0 19 3 6 0 20 3 6 0 21 3 6 0 22 3 6 0 24 3 6 0 25 3 6 0 26 3 6 0 27 3 6 0 28 3 6 0 30 3 6 0 32 3 6 0 33 3 6 0 36 4 109 0 38 3 6 0 39 3 6 0 40 3 6 0 65 3 6 0 96 3 6 0 98 3 6 0 99 3 6 0 101 3 6 0 102 3 6 0 103 3 6 0 110 7 33 1 5 3 6 1 64] 
#[0 3 10 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 80 0 110] 
#[1 5 181 0 110 7 85 0 160 5 189 0 161 5 189 0 162 5 197 0 163] 
#[0 3 14 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 80 0 110] 
#[0 3 18 0 37 0 44 0 46 0 49 0 54 0 58 0 60 0 66 0 68 0 80 0 110] 
#[1 0 201 0 27 7 89 0 70 0 18 0 110 7 93 1 52] 
#[0 7 97 0 25] 
#[0 3 22 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 3 26 0 19] 
#[1 7 101 0 9 0 211 0 20 4 109 0 38 4 113 1 4 4 117 1 5] 
#[1 7 105 0 5 7 109 0 9 0 238 0 20 0 18 0 25 0 201 0 27 4 121 1 52] 
#[0 3 30 0 9 0 15] 
#[1 7 113 0 9 7 117 0 15] 
#[0 3 34 0 9 0 15] 
#[1 3 38 0 9 3 38 0 15 1 222 0 19] 
#[1 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 4 229 0 58 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 7 121 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 7 121 0 122 7 121 0 123 7 121 0 126 4 241 1 35 2 57 1 56 2 57 1 57 2 57 1 58 4 241 1 61] 
#[0 3 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 3 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 7 125 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 7 125 1 27 7 125 1 28 2 217 1 29 2 49 1 30 7 125 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 3 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 7 129 0 39] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 1 53 0 95 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 7 137 0 198 1 245 0 241 1 249 0 242 1 249 0 243 7 137 0 248 2 121 0 249 2 125 0 252 7 137 0 253 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 7 137 1 27 7 137 1 28 2 217 1 29 2 49 1 30 7 137 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 7 145 1 12 7 145 1 13 7 145 1 14 7 145 1 15 7 145 1 16 7 145 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 7 149 1 12 7 149 1 13 7 149 1 14 7 149 1 15 7 149 1 16 7 149 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 7 153 1 12 7 153 1 13 7 153 1 14 7 153 1 15 7 153 1 16 7 153 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 7 157 1 12 7 157 1 13 7 157 1 14 7 157 1 15 7 157 1 16 7 157 1 17 7 157 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 7 161 1 12 7 161 1 13 7 161 1 14 7 161 1 15 7 161 1 16 7 161 1 17 7 161 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 7 165 1 18 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 7 169 1 18 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 7 173 1 18 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 7 177 1 19 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 7 181 1 19 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 7 185 1 19 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 7 189 0 118 7 189 0 119 7 189 0 120 7 189 0 121 7 193 0 122 7 193 0 123 7 193 0 126 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 7 197 1 19 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 7 201 1 20 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 7 205 1 20 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 7 209 1 21 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 7 213 1 22 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 7 217 1 23 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 7 221 1 24 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 7 225 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 7 225 1 27 7 225 1 28 2 217 1 29 2 49 1 30 7 225 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 7 229 1 25 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 3 54 0 15 7 233 0 57 3 54 0 101] 
#[1 7 237 0 15 7 241 0 101] 
#[0 3 58 0 15 0 101] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 1 41 0 91 2 253 0 110 7 245 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 7 245 0 122 7 245 0 123 7 245 0 126 7 249 0 167 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 3 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 3 66 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 3 70 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 7 253 0 110 8 1 0 168] 
#[1 7 253 0 110 8 5 0 168] 
#[0 3 74 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 1 210 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 8 9 0 15 8 13 0 26] 
#[0 3 78 0 15 0 26] 
#[0 3 82 0 15 0 26] 
#[1 3 86 0 15 3 86 0 26 8 17 0 31 5 49 0 38] 
#[1 5 181 0 110 8 21 0 160 5 189 0 161 5 189 0 162 5 197 0 163] 
#[1 5 213 0 88 5 217 0 95 8 25 0 171 8 29 0 177] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 1 41 0 91 3 197 0 110 7 245 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 7 245 0 122 7 245 0 123 7 245 0 126 5 229 0 128 7 249 0 167 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 2 253 0 110 8 37 0 123 8 37 0 124 8 41 0 172 4 25 1 56 4 25 1 57 4 25 1 58] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 229 0 51 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 8 45 0 83 1 21 0 84 1 25 0 85 8 49 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 8 53 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 4 89 0 147 1 141 0 167 8 57 0 178 4 89 0 179 4 89 0 198 8 61 0 199 4 89 0 200 4 89 0 201 1 161 0 202 4 89 0 203 4 89 0 204 4 89 0 205 4 89 0 206 4 89 0 207 4 89 0 208 1 189 0 209 4 89 0 210 4 89 0 211 4 89 0 212 4 89 0 220 4 89 0 221 4 89 0 222 4 89 0 226 4 89 0 227 4 89 0 228 4 89 0 229 4 89 0 230 4 89 0 231 4 89 0 240 8 65 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 8 65 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 4 89 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 4 89 1 59 2 73 1 60 2 77 1 62] 
#[1 5 217 0 95 8 69 0 177] 
#[0 3 90 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 8 73 0 8] 
#[0 1 107 1 64] 
#[0 3 98 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110 1 64] 
#[0 3 102 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 71 0 74 0 75 0 76 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 3 106 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 71 0 74 0 75 0 76 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 3 110 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 71 0 74 0 75 0 76 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[0 3 114 0 27 0 37 0 42 0 44 0 46 0 49 0 52 0 54 0 58 0 60 0 66 0 68 0 69 0 71 0 74 0 75 0 76 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 110] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 1 41 0 91 2 253 0 110 8 77 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 8 77 0 122 8 77 0 123 8 77 0 126 8 81 0 167 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 8 85 0 95 8 89 0 181] 
#[1 2 81 0 1 3 193 0 8 3 118 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 8 93 0 95 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 1 111 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 8 121 1 27 2 169 1 29 2 49 1 30 8 121 1 35 8 109 1 36 8 113 1 37 8 117 1 38 8 121 1 39 8 121 1 40 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 7 49 0 110] 
#[1 8 129 0 57 6 21 0 63 8 133 0 73 8 137 0 95 8 141 0 148 8 145 0 152 8 149 0 153 8 153 0 155] 
#[1 2 253 0 110 8 161 0 123 8 161 0 125 8 165 0 154 4 25 1 56 4 25 1 57 4 25 1 58] 
#[1 8 169 0 15 8 173 0 26 0 6 0 37 8 177 0 99 0 6 0 110 8 181 1 34 8 185 1 44 8 189 1 45 8 193 1 46] 
#[1 6 25 0 95 8 197 1 43] 
#[0 3 122 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 8 201 0 20 8 205 0 26] 
#[1 8 209 0 10 7 49 0 110] 
#[0 3 126 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[1 8 213 0 57 8 217 0 95 8 221 0 185 8 225 0 186] 
#[0 8 229 0 8] 
#[1 0 33 0 26 0 37 0 37 0 41 0 42 0 45 0 50 0 49 0 56 0 53 0 58 0 61 0 67 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 109 0 92 3 145 0 137 3 145 0 138 0 153 0 145 0 157 0 146 3 145 0 147 3 145 0 179 3 145 0 180 0 157 1 35 3 145 1 42 3 130 1 64] 
#[0 8 233 0 110] 
#[1 2 229 0 27 0 22 0 57 0 22 0 63 0 22 0 73 0 22 0 95 8 237 1 47] 
#[1 6 21 0 63 6 25 0 95 8 241 0 153 8 245 1 43] 
#[1 2 229 0 27 0 22 0 57 0 22 0 95 8 249 1 47] 
#[1 0 22 0 8 2 229 0 27 8 253 1 47] 
#[1 6 13 0 20 9 1 0 26] 
#[0 3 134 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 9 5 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 9 5 0 122 9 5 0 123 9 5 0 126 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 9 9 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 9 9 0 122 9 9 0 123 9 9 0 126 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 3 138 0 15 0 101] 
#[0 3 142 0 15 0 101] 
#[1 3 213 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 80 0 6 0 110 3 221 1 34 9 13 1 54] 
#[0 3 146 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 73 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 17 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 17 1 27 9 17 1 28 2 217 1 29 2 49 1 30 9 17 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 3 150 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 3 154 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 3 158 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 9 21 0 8] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 9 25 0 26 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 29 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 29 1 27 9 29 1 28 2 217 1 29 2 49 1 30 9 29 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 3 162 0 26] 
#[0 3 166 0 9 0 15 0 26] 
#[0 9 33 0 26] 
#[1 9 37 0 15 3 170 0 26] 
#[1 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 4 229 0 58 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 9 41 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 9 41 0 122 9 41 0 123 9 41 0 126 4 241 1 35 2 57 1 56 2 57 1 57 2 57 1 58 4 241 1 61] 
#[0 9 45 0 9] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 7 29 0 39 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 49 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 49 1 27 9 49 1 28 2 217 1 29 2 49 1 30 9 49 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 3 174 0 2 3 174 0 3 3 174 0 5 3 174 0 6 3 174 0 9 3 174 0 10 3 174 0 12 3 174 0 13 3 174 0 15 3 174 0 16 3 174 0 17 3 174 0 19 3 174 0 20 3 174 0 22 3 174 0 24 3 174 0 25 3 174 0 26 3 174 0 27 3 174 0 28 3 174 0 30 3 174 0 32 3 174 0 33 3 174 0 36 6 161 0 38 3 174 0 39 3 174 0 40 3 174 0 65 3 174 0 96 3 174 0 98 3 174 0 99 3 174 0 101 3 174 0 102 3 174 0 103 9 53 1 3 9 57 1 4 4 117 1 5 3 174 1 64] 
#[0 3 178 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 4 109 0 38 9 61 0 95 9 65 0 196 7 33 1 5] 
#[1 3 182 0 2 3 182 0 3 3 182 0 5 3 182 0 6 3 182 0 9 3 182 0 10 3 182 0 12 3 182 0 13 3 182 0 15 3 182 0 16 3 182 0 17 3 182 0 19 3 182 0 20 3 182 0 22 3 182 0 24 3 182 0 25 3 182 0 26 3 182 0 27 3 182 0 28 3 182 0 30 3 182 0 32 3 182 0 33 3 182 0 36 6 161 0 38 3 182 0 39 3 182 0 40 3 182 0 65 3 182 0 96 3 182 0 98 3 182 0 99 3 182 0 101 3 182 0 102 3 182 0 103 9 53 1 3 9 69 1 4 4 117 1 5 3 182 1 64] 
#[1 4 109 0 38 9 61 0 95 9 73 0 196 7 33 1 5] 
#[1 2 81 0 1 2 85 0 8 9 77 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 9 81 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 3 186 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 3 190 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 96 0 97 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 9 89 0 110] 
#[0 3 194 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 9 93 0 9] 
#[0 9 97 0 9] 
#[0 3 198 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 3 202 0 9 0 26] 
#[1 9 101 0 9 9 105 0 26] 
#[0 3 206 0 9 0 26] 
#[1 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 4 229 0 58 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 9 109 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 9 109 0 122 9 109 0 123 9 109 0 126 4 241 1 35 2 57 1 56 2 57 1 57 2 57 1 58 4 241 1 61] 
#[0 9 113 0 8] 
#[1 1 53 0 95 9 117 0 198] 
#[1 3 210 0 8 3 210 0 13 3 210 0 17 3 210 0 26 3 210 0 27 3 210 0 37 3 210 0 42 3 210 0 43 3 210 0 44 3 210 0 45 3 210 0 46 3 210 0 47 6 233 0 48 3 210 0 49 3 210 0 50 3 210 0 51 3 210 0 52 3 210 0 53 3 210 0 54 3 210 0 55 3 210 0 56 3 210 0 58 6 237 0 59 3 210 0 60 3 210 0 61 3 210 0 62 3 210 0 66 3 210 0 67 3 210 0 68 3 210 0 69 3 210 0 70 3 210 0 71 3 210 0 74 3 210 0 75 3 210 0 76 3 210 0 78 3 210 0 79 3 210 0 80 3 210 0 81 3 210 0 82 3 210 0 83 3 210 0 84 3 210 0 85 3 210 0 86 3 210 0 87 3 210 0 89 3 210 0 90 3 210 0 91 3 210 0 92 3 210 0 93 3 210 0 94 3 210 0 95 3 210 0 99 3 210 0 104 3 210 0 105 3 210 0 106 3 210 0 107 3 210 0 108 3 210 0 109 3 210 0 110 9 121 0 236 9 125 0 239 3 210 1 64] 
#[0 3 214 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 3 218 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 3 222 0 8 3 222 0 13 3 222 0 17 3 222 0 26 3 222 0 27 3 222 0 37 3 222 0 42 3 222 0 43 3 222 0 44 3 222 0 45 3 222 0 46 3 222 0 47 6 233 0 48 3 222 0 49 3 222 0 50 3 222 0 51 3 222 0 52 3 222 0 53 3 222 0 54 3 222 0 55 3 222 0 56 3 222 0 58 6 237 0 59 3 222 0 60 3 222 0 61 3 222 0 62 3 222 0 66 3 222 0 67 3 222 0 68 3 222 0 69 3 222 0 70 3 222 0 71 3 222 0 74 3 222 0 75 3 222 0 76 3 222 0 78 3 222 0 79 3 222 0 80 3 222 0 81 3 222 0 82 3 222 0 83 3 222 0 84 3 222 0 85 3 222 0 86 3 222 0 87 3 222 0 89 3 222 0 90 3 222 0 91 3 222 0 92 3 222 0 93 3 222 0 94 3 222 0 95 3 222 0 99 3 222 0 104 3 222 0 105 3 222 0 106 3 222 0 107 3 222 0 108 3 222 0 109 3 222 0 110 9 129 0 235 6 245 0 236 9 133 0 239 3 222 1 64] 
#[0 9 137 0 9] 
#[0 3 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 3 230 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 3 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 3 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 3 242 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 3 246 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 3 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 3 254 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 9 141 0 70] 
#[0 9 145 0 20] 
#[0 4 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 6 0 2 0 3 0 4 0 5 0 6 0 7 0 8 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 37 0 38 0 39 0 40 0 41 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 65 0 66 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 96 0 97 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 9 149 0 39] 
#[0 9 153 0 83] 
#[0 4 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 14 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 96 0 97 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 9 157 0 39] 
#[0 4 18 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 2 81 0 1 2 85 0 8 9 161 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 9 165 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 18 0 2 0 18 0 3 0 18 0 5 0 18 0 6 0 18 0 8 0 18 0 9 0 18 0 10 0 18 0 12 0 18 0 15 0 18 0 16 0 18 0 19 0 18 0 20 0 18 0 21 0 18 0 22 0 18 0 24 0 18 0 25 0 18 0 26 1 83 0 27 0 18 0 28 0 18 0 30 0 18 0 32 0 18 0 33 0 18 0 36 0 18 0 38 0 18 0 39 0 18 0 40 0 18 0 52 0 18 0 63 0 18 0 65 0 18 0 73 0 18 0 95 0 18 0 96 0 18 0 98 0 18 0 99 0 18 0 101 0 18 0 102 0 18 0 103 0 18 0 110 9 169 1 52 0 18 1 64] 
#[1 8 9 0 15 4 22 0 26] 
#[1 0 201 0 27 0 18 0 110 9 173 1 52] 
#[0 9 177 0 110] 
#[0 9 181 0 110] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 9 185 1 12 9 185 1 13 9 185 1 14 9 185 1 15 9 185 1 16 9 185 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 253 0 110 9 189 0 123 9 189 0 125 4 25 1 56 4 25 1 57 4 25 1 58] 
#[1 2 81 0 1 2 85 0 8 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 9 193 0 127 9 193 0 128 9 193 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 197 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 1 249 1 6 1 249 1 7 1 249 1 8 2 137 1 9 2 137 1 10 2 137 1 11 9 209 1 15 9 209 1 16 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 4 26 0 19] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 1 115 0 110 2 109 0 163 9 213 0 170 9 213 0 251 9 213 0 252 5 29 1 60] 
#[1 9 221 0 21 5 181 0 110 9 225 0 163] 
#[0 9 229 0 9] 
#[0 4 30 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 31 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 42 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 50 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 4 54 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 4 58 0 2 1 119 0 3 4 58 0 5 4 58 0 6 4 58 0 9 1 123 0 10 4 58 0 12 4 58 0 15 4 58 0 16 4 58 0 19 1 127 0 22 4 58 0 24 4 58 0 26 4 58 0 27 4 58 0 28 4 58 0 30 4 58 0 32 4 58 0 33 4 58 0 36 4 58 0 39 4 58 0 40 4 58 0 65 4 58 0 96 4 58 0 98 4 58 0 99 4 58 0 101 4 58 0 102 4 58 0 103 4 58 1 64] 
#[1 4 62 0 2 1 131 0 3 4 62 0 5 4 62 0 6 4 62 0 9 1 135 0 10 4 62 0 12 4 62 0 15 4 62 0 16 4 62 0 19 1 139 0 22 4 62 0 24 4 62 0 26 4 62 0 27 4 62 0 28 4 62 0 30 4 62 0 32 4 62 0 33 4 62 0 36 4 62 0 39 4 62 0 40 4 62 0 65 4 62 0 96 4 62 0 98 4 62 0 99 4 62 0 101 4 62 0 102 4 62 0 103 4 62 1 64] 
#[1 4 66 0 2 4 66 0 3 4 66 0 5 4 66 0 6 4 66 0 9 4 66 0 10 1 143 0 12 4 66 0 15 1 147 0 16 4 66 0 19 4 66 0 22 4 66 0 24 4 66 0 26 4 66 0 27 4 66 0 28 4 66 0 30 4 66 0 32 4 66 0 33 4 66 0 36 4 66 0 39 4 66 0 40 4 66 0 65 4 66 0 96 4 66 0 98 4 66 0 99 4 66 0 101 4 66 0 102 4 66 0 103 4 66 1 64] 
#[1 4 70 0 2 4 70 0 3 4 70 0 5 4 70 0 6 4 70 0 9 4 70 0 10 1 151 0 12 4 70 0 15 1 155 0 16 4 70 0 19 4 70 0 22 4 70 0 24 4 70 0 26 4 70 0 27 4 70 0 28 4 70 0 30 4 70 0 32 4 70 0 33 4 70 0 36 4 70 0 39 4 70 0 40 4 70 0 65 4 70 0 96 4 70 0 98 4 70 0 99 4 70 0 101 4 70 0 102 4 70 0 103 4 70 1 64] 
#[1 4 74 0 2 4 74 0 3 4 74 0 5 4 74 0 6 4 74 0 9 4 74 0 10 1 159 0 12 4 74 0 15 1 163 0 16 4 74 0 19 4 74 0 22 4 74 0 24 4 74 0 26 4 74 0 27 4 74 0 28 4 74 0 30 4 74 0 32 4 74 0 33 4 74 0 36 4 74 0 39 4 74 0 40 4 74 0 65 4 74 0 96 4 74 0 98 4 74 0 99 4 74 0 101 4 74 0 102 4 74 0 103 4 74 1 64] 
#[1 4 78 0 2 4 78 0 3 4 78 0 5 4 78 0 6 4 78 0 9 4 78 0 10 4 78 0 12 4 78 0 15 4 78 0 16 4 78 0 19 4 78 0 22 4 78 0 24 4 78 0 26 4 78 0 27 1 167 0 28 4 78 0 30 4 78 0 32 4 78 0 33 4 78 0 36 4 78 0 39 4 78 0 40 4 78 0 65 4 78 0 96 4 78 0 98 4 78 0 99 4 78 0 101 1 171 0 102 1 175 0 103 4 78 1 64] 
#[1 4 82 0 2 4 82 0 3 4 82 0 5 4 82 0 6 4 82 0 9 4 82 0 10 4 82 0 12 4 82 0 15 4 82 0 16 4 82 0 19 4 82 0 22 4 82 0 24 4 82 0 26 4 82 0 27 1 179 0 28 4 82 0 30 4 82 0 32 4 82 0 33 4 82 0 36 4 82 0 39 4 82 0 40 4 82 0 65 4 82 0 96 4 82 0 98 4 82 0 99 4 82 0 101 1 183 0 102 1 187 0 103 4 82 1 64] 
#[1 4 86 0 2 4 86 0 3 4 86 0 5 4 86 0 6 4 86 0 9 4 86 0 10 4 86 0 12 4 86 0 15 4 86 0 16 4 86 0 19 4 86 0 22 4 86 0 24 4 86 0 26 4 86 0 27 1 191 0 28 4 86 0 30 4 86 0 32 4 86 0 33 4 86 0 36 4 86 0 39 4 86 0 40 4 86 0 65 4 86 0 96 4 86 0 98 4 86 0 99 4 86 0 101 1 195 0 102 1 199 0 103 4 86 1 64] 
#[1 4 109 0 38 4 113 1 4 4 117 1 5] 
#[1 4 90 0 2 4 90 0 3 4 90 0 5 4 90 0 6 4 90 0 9 4 90 0 10 4 90 0 12 4 90 0 15 4 90 0 16 4 90 0 19 4 90 0 22 4 90 0 24 4 90 0 26 4 90 0 27 4 90 0 28 4 90 0 30 4 90 0 32 4 90 0 33 4 90 0 36 4 90 0 39 4 90 0 40 4 90 0 65 4 90 0 96 4 90 0 98 4 90 0 99 4 90 0 101 4 90 0 102 4 90 0 103 5 181 0 110 9 233 0 163 4 90 1 64] 
#[1 4 94 0 2 4 94 0 3 4 94 0 5 4 94 0 6 4 94 0 9 4 94 0 10 4 94 0 12 4 94 0 15 4 94 0 16 4 94 0 19 4 94 0 22 4 94 0 24 4 94 0 26 4 94 0 27 1 203 0 28 4 94 0 30 4 94 0 32 4 94 0 33 4 94 0 36 4 94 0 39 4 94 0 40 4 94 0 65 4 94 0 96 4 94 0 98 4 94 0 99 4 94 0 101 1 207 0 102 1 211 0 103 4 94 1 64] 
#[1 4 98 0 2 4 98 0 3 4 98 0 5 4 98 0 6 4 98 0 9 4 98 0 10 4 98 0 12 4 98 0 15 4 98 0 16 4 98 0 19 4 98 0 22 4 98 0 24 4 98 0 26 1 215 0 27 4 98 0 28 1 219 0 30 4 98 0 32 1 223 0 33 4 98 0 36 4 98 0 39 4 98 0 40 1 227 0 65 4 98 0 96 4 98 0 98 4 98 0 99 1 231 0 101 4 98 0 102 4 98 0 103 4 98 1 64] 
#[1 4 102 0 2 4 102 0 3 4 102 0 5 4 102 0 6 4 102 0 9 4 102 0 10 4 102 0 12 4 102 0 15 4 102 0 16 4 102 0 19 4 102 0 22 4 102 0 24 4 102 0 26 1 235 0 27 4 102 0 28 1 239 0 30 4 102 0 32 1 243 0 33 4 102 0 36 4 102 0 39 4 102 0 40 1 247 0 65 4 102 0 96 4 102 0 98 4 102 0 99 1 251 0 101 4 102 0 102 4 102 0 103 4 102 1 64] 
#[1 1 255 0 2 4 106 0 3 4 106 0 5 4 106 0 6 4 106 0 9 4 106 0 10 4 106 0 12 4 106 0 15 4 106 0 16 4 106 0 19 4 106 0 22 4 106 0 24 4 106 0 26 4 106 0 27 4 106 0 28 4 106 0 30 2 3 0 32 4 106 0 33 4 106 0 36 4 106 0 39 4 106 0 40 4 106 0 65 4 106 0 96 4 106 0 98 4 106 0 99 4 106 0 101 4 106 0 102 4 106 0 103 4 106 1 64] 
#[1 4 110 0 2 4 110 0 3 2 7 0 5 4 110 0 6 4 110 0 9 4 110 0 10 4 110 0 12 4 110 0 15 4 110 0 16 4 110 0 19 4 110 0 22 4 110 0 24 4 110 0 26 4 110 0 27 4 110 0 28 4 110 0 30 4 110 0 32 4 110 0 33 4 110 0 36 4 110 0 39 4 110 0 40 4 110 0 65 4 110 0 96 4 110 0 98 4 110 0 99 4 110 0 101 4 110 0 102 4 110 0 103 4 110 1 64] 
#[1 4 114 0 2 4 114 0 3 4 114 0 5 4 114 0 6 4 114 0 9 4 114 0 10 4 114 0 12 4 114 0 15 4 114 0 16 4 114 0 19 4 114 0 22 4 114 0 24 4 114 0 26 4 114 0 27 4 114 0 28 4 114 0 30 4 114 0 32 4 114 0 33 4 114 0 36 4 114 0 39 2 11 0 40 4 114 0 65 4 114 0 96 4 114 0 98 4 114 0 99 4 114 0 101 4 114 0 102 4 114 0 103 4 114 1 64] 
#[1 4 118 0 2 4 118 0 3 4 118 0 5 4 118 0 6 4 118 0 9 4 118 0 10 4 118 0 12 4 118 0 15 4 118 0 16 4 118 0 19 4 118 0 22 4 118 0 24 4 118 0 26 4 118 0 27 4 118 0 28 4 118 0 30 4 118 0 32 4 118 0 33 4 118 0 36 4 118 0 39 4 118 0 40 4 118 0 65 2 15 0 96 4 118 0 98 4 118 0 99 4 118 0 101 4 118 0 102 4 118 0 103 4 118 1 64] 
#[0 9 237 0 24] 
#[1 4 122 0 2 4 122 0 3 4 122 0 5 2 19 0 6 4 122 0 9 4 122 0 10 4 122 0 12 4 122 0 15 4 122 0 16 4 122 0 19 4 122 0 22 4 122 0 24 4 122 0 26 4 122 0 27 4 122 0 28 4 122 0 30 4 122 0 32 4 122 0 33 4 122 0 36 4 122 0 39 4 122 0 40 4 122 0 65 4 122 0 96 4 122 0 98 4 122 0 99 4 122 0 101 4 122 0 102 4 122 0 103 4 122 1 64] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 9 241 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 9 241 0 122 9 241 0 123 9 241 0 126 9 245 1 50 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 5 141 0 110 9 249 1 49] 
#[0 4 126 0 8 0 44 0 46 0 49 0 54 0 57 0 60 0 63 0 66 0 68 0 73 0 80 0 91 0 95 0 110] 
#[1 7 253 0 110 9 253 0 168] 
#[1 7 253 0 110 10 1 0 168] 
#[0 10 5 0 8] 
#[1 4 130 0 26 10 9 0 38 4 130 0 52 5 213 0 88 4 130 0 95 10 13 0 171] 
#[1 4 134 0 26 10 9 0 38 4 134 0 52 5 213 0 88 4 134 0 95 10 17 0 171] 
#[1 5 181 0 110 10 21 0 161 10 21 0 162 5 197 0 163] 
#[0 4 138 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 9 61 0 95 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 10 25 0 164 1 141 0 167 10 25 0 196 1 245 0 241 1 249 0 242 1 249 0 243 10 25 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 10 25 1 27 10 25 1 28 2 217 1 29 2 49 1 30 10 25 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 8 9 0 15 10 37 0 26] 
#[1 5 217 0 95 10 41 0 177] 
#[0 4 142 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 2 166 0 15 0 26 0 52 0 63 0 73 0 95] 
#[0 4 146 0 15 0 26 0 52 0 95] 
#[1 10 45 0 15 4 150 0 26 4 150 0 52 4 150 0 95] 
#[1 10 49 0 8 4 37 0 20 4 41 0 25] 
#[1 10 53 0 8 0 182 0 13 0 182 0 17 0 182 0 20 0 182 0 25 0 182 0 27 0 182 0 38] 
#[0 4 154 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 229 0 51 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 10 57 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 4 89 0 147 1 141 0 167 4 89 0 179 4 89 0 198 10 61 0 199 4 89 0 200 4 89 0 201 1 161 0 202 4 89 0 203 4 89 0 204 4 89 0 205 4 89 0 206 4 89 0 207 4 89 0 208 1 189 0 209 4 89 0 210 4 89 0 211 4 89 0 212 4 89 0 220 4 89 0 221 4 89 0 222 4 89 0 226 4 89 0 227 4 89 0 228 4 89 0 229 4 89 0 230 4 89 0 231 4 89 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 4 89 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 4 89 1 59 2 73 1 60 2 77 1 62] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 229 0 51 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 10 65 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 7 13 0 147 1 141 0 167 7 13 0 179 7 13 0 198 7 13 0 200 7 13 0 201 1 161 0 202 7 13 0 203 7 13 0 204 7 13 0 205 7 13 0 206 7 13 0 207 7 13 0 208 1 189 0 209 7 13 0 210 7 13 0 211 7 13 0 212 7 13 0 220 7 13 0 221 7 13 0 222 7 13 0 226 7 13 0 227 7 13 0 228 7 13 0 229 7 13 0 230 7 13 0 231 7 13 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 7 13 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 7 13 1 59 2 73 1 60 2 77 1 62] 
#[1 1 106 0 13 1 106 0 17 2 23 0 20 1 110 0 25 1 110 0 27] 
#[0 4 158 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 10 73 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 0 14 0 110 10 77 0 169 10 81 0 170 5 29 1 60] 
#[1 7 253 0 110 10 85 0 168] 
#[1 7 253 0 110 10 89 0 168] 
#[1 0 33 0 26 2 229 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 87 0 80 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 10 93 0 99 0 91 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 10 117 0 137 10 117 0 138 10 101 0 145 0 157 0 146 10 117 0 147 10 117 0 159 10 109 0 166 10 117 0 179 10 117 0 180 10 113 0 182 10 117 0 183 10 117 0 184 10 117 0 195 0 157 1 35 10 117 1 42 2 245 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 4 162 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 10 129 0 15 2 93 0 16 0 193 0 17 0 201 0 27 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 8 93 0 95 10 133 0 99 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 10 137 1 27 2 169 1 29 2 49 1 30 10 137 1 35 10 137 1 39 10 137 1 40 10 141 1 41 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 214 0 2 0 214 0 3 0 214 0 4 0 214 0 5 0 214 0 6 0 214 0 7 0 214 0 9 0 214 0 10 0 214 0 11 0 214 0 12 0 214 0 13 0 214 0 14 0 214 0 16 0 214 0 17 0 214 0 18 0 203 0 20 0 214 0 22 0 214 0 23 0 203 0 25 0 207 0 27 0 214 0 28 0 214 0 29 0 214 0 30 2 27 0 31 0 214 0 32 0 214 0 33 0 214 0 34 0 214 0 35 0 214 0 36 0 203 0 38 0 214 0 40 0 214 0 41 0 214 0 65 0 214 0 96 0 214 0 97 0 214 0 98 0 214 0 101 0 214 0 102 0 214 0 103 4 97 1 52] 
#[0 4 166 0 9 0 15 0 99] 
#[0 4 170 0 9 0 15 0 99] 
#[0 10 149 0 9] 
#[1 4 174 0 9 10 153 0 15] 
#[0 4 178 0 9 0 15] 
#[0 4 182 0 9] 
#[0 4 186 0 9 0 15 0 99] 
#[1 2 253 0 110 10 157 0 123 10 157 0 124 4 25 1 56 4 25 1 57 4 25 1 58] 
#[1 2 253 0 110 10 161 0 123 10 161 0 125 10 165 0 149 4 25 1 56 4 25 1 57 4 25 1 58] 
#[1 0 33 0 26 2 229 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 87 0 80 2 249 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 1 53 0 95 10 169 0 99 0 91 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 10 177 0 137 10 177 0 138 3 17 0 145 0 157 0 146 10 177 0 147 10 173 0 156 10 177 0 157 10 177 0 158 10 177 0 159 10 177 0 165 2 241 0 166 10 177 0 174 10 177 0 175 3 45 0 176 10 177 0 179 10 177 0 180 3 49 0 198 0 157 1 35 10 177 1 42 3 53 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 6 21 0 63 8 137 0 95 10 181 0 153 10 185 0 155] 
#[1 6 21 0 63 8 133 0 73 8 137 0 95 10 189 0 148 10 193 0 153 10 197 0 155] 
#[1 8 137 0 95 10 201 0 155] 
#[0 4 190 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 4 194 0 9 0 15 0 63 0 95] 
#[0 4 198 0 15 0 95] 
#[1 10 205 0 15 4 202 0 95] 
#[1 8 173 0 26 10 209 0 99 10 213 1 46] 
#[1 0 33 0 26 2 229 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 87 0 80 2 249 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 1 53 0 95 4 206 0 99 0 91 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 10 177 0 137 10 177 0 138 3 17 0 145 0 157 0 146 10 177 0 147 10 217 0 156 10 177 0 157 10 177 0 158 10 177 0 159 10 177 0 165 2 241 0 166 10 177 0 174 10 177 0 175 3 45 0 176 10 177 0 179 10 177 0 180 3 49 0 198 0 157 1 35 10 177 1 42 3 53 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 4 210 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 205 0 37 10 221 0 110 3 185 1 35] 
#[1 10 225 0 15 8 173 0 26 10 229 0 99 10 233 1 46] 
#[0 4 214 0 15 0 26 0 99] 
#[0 10 237 0 99] 
#[0 4 218 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 10 241 0 10 7 49 0 110] 
#[0 4 222 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 10 245 0 26] 
#[1 2 253 0 110 10 249 0 123 10 249 0 125 4 25 1 56 4 25 1 57 4 25 1 58] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 71 0 147 0 74 0 151 0 75 0 155 0 76 0 85 0 77 0 159 0 79 0 163 0 80 2 31 0 81 0 171 0 82 0 175 0 85 0 179 0 89 0 183 0 91 0 187 0 92 10 253 0 99 0 191 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 11 17 0 137 11 17 0 138 10 101 0 145 0 157 0 146 11 17 0 147 11 17 0 159 11 9 0 166 11 17 0 179 11 17 0 180 11 13 0 187 11 17 0 188 11 17 0 189 11 17 0 190 3 85 0 191 3 89 0 192 11 17 0 195 0 157 1 35 11 17 1 42 2 245 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 11 21 0 15 8 217 0 95 11 25 0 186] 
#[0 4 226 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 11 29 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 0 14 0 110 11 33 0 169 10 81 0 170 5 29 1 60] 
#[1 8 85 0 95 11 37 0 181] 
#[1 8 129 0 57 6 21 0 63 8 133 0 73 8 137 0 95 11 41 0 148 11 45 0 152 11 49 0 153 11 53 0 155] 
#[1 6 25 0 95 11 57 1 43] 
#[0 4 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 8 213 0 57 8 217 0 95 11 61 0 185 11 65 0 186] 
#[0 11 69 0 8] 
#[0 4 234 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 4 238 0 15 0 101] 
#[0 4 242 0 15 0 101] 
#[0 4 246 0 15 0 101] 
#[0 11 73 0 26] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 11 77 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 11 77 1 27 11 77 1 28 2 217 1 29 2 49 1 30 11 77 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 185 0 8 11 81 0 9 0 189 0 13 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 6 141 0 209 11 85 0 224 11 89 0 225 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 6 141 1 13 6 141 1 14 6 141 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 11 93 0 26] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 11 97 0 26 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 11 101 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 11 101 1 27 11 101 1 28 2 217 1 29 2 49 1 30 11 101 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 11 105 0 209 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 11 105 1 13 11 105 1 14 11 105 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 5 181 0 110 7 85 0 160 5 189 0 161 5 189 0 162 11 109 0 163] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 11 113 0 198 11 113 0 203 11 113 0 204 11 113 0 205 11 113 0 206 11 113 0 207 11 113 0 208 1 189 0 209 11 113 0 210 11 113 0 211 11 113 0 212 11 113 0 220 11 113 0 221 11 113 0 222 11 113 0 226 11 113 0 227 11 113 0 228 11 113 0 229 11 113 0 230 11 113 0 231 11 113 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 11 113 1 59 2 77 1 62] 
#[0 11 117 0 39] 
#[0 4 250 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 4 254 0 2 4 254 0 3 4 254 0 5 4 254 0 6 4 254 0 9 4 254 0 10 4 254 0 12 4 254 0 13 4 254 0 15 4 254 0 16 4 254 0 17 4 254 0 19 4 254 0 20 4 254 0 22 4 254 0 24 4 254 0 25 4 254 0 26 4 254 0 27 4 254 0 28 4 254 0 30 4 254 0 32 4 254 0 33 4 254 0 36 4 109 0 38 4 254 0 39 4 254 0 40 4 254 0 65 4 254 0 96 4 254 0 98 4 254 0 99 4 254 0 101 4 254 0 102 4 254 0 103 7 33 1 5 4 254 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 11 121 0 15 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 9 61 0 95 11 125 0 99 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 11 129 0 164 1 141 0 167 11 129 0 196 11 133 0 197 1 245 0 241 1 249 0 242 1 249 0 243 11 129 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 11 129 1 27 11 129 1 28 2 217 1 29 2 49 1 30 11 129 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 5 2 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 5 6 0 2 5 6 0 3 5 6 0 5 5 6 0 6 5 6 0 9 5 6 0 10 5 6 0 12 5 6 0 13 5 6 0 15 5 6 0 16 5 6 0 17 5 6 0 19 5 6 0 20 5 6 0 22 5 6 0 24 5 6 0 25 5 6 0 26 5 6 0 27 5 6 0 28 5 6 0 30 5 6 0 32 5 6 0 33 5 6 0 36 4 109 0 38 5 6 0 39 5 6 0 40 5 6 0 65 5 6 0 96 5 6 0 98 5 6 0 99 5 6 0 101 5 6 0 102 5 6 0 103 7 33 1 5 5 6 1 64] 
#[0 5 10 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 5 14 0 2 5 14 0 3 5 14 0 5 5 14 0 6 5 14 0 9 5 14 0 10 5 14 0 12 5 14 0 13 5 14 0 15 5 14 0 16 5 14 0 17 5 14 0 19 5 14 0 20 5 14 0 22 5 14 0 24 5 14 0 25 5 14 0 26 5 14 0 27 5 14 0 28 5 14 0 30 5 14 0 32 5 14 0 33 5 14 0 36 5 14 0 38 5 14 0 39 5 14 0 40 5 14 0 65 8 137 0 95 5 14 0 96 5 14 0 98 5 14 0 99 5 14 0 101 5 14 0 102 5 14 0 103 11 137 0 155 5 14 1 64] 
#[1 11 141 0 9 11 145 0 15] 
#[0 5 18 0 9 0 15] 
#[0 11 149 0 8] 
#[1 11 153 0 95 11 157 0 213 11 161 0 244] 
#[1 1 53 0 95 11 165 0 198] 
#[0 5 22 0 95] 
#[1 11 169 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 1 103 0 110 11 173 0 128 11 173 0 234 6 229 1 60] 
#[1 5 181 0 110 11 177 0 162 11 181 0 163] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 0 14 0 110 11 185 0 237 11 189 1 60] 
#[0 5 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 5 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 5 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 5 38 0 8 5 38 0 13 5 38 0 17 5 38 0 26 5 38 0 27 5 38 0 37 5 38 0 42 5 38 0 43 5 38 0 44 5 38 0 45 5 38 0 46 5 38 0 47 6 233 0 48 5 38 0 49 5 38 0 50 5 38 0 51 5 38 0 52 5 38 0 53 5 38 0 54 5 38 0 55 5 38 0 56 5 38 0 58 6 237 0 59 5 38 0 60 5 38 0 61 5 38 0 62 5 38 0 66 5 38 0 67 5 38 0 68 5 38 0 69 5 38 0 70 5 38 0 71 5 38 0 74 5 38 0 75 5 38 0 76 5 38 0 78 5 38 0 79 5 38 0 80 5 38 0 81 5 38 0 82 5 38 0 83 5 38 0 84 5 38 0 85 5 38 0 86 5 38 0 87 5 38 0 89 5 38 0 90 5 38 0 91 5 38 0 92 5 38 0 93 5 38 0 94 5 38 0 95 5 38 0 99 5 38 0 104 5 38 0 105 5 38 0 106 5 38 0 107 5 38 0 108 5 38 0 109 5 38 0 110 9 121 0 236 11 193 0 239 5 38 1 64] 
#[0 5 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 11 197 0 198 11 197 0 203 11 197 0 204 11 197 0 205 11 197 0 206 11 197 0 207 11 197 0 208 1 189 0 209 11 197 0 210 11 197 0 211 11 197 0 212 11 197 0 220 11 197 0 221 11 197 0 222 11 197 0 226 11 197 0 227 11 197 0 228 11 197 0 229 11 197 0 230 11 197 0 231 11 197 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 11 197 1 59 2 77 1 62] 
#[0 5 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 0 201 0 27 2 35 0 110 11 205 1 52] 
#[0 5 50 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 96 0 97 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 11 209 0 25] 
#[0 5 54 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 96 0 97 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 5 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 11 213 0 9 11 145 0 15] 
#[0 5 62 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 15 0 16 0 19 0 20 0 21 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 52 0 63 0 65 0 73 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 110 1 64] 
#[0 11 217 0 110] 
#[0 11 221 0 8] 
#[0 5 66 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 5 70 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 11 225 0 9] 
#[1 0 250 0 2 0 250 0 3 0 250 0 5 0 250 0 6 0 250 0 9 0 250 0 10 0 250 0 12 0 250 0 13 0 250 0 15 0 250 0 16 0 250 0 17 0 250 0 19 0 215 0 20 0 250 0 22 0 250 0 24 1 2 0 25 0 250 0 26 0 219 0 27 0 250 0 28 0 250 0 30 0 250 0 32 0 250 0 33 0 250 0 36 4 129 0 38 0 250 0 39 0 250 0 40 0 250 0 65 0 250 0 96 0 250 0 98 0 250 0 99 0 250 0 101 0 250 0 102 0 250 0 103 4 133 1 52 0 250 1 64] 
#[0 5 74 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 142 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 1 158 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 5 78 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 5 82 0 9 0 15] 
#[0 3 38 0 9 0 15] 
#[1 5 181 0 110 11 229 0 163] 
#[1 5 86 0 9 5 86 0 15 5 49 0 38] 
#[1 11 233 0 95 11 161 0 244] 
#[1 5 90 0 2 5 90 0 3 5 90 0 5 5 90 0 6 5 90 0 9 5 90 0 10 5 90 0 12 5 90 0 15 5 90 0 16 5 90 0 19 5 90 0 22 5 90 0 24 5 90 0 26 5 90 0 27 5 90 0 28 5 90 0 30 5 90 0 32 5 90 0 33 5 90 0 36 5 49 0 38 5 90 0 39 5 90 0 40 5 90 0 65 5 90 0 96 5 90 0 98 5 90 0 99 5 90 0 101 5 90 0 102 5 90 0 103 5 90 1 64] 
#[1 2 81 0 1 5 94 0 2 5 94 0 3 5 94 0 5 5 94 0 6 2 85 0 8 5 94 0 9 5 94 0 10 2 39 0 12 0 189 0 13 5 94 0 15 2 43 0 16 0 193 0 17 5 94 0 19 5 94 0 22 5 94 0 24 5 94 0 26 2 47 0 27 5 94 0 28 5 94 0 30 5 94 0 32 5 94 0 33 5 94 0 36 5 94 0 39 5 94 0 40 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 5 94 0 65 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 5 94 0 96 5 94 0 98 5 94 0 99 2 101 0 100 5 94 0 101 5 94 0 102 5 94 0 103 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 11 237 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 11 241 1 27 2 169 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62 5 94 1 64] 
#[0 5 98 0 5 0 15 0 101] 
#[1 11 245 0 5 5 102 0 15 5 102 0 101] 
#[0 5 106 0 15 0 101] 
#[1 5 110 0 26 10 9 0 38 5 110 0 52 5 213 0 88 5 110 0 95 11 249 0 171] 
#[1 5 114 0 26 10 9 0 38 5 114 0 52 5 213 0 88 5 114 0 95 11 253 0 171] 
#[1 12 1 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 0 14 0 110 12 5 0 169 10 81 0 170 5 29 1 60] 
#[0 12 9 0 39] 
#[0 5 118 0 26 0 52 0 95] 
#[0 5 122 0 26 0 52 0 95] 
#[0 5 126 0 15 0 26] 
#[0 5 130 0 9 0 15 0 26] 
#[0 5 134 0 9 0 15 0 26 0 99] 
#[0 5 138 0 9 0 15 0 26 0 99] 
#[0 5 142 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 5 146 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 2 253 0 110 12 13 0 123 12 13 0 124 4 25 1 56 4 25 1 57 4 25 1 58] 
#[1 2 81 0 1 2 85 0 8 12 17 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 12 21 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 12 25 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 12 29 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 5 150 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 0 23 0 49 0 45 0 50 0 229 0 51 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 12 33 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 7 13 0 147 1 141 0 167 7 13 0 179 7 13 0 198 7 13 0 200 7 13 0 201 1 161 0 202 7 13 0 203 7 13 0 204 7 13 0 205 7 13 0 206 7 13 0 207 7 13 0 208 1 189 0 209 7 13 0 210 7 13 0 211 7 13 0 212 7 13 0 220 7 13 0 221 7 13 0 222 7 13 0 226 7 13 0 227 7 13 0 228 7 13 0 229 7 13 0 230 7 13 0 231 7 13 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 7 13 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 7 13 1 59 2 73 1 60 2 77 1 62] 
#[0 5 154 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 12 37 0 83 12 41 0 86 7 65 0 110] 
#[0 5 158 0 88 0 95] 
#[1 12 45 0 9 12 49 0 15] 
#[0 5 162 0 9 0 15] 
#[1 10 9 0 38 5 213 0 88 5 166 0 95 12 53 0 171] 
#[1 10 9 0 38 5 213 0 88 5 170 0 95 12 57 0 171] 
#[0 5 174 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 5 178 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 2 229 0 27 3 157 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 161 0 50 0 71 0 54 3 165 0 56 0 53 0 58 0 75 0 60 0 79 0 66 3 169 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 3 173 0 77 0 89 0 79 0 87 0 80 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 0 91 0 110 5 201 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 5 201 0 122 5 201 0 123 5 201 0 126 3 177 0 146 3 177 1 35 5 153 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 5 182 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 12 61 0 26 12 65 0 52] 
#[1 0 33 0 26 2 229 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 87 0 80 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 12 69 0 99 0 91 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 12 73 0 137 12 73 0 138 10 101 0 145 0 157 0 146 12 73 0 147 12 73 0 159 10 109 0 166 12 73 0 179 12 73 0 180 12 73 0 183 12 73 0 184 12 73 0 195 0 157 1 35 12 73 1 42 2 245 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 5 186 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 5 190 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 5 194 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 12 77 0 99] 
#[0 5 198 0 9 0 15 0 99] 
#[0 5 202 0 15 0 99] 
#[1 12 81 0 15 12 85 0 99] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 8 93 0 95 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 12 89 1 27 2 169 1 29 2 49 1 30 12 89 1 35 12 89 1 39 12 89 1 40 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 5 206 0 9 0 15 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 72 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 12 93 0 110 12 97 1 38] 
#[0 5 210 0 63 0 73 0 95] 
#[1 5 214 0 15 5 214 0 63 5 214 0 95 12 101 0 151] 
#[0 5 218 0 63 0 95] 
#[0 5 222 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 33 0 26 2 229 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 87 0 80 2 249 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 1 53 0 95 12 105 0 99 0 91 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 12 109 0 137 12 109 0 138 3 17 0 145 0 157 0 146 12 109 0 147 12 109 0 157 12 109 0 158 12 109 0 159 12 109 0 165 2 241 0 166 12 109 0 174 12 109 0 175 3 45 0 176 12 109 0 179 12 109 0 180 3 49 0 198 0 157 1 35 12 109 1 42 3 53 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 5 226 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110] 
#[1 8 137 0 95 12 113 0 155] 
#[0 5 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 6 21 0 63 8 137 0 95 12 117 0 153 12 121 0 155] 
#[1 8 137 0 95 12 125 0 155] 
#[0 5 234 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 5 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 2 253 0 110 12 129 0 123 12 129 0 125 4 25 1 56 4 25 1 57 4 25 1 58] 
#[0 5 242 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 12 133 0 99] 
#[1 0 33 0 26 2 229 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 87 0 80 2 249 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 1 53 0 95 5 246 0 99 0 91 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 12 109 0 137 12 109 0 138 3 17 0 145 0 157 0 146 12 109 0 147 12 109 0 157 12 109 0 158 12 109 0 159 12 109 0 165 2 241 0 166 12 109 0 174 12 109 0 175 3 45 0 176 12 109 0 179 12 109 0 180 3 49 0 198 0 157 1 35 12 109 1 42 3 53 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 12 137 0 8 5 250 0 15 5 250 0 26 8 137 0 95 5 250 0 99 12 141 0 155] 
#[1 8 173 0 26 0 6 0 37 12 145 0 99 0 6 0 110 8 181 1 34 12 149 1 45 12 153 1 46] 
#[0 5 254 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 12 157 0 99] 
#[0 6 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 12 161 0 26] 
#[0 6 6 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 6 10 0 15 0 95] 
#[0 6 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 2 78 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 2 86 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 12 61 0 26] 
#[1 0 33 0 26 0 95 0 27 0 99 0 37 0 103 0 42 0 107 0 44 0 111 0 46 0 115 0 49 0 45 0 50 0 26 0 52 0 119 0 54 0 49 0 56 0 123 0 58 0 127 0 60 0 131 0 66 0 61 0 67 0 135 0 68 0 139 0 69 0 143 0 71 0 147 0 74 0 151 0 75 0 155 0 76 0 85 0 77 0 159 0 79 0 163 0 80 2 31 0 81 0 171 0 82 0 175 0 85 0 179 0 89 0 183 0 91 0 187 0 92 12 165 0 99 0 191 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 12 169 0 137 12 169 0 138 10 101 0 145 0 157 0 146 12 169 0 147 12 169 0 159 11 9 0 166 12 169 0 179 12 169 0 180 12 169 0 188 12 169 0 189 12 169 0 190 3 85 0 191 3 89 0 192 12 169 0 195 0 157 1 35 12 169 1 42 2 245 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 6 18 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 2 253 0 110 12 173 0 123 12 173 0 125 4 25 1 56 4 25 1 57 4 25 1 58] 
#[0 6 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 6 21 0 63 12 177 0 95 12 181 0 139 12 185 0 153] 
#[1 12 189 0 9 12 49 0 15] 
#[0 6 26 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 6 21 0 63 8 137 0 95 12 193 0 153 12 197 0 155] 
#[1 6 21 0 63 8 133 0 73 8 137 0 95 12 201 0 148 12 205 0 153 12 209 0 155] 
#[1 8 137 0 95 12 213 0 155] 
#[0 6 30 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 34 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 11 21 0 15 8 217 0 95 12 217 0 186] 
#[0 6 38 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 12 221 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 0 14 0 110 12 225 0 169 10 81 0 170 5 29 1 60] 
#[0 6 42 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 12 229 0 9] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 12 233 0 198 12 233 0 203 12 233 0 204 12 233 0 205 12 233 0 206 12 233 0 207 12 233 0 208 1 189 0 209 12 233 0 210 12 233 0 211 12 233 0 212 12 233 0 220 12 233 0 221 12 233 0 222 12 233 0 226 12 233 0 227 12 233 0 228 12 233 0 229 12 233 0 230 12 233 0 231 12 233 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 12 233 1 59 2 77 1 62] 
#[0 12 237 0 9] 
#[1 6 46 0 9 9 37 0 15] 
#[1 0 185 0 8 12 241 0 9 0 189 0 13 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 6 141 0 209 12 245 0 224 11 89 0 225 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 6 141 1 13 6 141 1 14 6 141 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 185 0 8 12 249 0 9 0 189 0 13 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 6 141 0 209 12 253 0 224 11 89 0 225 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 6 141 1 13 6 141 1 14 6 141 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 13 1 0 26] 
#[0 6 50 0 9 0 15 0 26] 
#[1 3 86 0 15 13 5 0 24 3 86 0 26 8 17 0 31 5 49 0 38] 
#[1 6 54 0 8 6 54 0 13 6 54 0 17 6 54 0 26 6 54 0 27 6 54 0 37 6 54 0 42 6 54 0 43 6 54 0 44 6 54 0 45 6 54 0 46 6 54 0 47 6 54 0 49 6 54 0 50 6 54 0 51 6 54 0 52 6 54 0 53 6 54 0 54 13 9 0 55 6 54 0 56 6 54 0 58 6 54 0 60 6 54 0 61 6 54 0 62 6 54 0 66 6 54 0 67 6 54 0 68 6 54 0 69 6 54 0 70 6 54 0 71 6 54 0 74 6 54 0 75 6 54 0 76 6 54 0 78 6 54 0 79 6 54 0 80 6 54 0 81 6 54 0 82 6 54 0 83 6 54 0 84 6 54 0 85 6 54 0 86 6 54 0 87 6 54 0 89 6 54 0 90 6 54 0 91 6 54 0 92 6 54 0 93 6 54 0 94 6 54 0 95 6 54 0 99 6 54 0 104 6 54 0 105 6 54 0 106 6 54 0 107 6 54 0 108 6 54 0 109 6 54 0 110 6 54 1 64] 
#[0 6 58 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 13 13 0 99] 
#[0 6 62 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 6 66 0 15 0 99] 
#[1 13 17 0 15 13 21 0 99] 
#[0 6 70 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 6 74 0 2 6 74 0 3 6 74 0 5 6 74 0 6 6 74 0 9 6 74 0 10 6 74 0 12 6 74 0 13 6 74 0 15 6 74 0 16 6 74 0 17 6 74 0 19 6 74 0 20 6 74 0 22 6 74 0 24 6 74 0 25 6 74 0 26 6 74 0 27 6 74 0 28 6 74 0 30 6 74 0 32 6 74 0 33 6 74 0 36 6 74 0 38 6 74 0 39 6 74 0 40 6 74 0 65 8 137 0 95 6 74 0 96 6 74 0 98 6 74 0 99 6 74 0 101 6 74 0 102 6 74 0 103 13 25 0 155 6 74 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 13 29 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 13 29 1 27 13 29 1 28 2 217 1 29 2 49 1 30 13 29 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 13 33 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 13 37 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 13 41 0 47 13 45 0 52 13 49 0 99 13 53 0 214 13 57 0 215 13 61 0 216 13 65 0 217 13 69 0 245 13 73 0 246 13 77 0 247] 
#[0 6 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 82 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 86 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 90 0 95] 
#[0 6 94 0 9 0 26] 
#[0 6 98 0 9 0 26] 
#[1 8 17 0 31 5 49 0 38] 
#[0 13 81 0 9] 
#[1 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 4 229 0 58 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 13 85 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 13 85 0 122 13 85 0 123 13 85 0 126 13 89 0 238 4 241 1 35 2 57 1 56 2 57 1 57 2 57 1 58 4 241 1 61] 
#[0 6 102 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 106 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 110 0 2 0 3 0 4 0 5 0 6 0 7 0 9 0 10 0 11 0 12 0 13 0 14 0 15 0 16 0 17 0 18 0 19 0 20 0 22 0 23 0 24 0 25 0 26 0 27 0 28 0 29 0 30 0 31 0 32 0 33 0 34 0 35 0 36 0 38 0 39 0 40 0 41 0 65 0 96 0 97 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 13 93 0 110] 
#[0 13 97 0 110] 
#[0 6 114 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 6 118 0 8 13 101 0 27 13 105 1 51] 
#[1 2 81 0 1 2 85 0 8 13 109 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 13 113 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 9 193 0 127 9 193 0 128 9 193 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 13 117 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 1 249 1 6 1 249 1 7 1 249 1 8 2 137 1 9 2 137 1 10 2 137 1 11 13 121 1 15 13 121 1 16 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 6 122 0 9 6 122 0 15 5 49 0 38] 
#[1 13 125 0 47 13 129 0 52 13 69 0 245 13 73 0 246 13 77 0 247] 
#[0 6 126 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 6 130 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 13 133 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 13 133 0 122 13 133 0 123 13 133 0 126 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 6 134 0 26 0 52 0 95] 
#[0 6 138 0 26 0 52 0 95] 
#[0 6 142 0 26 0 38 0 52 0 88 0 95] 
#[1 13 137 0 9 12 49 0 15] 
#[0 6 146 0 26 0 38 0 52 0 88 0 95] 
#[0 6 150 0 15 0 26 0 52 0 95] 
#[0 13 141 0 26] 
#[1 13 145 0 9 11 145 0 15] 
#[0 13 149 0 26] 
#[1 13 153 0 9 11 145 0 15] 
#[0 6 154 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 13 157 0 8] 
#[0 13 161 0 8] 
#[0 6 158 0 88 0 95] 
#[1 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 0 14 0 110 13 165 0 170 5 29 1 60] 
#[0 6 162 0 95] 
#[0 6 166 0 95] 
#[0 3 94 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 9 61 0 95 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 13 169 0 164 1 141 0 167 13 169 0 196 1 245 0 241 1 249 0 242 1 249 0 243 13 169 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 13 169 1 27 13 169 1 28 2 217 1 29 2 49 1 30 13 169 1 32 13 173 1 35 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 6 170 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 6 174 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 6 178 0 9 0 15 0 99] 
#[1 2 81 0 1 3 193 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 205 0 37 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 8 93 0 95 13 177 0 99 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 13 181 1 27 2 169 1 29 2 49 1 30 13 181 1 35 13 181 1 39 13 181 1 40 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 6 182 0 9 0 15 0 99] 
#[0 6 186 0 9 0 15] 
#[0 10 145 0 31] 
#[0 6 190 0 9 0 15] 
#[1 13 185 0 15 6 194 0 63 6 194 0 95 13 189 0 150] 
#[0 6 198 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 202 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110] 
#[0 6 206 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 8 137 0 95 13 193 0 155] 
#[0 6 210 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 214 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 218 0 15 0 95] 
#[0 6 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 2 81 0 1 2 85 0 8 13 197 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 13 201 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 6 226 0 15 0 26 0 99] 
#[0 6 230 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 234 0 15 0 26 0 99] 
#[0 13 205 0 99] 
#[0 6 238 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 242 0 26 0 37 0 42 0 50 0 56 0 58 0 64 0 67 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 81 0 82 0 85 0 89 0 92 1 64] 
#[0 6 246 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 6 250 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 6 254 0 15 0 95] 
#[1 7 2 0 26 7 2 0 27 7 2 0 37 7 2 0 42 7 2 0 44 7 2 0 46 7 2 0 49 7 2 0 50 7 2 0 54 7 2 0 56 7 2 0 58 7 2 0 60 7 2 0 66 7 2 0 67 7 2 0 68 7 2 0 69 7 2 0 71 7 2 0 74 7 2 0 75 7 2 0 76 7 2 0 77 7 2 0 79 7 2 0 80 7 2 0 81 7 2 0 82 7 2 0 85 7 2 0 89 7 2 0 91 7 2 0 92 7 2 0 99 7 2 0 110 13 209 0 140 13 213 0 141] 
#[0 7 6 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 12 177 0 95 13 217 0 139] 
#[1 6 21 0 63 12 177 0 95 13 221 0 139 13 225 0 153] 
#[1 8 137 0 95 13 229 0 155] 
#[0 7 10 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 6 21 0 63 8 137 0 95 13 233 0 153 13 237 0 155] 
#[1 8 137 0 95 13 241 0 155] 
#[0 7 14 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 18 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 22 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 6 21 0 63 12 177 0 95 13 245 0 139 13 249 0 153] 
#[1 13 253 0 9 12 49 0 15] 
#[0 14 1 0 26] 
#[0 7 26 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 14 5 0 198 14 5 0 203 14 5 0 204 14 5 0 205 14 5 0 206 14 5 0 207 14 5 0 208 1 189 0 209 14 5 0 210 14 5 0 211 14 5 0 212 14 5 0 220 14 5 0 221 14 5 0 222 14 5 0 226 14 5 0 227 14 5 0 228 14 5 0 229 14 5 0 230 14 5 0 231 14 5 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 14 5 1 59 2 77 1 62] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 14 9 0 198 14 9 0 203 14 9 0 204 14 9 0 205 14 9 0 206 14 9 0 207 14 9 0 208 1 189 0 209 14 9 0 210 14 9 0 211 14 9 0 212 14 9 0 220 14 9 0 221 14 9 0 222 14 9 0 226 14 9 0 227 14 9 0 228 14 9 0 229 14 9 0 230 14 9 0 231 14 9 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 14 9 1 59 2 77 1 62] 
#[0 14 13 0 9] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 14 17 0 198 14 17 0 203 14 17 0 204 14 17 0 205 14 17 0 206 14 17 0 207 14 17 0 208 1 189 0 209 14 17 0 210 14 17 0 211 14 17 0 212 14 17 0 220 14 17 0 221 14 17 0 222 14 17 0 226 14 17 0 227 14 17 0 228 14 17 0 229 14 17 0 230 14 17 0 231 14 17 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 14 17 1 59 2 77 1 62] 
#[0 14 21 0 9] 
#[1 0 185 0 8 14 25 0 9 0 189 0 13 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 195 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 6 141 0 209 14 29 0 224 11 89 0 225 1 245 0 241 1 249 0 242 1 249 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 6 141 1 13 6 141 1 14 6 141 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 14 33 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 14 33 1 27 14 33 1 28 2 217 1 29 2 49 1 30 14 33 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 14 37 0 198 14 37 0 203 14 37 0 204 14 37 0 205 14 37 0 206 14 37 0 207 14 37 0 208 1 189 0 209 14 37 0 210 14 37 0 211 14 37 0 212 14 37 0 220 14 37 0 221 14 37 0 222 14 37 0 226 14 37 0 227 14 37 0 228 14 37 0 229 14 37 0 230 14 37 0 231 14 37 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 14 37 1 59 2 77 1 62] 
#[0 7 30 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 9 61 0 95 14 41 0 99 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 14 45 0 164 1 141 0 167 14 45 0 196 1 245 0 241 1 249 0 242 1 249 0 243 14 45 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 14 45 1 27 14 45 1 28 2 217 1 29 2 49 1 30 14 45 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 7 34 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 7 38 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 7 42 0 9 0 15] 
#[0 7 46 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 14 49 0 9 11 145 0 15] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 14 57 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 14 57 1 27 14 57 1 28 2 217 1 29 2 49 1 30 14 57 1 32 14 57 1 33 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 14 61 0 19 14 65 0 24] 
#[0 7 50 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 14 69 0 47 14 73 0 52 14 77 0 99 14 81 0 215 14 85 0 216 13 65 0 217] 
#[0 7 54 0 47 0 52 0 99] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 14 69 0 47 0 23 0 49 0 45 0 50 0 229 0 51 14 73 0 52 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 14 89 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 4 89 0 147 1 141 0 167 4 89 0 179 4 89 0 198 14 93 0 199 4 89 0 200 4 89 0 201 1 161 0 202 4 89 0 203 4 89 0 204 4 89 0 205 4 89 0 206 4 89 0 207 4 89 0 208 1 189 0 209 4 89 0 210 4 89 0 211 4 89 0 212 14 97 0 217 4 89 0 220 4 89 0 221 4 89 0 222 4 89 0 226 4 89 0 227 4 89 0 228 4 89 0 229 4 89 0 230 4 89 0 231 4 89 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 4 89 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 4 89 1 59 2 73 1 60 2 77 1 62] 
#[0 7 58 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[1 13 125 0 47 13 129 0 52 14 101 0 99 14 105 0 246 13 77 0 247] 
#[0 7 62 0 47 0 52 0 99] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 33 0 87 1 41 0 91 1 53 0 95 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 14 109 0 198 14 113 0 229 1 245 0 241 1 249 0 242 1 249 0 243 14 117 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 14 117 1 27 14 117 1 28 2 217 1 29 2 49 1 30 14 117 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 1 53 0 95 14 121 0 198] 
#[0 7 66 0 96 0 110] 
#[1 14 125 0 96 5 181 0 110 14 129 0 163] 
#[0 14 133 0 8] 
#[0 7 70 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 3 213 0 36 0 6 0 37 0 6 0 44 0 6 0 46 0 6 0 49 0 6 0 54 0 6 0 60 0 6 0 66 0 6 0 68 0 6 0 80 14 137 0 101 0 6 0 110 3 221 1 34 14 141 1 53 3 229 1 54] 
#[0 14 145 0 8] 
#[0 7 74 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 14 149 0 9 11 145 0 15] 
#[0 7 78 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 7 82 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 15 0 16 0 19 0 22 0 24 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 14 153 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 14 153 1 27 14 153 1 28 2 217 1 29 2 49 1 30 14 153 1 32 14 153 1 33 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 14 61 0 19] 
#[0 7 86 0 5 0 15 0 101] 
#[0 7 90 0 26 0 38 0 52 0 88 0 95] 
#[0 7 94 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 14 157 0 26] 
#[0 7 98 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 14 161 0 26] 
#[1 2 81 0 1 2 85 0 8 14 165 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 14 169 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[1 2 81 0 1 2 85 0 8 14 173 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 14 177 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 7 102 0 9 0 15] 
#[0 14 181 0 26] 
#[0 14 185 0 26] 
#[0 7 106 0 9 0 15 0 99] 
#[0 7 110 0 15 0 99] 
#[1 2 253 0 110 14 189 0 123 14 189 0 125 4 25 1 56 4 25 1 57 4 25 1 58] 
#[0 7 114 0 15 0 63 0 95] 
#[0 7 118 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 7 122 0 15 7 122 0 26 8 137 0 95 7 122 0 99 14 193 0 155] 
#[1 14 197 0 9 11 145 0 15] 
#[0 7 126 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 14 201 0 99] 
#[1 0 33 0 26 2 229 0 27 0 37 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 0 45 0 50 0 71 0 54 0 49 0 56 0 53 0 58 0 75 0 60 0 79 0 66 0 61 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 0 85 0 77 0 89 0 79 0 87 0 80 2 249 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 7 130 0 99 0 91 0 110 3 1 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 3 1 0 122 3 1 0 123 3 1 0 126 14 205 0 137 14 205 0 138 14 205 0 142 14 205 0 143 14 213 0 144 14 217 0 145 0 157 0 146 14 205 0 147 14 205 0 158 14 205 0 159 14 205 0 165 2 241 0 166 14 205 0 174 14 205 0 179 14 205 0 180 0 157 1 35 14 205 1 42 14 229 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 7 134 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 7 138 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 12 177 0 95 14 233 0 139] 
#[0 7 142 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 8 137 0 95 14 237 0 155] 
#[0 7 146 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 150 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 154 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 12 177 0 95 14 241 0 139] 
#[1 6 21 0 63 12 177 0 95 14 245 0 139 14 249 0 153] 
#[0 7 158 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 166 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 14 253 0 198 14 253 0 203 14 253 0 204 14 253 0 205 14 253 0 206 14 253 0 207 14 253 0 208 1 189 0 209 14 253 0 210 14 253 0 211 14 253 0 212 14 253 0 220 14 253 0 221 14 253 0 222 14 253 0 226 14 253 0 227 14 253 0 228 14 253 0 229 14 253 0 230 14 253 0 231 14 253 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 14 253 1 59 2 77 1 62] 
#[0 7 170 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 15 1 0 198 15 1 0 203 15 1 0 204 15 1 0 205 15 1 0 206 15 1 0 207 15 1 0 208 1 189 0 209 15 1 0 210 15 1 0 211 15 1 0 212 15 1 0 220 15 1 0 221 15 1 0 222 15 1 0 226 15 1 0 227 15 1 0 228 15 1 0 229 15 1 0 230 15 1 0 231 15 1 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 15 1 1 59 2 77 1 62] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 15 5 0 198 15 5 0 203 15 5 0 204 15 5 0 205 15 5 0 206 15 5 0 207 15 5 0 208 1 189 0 209 15 5 0 210 15 5 0 211 15 5 0 212 15 5 0 220 15 5 0 221 15 5 0 222 15 5 0 226 15 5 0 227 15 5 0 228 15 5 0 229 15 5 0 230 15 5 0 231 15 5 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 15 5 1 59 2 77 1 62] 
#[0 15 9 0 9] 
#[0 15 13 0 9] 
#[0 7 174 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 178 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 7 182 0 15 0 99] 
#[0 7 186 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 7 190 0 15 0 19 0 24] 
#[1 7 194 0 15 7 194 0 19 7 194 0 24 15 17 0 219] 
#[0 7 198 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 87 0 91 0 95 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 7 202 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 15 21 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 15 21 1 27 15 21 1 28 2 217 1 29 2 49 1 30 15 21 1 32 15 21 1 33 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 14 65 0 24] 
#[0 7 206 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 210 0 47 0 52 0 99] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 14 69 0 47 0 23 0 49 0 45 0 50 0 229 0 51 14 73 0 52 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 15 25 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 4 89 0 147 1 141 0 167 4 89 0 179 4 89 0 198 14 93 0 199 4 89 0 200 4 89 0 201 1 161 0 202 4 89 0 203 4 89 0 204 4 89 0 205 4 89 0 206 4 89 0 207 4 89 0 208 1 189 0 209 4 89 0 210 4 89 0 211 4 89 0 212 14 97 0 217 4 89 0 220 4 89 0 221 4 89 0 222 4 89 0 226 4 89 0 227 4 89 0 228 4 89 0 229 4 89 0 230 4 89 0 231 4 89 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 4 89 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 4 89 1 59 2 73 1 60 2 77 1 62] 
#[0 7 214 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 11 0 37 0 41 0 42 0 209 0 43 0 15 0 44 0 217 0 45 0 19 0 46 7 218 0 47 0 23 0 49 0 45 0 50 0 229 0 51 7 218 0 52 0 233 0 53 0 27 0 54 0 49 0 56 0 31 0 58 0 35 0 60 0 245 0 61 0 249 0 62 0 39 0 66 0 61 0 67 0 43 0 68 0 65 0 69 1 5 0 70 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 1 9 0 78 0 89 0 79 0 47 0 80 0 93 0 81 0 97 0 82 1 17 0 83 1 21 0 84 1 25 0 85 1 29 0 86 1 33 0 87 0 105 0 89 1 37 0 90 1 41 0 91 0 109 0 92 1 45 0 93 1 49 0 94 1 53 0 95 7 218 0 99 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 51 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 133 0 145 0 157 0 146 7 13 0 147 1 141 0 167 7 13 0 179 7 13 0 198 7 13 0 200 7 13 0 201 1 161 0 202 7 13 0 203 7 13 0 204 7 13 0 205 7 13 0 206 7 13 0 207 7 13 0 208 1 189 0 209 7 13 0 210 7 13 0 211 7 13 0 212 7 13 0 220 7 13 0 221 7 13 0 222 7 13 0 226 7 13 0 227 7 13 0 228 7 13 0 229 7 13 0 230 7 13 0 231 7 13 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 0 157 1 35 7 13 1 42 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 7 13 1 59 2 73 1 60 2 77 1 62] 
#[0 7 222 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 7 226 0 2 0 3 0 5 0 6 0 8 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 37 0 38 0 39 0 40 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 65 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 96 0 98 0 99 0 101 0 102 0 103 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 7 230 0 47 0 52 0 99] 
#[1 15 29 0 26 7 234 0 47 7 234 0 52 7 234 0 99] 
#[0 7 238 0 47 0 52 0 99] 
#[0 15 33 0 26] 
#[0 7 242 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 48 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 59 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 2 253 0 110 15 37 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 15 37 0 122 15 37 0 123 15 37 0 126 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 7 246 0 9 5 49 0 38] 
#[1 2 81 0 1 2 85 0 8 15 41 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 15 45 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 7 250 0 8] 
#[1 6 105 0 15 15 49 0 101] 
#[1 2 81 0 1 2 85 0 8 15 53 0 9 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 9 85 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 15 57 1 0 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 9 85 1 27 9 85 1 28 2 217 1 29 2 49 1 30 9 85 1 32 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 7 254 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 7 194 0 15 7 194 0 19 15 61 0 219] 
#[0 8 2 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 8 6 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 15 65 0 26] 
#[1 15 69 0 9 11 145 0 15] 
#[0 15 73 0 26] 
#[1 15 77 0 9 11 145 0 15] 
#[0 8 10 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 8 14 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 8 18 0 15 0 63 0 95] 
#[0 8 22 0 15 0 26 0 99] 
#[1 8 26 0 15 8 26 0 26 8 137 0 95 8 26 0 99 15 81 0 155] 
#[0 8 30 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 8 34 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 8 38 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 5 213 0 88 5 217 0 95 15 85 0 171 15 89 0 177] 
#[1 2 229 0 27 3 157 0 37 0 41 0 42 0 59 0 44 0 63 0 46 0 67 0 49 3 161 0 50 0 71 0 54 3 165 0 56 0 53 0 58 0 75 0 60 0 79 0 66 3 169 0 67 0 83 0 68 0 65 0 69 0 69 0 71 0 73 0 74 0 77 0 75 0 81 0 76 3 173 0 77 0 89 0 79 0 87 0 80 0 93 0 81 0 97 0 82 0 101 0 85 0 105 0 89 0 22 0 91 0 109 0 92 0 91 0 110 5 201 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 5 201 0 122 5 201 0 123 5 201 0 126 15 93 0 144 3 177 0 146 3 177 1 35 15 97 1 47 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 8 42 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 8 46 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 1 41 0 91 3 197 0 110 5 169 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 5 169 0 122 5 169 0 123 5 169 0 126 15 101 0 128 5 173 0 167 2 57 1 56 2 57 1 57 2 57 1 58] 
#[0 8 50 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 8 54 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 77 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 8 58 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 8 62 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[1 12 177 0 95 15 105 0 139] 
#[0 8 66 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 8 70 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 8 74 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 15 109 0 198 15 109 0 203 15 109 0 204 15 109 0 205 15 109 0 206 15 109 0 207 15 109 0 208 1 189 0 209 15 109 0 210 15 109 0 211 15 109 0 212 15 109 0 220 15 109 0 221 15 109 0 222 15 109 0 226 15 109 0 227 15 109 0 228 15 109 0 229 15 109 0 230 15 109 0 231 15 109 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 15 109 1 59 2 77 1 62] 
#[1 0 185 0 8 0 189 0 13 0 193 0 17 0 197 0 26 0 201 0 27 0 209 0 43 0 213 0 44 0 217 0 45 0 221 0 46 0 225 0 49 0 229 0 51 0 233 0 53 0 237 0 54 0 241 0 60 0 245 0 61 0 249 0 62 0 253 0 66 1 1 0 68 1 5 0 70 1 9 0 78 1 13 0 80 1 17 0 83 1 21 0 84 3 253 0 85 1 29 0 86 1 33 0 87 1 37 0 90 1 41 0 91 1 45 0 93 1 49 0 94 1 53 0 95 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 199 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 1 141 0 167 15 113 0 198 15 113 0 203 15 113 0 204 15 113 0 205 15 113 0 206 15 113 0 207 15 113 0 208 1 189 0 209 15 113 0 210 15 113 0 211 15 113 0 212 15 113 0 220 15 113 0 221 15 113 0 222 15 113 0 226 15 113 0 227 15 113 0 228 15 113 0 229 15 113 0 230 15 113 0 231 15 113 0 240 1 245 0 241 1 249 0 242 1 253 0 243 1 249 0 254 2 5 0 255 1 245 1 1 2 13 1 6 2 17 1 7 2 21 1 8 2 25 1 9 2 29 1 10 2 33 1 11 1 189 1 13 1 189 1 14 1 189 1 29 2 49 1 30 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 15 113 1 59 2 77 1 62] 
#[1 15 117 0 15 15 121 0 19 15 125 0 24 15 129 0 218] 
#[1 7 194 0 15 7 194 0 24 15 133 0 219] 
#[0 8 78 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 8 82 0 47 0 52 0 99] 
#[0 8 86 0 47 0 52 0 99] 
#[0 8 90 0 96 0 110] 
#[0 8 94 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 15 137 0 9 11 145 0 15] 
#[0 8 98 0 8] 
#[1 8 102 0 2 8 102 0 3 8 102 0 5 8 102 0 6 8 102 0 9 8 102 0 10 8 102 0 12 8 102 0 13 8 102 0 15 8 102 0 16 8 102 0 17 8 102 0 19 8 102 0 20 8 102 0 22 8 102 0 24 8 102 0 25 8 102 0 26 8 102 0 27 8 102 0 28 8 102 0 30 8 102 0 32 8 102 0 33 8 102 0 36 8 102 0 38 8 102 0 39 8 102 0 40 8 102 0 65 8 137 0 95 8 102 0 96 8 102 0 98 8 102 0 99 8 102 0 101 8 102 0 102 8 102 0 103 15 141 0 155 8 102 1 64] 
#[1 15 145 0 9 11 145 0 15] 
#[1 15 117 0 15 15 121 0 19 15 129 0 218] 
#[0 8 106 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 15 149 0 26] 
#[0 8 110 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 15 153 0 26] 
#[0 8 114 0 15 0 26 0 99] 
#[1 5 217 0 95 15 157 0 177] 
#[0 8 118 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 5 213 0 88 5 217 0 95 15 161 0 171 15 165 0 177] 
#[1 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 13 0 80 1 41 0 91 3 197 0 110 7 245 0 117 3 5 0 118 3 5 0 119 3 5 0 120 3 5 0 121 7 245 0 122 7 245 0 123 7 245 0 126 15 101 0 128 7 249 0 167 2 57 1 56 2 57 1 57 2 57 1 58] 
#[1 15 169 0 8 8 122 0 88 8 122 0 95] 
#[0 8 126 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 52 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 95 0 99 0 110 1 64] 
#[0 8 130 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[0 8 134 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 55 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110 1 64] 
#[1 2 81 0 1 2 85 0 8 2 89 0 12 0 189 0 13 2 93 0 16 0 193 0 17 0 201 0 27 0 213 0 44 0 221 0 46 0 225 0 49 0 237 0 54 0 241 0 60 0 253 0 66 1 1 0 68 1 5 0 70 1 13 0 80 1 17 0 83 2 97 0 84 1 29 0 86 1 41 0 91 2 101 0 100 1 57 0 104 1 61 0 105 1 65 0 106 1 69 0 107 1 73 0 108 1 77 0 109 0 55 0 110 1 249 0 116 1 89 0 117 1 93 0 118 1 93 0 119 1 93 0 120 1 93 0 121 1 109 0 122 1 109 0 123 1 109 0 126 1 121 0 127 1 121 0 128 1 121 0 129 2 109 0 163 1 141 0 167 1 245 0 241 1 249 0 242 1 249 0 243 15 173 0 248 2 121 0 249 2 125 0 252 1 249 0 254 1 249 0 255 1 245 1 1 2 13 1 6 1 249 1 7 2 21 1 8 2 137 1 9 2 137 1 10 2 137 1 11 2 169 1 12 2 169 1 13 2 169 1 14 2 169 1 15 2 169 1 16 2 169 1 17 2 173 1 18 2 177 1 19 2 181 1 20 2 185 1 21 2 189 1 22 2 193 1 23 2 197 1 24 2 201 1 25 2 205 1 26 15 173 1 27 15 173 1 28 2 217 1 29 2 49 1 30 15 173 1 32 15 173 1 33 2 53 1 52 2 57 1 56 2 57 1 57 2 57 1 58 2 77 1 62] 
#[0 8 138 0 1 0 8 0 12 0 13 0 16 0 17 0 27 0 44 0 46 0 49 0 54 0 60 0 66 0 68 0 70 0 80 0 83 0 84 0 86 0 87 0 91 0 95 0 100 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 8 142 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 47 0 49 0 50 0 51 0 52 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 8 146 0 15 0 19 0 24] 
#[1 15 117 0 15 15 125 0 24 15 129 0 218] 
#[0 8 150 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 8 154 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[1 8 158 0 2 8 158 0 3 8 158 0 5 8 158 0 6 8 158 0 9 8 158 0 10 8 158 0 12 8 158 0 13 8 158 0 15 8 158 0 16 8 158 0 17 8 158 0 19 8 158 0 20 8 158 0 22 8 158 0 24 8 158 0 25 8 158 0 26 8 158 0 27 8 158 0 28 8 158 0 30 8 158 0 32 8 158 0 33 8 158 0 36 8 158 0 38 8 158 0 39 8 158 0 40 8 158 0 65 8 137 0 95 8 158 0 96 8 158 0 98 8 158 0 99 8 158 0 101 8 158 0 102 8 158 0 103 15 177 0 155 8 158 1 64] 
#[0 8 162 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 8 166 0 8 0 13 0 17 0 26 0 27 0 37 0 42 0 43 0 44 0 45 0 46 0 49 0 50 0 51 0 53 0 54 0 56 0 58 0 60 0 61 0 62 0 66 0 67 0 68 0 69 0 70 0 71 0 74 0 75 0 76 0 78 0 79 0 80 0 81 0 82 0 83 0 84 0 85 0 86 0 87 0 89 0 90 0 91 0 92 0 93 0 94 0 95 0 99 0 104 0 105 0 106 0 107 0 108 0 109 0 110] 
#[0 8 170 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 5 217 0 95 15 181 0 177] 
#[0 8 174 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[1 15 185 0 9 0 14 0 37 0 14 0 44 0 14 0 46 0 14 0 49 0 14 0 54 0 14 0 58 0 14 0 60 0 14 0 66 0 14 0 68 0 14 0 80 0 14 0 110 15 189 0 169 10 81 0 170 5 29 1 60] 
#[0 8 178 0 15 0 19 0 24] 
#[0 8 182 0 2 0 3 0 5 0 6 0 9 0 10 0 12 0 13 0 15 0 16 0 17 0 19 0 20 0 22 0 24 0 25 0 26 0 27 0 28 0 30 0 32 0 33 0 36 0 38 0 39 0 40 0 65 0 96 0 98 0 99 0 101 0 102 0 103 1 64] 
#[0 8 186 0 26 0 27 0 37 0 42 0 44 0 46 0 49 0 50 0 54 0 56 0 58 0 60 0 66 0 67 0 68 0 69 0 71 0 74 0 75 0 76 0 77 0 79 0 80 0 81 0 82 0 85 0 89 0 91 0 92 0 99 0 110] 
#[0 8 190 0 88 0 95] 
#[1 15 193 0 9 12 49 0 15] 
#[0 8 194 0 88 0 95]
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
JavaParser >> reduceActionForclass_declaration10: nodes [
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
JavaParser >> reduceActionForclass_declaration11: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result permitsToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result permits.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration12: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result permitsToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result permits.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result implementsToken: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result leftBrace: ((nodes at: 7) at: 1).
	result rightBrace: ((nodes at: 7) at: 2).
	result addNodes: ((nodes at: 7) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration13: nodes [
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
JavaParser >> reduceActionForclass_declaration14: nodes [
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
JavaParser >> reduceActionForclass_declaration15: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result extendsToken: ((nodes at: 5) at: 1).
	result superclass: ((nodes at: 5) at: 2).
	result permitsToken: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result permits.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result leftBrace: ((nodes at: 7) at: 1).
	result rightBrace: ((nodes at: 7) at: 2).
	result addNodes: ((nodes at: 7) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration16: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result addNodes: (nodes at: 1) to: result modifiers.
	result classToken: (nodes at: 2).
	result name: (nodes at: 3).
	result typeParameters: (nodes at: 4).
	result extendsToken: ((nodes at: 5) at: 1).
	result superclass: ((nodes at: 5) at: 2).
	result permitsToken: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result permits.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result implementsToken: ((nodes at: 7) at: 1).
	result addNodes: ((nodes at: 7) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 7) at: 3) to: result commas.
	result leftBrace: ((nodes at: 8) at: 1).
	result rightBrace: ((nodes at: 8) at: 2).
	result addNodes: ((nodes at: 8) at: 3) to: result declarations.
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
	result permitsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result permits.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
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
	result permitsToken: ((nodes at: 4) at: 1).
	result addNodes: ((nodes at: 4) at: 2) to: result permits.
	result addTokens: ((nodes at: 4) at: 3) to: result commas.
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
JavaParser >> reduceActionForclass_declaration6: nodes [
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
JavaParser >> reduceActionForclass_declaration7: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result extendsToken: ((nodes at: 4) at: 1).
	result superclass: ((nodes at: 4) at: 2).
	result permitsToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result permits.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result leftBrace: ((nodes at: 6) at: 1).
	result rightBrace: ((nodes at: 6) at: 2).
	result addNodes: ((nodes at: 6) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration8: nodes [
	| result |
	result := JavaClassDeclarationNode new.
	result classToken: (nodes at: 1).
	result name: (nodes at: 2).
	result typeParameters: (nodes at: 3).
	result extendsToken: ((nodes at: 4) at: 1).
	result superclass: ((nodes at: 4) at: 2).
	result permitsToken: ((nodes at: 5) at: 1).
	result addNodes: ((nodes at: 5) at: 2) to: result permits.
	result addTokens: ((nodes at: 5) at: 3) to: result commas.
	result implementsToken: ((nodes at: 6) at: 1).
	result addNodes: ((nodes at: 6) at: 2) to: result interfaces.
	result addTokens: ((nodes at: 6) at: 3) to: result commas.
	result leftBrace: ((nodes at: 7) at: 1).
	result rightBrace: ((nodes at: 7) at: 2).
	result addNodes: ((nodes at: 7) at: 3) to: result declarations.
	^ result
]

{ #category : #'generated-reduction actions' }
JavaParser >> reduceActionForclass_declaration9: nodes [
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
JavaParser >> reduceActionForpermits_type_list1: nodes [
	| result |
	result := Array new: 2.
	result at: 1 put: (OrderedCollection new: 2).
	result at: 2 put: (OrderedCollection new: 2).
	self add: (nodes at: 1) to: (result at: 1).
	self addAll: ((nodes at: 2) at: 1) to: (result at: 2).
	self addAll: ((nodes at: 2) at: 2) to: (result at: 1).
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
	result object: (nodes at: 1).
	result instanceofToken: (nodes at: 2).
	result type: (nodes at: 3).
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
